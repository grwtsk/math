# selectedParentRowsChunk0029

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ffdd4456bee84fd2a609e457b790d50ae71c0f97dfe9e76ff6c678f3d90fddc",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0029",
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
  "slug": "selectedparentrowschunk0029--5483b223ee3fff10c772c2bf",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138966,
    "line": 138769,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5483b223ee3fff10c772c2bff1899d8c6fa5b0672a6d98f6f24969d13e414da6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ffdd4456bee84fd2a609e457b790d50ae71c0f97dfe9e76ff6c678f3d90fddc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138769–138966.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0029 : List (String × String × List String) :=
[
  ("formal-neighborhood:e227f0c6cbe8aa3cd6de9a500e58273b47b24df0cf64a144a6f98a8c9773849d", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:e23ace156be5a8da2768aa30f8206313c76d030495e8d8381afa612f1dbc7b8a", "formal-neighborhood:eac08d7fb00cc1a72fc481c5da6404d82b0bf777ab56b23e4d748355adad3eaa", [
      "formal-neighborhood:eac08d7fb00cc1a72fc481c5da6404d82b0bf777ab56b23e4d748355adad3eaa"
  ]),
  ("formal-neighborhood:e23ed9d058b5af9371ef9e117b64b458c507516f1cd19ee8d86e905c97d1b6b4", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:e289d5a424266ffdabfaf8857b7d94880067c1d6c8732438d134eaf5f5a2dd83", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:e29e58a00db8e547316324a36d1e465947b6e8b0266b58971718209d2e05bba5", "formal-neighborhood:28cf91897753d2b6cb579e32bdf1019ee43d50b4c9bf158d17810a687ba94dd6", [
      "formal-neighborhood:28cf91897753d2b6cb579e32bdf1019ee43d50b4c9bf158d17810a687ba94dd6"
  ]),
  ("formal-neighborhood:e2cd8cf0fec6243ee0079d21a6b612b87458cd61dba4f2dd09d3c4aa764b2930", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:e2d319d956546235f937a66e8403df6162cb577cf5441eb17422ffa21cdbd9e8", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:e2f2d3df4f60bd301b425bd9d36825c00f19e23bcb0d163d2d9d140dd91df094", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:e35a388cdbdbf22cd1bf4dfbf71e39ac18718b5d5fecd07d9297b193c2da9305", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:e3625c2a14ead4d8166740779861888729e1563a11592b89d14b61b07b3f0c11", "formal-neighborhood:24cfc33c923666ed51552eefeea631c9c0f47438ff326b5c086da920abe7f1d1", [
      "formal-neighborhood:24cfc33c923666ed51552eefeea631c9c0f47438ff326b5c086da920abe7f1d1"
  ]),
  ("formal-neighborhood:e37a9acc1e447af33fd156760c827a1fbfe4ecae6c5e054675f3b369c5b39569", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:e399de9e7266541b43d1dc4ffd469be7aec01cea03776925708183211e408192", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:e39f823e964358ad3b64c19fca46de6aff61678e57ae1786dcb9af24c60af628", "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6", [
      "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6"
  ]),
  ("formal-neighborhood:e3af291017d5deda9a5dc492367080168361523d759e69eaad2123a3d8feefe6", "formal-neighborhood:481d14c2a3777439eec8e8ef1cbe146cdfc2c9a67cb7f8f3ec1323b1c6ab1b8b", [
      "formal-neighborhood:481d14c2a3777439eec8e8ef1cbe146cdfc2c9a67cb7f8f3ec1323b1c6ab1b8b"
  ]),
  ("formal-neighborhood:e3b951da18c20a720e3c0ad4dfc31cf38fc62d9a5f857a6def8f814572bbdeb4", "formal-neighborhood:07f2c3a9d990b17e5bdbeecfa1ac1f10c17431aebbaf9d2d7ad8f82465ce79b6", [
      "formal-neighborhood:07f2c3a9d990b17e5bdbeecfa1ac1f10c17431aebbaf9d2d7ad8f82465ce79b6"
  ]),
  ("formal-neighborhood:e3bac8f73963217fa265b33252ecfef6b190e976c8a7046b03402e31ae65d218", "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a", [
      "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a"
  ]),
  ("formal-neighborhood:e3d81dd46c88a23aa63954fdef935fa90001e78bd3096c6697ac2fe413d61b96", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:e3f838abd7a392e0a68f59650af4fe7ef7f5d841c9b6417d1ccec7c46fcc65a9", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:e413ab3c0519a5c441c812f54328f1243792ac010179fed25789e270af807a5c", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:e431ec83ca766e137dfad00ecf75e54e933b76598f6a435864027a7b7dec5016", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:e44a71f70ae901a26cd349c5f41b57d18b4929924a6598702b468c4c62516097", "formal-neighborhood:e070761ee1e42f668ba6a0eee955ad7aa5ed203a210899a2aea3e71ef1d3a2f6", [
      "formal-neighborhood:e070761ee1e42f668ba6a0eee955ad7aa5ed203a210899a2aea3e71ef1d3a2f6"
  ]),
  ("formal-neighborhood:e44e42f7bbe525a36931aa510414ba3f171c801e68f059ee6259d32a846c9773", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:e4725178b0764b888284511145541daf39beb2b64e149890b486c449d348e8b2", "formal-neighborhood:434c4ab2972c562cb3af44b023a0101b7380f59d258f8239dcd623b8bffddd70", [
      "formal-neighborhood:434c4ab2972c562cb3af44b023a0101b7380f59d258f8239dcd623b8bffddd70",
      "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a"
  ]),
  ("formal-neighborhood:e4993e5564d68b4d1d0f6e5dbe176cb0a7eeb8d8ecb93ebb7c0749df9b3440dc", "formal-neighborhood:6c52d61eb59e42a2294fe4379bbd39c3e9c1e59b6dab02acfe66b08861d988e1", [
      "formal-neighborhood:6c52d61eb59e42a2294fe4379bbd39c3e9c1e59b6dab02acfe66b08861d988e1"
  ]),
  ("formal-neighborhood:e4997ca1403559e52a2f5847ebcf0607e44f2f622e349acfc7da567f86835f2a", "formal-neighborhood:3b3ef9591dd4f52b01a6b82029faf2b7ff4bc78212e75451770cf88a86b6450f", [
      "formal-neighborhood:3b3ef9591dd4f52b01a6b82029faf2b7ff4bc78212e75451770cf88a86b6450f"
  ]),
  ("formal-neighborhood:e4b74551252befae5a67b4f32034dd928ae87c735fb16e69e26533013edcbc62", "formal-neighborhood:fefa39290137c0f7c1dd29fa56bb46085a90d89a991bad37d1389a1bf6469756", [
      "formal-neighborhood:fefa39290137c0f7c1dd29fa56bb46085a90d89a991bad37d1389a1bf6469756"
  ]),
  ("formal-neighborhood:e4ea6668b012035d36175c6df5ee859b42c4d44365ff88bad5bc593223611111", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:e57eefa1970bcc1fbcf6f61dabd0fb965788c3f6117d4308b7bc975d466e5e17", "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727", [
      "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727"
  ]),
  ("formal-neighborhood:e5b3a4b4e3ff9153b460825660aa7b43ee3c29c016cc63156069dc564e0422b3", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:e5c69f8604dc29d447a75976ab734f84d96775cdc8973771ceff31c8353cbccb", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:e5d1e2f6bd707cbb2852c445b8c38d553e2a8b64f7d5fc3012a3eed3490abc48", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:e632dd4e5d2cdb00818290c5981d4458906bf034a397df168c50c6cdf1327b21", "formal-neighborhood:aa05df4ddb4a38180d5fed3e5ad7b971e513f3ceed2384c16c5ab7820b12aec1", [
      "formal-neighborhood:aa05df4ddb4a38180d5fed3e5ad7b971e513f3ceed2384c16c5ab7820b12aec1"
  ]),
  ("formal-neighborhood:e674d30a04e8eb2cab5dbf955fb6921bf4ae1625327514df02caf2d2d63dac8a", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:e6ba5f8551226d3ccf42886726f58936dbb0a80511c433ff882f9030ca26b5b2", "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684", [
      "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684"
  ]),
  ("formal-neighborhood:e715575969a98c46aa47725dec5e5221254b669521b37bf9c6a8850d08cce3a6", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:e758af7cbc0b73ab1e449e57bf5ea4c66b35a1c7e7c20bc1bb8837d173258c21", "formal-neighborhood:c56879317db7f83cedcb63b04cb92d8f8d3d085cd2d66c0e6e88f040b85ab93c", [
      "formal-neighborhood:c56879317db7f83cedcb63b04cb92d8f8d3d085cd2d66c0e6e88f040b85ab93c"
  ]),
  ("formal-neighborhood:e76eae90bce86b9580af480264ae279e7caff3012db1ccebf9fa6ca202906a9f", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:e77ab3828fd5059d622510f7e01bd4580f7db17ef70a12d0d40bc58a553ca1ec", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:e77ad1774642aaacf10c5dc29566883ff23a00b8b45475bed78ff535f0567515", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:e79bb1b4ae2e6740ef253059ef7a9ea684d14f20df60eedd80c0840aca59eb01", "formal-neighborhood:8c9e6cde235ebdece0d952fc93ed2e5ec83a10a3eb2a42ee3bbfd207d83fe413", [
      "formal-neighborhood:8c9e6cde235ebdece0d952fc93ed2e5ec83a10a3eb2a42ee3bbfd207d83fe413"
  ]),
  ("formal-neighborhood:e79fc13a40a9d94ae00718b8561d5f300051ead01f3bae551bc17678b83877dc", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:e7a4955be0bf97d6a3c2e78f9219eac3b9434bbbc158f3bf433ff3434104e9cc", "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", [
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:e7b28d477c8421bb29bad5a4eaaaa64a7995c55bc3299163e8462338e22f93a0", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:e7d18e865d2a782eccef7d745a61872a591a22e5f47a74f78f5f83be63d938de", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:e7f8ccac932f54d4b366bed0eddf723186a7754445409c0cb50cd0679e11120c", "formal-neighborhood:478832b71addd4d2b228dfddfefb3f8f1adfc44c99f0c266e46c003b3823b19c", [
      "formal-neighborhood:478832b71addd4d2b228dfddfefb3f8f1adfc44c99f0c266e46c003b3823b19c"
  ]),
  ("formal-neighborhood:e829937eff386b546ddd5e4fe4a0d9b1ba2450db04fc8090e884215018cdf39a", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:e83b66f1137cedc0d5e992053b09a5fb3b36dc3f028fe3cad092f4abcf626d25", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:e849344546d8aef933bafbe86a07c5db8ebcc1c6fe2a4d9903c7799b8f7dfbd5", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:e84ad863d2fd6fd0d7cb4c7f75aa583333c13743592ef045082d7451248b0947", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:e8780aa6dd021ddd707da4a6bfd3224f75aaec1ddd5d765b944baf67786f2d78", "formal-neighborhood:377b598359d96a9c19e6e592b40795e9dd2c11436fd136716ffdfde2c1424a30", [
      "formal-neighborhood:377b598359d96a9c19e6e592b40795e9dd2c11436fd136716ffdfde2c1424a30"
  ]),
  ("formal-neighborhood:e8aaacacc4eadeb73a434457ad6b3b31d72499d7a22869c2fcf603c1a502610c", "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", [
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:e8d33ec9bd5bf63050ab9c406b3f79d4832a2ea2ccd8a1822ba05bbf7d975056", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:e8f3dfea12651cac1d5efb7734bc65d308e3268b6b414526dca04e6d87e0a6b3", "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", [
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:e925fbcff384806aed8fd89095de25e617c272e0d40f7fcc90384b1e456c967e", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:e928f6439b860418e4e5535ae6f73460a5496eeeb219d208ae465c619cb5b175", "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378", [
      "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378"
  ]),
  ("formal-neighborhood:e986940735d9e82a600b9d77acf432efb26fe2f7db13ecf43168b42f0d852447", "formal-neighborhood:e37a9acc1e447af33fd156760c827a1fbfe4ecae6c5e054675f3b369c5b39569", [
      "formal-neighborhood:e37a9acc1e447af33fd156760c827a1fbfe4ecae6c5e054675f3b369c5b39569"
  ]),
  ("formal-neighborhood:e9ace92cd1ee0faf0f31f9b3bc4be49496a2dc2fd7f2bfcc3fc22e851eba02e7", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:e9d51b2eb2197111f1dca0c76c2d303be375d5045581036a2f50f606b107921c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:e9e50bd488587c43243eadc62b8f9f0e7ab85bb64ef7781cdac06fc5aa8c9cec", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ea10903f10ac8795cd28a791a45f5c368a1a5360118dac411d40c25133e395a8", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:ea1457394fbc5e1082be8b3ffb2c1ebeb13201a4c3168a996eae10410e771407", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:ea1ce7bf7c5936f31dcfd2dabd0483a58d082c6218064292e1b48f42d265bc24", "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb", [
      "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb"
  ]),
  ("formal-neighborhood:ea549a5b6171428d92e21165986fca50e0f52ddc66f5889081fa5236e40f51e8", "formal-neighborhood:85c41a1017ebfdbcca974b53ed43b57d6e3577602b704005bf9ece9e2f02edd2", [
      "formal-neighborhood:85c41a1017ebfdbcca974b53ed43b57d6e3577602b704005bf9ece9e2f02edd2",
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:ea598096c4b017b3f048b6a8ba845fafbd715b507c1a3232327b9a71701ea47e", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ])
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L138769).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
