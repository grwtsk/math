# selectedParentRowsChunk0029

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3d5a36d175fd279d157783aa1553a1258f072eb22d173228f6af59ac420c843",
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
  "slug": "selectedparentrowschunk0029--3d0288cb5580477239283c97",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122260,
    "line": 122064,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d0288cb5580477239283c97f150f34b66707e0186c6070ca20fa6c2041af643",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3d5a36d175fd279d157783aa1553a1258f072eb22d173228f6af59ac420c843`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122064–122260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0029 : List (String × String × List String) :=
[
  ("formal-neighborhood:e76eae90bce86b9580af480264ae279e7caff3012db1ccebf9fa6ca202906a9f", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:e78ef554893fbedddd28a490c8ea94662d9ae7ebed627118e69fdc6fdc412bea", "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378", [
      "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378"
  ]),
  ("formal-neighborhood:e79bb1b4ae2e6740ef253059ef7a9ea684d14f20df60eedd80c0840aca59eb01", "formal-neighborhood:8c9e6cde235ebdece0d952fc93ed2e5ec83a10a3eb2a42ee3bbfd207d83fe413", [
      "formal-neighborhood:8c9e6cde235ebdece0d952fc93ed2e5ec83a10a3eb2a42ee3bbfd207d83fe413"
  ]),
  ("formal-neighborhood:e79c0b2114140c6edc3a444a0bd44156c79175fc0131a9dabcb22c3a97bd253c", "formal-neighborhood:6cda5aab5a336b82481ba4210de8551709e5dd07f824300a182e0b68ff428825", [
      "formal-neighborhood:6cda5aab5a336b82481ba4210de8551709e5dd07f824300a182e0b68ff428825"
  ]),
  ("formal-neighborhood:e79fc13a40a9d94ae00718b8561d5f300051ead01f3bae551bc17678b83877dc", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
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
  ("formal-neighborhood:e84ad863d2fd6fd0d7cb4c7f75aa583333c13743592ef045082d7451248b0947", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:e8553d44f42c8902652b5c6c6ad8fcb5cdce03bd889ee01b640ba8388e537e0c", "formal-neighborhood:fe158ec9621c8804d6fffab90957736e58486d3fab5abb064e8e61db87516f29", [
      "formal-neighborhood:fe158ec9621c8804d6fffab90957736e58486d3fab5abb064e8e61db87516f29"
  ]),
  ("formal-neighborhood:e86a55153b8d4733df2ffa4a5f3383455241cea0cb293ace15ca345b2666654f", "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", [
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:e8780aa6dd021ddd707da4a6bfd3224f75aaec1ddd5d765b944baf67786f2d78", "formal-neighborhood:377b598359d96a9c19e6e592b40795e9dd2c11436fd136716ffdfde2c1424a30", [
      "formal-neighborhood:377b598359d96a9c19e6e592b40795e9dd2c11436fd136716ffdfde2c1424a30"
  ]),
  ("formal-neighborhood:e87d7bea9190d55e5426fb0cd0254f5de4f87ad9e33a982fe03b487f50538e5b", "formal-neighborhood:6c52d61eb59e42a2294fe4379bbd39c3e9c1e59b6dab02acfe66b08861d988e1", [
      "formal-neighborhood:6c52d61eb59e42a2294fe4379bbd39c3e9c1e59b6dab02acfe66b08861d988e1"
  ]),
  ("formal-neighborhood:e8d33ec9bd5bf63050ab9c406b3f79d4832a2ea2ccd8a1822ba05bbf7d975056", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:e925fbcff384806aed8fd89095de25e617c272e0d40f7fcc90384b1e456c967e", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:e982371834cc656c78bec855c826e7403c13614cfeea0b6ac7b8f955df813328", "formal-neighborhood:dc5c35e938710e2d85c13651a27a08720c459b40824b0bf0f172e751402119a0", [
      "formal-neighborhood:dc5c35e938710e2d85c13651a27a08720c459b40824b0bf0f172e751402119a0"
  ]),
  ("formal-neighborhood:e986940735d9e82a600b9d77acf432efb26fe2f7db13ecf43168b42f0d852447", "formal-neighborhood:e37a9acc1e447af33fd156760c827a1fbfe4ecae6c5e054675f3b369c5b39569", [
      "formal-neighborhood:e37a9acc1e447af33fd156760c827a1fbfe4ecae6c5e054675f3b369c5b39569"
  ]),
  ("formal-neighborhood:e9ab90690c64d3980b3271b9b92be7f57472fde16836cfa572b3bc3496400e3f", "formal-neighborhood:07f2c3a9d990b17e5bdbeecfa1ac1f10c17431aebbaf9d2d7ad8f82465ce79b6", [
      "formal-neighborhood:07f2c3a9d990b17e5bdbeecfa1ac1f10c17431aebbaf9d2d7ad8f82465ce79b6"
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
  ("formal-neighborhood:ea1457394fbc5e1082be8b3ffb2c1ebeb13201a4c3168a996eae10410e771407", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:ea598096c4b017b3f048b6a8ba845fafbd715b507c1a3232327b9a71701ea47e", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ea5f8c3c271db99395921d34c78ec5450b60889206a9aa6335c4055a098edab4", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:ea774f662da83eca10c83ecbecd7e2386dc25cb15902c4614065f560d2b9cfc8", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ea865952514884a0e77d60d7357951e7d2b49c3f07760c20b4830a85a8efa81a", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:eaa9a068927cf88836d6e7f3b584424e5a1da327f758f0178cc3674c368383de", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:eaaac0f7ad931d54f0af34e8fd383b8edcc5e521df01feb108f5b91bba840d36", "formal-neighborhood:6c52d61eb59e42a2294fe4379bbd39c3e9c1e59b6dab02acfe66b08861d988e1", [
      "formal-neighborhood:6c52d61eb59e42a2294fe4379bbd39c3e9c1e59b6dab02acfe66b08861d988e1"
  ]),
  ("formal-neighborhood:eaac8a893906222d5c31b5ab8c6f4606dd0755793bd19710e67b62ec2094a1ec", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:eab6d01efd1b54867e3eda9658cd7a13077ac5537e93c5292933e5663d342ddc", "formal-neighborhood:99dcd590e94d19f8c797ffd44302e5f147d5707fa5bca4bd5152bc9786f917d1", [
      "formal-neighborhood:e715575969a98c46aa47725dec5e5221254b669521b37bf9c6a8850d08cce3a6",
      "formal-neighborhood:99dcd590e94d19f8c797ffd44302e5f147d5707fa5bca4bd5152bc9786f917d1"
  ]),
  ("formal-neighborhood:eab9550a49621fdb03e48ada21ee8172ea5ee666c2c16db229b1d339f999bb22", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:eab980bf9161cb3d3cf5df9019245d574d8cba65f444f327397523d0c1c74398", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:eac08d7fb00cc1a72fc481c5da6404d82b0bf777ab56b23e4d748355adad3eaa", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:eacddf08e99eef5a0e344f3e4bec9699ac4ff0ad379e191da9f2e5f87d4386b4", "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378", [
      "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378"
  ]),
  ("formal-neighborhood:eaed13585da5d13d944a79f3cc0a16d63fd0d8cf1a0ef2ed367a2a7d56e1bb26", "formal-neighborhood:22b2651c161a88ad9b8c68dd45f83d504288d8255f7ac3928987f2517d94d81c", [
      "formal-neighborhood:22b2651c161a88ad9b8c68dd45f83d504288d8255f7ac3928987f2517d94d81c"
  ]),
  ("formal-neighborhood:eb0f8297c3bffc1d2983a0603e35008c27b8580e62ec9035737aa2c8f0905c39", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:eb2820be1c77a655c3720d17760aa957f3f6810fc52c5612d60076876fa41cf3", "formal-neighborhood:22b2651c161a88ad9b8c68dd45f83d504288d8255f7ac3928987f2517d94d81c", [
      "formal-neighborhood:22b2651c161a88ad9b8c68dd45f83d504288d8255f7ac3928987f2517d94d81c"
  ]),
  ("formal-neighborhood:eb87007a31d89fd0ffc778a3cefc36798c22480265c67e88ea8a9a40abe45bf4", "formal-neighborhood:f503c1dcdb2e060f69459c6d2ca85e041f6de2fe0f5cdc2012ef9371a23f047c", [
      "formal-neighborhood:f503c1dcdb2e060f69459c6d2ca85e041f6de2fe0f5cdc2012ef9371a23f047c"
  ]),
  ("formal-neighborhood:eb9c9c88fdc7910d02fd1a75f39677b8b12ba48d14de0d3f06c5937d2b941bc6", "formal-neighborhood:a9c1c6487e1a36787b98fd201c202e9a2742f6e9fc4e777bb71f526e7cdf192c", [
      "formal-neighborhood:a9c1c6487e1a36787b98fd201c202e9a2742f6e9fc4e777bb71f526e7cdf192c"
  ]),
  ("formal-neighborhood:ebd9b5bc73793708e2dbd10e892a0947b640f4891bd993dc1639342bec3a14fc", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6", [
      "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6"
  ]),
  ("formal-neighborhood:ebfc725d08e2e165ec1152f812beeb377b86f70e8739a94befea6fcbcff9837b", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:ec0a9f73d5bb3e3484735ef2dc47e32db339f511d668be39ff4d4206c5de38f6", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ec21b98a877872d64beb7e7c8cce6cfed8cae9aa859aa40a1de9355f3a0a5b01", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:ec6658472e8a1f530a88a0436585a3831d9b6ed8cd923601622cbf5e378c7865", "formal-neighborhood:68443baa8b726b6ac9734eb9c2ebbfcdfc8a8b11a70686d9e23f0366c59ceda1", [
      "formal-neighborhood:68443baa8b726b6ac9734eb9c2ebbfcdfc8a8b11a70686d9e23f0366c59ceda1"
  ]),
  ("formal-neighborhood:ecad94480527c836af5149e6f2cf263459a12a75704efc20031d930c896ff912", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:ed131ce264759e272b4a5c8a82105bdae8e9f43219f733d70c162b57a113ca7c", "formal-neighborhood:6c52d61eb59e42a2294fe4379bbd39c3e9c1e59b6dab02acfe66b08861d988e1", [
      "formal-neighborhood:6c52d61eb59e42a2294fe4379bbd39c3e9c1e59b6dab02acfe66b08861d988e1"
  ]),
  ("formal-neighborhood:ed1358f84668fa75b5ae9ca2c2779ee0cd5be747971adc7611e1f333bf793bf6", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ed57e936d90099c62caadcc39f1b45489ad5865a69aee0d46cd3a251d31e0217", "formal-neighborhood:3b3ef9591dd4f52b01a6b82029faf2b7ff4bc78212e75451770cf88a86b6450f", [
      "formal-neighborhood:3b3ef9591dd4f52b01a6b82029faf2b7ff4bc78212e75451770cf88a86b6450f"
  ]),
  ("formal-neighborhood:ed5b2ced8e09d2aee4c88a2577508fac6d0d96be8d006ee683945ffe5438d3f0", "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f", [
      "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f"
  ]),
  ("formal-neighborhood:ed88c8472a766475b4448375981d5a66d6ebdfabe979cba9bcdc572566eec19d", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:ed897c7d327269c7bef17e77ca937f20b2bab10b0520d435e21e94c2e14a4ff1", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:edc1585ffa6c35c3f9972e6fbe38f53544e031faedf00f10e2b180e4f385e20d", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:edc9b2da3bb15e0c90cf321eec92b9d6241bd5bf4964b00eaa73b2fa89e825f4", "formal-neighborhood:648c87db79955f7c76c5a236ebb56be832448a0a0a40a828ba15090e1f1b9a35", [
      "formal-neighborhood:648c87db79955f7c76c5a236ebb56be832448a0a0a40a828ba15090e1f1b9a35"
  ]),
  ("formal-neighborhood:ee66a95bd595ba6c433f1d8ff317272b3a8f50ff3b3231a87985ea9de4f9fe9e", "formal-neighborhood:cd819d8f52f70cb8b091a65714b4c73d071f48ca3549d194ee0cc4cff33ed7cd", [
      "formal-neighborhood:cd819d8f52f70cb8b091a65714b4c73d071f48ca3549d194ee0cc4cff33ed7cd"
  ]),
  ("formal-neighborhood:ee76e132d26929f6bb6b324b6a28a04ccf34d480d335df1312b8a6f053e28d27", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:ee7ec164a3fd7ad0cf71fe6c0c62e669b3aa307f85e9c68a96fdcf20dba03610", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:ee83c57d0eaca301794cf6bb674d8253176b74b95c73df51e18ffd87b03198db", "formal-neighborhood:ed5b2ced8e09d2aee4c88a2577508fac6d0d96be8d006ee683945ffe5438d3f0", [
      "formal-neighborhood:ed5b2ced8e09d2aee4c88a2577508fac6d0d96be8d006ee683945ffe5438d3f0"
  ]),
  ("formal-neighborhood:ee8f018b11eac68e9425ef32e6f7a6df253296dfca6363ad9c2e38eeba403526", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ee9563e021a1ef09817abd2409c79d336c6edd74701914595558746607326441", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:ee9bca964809769ea37ad8e1599c8d7b61efa115443a6b525c0e1ed635142309", "formal-neighborhood:23c4bedec07dc9fff0e80eb902166d412c341d4358b304c80125ed55a0fd73ed", [
      "formal-neighborhood:23c4bedec07dc9fff0e80eb902166d412c341d4358b304c80125ed55a0fd73ed"
  ]),
  ("formal-neighborhood:eed351ca6cd2ce23545f42ee9a82d7736bbfa357b50c3319bf0a66f997b83788", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:eee196c740608493a92a1b6eba19c8a116eebba9dd32e33e97deb6d2d5044078", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ])
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L122064).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
