// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


struct Campaign {
    address author;
    string title;
    string description;
    string videoUrl;
    string imageUrl;
    uint256 balance;
    bool active;
}

contract DonateCrypto {

    uint256 public fee = 100; //wei
    uint256 public nextId = 0;

    mapping(uint256 => Campaign) public campaign; //id => campanha 

    function addCampaign(string calldata title, string calldata description, string calldata videoUrl, string calldata imageUrl) public {
        Campaign memory newCampaign;
        newCampaign.title = title;
        newCampaign.description = description;
        newCampaign.videoUrl = videoUrl;
        newCampaign.imageUrl = imageUrl;
        newCampaign.active = true;
        newCampaign.author = msg.sender;

        nextId++;
        campaign[nextId] = newCampaign;
    }

}