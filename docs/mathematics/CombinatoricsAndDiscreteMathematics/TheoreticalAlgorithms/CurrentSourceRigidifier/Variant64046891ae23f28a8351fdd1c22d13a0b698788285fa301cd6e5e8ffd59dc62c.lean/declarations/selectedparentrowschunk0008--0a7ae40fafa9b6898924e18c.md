# selectedParentRowsChunk0008

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b7a61372a83f73b8717faa50c6441815851b0cb0c60081122e00d95f8220e6b",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0008",
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
  "slug": "selectedparentrowschunk0008--0a7ae40fafa9b6898924e18c",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133769,
    "line": 133568,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a7ae40fafa9b6898924e18cd90812af9bea3e900e108a34d12b6f9f8f962cec",
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

Occurrence: `declaration:5b7a61372a83f73b8717faa50c6441815851b0cb0c60081122e00d95f8220e6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133568–133769.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0008 : List (String × String × List String) :=
[
  ("formal-neighborhood:3cc933d085ea5262408540ef0d13dd4f1f33adba38526051bd58efca033ae785", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:3d051c738bc1d8804c811ed50650d94b73bb21251dc41155ed790493fbc88bd7", "formal-neighborhood:988a02f2da98e17470d634246a1aef91c8c9b05fd6be2a2faa89cd8e111e3f1d", [
      "formal-neighborhood:988a02f2da98e17470d634246a1aef91c8c9b05fd6be2a2faa89cd8e111e3f1d",
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:3d343f8db9eee8d78198e763b14868487416c66adf32668b0ee4e84778d5af8d", "formal-neighborhood:19077cda15fb227f903e41af19ed9034270b1c6faedaa25d9dd5dcc2de69fb0f", [
      "formal-neighborhood:19077cda15fb227f903e41af19ed9034270b1c6faedaa25d9dd5dcc2de69fb0f"
  ]),
  ("formal-neighborhood:3d9add2440827927ed507dea4885557d40bde34225915f1f42bd3e799f6ab8f4", "formal-neighborhood:68443baa8b726b6ac9734eb9c2ebbfcdfc8a8b11a70686d9e23f0366c59ceda1", [
      "formal-neighborhood:68443baa8b726b6ac9734eb9c2ebbfcdfc8a8b11a70686d9e23f0366c59ceda1"
  ]),
  ("formal-neighborhood:3da9fbce44be2290b3ef96aa2788e18d58587e9e06d9b3c9be412d1cd2245c2c", "formal-neighborhood:ed1358f84668fa75b5ae9ca2c2779ee0cd5be747971adc7611e1f333bf793bf6", [
      "formal-neighborhood:ed1358f84668fa75b5ae9ca2c2779ee0cd5be747971adc7611e1f333bf793bf6"
  ]),
  ("formal-neighborhood:3da9fe2f7f0e5b2cd779ab79f0609adfb344db3cfca39b03df746da486349ea7", "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", [
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:3dccd1012b27c5a1992653317688ec22e0210c3993556042f6ad0ec2514f5462", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:3dcfe8422b4e378a4eb286d37ae10282519ff202de52c814b8a5ee6f3008bb4a", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:3deda6b38620147b55d1758d88ccdb3f38b18c455eb5bf05c2af62a660bfb86a", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:3dfe8cb344dc2000bf5cdb20dd1f63436fd1c826474adddb224951e7ad763392", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:3dffe0886a244b696248d0a15d28677bbd11bced85e8e5bd1155fa520a98b8e9", "formal-neighborhood:1d8bb2af7f758203e7062c2ce241877061395f916e8e1e7da1985c7d22489391", [
      "formal-neighborhood:1d8bb2af7f758203e7062c2ce241877061395f916e8e1e7da1985c7d22489391"
  ]),
  ("formal-neighborhood:3e5da354ca7a692a5424fa9fe7421b6b477b382d46cde47b036f1e62dcbbedd2", "formal-neighborhood:9dcb1c4ecbdde47cfa361be7ef8202b51b6f4507c44ffbacf58e8e6f893f82eb", [
      "formal-neighborhood:9dcb1c4ecbdde47cfa361be7ef8202b51b6f4507c44ffbacf58e8e6f893f82eb"
  ]),
  ("formal-neighborhood:3e8ac12534bd9e9ad8de8acbd6f0d5d499605fbafd972576564c93596ffbe979", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:3e98062e43917ff5a716a0bca0f010f70228912fa0a46952c318ed54d3c68ba6", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:3eae955d65f2d781d29e8087ab5427b81ca43aea716a7620ce9c9f7bfc991f54", "formal-neighborhood:3240e8737ea9f5c516a8f1c498474c93ca146ef50ec95beea6a344b1e110f00d", [
      "formal-neighborhood:3240e8737ea9f5c516a8f1c498474c93ca146ef50ec95beea6a344b1e110f00d"
  ]),
  ("formal-neighborhood:3ec41f39a3660d4c442e9ed44c8e5194be3f72d34b5986a09771211be0710d25", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:3ec464f7af6ec350eea04c588ef6b36931b437a8956b25665610bc4ad930eb4c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:3ee04ff255a1cc8bb4efa15b38a7112f9ea4ac13fe443a85954b9663e41db06e", "formal-neighborhood:b379aef469502f299db8484a001143f6459cbe430bd9c6f2ccdf049ae0297138", [
      "formal-neighborhood:b379aef469502f299db8484a001143f6459cbe430bd9c6f2ccdf049ae0297138"
  ]),
  ("formal-neighborhood:3efe51fecc5cf8e9fb5b5630c6aa32e764625a7946c5a96b0e05c771a81c3fc6", "formal-neighborhood:fa53402ad15f5b7eee02fade8383b612cd02ff439c4da4c60c54f07961ad9030", [
      "formal-neighborhood:fa53402ad15f5b7eee02fade8383b612cd02ff439c4da4c60c54f07961ad9030"
  ]),
  ("formal-neighborhood:3f39741487d4368ed53a2847d6df7ab0aa9342f159ef208f419030df630cb2e1", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:3f4d9c91fdd0ec5c3b9b19f054244f6000f4b66dc916539f42c04f2f10f40e33", "formal-neighborhood:99dcd590e94d19f8c797ffd44302e5f147d5707fa5bca4bd5152bc9786f917d1", [
      "formal-neighborhood:99dcd590e94d19f8c797ffd44302e5f147d5707fa5bca4bd5152bc9786f917d1"
  ]),
  ("formal-neighborhood:3f50eab69681800b3d70d3b0b2c58808d7d01c969c1d69722e9056085a4dd500", "formal-neighborhood:15b066d755ecdb319912c2691c414db7e98e9ce4f282e5d84841c49c8b13ca7d", [
      "formal-neighborhood:15b066d755ecdb319912c2691c414db7e98e9ce4f282e5d84841c49c8b13ca7d"
  ]),
  ("formal-neighborhood:3f6180bcab94a0c55c4901c5cdece20c666df86acd74f518bc3f8d6737a7c54b", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:3f6f224a1bc5d518f9fcfaa3ed8b9fb7be2fb5e3d5dc487233bb21a3a49e3992", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:3f97410b2aaabc75919df83b257a5ecc361df0441b56981ca39a7f155f1305a7", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:3fcc8885eee5fd12691c2c3afac94fec82ee4ef238d7284637c658f4888a416a", "formal-neighborhood:10df30505a11183f493570089b0808147dbcb86933ce38d0629c47a4dba134f7", [
      "formal-neighborhood:10df30505a11183f493570089b0808147dbcb86933ce38d0629c47a4dba134f7"
  ]),
  ("formal-neighborhood:3fcd4e42eae4caa7a55f0bcadecb5c2c0a92439f6781e6c806f8290ba7a5afc1", "formal-neighborhood:35d7e7db7b0e4c2fa437735f465627054635a5b1916f396c44ac94810a546d0e", [
      "formal-neighborhood:35d7e7db7b0e4c2fa437735f465627054635a5b1916f396c44ac94810a546d0e"
  ]),
  ("formal-neighborhood:3fe51d6b80797460e312540ec460585b17c88bc3a4e7d86a7593f5511b89a1f0", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:404085bfd471c3f24f33a1732f6c85112335daf7bf9cc56b5a693365cd4774cf", "formal-neighborhood:e7b28d477c8421bb29bad5a4eaaaa64a7995c55bc3299163e8462338e22f93a0", [
      "formal-neighborhood:e7b28d477c8421bb29bad5a4eaaaa64a7995c55bc3299163e8462338e22f93a0",
      "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a"
  ]),
  ("formal-neighborhood:40647070fd599a073b96b32891a2198e92aa127a62be1e7a53ff0286451828a8", "formal-neighborhood:fed4d3d4e96e32edf94744db129a08a36fd509ba6c7251a305fda41b7cefbbd7", [
      "formal-neighborhood:c027523179d31738d3ae86e3b6f96261e843a5198090b9c290a41c509d4ce753",
      "formal-neighborhood:fed4d3d4e96e32edf94744db129a08a36fd509ba6c7251a305fda41b7cefbbd7"
  ]),
  ("formal-neighborhood:406c65a4ce5faf5cce9580fb02c5c58ffbc0775526a539f9421ba8c41c778b7a", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:4089344070d43e04e92996d60968edba755183133e14a212fca7a1217e21d2db", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:40f0abedd125a842656577e74d2ee3cb67ce8f630b61775bb41e6f86042e00b1", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:40ff47f2cf9b0e01eaf4d48f2a3c7afcde789f7a8ec253aa7cced79838835a03", "formal-neighborhood:be89f7a3d34265d94cf60e2ce20b2c62eb5e0c0dde6bd8895082158ae82b29a3", [
      "formal-neighborhood:be89f7a3d34265d94cf60e2ce20b2c62eb5e0c0dde6bd8895082158ae82b29a3"
  ]),
  ("formal-neighborhood:41156e34daf57bb5b0ece147b553cd163eb90e388108a298f5c65eef0843af58", "formal-neighborhood:fe158ec9621c8804d6fffab90957736e58486d3fab5abb064e8e61db87516f29", [
      "formal-neighborhood:fe158ec9621c8804d6fffab90957736e58486d3fab5abb064e8e61db87516f29"
  ]),
  ("formal-neighborhood:4133f6f240eff918b1e8670e5a34ab5672e36ca687b839702e7fb37a511d6ec3", "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb", [
      "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb"
  ]),
  ("formal-neighborhood:4190531fe551aea46cbb0fc53d0c477b5ddfbefe2cd310aa7a7910500a97b028", "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", [
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:41d573320ae6b9cceed7a0f9f491d4c7aaa27ab7cdc3a97cbc08c8ab2b7e06e8", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:41e168b48dd649ee81f1ad96a7a31c6e908738b0e11e79ef16afe90bd86e2451", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:41fe807fc15dcdb16c011998129519ef1e4d3afb5ae374f03f7a6c3f6c109ce6", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:420a805ab3471634e5819acc2e242c21807e35b57621ea256061179d902c9924", "formal-neighborhood:41d573320ae6b9cceed7a0f9f491d4c7aaa27ab7cdc3a97cbc08c8ab2b7e06e8", [
      "formal-neighborhood:41d573320ae6b9cceed7a0f9f491d4c7aaa27ab7cdc3a97cbc08c8ab2b7e06e8"
  ]),
  ("formal-neighborhood:420e73d2c96abf4974401ddd70f118d9667d2c0db90c56056d03ccd5b5c47a09", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:422f384220a38b93568b14953643dc4a5ecc7a1ae03dad6da25e7507804f9ab5", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:423fa771fdc209b22d0bb07d151caf7febc1aee157d14e6cab950f7d4b1ac03d", "formal-neighborhood:903d25208285b5f43f5b6083c0487ae2e9544da16c202f722df53460f0aa7596", [
      "formal-neighborhood:903d25208285b5f43f5b6083c0487ae2e9544da16c202f722df53460f0aa7596"
  ]),
  ("formal-neighborhood:4245034475df9c4cf204ff9e2a10d32ae32255ce256318f14b69332da3e697c4", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:4265a29e96cfe17ef511555e52d32f703c2aabe7024f866486cd6e070c9b244a", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:426969dce9fbe95f111287f297afe9ba779e3464ca0a7113135b3956daa80740", "formal-neighborhood:18de0ee2a2b088c54dea1387b37bdb0bc7d883e4ccb6a20ce8de2d3b1b130cde", [
      "formal-neighborhood:cdeb3c077ffbbb2053397708397158604c5432fdab8e37a0b167027e7ae6aab1",
      "formal-neighborhood:18de0ee2a2b088c54dea1387b37bdb0bc7d883e4ccb6a20ce8de2d3b1b130cde"
  ]),
  ("formal-neighborhood:428618fcbef6f904032fb72965b38a7846334c76493eaeb4afbcb6129bf9325a", "formal-neighborhood:864a46ba86eff0b3e4828470517ffa1e5eef8b6d8806b72c48645d6210318ad0", [
      "formal-neighborhood:864a46ba86eff0b3e4828470517ffa1e5eef8b6d8806b72c48645d6210318ad0",
      "formal-neighborhood:732df222b418aaa75f8c317334abcfe51d90c71d829ae02f09336bb2dc41893e"
  ]),
  ("formal-neighborhood:42acf861b2503b7cc291f292cbfb6bf50f12964c1b0da0c638fa519b21212123", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:42aedfe8b40e4da35ec2c0cca7bbf4e199b0d562ab652a546e57feb18858bfbd", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:42cc1c6cbd0ed40d70114b295d455574c42a9feebdde6547606cb701bdab4583", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:4333ec284f6f6ffbb04fd4a25db4092886a1ea4ba89ecf6be498a65facd9bb5d", "formal-neighborhood:da40cf4500ad5a07503dfa87e3e7a17a99df33fdd64203069c4a86cce77a33ee", [
      "formal-neighborhood:da40cf4500ad5a07503dfa87e3e7a17a99df33fdd64203069c4a86cce77a33ee"
  ]),
  ("formal-neighborhood:433882360942c26013b319388002e9bdaf1fab7e51687eafecf3330dea7661dd", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:434c4ab2972c562cb3af44b023a0101b7380f59d258f8239dcd623b8bffddd70", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:4361dc0c05c512195dc7545c49744d9e003da2ff45fb2969d38c26a82a70ee36", "formal-neighborhood:c56879317db7f83cedcb63b04cb92d8f8d3d085cd2d66c0e6e88f040b85ab93c", [
      "formal-neighborhood:c56879317db7f83cedcb63b04cb92d8f8d3d085cd2d66c0e6e88f040b85ab93c"
  ]),
  ("formal-neighborhood:437976d96ba3c279a80eb19892ef04f8dc420d2c3baefb5c6001138279e0d820", "formal-neighborhood:ce0e3eda72d86f39e4e7e073b8d61830e2823fb8d066c3516303e3e6bf4b287e", [
      "formal-neighborhood:ce0e3eda72d86f39e4e7e073b8d61830e2823fb8d066c3516303e3e6bf4b287e"
  ]),
  ("formal-neighborhood:43976ea859461a5965fcdc34c9dd14796c0b7017c85d15032f44f94df11b2688", "formal-neighborhood:fe158ec9621c8804d6fffab90957736e58486d3fab5abb064e8e61db87516f29", [
      "formal-neighborhood:fe158ec9621c8804d6fffab90957736e58486d3fab5abb064e8e61db87516f29"
  ]),
  ("formal-neighborhood:43a3d93ca9af221bde9e11557ca426d2bee0ba018cc57ef84a6e4b3f1d700cdb", "formal-neighborhood:2a151e0e8527ec5014f4e09c420b4fed4937ee14b63912267cbeccadeadd1c46", [
      "formal-neighborhood:2a151e0e8527ec5014f4e09c420b4fed4937ee14b63912267cbeccadeadd1c46",
      "formal-neighborhood:9974e0eb7b3514c52de76d4342389baaacc3e7aa6afddeb9180684ed683fcd20"
  ]),
  ("formal-neighborhood:440e4be343f4c890585f781d9782d544a295d14dd10a274498691ed669c098d4", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:44347c957cb51dc00fd1b647ddd5cbd12c6f4e2d83e49333bd44a8b4df33f889", "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6", [
      "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6"
  ]),
  ("formal-neighborhood:4436330e863637e94669791b1badb6f321c8555a7e916545e809140cada21d29", "formal-neighborhood:7eb4b049e752337f58ff0f813042eeaf10dd5bf74b83c155221f937c9fb53543", [
      "formal-neighborhood:7eb4b049e752337f58ff0f813042eeaf10dd5bf74b83c155221f937c9fb53543"
  ]),
  ("formal-neighborhood:444b453fe21a0d2da39fc0c04aa3e2b5e23f501d4e88e9066f797bce365d029c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4455f8fb5b677b397fff60e419cc473dce53e5cdaad88171fb6bb1f83bf3908e", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:447c22f38e6d8224927af9d47253d46cea23e6850e0a5c33423a8b8ed8ae13be", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L133568).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
