# candidateSelectionsChunk0022

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e77c4c8a86fe353e2d66379df9427104648500024b21c6a779a4cfe3b215a032",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0022",
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
  "slug": "candidateselectionschunk0022--e3cecdedc600d8eb500eb0d2",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49243,
    "line": 48876,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3cecdedc600d8eb500eb0d2fc4a828f0b796c2b0b50b43973a70f658ea8f180",
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

Occurrence: `declaration:e77c4c8a86fe353e2d66379df9427104648500024b21c6a779a4cfe3b215a032`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48876–49243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0022 : List (String × List String) :=
[
  ("name-candidate:27ae8d38186b0c3f2da7c6c83778bc6df8b9d3a4edd3449f3401880dc8446b48", [
      "name-candidate:2573cb354148a26eaceb1bfd57c28902f4eb535d33d9ecfb614146c837db8461",
      "name-candidate:27ae8d38186b0c3f2da7c6c83778bc6df8b9d3a4edd3449f3401880dc8446b48"
  ]),
  ("name-candidate:4d4301f01c026dc4799d1f375bc158bfc3957192ca1e0f40838635bdcd2d4b7c", [
      "name-candidate:0594d2118994a2b8321c1510c7399d3aca78fc8f7fb036cb50bbbddc4497417b",
      "name-candidate:4d4301f01c026dc4799d1f375bc158bfc3957192ca1e0f40838635bdcd2d4b7c",
      "name-candidate:6b11f09b79d74b243ecde9212d91c1d44adcc5a48fc7607fa7809df121258641"
  ]),
  ("name-candidate:08c1e237879215fe07224a5e2b327bb4707015486346dc631708a570944560c8", [
      "name-candidate:08c1e237879215fe07224a5e2b327bb4707015486346dc631708a570944560c8",
      "name-candidate:2a9f44846538b813bf4f8e779b26291a097cd7aa507d391f605e3ba2cb7955ff"
  ]),
  ("name-candidate:b0ff2ae389cee0c4fee4d00176ce0e713a5a7640354c8551d7e4277e88e60308", [
      "name-candidate:1cecf034d4bcf88f89912f9f20cb853441351cb4a86e78bd22473bad7a7a5764",
      "name-candidate:51b7d67649ca0d2b64f17e53821e7218073d01b550acd87f5f83b6cff0b98273",
      "name-candidate:64f1facfb3c284c1ee239504ba32d2ba3d95d3acafb81748cd14cb59bcc89d18",
      "name-candidate:b0ff2ae389cee0c4fee4d00176ce0e713a5a7640354c8551d7e4277e88e60308"
  ]),
  ("name-candidate:d94de47d7d7aaa7d3e0034d6bc1919b1c686bce4af6dfab8ef3aa82f37dae7f5", [
      "name-candidate:618f2adaa38516c22a868751c6db0c9f924d33fe9f9780843f3d4167ef11e918",
      "name-candidate:acf536b5cedfce4bb295f514704c56ebc592d84d18b3b4029aa7a883d5dedadc",
      "name-candidate:d94de47d7d7aaa7d3e0034d6bc1919b1c686bce4af6dfab8ef3aa82f37dae7f5",
      "name-candidate:e2e5e5f560e9a2bf23c787b70fe799ae741fde8cafde59a2569d1b4137ba97bd"
  ]),
  ("name-candidate:9997073c3430af4b302abb171b19a273453bc8d6ebd4f148793abc1421e36727", [
      "name-candidate:21077df6154f36fde0855651c21edaceb0d656d2cfe15732a17fd1ae3d57b088",
      "name-candidate:7a5f4b056acdfc3ce3f23f881717be57839769cf9b8b7d9d5bdbc8d6ed194fed",
      "name-candidate:975622d218ff2dce69f44504d4f725c2d87f73f59771cc6de65ec3d13b6bfe1a",
      "name-candidate:9997073c3430af4b302abb171b19a273453bc8d6ebd4f148793abc1421e36727"
  ]),
  ("name-candidate:6551e2ea3186b8ab9040a5a108ff895666442e0d35d3427c53b76238deb6cdc6", [
      "name-candidate:1471e3b38686e1e411e565a5042fed6dabf7939de604a435f5e39e21e5b83496",
      "name-candidate:6551e2ea3186b8ab9040a5a108ff895666442e0d35d3427c53b76238deb6cdc6",
      "name-candidate:bbcfb2f67ae94599c9236f47cb4910e99cf50411760e4d5e9763c45094e51e06",
      "name-candidate:fb1b7b5a9bf9b31b13be507da3703bc6e07da26e77df77f28317b9fb47b79c4d"
  ]),
  ("name-candidate:a34d59054c27d92a71673d82e14c7991f0d5de31428ec3a0306c2f552b17879e", [
      "name-candidate:a34d59054c27d92a71673d82e14c7991f0d5de31428ec3a0306c2f552b17879e",
      "name-candidate:c482dddf487b0f1834a76d14f03b908b6f4d1e62f654c0e59167914dc49b4788",
      "name-candidate:dbd6833300e7424c7619594b1aa60d05f2ef638373f1f5e6fd3ed7f733360b4d",
      "name-candidate:dd5d2751036c17d5e6094ecd7d92be5afc5fe07956e3fab54941b12280f713a6"
  ]),
  ("name-candidate:ae2301be43c0f12d6efb1f04c5e4a877ce176bf3bbaf448c0f25cf50138424e8", [
      "name-candidate:592d2348ddef15cf81ed6880c8468dde11b3b58e79dfa0565d750e42b37019dc",
      "name-candidate:ae2301be43c0f12d6efb1f04c5e4a877ce176bf3bbaf448c0f25cf50138424e8"
  ]),
  ("name-candidate:6599fa935b90fcd9261b5762a8885627a3636af2c189714f847d342881246d70", [
      "name-candidate:02712caf98debc917f932a3d443aacf4ad16cb5546ea4dbc61732ad82af7377c",
      "name-candidate:6599fa935b90fcd9261b5762a8885627a3636af2c189714f847d342881246d70",
      "name-candidate:7c3611407f05aa84d06228c47df5990e1f2a5199974972f5bb7ae1ec410f8e4c",
      "name-candidate:ea54ef94b7230089985e79bb0a3c64ed32c33459c41249c0aaba81f30f049d5e"
  ]),
  ("name-candidate:71336e296ce43d902976672bda28635a4595c7af57844bb106a59e00a6a60b21", [
      "name-candidate:71336e296ce43d902976672bda28635a4595c7af57844bb106a59e00a6a60b21",
      "name-candidate:a748d411777dfcd4cb2458b42424696935afa2a1f03e928a5f69a1a222966a51",
      "name-candidate:b1bcdbe591ee69f50316c56a994f24fa4f9174e56570306554e4ebcb80c7ea6d",
      "name-candidate:c43f813c99e3742a18a94c2ab4c89c6f721dfedd72783fad67a6e2d1159168d6"
  ]),
  ("name-candidate:3b225d54988f3cc60033ff4e2a763e2204869857fc6d3cb533fb087e8e426bfd", [
      "name-candidate:1b4362d7a4d277d64b798d95d3425d9e3fe8727ca61da1c19422ad4f4d150c17",
      "name-candidate:3b225d54988f3cc60033ff4e2a763e2204869857fc6d3cb533fb087e8e426bfd",
      "name-candidate:8c43055e58e0f5061a46738a822b32eeae902d19139095f89f1a41da3b702780",
      "name-candidate:fb44bd4839ddf3cfa3c09cfa9412a0a79cdefd23300fc476e7714346142d8021"
  ]),
  ("name-candidate:c45841fa36944c5ba08c5b9f47709fe0d50d2e1c668cc175091daaa6ae6f24b5", [
      "name-candidate:8a3928efadb704366cefd1015045dfcccd2925a3df0d315a422e223f5723fd75",
      "name-candidate:be7381bdb091b5b6fb5080aa00f8caaad321a93816a9b5976b07514a58f05c3f",
      "name-candidate:c45841fa36944c5ba08c5b9f47709fe0d50d2e1c668cc175091daaa6ae6f24b5"
  ]),
  ("name-candidate:140c8b530c96aecadf491d06fc0e6e6177a4f177d4dc8bd085d09dd1651f9c14", [
      "name-candidate:034a7ec48548f44fda8af1fb29da82fe557af634790bc5a77407a6b920c44e7a",
      "name-candidate:09af72f27dfdd2cdb671fa35d7510c860d9df4ddea3c8cc7991244e559e8cfcf",
      "name-candidate:140c8b530c96aecadf491d06fc0e6e6177a4f177d4dc8bd085d09dd1651f9c14",
      "name-candidate:565466a89bac5b2bd98077b149133d9515737fdbbb3acf6d3e63996af0f79529"
  ]),
  ("name-candidate:0d1040e01bb16fd94054297b3c908ccb2166f65faec1ae4a8d23d922939629b1", [
      "name-candidate:0d1040e01bb16fd94054297b3c908ccb2166f65faec1ae4a8d23d922939629b1",
      "name-candidate:2484fc3ea06a9ccecbd1da98d966866ba36be9f59c42ec3baaab793241fa36b6",
      "name-candidate:2761102d60881ef27cfb99e1a9b497c39083ee56c9c5b5c5092298e409a2e270",
      "name-candidate:e3fc19212128f1d15bc148ac095c573acddfbed06bc5c352b3e2c7962e1dc904"
  ]),
  ("name-candidate:c61de5b953ad778b38d0eb1983cc4b1d67caf3de0aaa656aa947b5feecfcc334", [
      "name-candidate:1704189c4ddc9db06184f65911c91bf0272aa5353c349a03456ebc809d1c4749",
      "name-candidate:5a6e06dcb521311e529216266100f95e5ef855addb4b42f7e653fe3a2afcb7b7",
      "name-candidate:c61de5b953ad778b38d0eb1983cc4b1d67caf3de0aaa656aa947b5feecfcc334",
      "name-candidate:d71c9137b3c9c048136363faa9afd2d58204023656fcc520e8eeb2286c9d2f76"
  ]),
  ("name-candidate:69014051d208a42c7bf4ebb986c2450f877c64792690a4a46f0dd5fab22c0b27", [
      "name-candidate:69014051d208a42c7bf4ebb986c2450f877c64792690a4a46f0dd5fab22c0b27",
      "name-candidate:e068301e8e38fb195b46e2b3539c3f8deffbd4b71366897977e4473b2f1ecec8"
  ]),
  ("name-candidate:b30ec247601ce9ea4c8a44d3e9e44e1739112653cc7a95d0071abd5d0cdf3b21", [
      "name-candidate:195a9566be09392be73e0cc8b585a8ac52c68c8fa65da5f557c999b75b78af7b",
      "name-candidate:332abe4c5af89a969d180745a7e119286cb75579b63a8ca87c75e3ce13211191",
      "name-candidate:b30ec247601ce9ea4c8a44d3e9e44e1739112653cc7a95d0071abd5d0cdf3b21",
      "name-candidate:db84ce7c9f24350e15ba4d9eaea72aa75e4f0d8760933bc7eee6152d8b22136f"
  ]),
  ("name-candidate:db80fee25745574c1fafa6961ecf295d913b8c25a614eb371c5850126519d38a", [
      "name-candidate:50b987a524b2c086dc4653a609a2bb2271f91f0105a24b128e336f04eb84983a",
      "name-candidate:5c5dbd9d29702ee9a8150d7ee169208a282b570579ae9b961ae5750e5fdd7633",
      "name-candidate:ba6b2178db6b9fb6e5b2f5336594732cdf9bf42e536268f2a9037638f1735629",
      "name-candidate:db80fee25745574c1fafa6961ecf295d913b8c25a614eb371c5850126519d38a"
  ]),
  ("name-candidate:5df9d5a037c553dda477905dd606a36c88f2e0f1166e412d90d00fd67899cf51", [
      "name-candidate:1079f2c7b1fbd2ced932b481d7780c0d21f18f537cc7ecd0af89f49cc3c4af86",
      "name-candidate:1d2728464ca390c0f5ae55dc8efddb42c0284ba249364835f6f7b5d09c8a673a",
      "name-candidate:2d7c2ce384036b2f4daf5755d872261c0454c610c98fb2f9755719af8acedb9a",
      "name-candidate:5df9d5a037c553dda477905dd606a36c88f2e0f1166e412d90d00fd67899cf51"
  ]),
  ("name-candidate:8f4f554a15743e093f19968e4306dca1837cdefa93cd6c026f1c33716a7586b8", [
      "name-candidate:15dc9319dba0fb1c84b2e18980d8f95f2804b93126d0fc92f78d045ce1b9d93d",
      "name-candidate:4ff7576d305e44e68b95795ccaed5a816a942bc3ed893e285960583f2a0b452c",
      "name-candidate:7789e51b9b684ef337933d97686fc9f1e5e1a2ef3e573eee5d7d8f21f7b142ec",
      "name-candidate:8f4f554a15743e093f19968e4306dca1837cdefa93cd6c026f1c33716a7586b8"
  ]),
  ("name-candidate:1f7102532f54ab06f930a06fca70227ab638eff2c60c702cbd17510401816c99", [
      "name-candidate:1f7102532f54ab06f930a06fca70227ab638eff2c60c702cbd17510401816c99",
      "name-candidate:2bcc744a8fa498da1870a4f33b5f89ecd381a501468c8fc06d64f1e4861bf8bf",
      "name-candidate:6a54f118a02d163df3669cf4922f69b8882065ce427159013c3ae11d5451212d",
      "name-candidate:e9e9abc265b17c61f55a01f5604e68cdcbb491109d3f975d2c83b7860e17e322"
  ]),
  ("name-candidate:91c9de9ad6fb4f47971947e55a95e47d9f89607a9fefd10ce64ccd992f1df8f9", [
      "name-candidate:91c9de9ad6fb4f47971947e55a95e47d9f89607a9fefd10ce64ccd992f1df8f9"
  ]),
  ("name-candidate:b33230dd786bf22651d8d0e441c81183c9d5b9ac468f5770ffa0298e452fdbc4", [
      "name-candidate:8ef585186fd1a3714183046f04b2326d8a3579cd56d2d4ab16ae0cecc9e58f0b",
      "name-candidate:9a43113676c8e839e90f78e569066a807097469d7973946e012bc82a4b686ed4",
      "name-candidate:b33230dd786bf22651d8d0e441c81183c9d5b9ac468f5770ffa0298e452fdbc4",
      "name-candidate:dad63c97116208a91de4b36ae56e9be7d9644bbfc348e474d91de7b7fee8df66"
  ]),
  ("name-candidate:7dfd05f3598882a2db0fc7f3de17d3aacfe8a76fc9c6375f14f4fd4949ed5096", [
      "name-candidate:01cc9bc0032beaaf891ae9ca4f0d0962448a2a5c80b26856242e7ce9607fa8c1",
      "name-candidate:0c966c92ed52dceb19a975915c71fd82dd93d04062d6a30a21b08a5569e717a5",
      "name-candidate:2b169a473baa3e91b40a21f6724ff38c7843d782ba7b5e8f49e9a35ea155ddb5",
      "name-candidate:7dfd05f3598882a2db0fc7f3de17d3aacfe8a76fc9c6375f14f4fd4949ed5096"
  ]),
  ("name-candidate:2085514fd1f52d291ddc5dad93a47496f25ebdcd2aef6f9807cb4ebb86ee9393", [
      "name-candidate:1a195b3e2df6224ff7dd07a2331e55ee530783e4e0b5a4ae377b5c239daabf93",
      "name-candidate:2085514fd1f52d291ddc5dad93a47496f25ebdcd2aef6f9807cb4ebb86ee9393",
      "name-candidate:338668d6b2ca229a7339bbe0eeb5dbb7b94b692b27746cab058a34e5664f81b7",
      "name-candidate:e094fe33cf0fd63f7c78c7cf61bf948fb19628b804048900e5835c0eacfbde5d"
  ]),
  ("name-candidate:460b2d64c0c642591df8fac902c5fe3b78da967656bfa533ec2cb4517fa1771c", [
      "name-candidate:460b2d64c0c642591df8fac902c5fe3b78da967656bfa533ec2cb4517fa1771c",
      "name-candidate:460b7db5cbf0caac29c19684526f64fa999f6e4560d3d55d66ffe1e3d94c9016"
  ]),
  ("name-candidate:5e5631f60e7aeb9d9565f153451c63c9ed221ae532da1a35ce23da4a17fc7e27", [
      "name-candidate:274b72fb10507e1fd8c3abeca14b7308ba922b8d3cbedc941f022a712be25282",
      "name-candidate:2c8f3dbca5fc34c9f2b17de5313a3f34c43b85b83c04039a8de174db7f52ad43",
      "name-candidate:5e5631f60e7aeb9d9565f153451c63c9ed221ae532da1a35ce23da4a17fc7e27",
      "name-candidate:c3c34e8a98f302505947bf96cd119495c7d1f43ff9e3decd584f3c9ffaadeda3"
  ]),
  ("name-candidate:57085e51736d989b2a3b0030c81eb898b4cccf5301eee23899f98a6d811ecd90", [
      "name-candidate:09541ac190bc26773b42bf87a760049b7783d40b01f63fa301d0f25870f4aede",
      "name-candidate:57085e51736d989b2a3b0030c81eb898b4cccf5301eee23899f98a6d811ecd90",
      "name-candidate:b46853a09ad7ac9d5b25b841c54ad93244e21f39be709b3fd7e976f1260c4dfb",
      "name-candidate:f01d9ba87a7328f6719f8fb3dbb9718c7e54539594ea6ecba0d044acbd40564a"
  ]),
  ("name-candidate:87092d77139cd3ccf1e704488dc84b0a34e8cb92f6de27b7dad23c112d41595e", [
      "name-candidate:008a81a13c3623560e38fa8c0eb2e4d36ef779c0062a95e7736541dd6fec3942",
      "name-candidate:32164b8ea86adf0d13390d35ffea9607f5f413b4642d06452a53d46a72e29f70",
      "name-candidate:87092d77139cd3ccf1e704488dc84b0a34e8cb92f6de27b7dad23c112d41595e",
      "name-candidate:fbaa1c0a024205ed769f2b04173f8d9a189a54015fbf908166fda3904fced13f"
  ]),
  ("name-candidate:f56ab2c5850eb7a62f834df5a69a14f3fe061e1319904673e698f0d36ea91e20", [
      "name-candidate:32e1fa4914a94ca865e5d14183cfc91c6e2b165079f11723f13930554167660a",
      "name-candidate:86d8c3abc0a78ff4408667c53e537ffbadcca80c586c3edbd0d8891c863d39b2",
      "name-candidate:c62bc8cd263c7629ad535d04d9b4ae8e17ba3bc9f1d919a8edbbdfc0225be313",
      "name-candidate:f56ab2c5850eb7a62f834df5a69a14f3fe061e1319904673e698f0d36ea91e20"
  ]),
  ("name-candidate:da9a2f64194d7804589048b642d0c2710b96697be2f8601cc7add0bb9f9d5b78", [
      "name-candidate:598186980293d48d8a2e59f54a8603d7c512b54c06c417ae9a1b779f96db1091",
      "name-candidate:692f707179e8bf3cee02b61294d24558b6e3ec3828e5635144d3c1ca4793e54b",
      "name-candidate:bafd1344a74a96c252aca4ee56312133e9dcec541460332f2c7d629c56ff0715",
      "name-candidate:da9a2f64194d7804589048b642d0c2710b96697be2f8601cc7add0bb9f9d5b78"
  ]),
  ("name-candidate:ddc2dbac3d6141c7adb6432ac3045662036e4f0c0b4f03b668b57080caae33fa", [
      "name-candidate:1f9520f042f1814ae946f2ee94572b2df8c32b28e432ee89caec777a9afd509a",
      "name-candidate:94be96a1560323433bf38f34a8e1cd3ffe6c85cf5c041df06508daf8b46d457a",
      "name-candidate:b3fad92725b8e78116512669b929a3c021ddaad9aa0748dcc6ee56322e76fb37",
      "name-candidate:ddc2dbac3d6141c7adb6432ac3045662036e4f0c0b4f03b668b57080caae33fa"
  ]),
  ("name-candidate:141c4a1eb70f29d9b1efd6d919a0949c780f9dd9ef3c547d07e141960e8dd82f", [
      "name-candidate:141c4a1eb70f29d9b1efd6d919a0949c780f9dd9ef3c547d07e141960e8dd82f",
      "name-candidate:544cb6c60a5a6dff13c3348f4800752fe250f65ea2f704fc47454999dc600336",
      "name-candidate:c6e4be939a215b633e0a22735b8f39f015f9ee2896cf65cc24a724818afee850",
      "name-candidate:cc5a335fd8bf7ad1f70d86bb4bbc57efe07e6519e0fcb2347ab2eabc945f5b16"
  ]),
  ("name-candidate:8b986e459adb7ced60592a9b6e4fee19f9a5c7d1284a99f3015d8c2420a482e6", [
      "name-candidate:625b18166339c4ba4bae21ce47d903af7fd178fd99bfa9971809de84d9158424",
      "name-candidate:8b986e459adb7ced60592a9b6e4fee19f9a5c7d1284a99f3015d8c2420a482e6",
      "name-candidate:9760dd28baeacdaaf37171a7caddada05582acf92651b9164e261b86a67501d1",
      "name-candidate:a7c822b191190261b7c0763ecc142732f99569a729345604355f86e2dd348fdd"
  ]),
  ("name-candidate:e67f441b15def5ab13a40328f776d682f3d761a9e854f4d460498e73bb5aed3e", [
      "name-candidate:38c86e7e18381c7cf39169f8df6dc302da1f6d2ac7aac730c7b0336bfd0178f6",
      "name-candidate:a04a2e98e1b042068af010d3fe333128214d08960d9ab52920220680906d54bf",
      "name-candidate:e67f441b15def5ab13a40328f776d682f3d761a9e854f4d460498e73bb5aed3e",
      "name-candidate:e80f666785bcb66326e956ef68cbaad9586a6d700e9a6cbf794d7e427a80b326"
  ]),
  ("name-candidate:302a8aa746e7b947060c2ead5531ff18884f69d747081f9a25816c26915a347c", [
      "name-candidate:05284d50b4af15bcaaa88e7687f352c148f93f6f108c99d7b94508b8fd2e2ac3",
      "name-candidate:302a8aa746e7b947060c2ead5531ff18884f69d747081f9a25816c26915a347c",
      "name-candidate:4a86ce23232b1f1b2f9097553c2378bd907384162ef202a38b859747138c424a",
      "name-candidate:bb6438e68219f22fc6e451e37451f9cbad80f3aaeb1c5efce9064f2bf2f9c735"
  ]),
  ("name-candidate:9de81f0e5ae4d41f35802dbce07ca395d7f53b1934edecca3ec6d78616d866b4", [
      "name-candidate:39ee2c4bcae61afb7bd93f4269c388e0fbfc6972dceed38c72dfc50501608afb",
      "name-candidate:9de81f0e5ae4d41f35802dbce07ca395d7f53b1934edecca3ec6d78616d866b4",
      "name-candidate:ab5dffffcf09054453520fbab84dfa98cc75801ad7b10d21c105a98d8d2514c9",
      "name-candidate:cc3b9d5853299bded3de49546526c12b15106e9e5fabbf2e2867b4c8e94c1468"
  ]),
  ("name-candidate:4da98906c5c6d1c56aaa2e2c86eff94f44ba0140e2626184349c5571d3bbe220", [
      "name-candidate:4da98906c5c6d1c56aaa2e2c86eff94f44ba0140e2626184349c5571d3bbe220",
      "name-candidate:4ddda47aa5786a06e269e5cb3a545cbc34ec1e9266cf75697cb8e404155377f1",
      "name-candidate:e518e77951f1a825104da1b177f22b49cc7c8fd8a49697143bd09bf00f5cb7fa",
      "name-candidate:f22ada1e8429780f62d99b7c08e07af222ca16255a9fe48ceed8d297bf800858"
  ]),
  ("name-candidate:77f27430f062c1314322665fc899eb03448fd5551e1a54debfc7c7409f2be7e1", [
      "name-candidate:0b0e45dbfddfe31d2b095964000fb5947808534aed4ee2a3b2e9e8aa81fb2a17",
      "name-candidate:12b8ec5ba5f6d9458c4bcc772280866f73d5e191d5bf908b8b2ea4f6e1b60043",
      "name-candidate:65708581ee592a96ea18af0b3d68509338e8ccfd970377cc774ade6a0d0e10a9",
      "name-candidate:77f27430f062c1314322665fc899eb03448fd5551e1a54debfc7c7409f2be7e1"
  ]),
  ("name-candidate:52f4f2b6614782d43a6e88818d94d08b4be20d66ac6441923319df19c6d30c99", [
      "name-candidate:3706a49a55e48ed67d7c48b6953a7c64d9b546cf6bdba5c501c838780aa0b78e",
      "name-candidate:52f4f2b6614782d43a6e88818d94d08b4be20d66ac6441923319df19c6d30c99",
      "name-candidate:8bb0f781cb49e99a6ffbba23c3469e17a1d1801060d6aefb14a6b2f04c38c960",
      "name-candidate:e0746d751c2c3bca5d6e9c0b2e59a9577611f9d68b34b8b4f8250cff3cc96a08"
  ]),
  ("name-candidate:33e289eba8f8b014bc41937c335bec5ce49061fc99d82bf01297d2aaab571d86", [
      "name-candidate:33e289eba8f8b014bc41937c335bec5ce49061fc99d82bf01297d2aaab571d86",
      "name-candidate:5b534a99f04c8bbe1ff937b1614bac8dc6eeb063069aedd147aef2d6d60bb219",
      "name-candidate:839358cba02bdbb17799e282bde45d475d251331ba555e27ac9994cd8f2371c0",
      "name-candidate:b619bc69f5b55bd376f7647d8d704e0b2babda3c673f7108f673c476d30703d3"
  ]),
  ("name-candidate:7198437f10a9ce9b13e97503e7f7da27de84032ff82e68b5c86946e0020805f1", [
      "name-candidate:7198437f10a9ce9b13e97503e7f7da27de84032ff82e68b5c86946e0020805f1",
      "name-candidate:8208f534fe5a8042b434f196a400984de829398422db2f280c1912d773809642"
  ]),
  ("name-candidate:4f40ce14673aa6846a99df2a91e9be5ccb42794aeedae905db1b1563405b3f55", [
      "name-candidate:40b57429c4096877ebf7731b833812ac594f29d33cc661ae9c7f77ad16855edd",
      "name-candidate:4f40ce14673aa6846a99df2a91e9be5ccb42794aeedae905db1b1563405b3f55",
      "name-candidate:fcb1ce83b03a835159040cf28fd58c66ae0cf3292b28a3f976e4993ebc879922",
      "name-candidate:fcf15fb11a5eba65138d77d825578af7e5ccfadf640967dd3a0772343ebd7b37"
  ]),
  ("name-candidate:0086ccdc50cdd6c0cbc4e2bada726831b5c9ee8133d31c472c9920d85a86732e", [
      "name-candidate:0086ccdc50cdd6c0cbc4e2bada726831b5c9ee8133d31c472c9920d85a86732e",
      "name-candidate:852648650fbf362ef799530ed967ba30a8acc472d30ae85af86ee49eaddeaee5",
      "name-candidate:bdce8a048acadaced6d47d69d8af6ea614fdf502bfbad3bbf0ba7eac3ba74299",
      "name-candidate:d594880dfbce52000edea18781a8a7081de9aba602bd4eebb674234e93485761"
  ]),
  ("name-candidate:006cf124b830428ce0a11bc12e635a494a5f656bc5c06908b9624e633832348c", [
      "name-candidate:006cf124b830428ce0a11bc12e635a494a5f656bc5c06908b9624e633832348c",
      "name-candidate:2124030db0f225f7c28bdd7c785f8bcc3701832503f13f761a0a52c799faa885",
      "name-candidate:5a803cfa4c37f17734356a6836a9cda40505c34ce7c020b96e00f4e5d7fd28d4",
      "name-candidate:5f62d3390a41a32abb8862578b6c89bb23178fd4bec2c3211bef0372ffdae58c"
  ]),
  ("name-candidate:6e0bb9c68d0f6a81f8a1ea7ce799e70d512fb7d6160102ebd867a8b3d318b81b", [
      "name-candidate:2e29e545e976ba7857ad47ca97a90745c17fae414c5b228de3b8913927e8a06c",
      "name-candidate:365ce4e092010e2b4ca29ae509346ec0fea0b8fdfa573de96075c0674c25f2fa",
      "name-candidate:6e0bb9c68d0f6a81f8a1ea7ce799e70d512fb7d6160102ebd867a8b3d318b81b",
      "name-candidate:b20c5ede2e1afdede492ea136970b14f992940757d6ad67295284f431ae81a34"
  ]),
  ("name-candidate:800373256ffbb2847f5cf45b5441f009710f93b3047ffd5eeafcacb841478d9c", [
      "name-candidate:425296457214be966d23c67dd4bbae0cf655087c0e94839f8785464f5e811d59",
      "name-candidate:800373256ffbb2847f5cf45b5441f009710f93b3047ffd5eeafcacb841478d9c",
      "name-candidate:99f969c20e1fb52867ee2b0bba07072071d178ac4b9ef2baf2c09c764fa50caf",
      "name-candidate:fa904d0b4d4c1819ec9eda9b8c28c96bfeb9e6ce01c4824bdceff88fb84be1db"
  ]),
  ("name-candidate:0de8109cc746ee22d522fc44379fae652d583422da5adf83ef9f3e38028b94e1", [
      "name-candidate:0de8109cc746ee22d522fc44379fae652d583422da5adf83ef9f3e38028b94e1",
      "name-candidate:640d3c1dea8d68e7a2be1bbaf4063c6bb2d532aa8e9000448f7a50abacfb4809",
      "name-candidate:6a6b112c545d1ab8e3b2561789c247a3353aefb8b2d7d95b1ff5111a87ad3ac2",
      "name-candidate:77fde8fcbc8d75b9cf6fa70a985ad3f5dccadcc24bc08c8d604c46dd17fa567c"
  ]),
  ("name-candidate:3cd55c47f573759510a66d9afd4bb6f62edef81fd1d51eb12ff4ca27b59c2b5c", [
      "name-candidate:3cd55c47f573759510a66d9afd4bb6f62edef81fd1d51eb12ff4ca27b59c2b5c",
      "name-candidate:4554716571e1eb21737dff7aa99214451adc99db8671a4004f1ca7af60f7938f",
      "name-candidate:c588d2f69983b96df5f9edbfd0e1556342886d5b9204f6719e1a09391c343768",
      "name-candidate:e549a2e26def68e00460e8738471a27e670522d69b85083d732fd96cb20ae063"
  ]),
  ("name-candidate:53b4390038e7a17b72099f657704cbb4fb12efb5bcdc64ad6c7d45e6235895ba", [
      "name-candidate:5028df1b1cb43c25ced62aac498a147ff719ca696a2da178bd50107e2f5ee006",
      "name-candidate:53b4390038e7a17b72099f657704cbb4fb12efb5bcdc64ad6c7d45e6235895ba",
      "name-candidate:64315cebd3aec6aee1f246d7951255b90c70e17ad0847b1ec79e242900f8ff4a",
      "name-candidate:e36222224d0236dbe4e57f30d1909aa4cc739c786d3d6d348e1297c5f46452de"
  ]),
  ("name-candidate:4af2c58282fcc8c90990d77cd8c3b04b5abeaf1290b5da20db504d2b2eb932bd", [
      "name-candidate:4af2c58282fcc8c90990d77cd8c3b04b5abeaf1290b5da20db504d2b2eb932bd",
      "name-candidate:a4093659de6ada988b7b85d43b1e000093042e021d7b1b23a983bac52d31c602",
      "name-candidate:e02d1fcd63f17b372038938369439b03411f60e53f7f541d561ab161b33635a0",
      "name-candidate:e06004b469cb4d96a0fd569e4babec901a33262e0717fd9bf9eb3edeb0defff3"
  ]),
  ("name-candidate:dd7021af98eed00babcf9bb03a055902b4534b1b23620f941f275e040a618946", [
      "name-candidate:488a0d0b304c61cb1c5facc65850e2f01b10189e4c085aba2f8e802b4afdea60",
      "name-candidate:8cdbfcb9a825de1b99612f40c2a3abfd1145994bc927969e468349dc85b2945c",
      "name-candidate:9bf2ddeaddd4335e8c43b32e162045fe1c71af87015ef3d52599b50700d761eb",
      "name-candidate:dd7021af98eed00babcf9bb03a055902b4534b1b23620f941f275e040a618946"
  ]),
  ("name-candidate:eb4c4392a680758bc32043bc0c84e1ca0765f4bc703f694126f61c79b3fe8c18", [
      "name-candidate:7a363031b3a450bf73f0119c1d8ce3f041665b4e8da6f1023ac95e3141f3da8b",
      "name-candidate:eb4c4392a680758bc32043bc0c84e1ca0765f4bc703f694126f61c79b3fe8c18"
  ]),
  ("name-candidate:f9aa7bc73ced900a7e4afa68f90c183f95bbdb70e5f8fed0acc58ae220a12206", [
      "name-candidate:0b73494f20dc7a608df4173aad5ffae39169c0b3340489c93f6efba2acf94945",
      "name-candidate:c849bda995369e8dc7cd83b8ae34b6a67a1d308283a311acbfc0d4548883663d",
      "name-candidate:f9aa7bc73ced900a7e4afa68f90c183f95bbdb70e5f8fed0acc58ae220a12206",
      "name-candidate:fc5eb57f324525f326e700c439504f2f371171e0f203ea521c93fab812d2a9ef"
  ]),
  ("name-candidate:3cb609d9cb56bf7f1a8b74667ac4e831d5db76309e3396c6fd5c87fc95bb10c2", [
      "name-candidate:04ec79db81ee1db219f8dcc9f397d021ad2d8a766035a87c5bb174f636cf7ee9",
      "name-candidate:3cb609d9cb56bf7f1a8b74667ac4e831d5db76309e3396c6fd5c87fc95bb10c2",
      "name-candidate:847932ac68a7113c64991419484c22f974e86f8343d06800029c496cace5cccd",
      "name-candidate:e1319fec506e6cd543e7a9202fe6ccd67cb996cc547e1f79ac32ea9125f259b9"
  ]),
  ("name-candidate:c9f62795f41fdecebfa09bc6e2ccc5ba5d8b92de9ad410a2e527010ddbdb36b0", [
      "name-candidate:6134ae744f4d295ae907f00d20929c98e577cd14078840296ff6dd1a6d29e4c7",
      "name-candidate:61bac1c36c2f8e090d3d8372dc88fc25d2d78052ed2016a7bc09be1b94fc8787",
      "name-candidate:7d60babd5796cee84497750c6c3360fd2821471edf6bca4097978263ab3efc57",
      "name-candidate:c9f62795f41fdecebfa09bc6e2ccc5ba5d8b92de9ad410a2e527010ddbdb36b0"
  ]),
  ("name-candidate:8e4e307ce42936292795ba0de0997bdf7d2c26a44d87933fc95d818c12e9e106", [
      "name-candidate:23eb2e07cd3c6d15d855f7e1377c40d7a248f14e40d721d3a2285d7ba53caea0",
      "name-candidate:50206ffbb70bd6f66c87bac3ebba18be9b8aa370ace25a24c534980498415570",
      "name-candidate:8e4e307ce42936292795ba0de0997bdf7d2c26a44d87933fc95d818c12e9e106",
      "name-candidate:a13d96f649e9712577954e5bf58ea0cdf476b56596ad9a9383a1aaabab0a8c7d"
  ]),
  ("name-candidate:0b265ee36d1e0a7a5205ba4a118dcd1ec082235a687bd8d559667eb396695d67", [
      "name-candidate:0b265ee36d1e0a7a5205ba4a118dcd1ec082235a687bd8d559667eb396695d67",
      "name-candidate:26e144cd19a974942a3414472f416d7d53a0dcc4aaba5cf2c0419aad624d7fc8",
      "name-candidate:dc88fc58899fe1faee92662fab44e5d5f9458f31545849b7a1d04b2b9b4b616d",
      "name-candidate:f92fca0d6387f59258a74bfa8464204a3629dcee6ba0293c980ea772ba1f4867"
  ]),
  ("name-candidate:20fdb549173a80fc73bbb085bc7bb9689504ed2f033f3a02b63fe0f38d313f6b", [
      "name-candidate:05b08a12d7f7075a1af1f1882f14b85d019da3340946acc4843ca31311cfeccc",
      "name-candidate:20fdb549173a80fc73bbb085bc7bb9689504ed2f033f3a02b63fe0f38d313f6b",
      "name-candidate:d5275df94f3ebadfc53859106e6bbf3b0e7db5f0b91f5920d8a63ce97412cafe",
      "name-candidate:d7452d697fadf9d4de5db753381e5845abb4c7945874324315d21c4af1568282"
  ]),
  ("name-candidate:289d9776a446fc6f9cf279633b6742d805371ff6d9054fee100b935f5233ddf0", [
      "name-candidate:289d9776a446fc6f9cf279633b6742d805371ff6d9054fee100b935f5233ddf0",
      "name-candidate:5a8cfa5805063b18c8c68d7ac1f354940395aa9f840f23deef388ad2418f26fd",
      "name-candidate:8c9dbb8635b785b06beb2dac54757dc9f28d1edcf2b8df15b63510bb530c16c5",
      "name-candidate:dfeebfaba6669641531d60f0f67c854507fe5d15c6cdca355326fe386b67c507"
  ]),
  ("name-candidate:5b1a0eaaadb319acd5602c43c6f5065284b7042ba0cca919252fa0f67a2a1be2", [
      "name-candidate:0ea2776e3a0bd407bdd07c48e0711b09185ad55fe78678cfc4e2074cb9aa9404",
      "name-candidate:5b1a0eaaadb319acd5602c43c6f5065284b7042ba0cca919252fa0f67a2a1be2",
      "name-candidate:fd888c7c21ac0e5cfc43d2c142b37fad30f70c162557283c861ae1c387eb6aed"
  ]),
  ("name-candidate:0519f4139ad99a55f8d38f1a44aac7eb3da7d7c0376c0401c169a31960297294", [
      "name-candidate:0519f4139ad99a55f8d38f1a44aac7eb3da7d7c0376c0401c169a31960297294",
      "name-candidate:0599585d1ea6416233bd5b65040f0f35f1a82d7c1928197448d44f9c45a46754",
      "name-candidate:3b7cfb36d63fea759af2229c6384ad33c3c4bcee0145bf83d27aca2bce1e1b41",
      "name-candidate:b21e4b3783a51db5aa3c2c84d78d48afe8d78713ed2acb24f5c1b82f23c8c4e6"
  ]),
  ("name-candidate:d51cffb01cda01e6430ba8ec6aac4b81ee25e4c3c81c51bb86c09bd291d4aeb4", [
      "name-candidate:073e25023d5a60545162e8a86d93e978e80af499f74e16ab1fbc749a63db7bb9",
      "name-candidate:2d641db8a784b3ce6e463d00190b5050dfc8911443c9cc7f4cdecce002c7df07",
      "name-candidate:c595a6a7c5668a2628b007d03086d93ca0ca91d1f02e7f460004f041565514fd",
      "name-candidate:d51cffb01cda01e6430ba8ec6aac4b81ee25e4c3c81c51bb86c09bd291d4aeb4"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L48876).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
