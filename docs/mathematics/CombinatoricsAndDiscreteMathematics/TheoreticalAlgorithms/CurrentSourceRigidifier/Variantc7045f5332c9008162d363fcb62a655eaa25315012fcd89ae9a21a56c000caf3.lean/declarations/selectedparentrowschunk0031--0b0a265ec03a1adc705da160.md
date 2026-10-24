# selectedParentRowsChunk0031

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2e7381be154ed62befb56a1b965d480720fa6509abbe778a9e8cbff4e976279",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0031",
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
  "slug": "selectedparentrowschunk0031--0b0a265ec03a1adc705da160",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139374,
    "line": 139176,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b0a265ec03a1adc705da160a0c57f471cb594e2db0ea4c6b5d840fab4977f8a",
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

Occurrence: `declaration:c2e7381be154ed62befb56a1b965d480720fa6509abbe778a9e8cbff4e976279`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139176–139374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0031 : List (String × String × List String) :=
[
  ("formal-neighborhood:f114b11d5f1d899160d5c3ea15b462b128e2318f32a63a81d7dfa9ac95277a57", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:f116cad0544afb183c1a6c76dfbcd8dd3896cd36a82c708cf452b918b527bb51", "formal-neighborhood:f9b41d4d3cfb0790461c799eab88d978600ec802be5d0840087f75ae1c8657d1", [
      "formal-neighborhood:f9b41d4d3cfb0790461c799eab88d978600ec802be5d0840087f75ae1c8657d1"
  ]),
  ("formal-neighborhood:f11e290a2b78a8206e4f9764fa54bbf985f5cf07bee9e0e447e058aad0c63a3b", "formal-neighborhood:24cfc33c923666ed51552eefeea631c9c0f47438ff326b5c086da920abe7f1d1", [
      "formal-neighborhood:24cfc33c923666ed51552eefeea631c9c0f47438ff326b5c086da920abe7f1d1"
  ]),
  ("formal-neighborhood:f126b8d3e655aa1833ff78ff4d5eb8304b7bd19f517348b2f444c45aeca626b5", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f1272f39aac3cb4656c17c16ccfd03b18329593f32d207167ec12e3fa44a8738", "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", [
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:f12be9d292d9f041ed010e4ed2541e4eb4f0e858b66d52c4e80efc84df8b6ea2", "formal-neighborhood:07f2c3a9d990b17e5bdbeecfa1ac1f10c17431aebbaf9d2d7ad8f82465ce79b6", [
      "formal-neighborhood:07f2c3a9d990b17e5bdbeecfa1ac1f10c17431aebbaf9d2d7ad8f82465ce79b6"
  ]),
  ("formal-neighborhood:f1379c0ae9358d4820d0f9032ae52be66c51572680252b647bd7d3563f407f1d", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f151d6930d88db4f75ab79b914da7eee1f9ca63c94616c02c12066d7191899d9", "formal-neighborhood:22b2651c161a88ad9b8c68dd45f83d504288d8255f7ac3928987f2517d94d81c", [
      "formal-neighborhood:22b2651c161a88ad9b8c68dd45f83d504288d8255f7ac3928987f2517d94d81c"
  ]),
  ("formal-neighborhood:f1587ceace4c7db0ab36d2719cf14913d554aa4819cd601a5156d5aba544572a", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:f1c03782ee8dd3217a16c86e2599d4282d3295f68a34c0e4984ce0017201c6c6", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f1ee98b6cd286bfb1fa63a7e12b6ce3235450207386ff06fbe9ddd7bcd65dc47", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:f215ff5f028edbb11b3489ed457ade187dd660a0744651c6662c6bbbe5987712", "formal-neighborhood:bbe03a46272c93b5aefa2b7216991f9a6fd0550ad2ad23a5f0e921711fa564e2", [
      "formal-neighborhood:bbe03a46272c93b5aefa2b7216991f9a6fd0550ad2ad23a5f0e921711fa564e2"
  ]),
  ("formal-neighborhood:f2187b49ab270599ef3bb92528eeecaaf79ffede06fce69c9fa28acf5ede5acb", "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a", [
      "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a"
  ]),
  ("formal-neighborhood:f23923c11dfe338f4df13bda6d209fc72d6ae812417f3d3be447e8e9c04af4b5", "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a", [
      "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a"
  ]),
  ("formal-neighborhood:f24c0b13ff51bcbfffb4eac7ee248266cb5fcbbab8e44c06a924557233d3e878", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:f2609e7c18157a9b83a07f01ebabb427d05e75ffb573ac249ca45c8274cc51c0", "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6", [
      "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6"
  ]),
  ("formal-neighborhood:f2627374bb8dd19fbd95f691fd2f8e22a0c28a72ab0b3eb9107a94875f6844c4", "formal-neighborhood:f503c1dcdb2e060f69459c6d2ca85e041f6de2fe0f5cdc2012ef9371a23f047c", [
      "formal-neighborhood:f503c1dcdb2e060f69459c6d2ca85e041f6de2fe0f5cdc2012ef9371a23f047c"
  ]),
  ("formal-neighborhood:f269dab0cdf3143b9820920be11ba8f99ec1125b8e0ab3d9789288da9ff6b07c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f27cbd79e352a0273eeb484e54d1ea4d61d382e045f08eebf3a6774efe914862", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f2d0ba79dffe9bb1e7e7a19653586409d594b71a227180d1b9f86611060bcd73", "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", [
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:f2d25d41c69ae4bdad86d5cb88bbde4d65e287d79a16ab8b4e896e26450820b2", "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6", [
      "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6"
  ]),
  ("formal-neighborhood:f2e8365c984b751022da3dc2040a5186be9b7207811eee857e524f4c3278b539", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:f383fcd9568153f2ebf58244d99bcaf8947f311b05f7e6a74c87f89f7a16d109", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:f3ad8615ab68ad9a0ecf0ae68882165f82d1d5db12c1e385871c73ef19ea2795", "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", [
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:f3cd02791eb907e4d6d3dee01802a804f72da287e822e6cf6e51c57cd9eff2c2", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f3e078852abcfde6619e7303d6d3e264db444ac93c8f99ad05ff8bd54b196b88", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f42eb86478e3e2f1d23eb7046f6901c1bfea06fb2d228ce1824b8ef748fea228", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f4476d08666e9196b0a385ecd1a92fb7e544a265b1ca52b97558326005b9ff9a", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:f46b8c3ed8871c8d9b44866ee303e3c6dd3c9bb81223c90c8cf791283689599d", "formal-neighborhood:fefa39290137c0f7c1dd29fa56bb46085a90d89a991bad37d1389a1bf6469756", [
      "formal-neighborhood:fefa39290137c0f7c1dd29fa56bb46085a90d89a991bad37d1389a1bf6469756"
  ]),
  ("formal-neighborhood:f46eeff399156571b771bd82a5ab3ccaf4dd15ce682932a1ada8b5f6613305bf", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:f47664c3eef03725fee82965d1b1ba2a7f0d5390ee52f0b99708aea1d1846778", "formal-neighborhood:e12e873c1a5a0b141ad7511019cad192b3f10becde728d8aade32fb09d12891b", [
      "formal-neighborhood:e12e873c1a5a0b141ad7511019cad192b3f10becde728d8aade32fb09d12891b",
      "formal-neighborhood:ee76e132d26929f6bb6b324b6a28a04ccf34d480d335df1312b8a6f053e28d27"
  ]),
  ("formal-neighborhood:f484af3179d66937dcaee2a0809237c904f0ab1501671f24149ec9140b5634a4", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f4f779851c47386b596ecf260fd3f07abb9042d141f6c0b20e1c313c52e9d0e5", "formal-neighborhood:16bd97e406d1be21b54b659820a7355d479a96e6fb82812c652d103a9af88100", [
      "formal-neighborhood:16bd97e406d1be21b54b659820a7355d479a96e6fb82812c652d103a9af88100"
  ]),
  ("formal-neighborhood:f503c1dcdb2e060f69459c6d2ca85e041f6de2fe0f5cdc2012ef9371a23f047c", "formal-neighborhood:6dab67dd7fcfdcef3411db88148c0312b0d6c0536443896f685d5d6ea8666bfe", [
      "formal-neighborhood:6dab67dd7fcfdcef3411db88148c0312b0d6c0536443896f685d5d6ea8666bfe",
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:f50c5ba742a7e04d55e30b2036055e0e91b9154726675e765148e4c18a8daada", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f513a89cf196b90c05cb275bcfb5ad326234c174c66dfd968a54cec2d6c891b3", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f531b8b0ac3c7674922760379354151d7abac8ecd747c0f341ae50bfdb9dc9d0", "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb", [
      "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb"
  ]),
  ("formal-neighborhood:f56c275a4e6de2a6b70ef1066541d6a1ad5b66c460202d4aa67f0e8af20f3729", "formal-neighborhood:6f724a3bd03d2123c52992f49c3e4060f982e30367afd8a07cf8d2a940548ca1", [
      "formal-neighborhood:fa53402ad15f5b7eee02fade8383b612cd02ff439c4da4c60c54f07961ad9030",
      "formal-neighborhood:6f724a3bd03d2123c52992f49c3e4060f982e30367afd8a07cf8d2a940548ca1"
  ]),
  ("formal-neighborhood:f570d90dd2e70af98d5acf7046066a673e5f1cc0c57012e7eaabaf2a96f3cfd1", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f5d2e59052fc977ff5dd106bc1e39f74b303a5314eaafc5926eea4e0cd86f3d3", "formal-neighborhood:bc4d87524da11f184b63e08a568670bd85881d7a24372aa38bcea8de95adeca0", [
      "formal-neighborhood:bc4d87524da11f184b63e08a568670bd85881d7a24372aa38bcea8de95adeca0"
  ]),
  ("formal-neighborhood:f63666590d147c1dde95a9c824238edf6187b82094a781ba4e95484d1f178b01", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:f63b732b78a7d570f6b2c4c91f6fab5ac12088aa58a7a13fabc93892abbbdbbc", "formal-neighborhood:dc5c35e938710e2d85c13651a27a08720c459b40824b0bf0f172e751402119a0", [
      "formal-neighborhood:dc5c35e938710e2d85c13651a27a08720c459b40824b0bf0f172e751402119a0"
  ]),
  ("formal-neighborhood:f65fdc9062931a6908d92e30eeb2305b09438d602fc31af693baaa378fe11f7e", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:f6634e5eecf5e026590c58edc0144235733a62e6574c496b9f2a4903c1315bd9", "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a", [
      "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a"
  ]),
  ("formal-neighborhood:f667805a17ab36b48e41f02200c289f9a2bc64c47102685592110998478b6807", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:f687a223e9b81b4da9d790ff779eb33ef3096e3a509c1938ad8807e26f3b3aba", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f68d7aa5fe39cdf1adac6c563dfd205a9758a8ed07d515dabf80b97355ae11f2", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f6bc8b8ee206fa500541689fdd8b2a8d04c15af3afbb887e942bd17597556339", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f710682f189ad49cdfee90fee6f0ebb5e3f8b697f39df63522a2d7f9b668083d", "formal-neighborhood:125c36571e6c8e08671cc3a07899c40b1f2820c0c0768f4cc6bd9dd7a692717e", [
      "formal-neighborhood:125c36571e6c8e08671cc3a07899c40b1f2820c0c0768f4cc6bd9dd7a692717e"
  ]),
  ("formal-neighborhood:f712b9d89a1da8c2e1deb0847636913e6e307a02222ae21c1cacb845bf198909", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:f722a9f9d21109d114cd9a695c9322cad2322b7a7ea2cd998498a5da7b61ea03", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f730a365639593a523ce56b9b27145158b75746534eb8dadaf64c9d1c9070938", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f78d7ef7b2781fd763cdbc0fa44d1c2a71b8166f39b1d6548929e1ce39910b86", "formal-neighborhood:ef6b3777b0f728ce110b4eeb887cf17e072ebf5547833a9312dafa8ae34192e0", [
      "formal-neighborhood:ef6b3777b0f728ce110b4eeb887cf17e072ebf5547833a9312dafa8ae34192e0"
  ]),
  ("formal-neighborhood:f7ba8f6b5eefe4ee97a6ea8086c368075995540395b402c4fb2d7ab53f867967", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:f8061457d24b16004472b3af796448b1570d5158bfbd48d77f94a65125464dc8", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:f81b3e1e2d6ceac0a29a00d94daa26abab32341436389c5fd96c486c259c949c", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:f87204557ad9d63d6bf102bad3023a2d4981c6dc9493b049edb1a52fcd2228ee", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:f88d9ba1df6a2f7e5adc94886da4a82ce3df83dea19e62b7f8b9bfe0b659ff3a", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:f89f70e66cb569b78fb514c13731da30e4716471be81e459585cbf8810b168b3", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f8d4a47e8d6fcc55a02de7d708f7b183d59ad9e03bb4f045f863b8ddea0fd45d", "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", [
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:f8d5736e170a2191caf86fdd10964b380b99dd6aaa9b2f136c9199d8245f67bd", "formal-neighborhood:732df222b418aaa75f8c317334abcfe51d90c71d829ae02f09336bb2dc41893e", [
      "formal-neighborhood:732df222b418aaa75f8c317334abcfe51d90c71d829ae02f09336bb2dc41893e"
  ]),
  ("formal-neighborhood:f8df0558852aeb07538ff89ab0ee402d3f0b0904c28d9baebba5a0cee7c454fb", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:f8e5aa0682c1877bb8bb2aff5de8319093554ebf19622001271d4148c9f039fd", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f8fbab5b4becb176dc6c29ead9ae93dce130b4c3fdfed7b69f7ecd370faf9473", "formal-neighborhood:aa05df4ddb4a38180d5fed3e5ad7b971e513f3ceed2384c16c5ab7820b12aec1", [
      "formal-neighborhood:aa05df4ddb4a38180d5fed3e5ad7b971e513f3ceed2384c16c5ab7820b12aec1"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L139176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
