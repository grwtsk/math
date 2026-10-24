# selectedParentRowsChunk0014

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dbea8930e3963ceb49e167f33cef146b8e9f8b7f3634a428a607b6b8be9145f2",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0014",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "selectedparentrowschunk0014--2584e5e2a586154302fda45e",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135019,
    "line": 134818,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2584e5e2a586154302fda45eefb7b377adfb9f4530a78f779efdf24c97ad82e8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dbea8930e3963ceb49e167f33cef146b8e9f8b7f3634a428a607b6b8be9145f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134818–135019.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0014 : List (String × String × List String) :=
[
  ("formal-neighborhood:6db8d19f505dd832be224c12543d7c26327b44379388751374ec631384320da8", "formal-neighborhood:bc4d87524da11f184b63e08a568670bd85881d7a24372aa38bcea8de95adeca0", [
      "formal-neighborhood:bc4d87524da11f184b63e08a568670bd85881d7a24372aa38bcea8de95adeca0"
  ]),
  ("formal-neighborhood:6e2ffb2e5c89c360104d92ee6d0efa73c3d32c4b77820bd8726e34067f4f07ba", "formal-neighborhood:6f597c085b221e68b44e86e90a1afe5490768799f24e76513e6722adc5ba7ed0", [
      "formal-neighborhood:6f597c085b221e68b44e86e90a1afe5490768799f24e76513e6722adc5ba7ed0"
  ]),
  ("formal-neighborhood:6e4e9c217d817c6e3cc0d233d8a4b42b9e58f66523f8e8c421c0a27ad718d315", "formal-neighborhood:fa53402ad15f5b7eee02fade8383b612cd02ff439c4da4c60c54f07961ad9030", [
      "formal-neighborhood:7e8ef5693077d551e4d7cbe5eefcc7c1dbfa69f9b316db7a7a821707deec1222",
      "formal-neighborhood:fa53402ad15f5b7eee02fade8383b612cd02ff439c4da4c60c54f07961ad9030"
  ]),
  ("formal-neighborhood:6e6e8d19ee098b9f0586ff658f48389c0eb5f16be8c20983c0bcbaf6662a5b12", "formal-neighborhood:06c19ab993811c3a112975fe7a04ca5db7c57b2ff4492815a86fdff58267c6f0", [
      "formal-neighborhood:06c19ab993811c3a112975fe7a04ca5db7c57b2ff4492815a86fdff58267c6f0"
  ]),
  ("formal-neighborhood:6e9e69d82d7f7dc8e6bdd2abaf843e6ab49c035183c2616634b65e354e344195", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:6eab51d10d68bba151f9c9e0954a377d6134ad4fdec9f20614e22bf19f919504", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:6ec32c761f71778fb5c92ce12c7634ad2a862cf6d1129bd33a0d08ebc63c5ce5", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:6f1f38c9cc94d1ee4fe60e9d81a419d8202b4815dfda99acd3fd4d52a2a1bd0f", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:6f30bc2356840a5b7f2ce88993c69858235831ac997bb32aad2ccb9ceb2da1a5", "formal-neighborhood:e289d5a424266ffdabfaf8857b7d94880067c1d6c8732438d134eaf5f5a2dd83", [
      "formal-neighborhood:e289d5a424266ffdabfaf8857b7d94880067c1d6c8732438d134eaf5f5a2dd83"
  ]),
  ("formal-neighborhood:6f49e0cfd85775902df1a8bd1c29b0005bf2858158bccc0b82407353f28b4ced", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:6f4e013e87ccf99e1bc1ebf209d0fb2ddcab80ecdd7a4cb84b73c86a885ab3cb", "formal-neighborhood:68443baa8b726b6ac9734eb9c2ebbfcdfc8a8b11a70686d9e23f0366c59ceda1", [
      "formal-neighborhood:68443baa8b726b6ac9734eb9c2ebbfcdfc8a8b11a70686d9e23f0366c59ceda1"
  ]),
  ("formal-neighborhood:6f597c085b221e68b44e86e90a1afe5490768799f24e76513e6722adc5ba7ed0", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:6f66d3af003b6754a52c6b720abd51b949d63d58bbf6a7592986dd1f12463fd8", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:6f68f393d0ed6d0ea3d2462ccba81e3854f7cfd243d2506c53001f7045af10f2", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:6f71ec0578ec5a1984c028d0e175d977903c1da423ad61d44e7815f435ea7d9b", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:6f724a3bd03d2123c52992f49c3e4060f982e30367afd8a07cf8d2a940548ca1", "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6", [
      "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6"
  ]),
  ("formal-neighborhood:6f92c8d557fe6c1bf6e22b982bf2654ee04f8027843ec0c73121201c5d19d4c2", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:6fdd644b5aeaa988fbc32b8fed2d8b289588fad7f238ebb2904cf5685cbc256f", "formal-neighborhood:b2717d27ab29a21a6e4335fcbea2e7b51f2569bdcb10ee191ed8a31bfabe2e5d", [
      "formal-neighborhood:b2717d27ab29a21a6e4335fcbea2e7b51f2569bdcb10ee191ed8a31bfabe2e5d"
  ]),
  ("formal-neighborhood:6fe0a4c183f395ed2e42b5677f74832dda077b4d9ca1c879709e941bdd521421", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:701c50f017fb37e9ea082964ae042f916a2b272db142ed5ff6ff00ee0a124fe2", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:702364e1a0314e86d246715c6de891dae96220c00e339e1012ef0754021234a8", "formal-neighborhood:13286c818d376ce96c289e47e85c5edd94bcad22e44d0668b5ee880d1af46712", [
      "formal-neighborhood:13286c818d376ce96c289e47e85c5edd94bcad22e44d0668b5ee880d1af46712"
  ]),
  ("formal-neighborhood:705fda09a56f98ce1d8328664c368207404ed22b4f04b56a038470e57d9d4764", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:70639feea873650c5f05c783c0c74b114f92d7882f67c4488b0ffcd22f7c368d", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:70724a5c9036a919cf3a9216b63988c8351458067e400aee12fea1bd9c544538", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:7097dc95637234f5c9a2c8f25e24a2d800ede9a2b6f5c1e9b87a70f9ec716eb1", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:709945772a68fa6f73cbf367ca64e98bf33cdbe639d31814fa5be7a6644ac5a6", "formal-neighborhood:27adde9d85deb808e321547700540aa05496cbff51dd7c28bd15678e36190f8a", [
      "formal-neighborhood:4245034475df9c4cf204ff9e2a10d32ae32255ce256318f14b69332da3e697c4",
      "formal-neighborhood:27adde9d85deb808e321547700540aa05496cbff51dd7c28bd15678e36190f8a"
  ]),
  ("formal-neighborhood:709e55889d41b38c1c7f9a38a8837f86c45d4e8e35f413d578f9f37b376ba7c2", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:70ecc3e5e30ac3e190e236590738d77603dd17518a7a7dc4d52f151013f9b921", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:71180f9824a3d13907e50ab5bf867cb976ac83f64fb63b420e9461f35fc9fb9e", "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727", [
      "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727"
  ]),
  ("formal-neighborhood:71244501d09e4513eaa4e3985d49b00caa31b333ade3b95601b1609328cf1e84", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:715088d7f998dc54aeda223e625f871d850e9687456bcd662a61749576db94e1", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:7153cc90a78cd35455590fbe0a9e64f9108f816efa8e02b560ee7440ca76244e", "formal-neighborhood:481d14c2a3777439eec8e8ef1cbe146cdfc2c9a67cb7f8f3ec1323b1c6ab1b8b", [
      "formal-neighborhood:481d14c2a3777439eec8e8ef1cbe146cdfc2c9a67cb7f8f3ec1323b1c6ab1b8b"
  ]),
  ("formal-neighborhood:71742831ac224e62882d05ce27ad0d3bf19042a2030394f069f0778870807259", "formal-neighborhood:29350bc1fe248b416d861ba5713edcde8e1ec94a51c2c1e669c0f2256c74a446", [
      "formal-neighborhood:29350bc1fe248b416d861ba5713edcde8e1ec94a51c2c1e669c0f2256c74a446"
  ]),
  ("formal-neighborhood:717ad3b945424443db2a0bcf5edecac27ced90bde01f42aaf4a2238c3ea0d9c2", "formal-neighborhood:bbe03a46272c93b5aefa2b7216991f9a6fd0550ad2ad23a5f0e921711fa564e2", [
      "formal-neighborhood:bbe03a46272c93b5aefa2b7216991f9a6fd0550ad2ad23a5f0e921711fa564e2"
  ]),
  ("formal-neighborhood:7181611b33b7fa2c06db1858cb069aab0ceff69c6f85238740f29ae367d9329c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:719286ef6eb354f4b05ec86b688e34fa80cf96d0457974ccf2b698ce9fa8a513", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:7195961889ffdcd8e1e1da9bab12a69cda6924962fe18e3feb0cd804c8be077f", "formal-neighborhood:b1630910a3f907f4116ae3438edf3d18a7e55194540faf9916a00a6c819ca81e", [
      "formal-neighborhood:aa965215f0dddc1c50dec93543f4a80b801d5c40fa07b040ca44451dc7843344",
      "formal-neighborhood:b1630910a3f907f4116ae3438edf3d18a7e55194540faf9916a00a6c819ca81e"
  ]),
  ("formal-neighborhood:71c0a9423f03a2cb8d5124081df7f7ec1306d64edf6d4ceabc7cc5a3f96dd5fb", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:71e8e0c925a00358a98cb94a6043841c31676e7ca396861cc39693d7cec5d3f9", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:7200ddbc44a8b3d686097b8c42005f391871a1a8f3a19269185e48da0f1bada4", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:72142e0034e6a695f1a4790b70ac14316bd16a9616ba9190e394b5c22a224e25", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:72197796ca59dfa89ed5340f713744598eca4083fd52f9938771990c44b01435", "formal-neighborhood:f7ba8f6b5eefe4ee97a6ea8086c368075995540395b402c4fb2d7ab53f867967", [
      "formal-neighborhood:f7ba8f6b5eefe4ee97a6ea8086c368075995540395b402c4fb2d7ab53f867967"
  ]),
  ("formal-neighborhood:72576a51d9a56279a0609faed16562842896505854ae0955b15114381e1d4f1c", "formal-neighborhood:e070761ee1e42f668ba6a0eee955ad7aa5ed203a210899a2aea3e71ef1d3a2f6", [
      "formal-neighborhood:e070761ee1e42f668ba6a0eee955ad7aa5ed203a210899a2aea3e71ef1d3a2f6"
  ]),
  ("formal-neighborhood:7278c1f0cb3fdf32e8981f1967505e580eb70610228679f789baf11dbe1da42f", "formal-neighborhood:99ca63c61dd07d14f43c94768640688b9ad2f74d9c6ef794153c5d281619a4f5", [
      "formal-neighborhood:99ca63c61dd07d14f43c94768640688b9ad2f74d9c6ef794153c5d281619a4f5"
  ]),
  ("formal-neighborhood:727fd607b1bf55d34e05849a7a4b25c6ad41252be8e3b13ebf94586cb1ea4384", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:728cc9128296411f1b58d7f20675d886b1504af0a4c60f2a3e4db88be7b7b576", "formal-neighborhood:ebfc725d08e2e165ec1152f812beeb377b86f70e8739a94befea6fcbcff9837b", [
      "formal-neighborhood:ebfc725d08e2e165ec1152f812beeb377b86f70e8739a94befea6fcbcff9837b"
  ]),
  ("formal-neighborhood:72a6fd1eca0ce67ccb1429855046e75e60f0d06c316b38d68e0e7b4574b062e6", "formal-neighborhood:44347c957cb51dc00fd1b647ddd5cbd12c6f4e2d83e49333bd44a8b4df33f889", [
      "formal-neighborhood:44347c957cb51dc00fd1b647ddd5cbd12c6f4e2d83e49333bd44a8b4df33f889",
      "formal-neighborhood:fa53402ad15f5b7eee02fade8383b612cd02ff439c4da4c60c54f07961ad9030"
  ]),
  ("formal-neighborhood:72d146d6dd7d7cd6e8366d0136ba36cea603719d10accb5bd243e8d6fba9f59f", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:72e94fa48f252f364ee3f6875f99f62962afebdf125db2e4364001418a2274eb", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:72ea30c13a207aba20d5065d39e1c8d5df06a853df6c164000788ab5693f10a2", "formal-neighborhood:41d573320ae6b9cceed7a0f9f491d4c7aaa27ab7cdc3a97cbc08c8ab2b7e06e8", [
      "formal-neighborhood:41d573320ae6b9cceed7a0f9f491d4c7aaa27ab7cdc3a97cbc08c8ab2b7e06e8"
  ]),
  ("formal-neighborhood:72f4dcda2215a8cfb346a090e07aca021a7b6f53fa91237f76851893715c35b1", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:732df222b418aaa75f8c317334abcfe51d90c71d829ae02f09336bb2dc41893e", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:6b3f54387fc92b3dfa54e15580c0c35b0c612f13f8e4b6c91c9abf932934f727",
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:73b7be571f03225c5ecbb2d3eb774f28f168ad92b638821ae04133f2f9b015d3", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:73ed5639ef6f35de7f5077c2414a07b4405802f4486dc90704a4cb036e6a7c96", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:73f185c25d934e344764e019b0393ddab294b3e5ca052a910ed16a8ec573fe23", "formal-neighborhood:e12e873c1a5a0b141ad7511019cad192b3f10becde728d8aade32fb09d12891b", [
      "formal-neighborhood:4edaa65c20517f440ddf567b54f23a286be402e879526f83889c8516fb9293bf",
      "formal-neighborhood:e12e873c1a5a0b141ad7511019cad192b3f10becde728d8aade32fb09d12891b"
  ]),
  ("formal-neighborhood:73f88d7dba5c1ad73ac5afe3b327a0af8f9448d545d284769ee5a6a5264970eb", "formal-neighborhood:9569cf3fd89b2b33e2f30c6fde3b8c82aa4a94b646e00e9426b11360fe0838c2", [
      "formal-neighborhood:9569cf3fd89b2b33e2f30c6fde3b8c82aa4a94b646e00e9426b11360fe0838c2"
  ]),
  ("formal-neighborhood:73fce215420a9f42c0cf2fdf27e245afb683dff12746db13790d8c362abb2e44", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:741a6eea28f10a7b195dc32c5a81fd9fa6c01856dae3bc5475962f59a7b56eab", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:742d568db9a5b1e4395d1fddab4f632c3d490e7f680fe62aa91da113a80f9ebe", "formal-neighborhood:bfbcfde1ab7603e88f1f64fced086be53c638527f302246314667c75d76142da", [
      "formal-neighborhood:bfbcfde1ab7603e88f1f64fced086be53c638527f302246314667c75d76142da"
  ]),
  ("formal-neighborhood:744936486f7a62879824e8c615135b2a5b7bc31ec7917e39699018b2c54e3461", "formal-neighborhood:58a616a5efd4e4c0819ae4269e8a470fb08dbcab976c63e8f933201904b813ca", [
      "formal-neighborhood:58a616a5efd4e4c0819ae4269e8a470fb08dbcab976c63e8f933201904b813ca"
  ]),
  ("formal-neighborhood:748810ea25860564829cf758fc1a38f0c69fe4a2f84f3c7e6734e59050b14d73", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:748e4cec4bc0a3e3678e8962be5276c799ae45e38255742a4ba9b908878f69b3", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:74c2f10495553c763f469e67079e983d03161463a4ab764df257bedf1b085c12", "formal-neighborhood:2a151e0e8527ec5014f4e09c420b4fed4937ee14b63912267cbeccadeadd1c46", [
      "formal-neighborhood:2a151e0e8527ec5014f4e09c420b4fed4937ee14b63912267cbeccadeadd1c46"
  ]),
  ("formal-neighborhood:74d35c873d0480026c2a0994b7172e8535af01dc3549c57195c2056bfb1cd736", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ])
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L134818).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
