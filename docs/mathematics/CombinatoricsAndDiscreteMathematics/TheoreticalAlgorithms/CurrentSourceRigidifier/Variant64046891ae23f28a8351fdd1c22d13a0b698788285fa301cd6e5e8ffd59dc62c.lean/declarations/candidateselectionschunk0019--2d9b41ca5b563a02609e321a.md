# candidateSelectionsChunk0019

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:985bb6bc186dbe267512f490e39453b58805165bcfea2ccf65e861110364d2d0",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0019",
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
  "slug": "candidateselectionschunk0019--2d9b41ca5b563a02609e321a",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50726,
    "line": 50351,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d9b41ca5b563a02609e321a1175c33728747249076348c471a789a30aeed7b4",
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

Occurrence: `declaration:985bb6bc186dbe267512f490e39453b58805165bcfea2ccf65e861110364d2d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50351–50726.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0019 : List (String × List String) :=
[
  ("name-candidate:b6bd4238562dd69ad83219893d488c9b06db5528fd41af408df2e51b7fdc7f34", [
      "name-candidate:905b7f181a77ce34fca8518b695eb413f2643693b2824fcbe273668e2c487ec7",
      "name-candidate:a46d2a08b167ff7e6cd2411c821af19a2edfade435a2e3e80cf9b79b73e58fd3",
      "name-candidate:b6bd4238562dd69ad83219893d488c9b06db5528fd41af408df2e51b7fdc7f34",
      "name-candidate:c0d87ad00a5f78985cedf74ff8729b4e0b6bca8b6380bcdb143986c6064d0a48"
  ]),
  ("name-candidate:e389180136711ba93a59c655afbd7baf5012d2ca1b3e05081d7c791bd728d110", [
      "name-candidate:1ec619b1afd55368745f13e8716ce1adeeee2c5211d7d523e16644f1994cd3ef",
      "name-candidate:b64c174c61bd042c3b790fb445a30f21606ac7a4c0c41ba823396f9c53812666",
      "name-candidate:bb76116cbb368dd515f36e813ea65b7e90fe8b1f9b0bf6de75b770531e995586",
      "name-candidate:e389180136711ba93a59c655afbd7baf5012d2ca1b3e05081d7c791bd728d110"
  ]),
  ("name-candidate:41207a30813af9e4d7a99cc40ff524a74a418e789716379beb8601fd14cc60e3", [
      "name-candidate:172d373f250f18de4796c11b4875ab344c68c6ea88136de2b90ac501542afa60",
      "name-candidate:27a5fe6607266c5bfe414ee10358cce461de43a31981100318083e6e6e66c6bd",
      "name-candidate:41207a30813af9e4d7a99cc40ff524a74a418e789716379beb8601fd14cc60e3",
      "name-candidate:d8b9251b9afd1a3080363fcfe1942ec7e4c4d2482ee205afb98b2398e546f78b"
  ]),
  ("name-candidate:88e889f5600cd22745ea3df103f4549496c591e64135ffd348b4fe87b1ca5f3a", [
      "name-candidate:375a52e38d3d7c8de8675243d5d6164153cabad7bd98af549902fb9f22ce02c7",
      "name-candidate:4b972af524b58f14c6c46df1b02691b43c34f08889c83d1adb286c18483dba78",
      "name-candidate:88e889f5600cd22745ea3df103f4549496c591e64135ffd348b4fe87b1ca5f3a",
      "name-candidate:e50ca2fa1b7ed301618a2f1c188a3a8745ccc401589b9fa20991f87f7f628b17"
  ]),
  ("name-candidate:9b95d299b9fb7ed12c72448435ffccb62ac858d0ad6a9cab9e148939cfbbf52e", [
      "name-candidate:360a447506b71860a782d3e2c13c343b8de6ceb5236b38732dcd4abd6c93f45e",
      "name-candidate:9213143eb728b62ff6c797bca209c113862a6d815507f0dda5404dee7e281b34",
      "name-candidate:9b95d299b9fb7ed12c72448435ffccb62ac858d0ad6a9cab9e148939cfbbf52e",
      "name-candidate:d10b50ec1cafb811f0ba00cb0ea8ed9da4bb1949d6e0704471ae5d0376b11143"
  ]),
  ("name-candidate:75de9466ea2bd06b5adfdcc8d7875e94fc9f4e3d5af35e2b5afeeffad9d83472", [
      "name-candidate:16e8c1c26809f48ca1b93591d524276e9fd6a88463fe46f707f34935b1eab60c",
      "name-candidate:224981f4c3da1b75fe7cfaf8efdd63a65a57e87f94494be23d5a29b4dce5aeed",
      "name-candidate:610290c968bf092da810a10fb29295d27a37cea20a34554714c7792d806e2e14",
      "name-candidate:75de9466ea2bd06b5adfdcc8d7875e94fc9f4e3d5af35e2b5afeeffad9d83472"
  ]),
  ("name-candidate:d8f0c55f5a2e223759168e65c1bfe10f99f23a4ee8fd24c6e2d4070994ac82a7", [
      "name-candidate:2f19b6c091fc9ae7832602d49b0031ff13074a9833ada9de75a154783591d693",
      "name-candidate:bf61e69954ade364cb98b5cfcd2b9a3c00e8793f38c0398c0d09d40d0cadb31d",
      "name-candidate:d8f0c55f5a2e223759168e65c1bfe10f99f23a4ee8fd24c6e2d4070994ac82a7",
      "name-candidate:de50ab6370a16bd1e8b42be2c7db78e782a474510f9cbc2678d9483fcf1378e2"
  ]),
  ("name-candidate:9cbc5f53ddd0bd0308eacfb0fdfd62c2364d71e3144512a884e3b0263ae2e05c", [
      "name-candidate:51cacfeb11c6ebef767fdb3985771ec5f49513cba9d489d11ba645edf5c4738b",
      "name-candidate:9cbc5f53ddd0bd0308eacfb0fdfd62c2364d71e3144512a884e3b0263ae2e05c",
      "name-candidate:b4579ba1ac82cb8dc5ed2785e1a7f2608cbffc7317d7ca128ca5bc136cd6c369",
      "name-candidate:bb2a3ec27723faa6efb2ad7c84aa8fecd00a078a335428e811a4ca559ca0df62"
  ]),
  ("name-candidate:746eb2626b0ae1f143904a6e32aa951a4ab9c471c00377d423dbc2ffc324e238", [
      "name-candidate:0907263ead08afa4cbeb27b39dccc83a79e5cc0eb8ea406aba1b5df1ecaabf5a",
      "name-candidate:746eb2626b0ae1f143904a6e32aa951a4ab9c471c00377d423dbc2ffc324e238",
      "name-candidate:be20c5440d4f4a83bc4a2d380b4532520bc0afd416b12ef44c8893f7ba865f43",
      "name-candidate:d6cfca34f13ad6104c0ceb1d79bcd8bc8c37fe8dd1a1a18e7facd4d2ed63b2e6"
  ]),
  ("name-candidate:af5ca2ebf82c55b146d050ab3449473d975ed39c1328217038a06eee58674edc", [
      "name-candidate:5378fda38c9eb07eff6fd26ca69978598a5ea1c1b0d7468059eda299d381bd3b",
      "name-candidate:811c6bf29741da2e6c35344f023de81a907c791d3cb97fa53780806e0d8e4fbd",
      "name-candidate:af5ca2ebf82c55b146d050ab3449473d975ed39c1328217038a06eee58674edc",
      "name-candidate:ef561a08288194216de971f43141da75c8aa86a69b2d44843e44a62a0683bf08"
  ]),
  ("name-candidate:19d5c833cf1fbc6a9f1fcbfa27f0714e3d60aa85c1b7c179ce468f1089e2f013", [
      "name-candidate:19d5c833cf1fbc6a9f1fcbfa27f0714e3d60aa85c1b7c179ce468f1089e2f013",
      "name-candidate:39f33744ecf956954647e9df1c7629243c353ee237fcbd7e8b7dcae2544d7f03",
      "name-candidate:68a75be51ed1bdcb122e75f2cb9d4cb9b2a39c74e2f7a59e828596d60fe3bb4f",
      "name-candidate:a38be03d12f4df9a4e823ec1d983ca2a8e97e5c0f734d50ae4b6d3bc9523d8e4"
  ]),
  ("name-candidate:9e03bb06d98c17e2eb509f3e756b0597b96e18e719c77cc971429538f80b5dfb", [
      "name-candidate:15d45d2e212ebdf3f2a7c58f307a3fff0a56427367911d08e78038f93353daa9",
      "name-candidate:5026f9c0810154817f141fce49b3753211cf5729c30b0074f7ad814b26d4a8fa",
      "name-candidate:9e03bb06d98c17e2eb509f3e756b0597b96e18e719c77cc971429538f80b5dfb",
      "name-candidate:f6a66e8e8f468b2d23ad8bdb18e812f11aac81094b38ddd404983f42d09f7261"
  ]),
  ("name-candidate:e5fc24380c88d7eff6ffbca601325a372609fed856fd79a5cdecce59484bffc1", [
      "name-candidate:036538f893603e116e1da09da8101281ad0ea7aa2a5964944b5dabd62955d7fb",
      "name-candidate:15730ef8046407bd27b79902a04bc7aba7ab86d73aeffa73d671507a9e632ac8",
      "name-candidate:85732f251c112c3210a864cba750c16531a519b0e5bb6650f90c860de57fd624",
      "name-candidate:e5fc24380c88d7eff6ffbca601325a372609fed856fd79a5cdecce59484bffc1"
  ]),
  ("name-candidate:1a1ebe34701959c2a4995b05e5030a295c70dc35fcde0cc2cd962c640b409954", [
      "name-candidate:1a1ebe34701959c2a4995b05e5030a295c70dc35fcde0cc2cd962c640b409954",
      "name-candidate:2539b4544b17bc2b5c1a2daa5f076280eb0df107f11e7ff4979d5967118bf7ed",
      "name-candidate:299f28123d471e2a0c6dcbeb0ce673e52f8dbc5657f75826c2ac2e0f2e143b57",
      "name-candidate:9fb57e522349c18bab2690baa73a5a7b0a7888d1db362e246bda20de5bb448fc"
  ]),
  ("name-candidate:9e3a87baea44f0f18d919d58b8101921963b8fd599657dcbe95f818ad935ebf0", [
      "name-candidate:110bc429e3533bcd49bedf02aed93fd6ea21126589f931e5e287b79b204cb0cd",
      "name-candidate:2f4b72768d2b153d4cb6c0b1f0b4156b05e6ce4b90211a471812fcd05bfa05c0",
      "name-candidate:9e3a87baea44f0f18d919d58b8101921963b8fd599657dcbe95f818ad935ebf0",
      "name-candidate:b9c83bc1c1cf865242c88571093c1320f49c73a9d242f4ceb6d7ec45c0e5708a"
  ]),
  ("name-candidate:8214fa90c416139fd98911a18b8109d5a68204ad366eff842b8198e1328c00cc", [
      "name-candidate:103887780b3bff619d1fd95e57aa27cf63ce4010e21c90ebfb9c2b671368cfe7",
      "name-candidate:434642b18c2adf1fb47004f8510d3089133f5bae0d8f59a8bdc58a695f256f66",
      "name-candidate:8214fa90c416139fd98911a18b8109d5a68204ad366eff842b8198e1328c00cc",
      "name-candidate:9fb1884f66acf8415038305f4b9d6d1bb552d0bbfd2d5a035f54debb04390607"
  ]),
  ("name-candidate:fadb2a1678267d12c1f47bcaba9ab93b4065799378e5fbbf17f704927e600423", [
      "name-candidate:b6440ecc71a7f972965766eef24b042e70b671a6401620ebf356ab1f9138f143",
      "name-candidate:c012fb7bf838f2f46b3f020992d2a65b4c922199ead7f0825b28540ce83747f5",
      "name-candidate:c795f91653d1ed9f92132a861789c0e10fd7f837c7e556328c693800d649168f",
      "name-candidate:fadb2a1678267d12c1f47bcaba9ab93b4065799378e5fbbf17f704927e600423"
  ]),
  ("name-candidate:3636a0a8148b836734e0d1238a59fa8f28ddcb2abc00cca3957aeaac0f340752", [
      "name-candidate:200f44e250575d518c02864f44cb13f08fade8abfee8c408c701cb2acb620785",
      "name-candidate:3636a0a8148b836734e0d1238a59fa8f28ddcb2abc00cca3957aeaac0f340752",
      "name-candidate:9502d3e598e5322babb13bbaa01f18f4bd14ab800f579935629cd2ba9a665b19",
      "name-candidate:e43f6fdfeede603074bbb6aec175814f75ceae9e2061504f4862a183ae99007d"
  ]),
  ("name-candidate:9a93fc735cefc736db9e5892898e3d217f1095b6dd73bc15a3fea3632c826872", [
      "name-candidate:4a583664fe37a352aac7fbebbd85132de6290cace5ea3b2470c3b06f55ccd3dc",
      "name-candidate:6ce65c87ea2a13a1e509abae184a1762aec7832ed6bac0ecf54aac25761e784a",
      "name-candidate:843d76f22aae057f30bd105dddf5e232de6b34f4dbd4bdb51f7493080f3cc81b",
      "name-candidate:9a93fc735cefc736db9e5892898e3d217f1095b6dd73bc15a3fea3632c826872"
  ]),
  ("name-candidate:341b144010d2833a15b86b059bd51044c55e4a74049fd4a555369b5561730298", [
      "name-candidate:341b144010d2833a15b86b059bd51044c55e4a74049fd4a555369b5561730298",
      "name-candidate:c1e1b82588b0aa618e5afbf1fc575b5174e83bd92a26e65587d1ea112460c2c9",
      "name-candidate:d41c1b6454cf1ab4b417b5fd666507bab952d2be6c6dd3b4640b1283ad2b4a68",
      "name-candidate:f0c958b86ee461f0c25bdcec912aeb4c1eb0dc5aab32f6ee2e5613b65c35059a"
  ]),
  ("name-candidate:7d5dd16f294cc2402bbbce87df8a3a05ee09728569fc57517b55429288c7cb6d", [
      "name-candidate:054183e7e38e87e1ddd2815956256a8081038c36fc26b66a0a4f775fa19351a0",
      "name-candidate:4a66f977c4c5d55414d8cc4ce459f03f8c1aa4cd609d378265cdc303b0e7503b",
      "name-candidate:7d5dd16f294cc2402bbbce87df8a3a05ee09728569fc57517b55429288c7cb6d"
  ]),
  ("name-candidate:75c30c3f2ffe81d943df8ebd4e0fca0d27a781d84355323f918a75904764ac90", [
      "name-candidate:75c30c3f2ffe81d943df8ebd4e0fca0d27a781d84355323f918a75904764ac90",
      "name-candidate:7655c11d51aa6d0035aead5415b1b9a9a1155d0ac2e417671b82f961d5a116e0"
  ]),
  ("name-candidate:39ba189746abc516dc8e8f06bb72a463c4cfe13cfcb036706ecbb56addd18a28", [
      "name-candidate:134300754c265a4eb7f0985d1400e999eb2d85759e68ca3fa9da0dc6c1fabe4d",
      "name-candidate:39ba189746abc516dc8e8f06bb72a463c4cfe13cfcb036706ecbb56addd18a28",
      "name-candidate:7fece5da2b8a626f839e3fa5668e591454a22f744255e6551002ff89a2784681",
      "name-candidate:d93fd7829c19d5797719ede5efa9c2fb592c1b2d3f13bbd8e039ca6cb5ae20c1"
  ]),
  ("name-candidate:f23616b72f27c751a3c97aa6a511c3c4e4ab228171ff2151f23316f8c252f70a", [
      "name-candidate:488e9b24e2a701f007bb23ab743edfb7340d2f697a81bc7b1a9fba9a601505a7",
      "name-candidate:f23616b72f27c751a3c97aa6a511c3c4e4ab228171ff2151f23316f8c252f70a"
  ]),
  ("name-candidate:ae10eabd39ec3cd1d462a374db51c5eeecad5b206332a22426194abbc0481929", [
      "name-candidate:1176f51cf347b8644cdc3195f96248f01afc73ef34b47d690ee2714e4af32194",
      "name-candidate:7c03ca4fd9a7a84c900328179a5781e2b7fb74cf76788afda33f15b625372305",
      "name-candidate:ae10eabd39ec3cd1d462a374db51c5eeecad5b206332a22426194abbc0481929",
      "name-candidate:c645e1544452668fc36ac5d0b7d0665b29414962bf75d70f5a4a7678192afe13"
  ]),
  ("name-candidate:1ea17b9db26117767806dd54bd36f99d8cf3fab806357d63ecc6a8fecb5abbc0", [
      "name-candidate:1ea17b9db26117767806dd54bd36f99d8cf3fab806357d63ecc6a8fecb5abbc0",
      "name-candidate:6e52c92d4dc8b2951c1904b5d58916f2cb9431a3cf3fd30b0ba00cf6954f3014",
      "name-candidate:b574438b75e3e9fb0b578305eaaee53efeab663d1138c14235682960a766b6dc",
      "name-candidate:cf0bfdc491f47bacc5c6b3d4872a7b1a360c4744e22da7aabe8a2bfc8dc2425e"
  ]),
  ("name-candidate:4712ab9a5d9204d1dd7775387da364cb937fb3f9fc01d9dcb0342622004970ed", [
      "name-candidate:4712ab9a5d9204d1dd7775387da364cb937fb3f9fc01d9dcb0342622004970ed",
      "name-candidate:bbd57dfe693f396e3ca91844afc62829d7c5e328ab6ee109639ac43ccdda7aed",
      "name-candidate:f6ec99dcb32499661f0ab3bab4cc7c1811c3b9e9f1081686224151d65ab368aa"
  ]),
  ("name-candidate:20afe7ee658d452421a24ff5e2b750e6665667641227237622e791080900c3e9", [
      "name-candidate:01ee3d7bdef07af3f13a13b109f3239017f83b76dc791aed3b767dde8e0af5bb",
      "name-candidate:18fd668c55dda959c2ca88a8c044b368273ba1533e2ce3a7aee1d01070d6dbfe",
      "name-candidate:20afe7ee658d452421a24ff5e2b750e6665667641227237622e791080900c3e9",
      "name-candidate:93b6f61006d55d277f2dba9ea0ff151318f72641ac46525b93e52edbdb4b4133"
  ]),
  ("name-candidate:a117f2a0a52ed816f962dededca1816e9380e733c31325f8297f27cf7cfdab1a", [
      "name-candidate:258cf3956f9bf7be9dc2aa2306003ecdfa9d8c413149fab26541e447167251fe",
      "name-candidate:2b8f9f04b907be1592a4c2c0756d6184f7368a45caef7c21ea48d931790ba11f",
      "name-candidate:932dd5f63a70e46973c2cdf12c46fc2911fd9433fc84f09ccb043bf6e08cfbc4",
      "name-candidate:a117f2a0a52ed816f962dededca1816e9380e733c31325f8297f27cf7cfdab1a"
  ]),
  ("name-candidate:a8a4fe71b70c58041bb31315435a88a4a097b1793bd9e1368997076c7cddb7f5", [
      "name-candidate:a5403a598e371665f7cff4e2bfcefc1f9d23b102d8955ca34ea677947b3d0287",
      "name-candidate:a8a4fe71b70c58041bb31315435a88a4a097b1793bd9e1368997076c7cddb7f5",
      "name-candidate:a8d93a28397c5c32a6559d21b8ec83b4c7cb14969cfa574d27f4e5ef814ea15e",
      "name-candidate:bee90f40c12ce49a74a99f12520d3f24acec86ad368147672f4ba59d226f007f"
  ]),
  ("name-candidate:eb41fe6e6a92cf15ecbf6472d925f4db572f9a1f659c0ad54680af90e792b7d5", [
      "name-candidate:52d3d11b3a4e7779ce51b1fcf0ae20af17d15b1fe300112ffc0755d88d137c04",
      "name-candidate:5c539b913614daa070b440eb0d2dff9eb1472faa89199c415e20dd52a409417a",
      "name-candidate:7bbbe319ecc547d45a8beea9b834800ad858f2531faf7de1a1061c1674808552",
      "name-candidate:eb41fe6e6a92cf15ecbf6472d925f4db572f9a1f659c0ad54680af90e792b7d5"
  ]),
  ("name-candidate:240ceb3fc452de84b001dc9c6b23b47d41c68667cf86801451668a1c1efd9c4f", [
      "name-candidate:1de55476a653ef06035fee8b8e11fbaa018548c8ee73d9f0909da46d0f364541",
      "name-candidate:21f0881d48e3da1ff4e9d184f4eae564dc740400a16ce513dbc349b96d2f5a80",
      "name-candidate:240ceb3fc452de84b001dc9c6b23b47d41c68667cf86801451668a1c1efd9c4f",
      "name-candidate:88b1f5306ab5d53ce87acdcb2ad5c50b20a1afd3dd5ed9880ea7d193cf716502"
  ]),
  ("name-candidate:a311b92d8e15efac1e3760cc3b3322feefdaef25a2f7cd7bdd41e833683e77fb", [
      "name-candidate:143cfb32452e44ed9686071b8e94907c1453df6068ebd0ac7c6e3e6ac9967451",
      "name-candidate:793558c748e5337cd9b3757848060c734f4de356f1afeb4bbd8465a7e95b560c",
      "name-candidate:9cb112ad056b6b1a27960ceadd016b78e2be4780d08aba849e8a20af8d7c4857",
      "name-candidate:a311b92d8e15efac1e3760cc3b3322feefdaef25a2f7cd7bdd41e833683e77fb"
  ]),
  ("name-candidate:f38244a008c481a994095382d1f531124f7675e9cea4136bdd89e20046639d64", [
      "name-candidate:09a9c4b008839b081d92e3a6a5dfc2185766c4af0fa0d8e495ca42f4bc8dd356",
      "name-candidate:b158e0ddca268abe091b28a2dc7b0ccc9268730fa2f60d6922efd76f1776a16e",
      "name-candidate:f38244a008c481a994095382d1f531124f7675e9cea4136bdd89e20046639d64"
  ]),
  ("name-candidate:58ad93b75764cb684d87bd62befeec9d9fcbdfce3e369258aa1ffb5cbf8ac927", [
      "name-candidate:0036c3b00609b48c6a4174f96a9195dca4154295afe4ba62e849e68601502cbd",
      "name-candidate:2ea99530dcf37f84a50b5e412660f64754ff5be3916691bee22a25d341739771",
      "name-candidate:58ad93b75764cb684d87bd62befeec9d9fcbdfce3e369258aa1ffb5cbf8ac927",
      "name-candidate:9082385c7df07c214332af6f09d6401a52f3ee0470176ec6eaa3b4520f352d5c"
  ]),
  ("name-candidate:b3c731afc76b6996bdcb61d3e31f4ebd5861c582379377b560116a32431f8758", [
      "name-candidate:81ea956685c35179f513a8e0a42e07814e47140d20df47eb5fa419e108586ae3",
      "name-candidate:b3c731afc76b6996bdcb61d3e31f4ebd5861c582379377b560116a32431f8758",
      "name-candidate:da2fdc888c48945dfa0633a8baba8a6eec4dc56b73531342d773995dfe158ca0",
      "name-candidate:f70eb055fedee03c6397c64f32e9cf5d6878e82785e81ca39ba4fb85c6801011"
  ]),
  ("name-candidate:091f29cf314e732c68255236aca7ced57a77d0bd1d050bf0184664fac41b3953", [
      "name-candidate:091f29cf314e732c68255236aca7ced57a77d0bd1d050bf0184664fac41b3953",
      "name-candidate:4066a9eae6e7f4296aaff1a29551f6f25781acc07ec8ba96276400fd296a878d",
      "name-candidate:5626cc52d9a54b73e13cf56fef9116c7bf7f67ab1dbf374fb82ebb5f47fe39d2",
      "name-candidate:b9d0bc6526aef2c378badc49187fd73d1462e818ff839d0cc04e34e3078d00e9"
  ]),
  ("name-candidate:fc07d61e470ce0e2f50788975f08d57b1ea4a806a8d447bd154b4bdd0143a511", [
      "name-candidate:24dbfcc4eae24426be5b70f293984f783b68d80ca39d3b5086df89ad1729d59d",
      "name-candidate:37bd26ec0adc36db03588d7a25af7f4e1e8702f380cf673b259d95f749adb159",
      "name-candidate:a33ae28ad02c74989f24ea34870add555118a295c44a46975dd50becbde68b5c",
      "name-candidate:fc07d61e470ce0e2f50788975f08d57b1ea4a806a8d447bd154b4bdd0143a511"
  ]),
  ("name-candidate:c581e52ec053ea58b200ab497db665b0d1bfc4ccc2a7c51ea9eea3ec28457b6a", [
      "name-candidate:02ec2a103d94af6bb195ce4c9195fc6725fa4ea6bbda6dc751af70e3fc76e2b8",
      "name-candidate:1c6fd01ce9e8bd778d434a9da388645d17ca02773bb3b1f40f582073135e3c04",
      "name-candidate:3e572146f4e519e4c5c398134839b93cddc1d48a5b1415bdb9a19a3cd2b71b0d",
      "name-candidate:c581e52ec053ea58b200ab497db665b0d1bfc4ccc2a7c51ea9eea3ec28457b6a"
  ]),
  ("name-candidate:7ead69132dc29949c1e9feaaa877063f935d453d76918932ecc5f9ac363c7078", [
      "name-candidate:079df394c1cd5e42409fca2810959870859df8abfea7c1fcaf6cac4ef5fc4426",
      "name-candidate:7ead69132dc29949c1e9feaaa877063f935d453d76918932ecc5f9ac363c7078",
      "name-candidate:7faaf5f3a669f1a698344d30fd21b04f6d401ce9c054c56e0114be82a6753968",
      "name-candidate:ea51cb92231db3cf49b81c7d3acea12cde5d6bd44b270776fb7bf9cc14306b8c"
  ]),
  ("name-candidate:a22b302a9135c3e479356723669a605f7a461181622580c9c6073c4cba879276", [
      "name-candidate:1fec87708bcf76a839858be3e983713f274c0d5660d7923be6a080c8cf93b150",
      "name-candidate:83c96629140109bfe3dba246ace20fcd52d9ba31f68ae87f7731184698d0222d",
      "name-candidate:a22b302a9135c3e479356723669a605f7a461181622580c9c6073c4cba879276",
      "name-candidate:ee8959ba037aff6f56b919a360d60c736b2b622d75eca1e8f2119c560fcaf79a"
  ]),
  ("name-candidate:07fd2a41ead7edf0ede42a601a738c32a677b32238c1606ab32572dd12862851", [
      "name-candidate:07fd2a41ead7edf0ede42a601a738c32a677b32238c1606ab32572dd12862851",
      "name-candidate:bf1cc99187b98e7141558bfa246adb73353409b8438dcf67a46bb574196e91ba"
  ]),
  ("name-candidate:2a168e9d941e78db8707cad3e634ddabcbc33b16a59b03ecf9255f885eb7b145", [
      "name-candidate:2a168e9d941e78db8707cad3e634ddabcbc33b16a59b03ecf9255f885eb7b145",
      "name-candidate:355e628e3a82f1c2d9331cbe3fde7c1a730f4197321ea5d7356bc1e782bfedc0",
      "name-candidate:38fd422f2d71d5e65559e9bc1d41f367ba3abdff9c48b4f119ea44f5332c7416",
      "name-candidate:8364ded091590d19f8272413ba9b8de409fd8e72d35a9c61e1cfb4df64a2965c"
  ]),
  ("name-candidate:0c95acb4e39e101d96babf1b8ce2c2b2cf72353fcb960ebfeddb88a82c26047b", [
      "name-candidate:0c95acb4e39e101d96babf1b8ce2c2b2cf72353fcb960ebfeddb88a82c26047b",
      "name-candidate:475ce8bfb61baf463c44cf5587673d37248fd654d1dc9ea6d5da520c757fd992",
      "name-candidate:7215f2d38d12827354aa0bb2a16aa3a8c5fb1bec1e818699e121d7b04241738a",
      "name-candidate:f64856f9d4027a038c74b3f6efb8dd09ea0697d35d78b020cea59e3bbf5e1a31"
  ]),
  ("name-candidate:f00e0f991e753f24b5f3c714015d3a8c98771ddf581e487bb0dfef9b046a838f", [
      "name-candidate:b45563f3957287ab0b3c796d97e8951f939b9b92bc0dac00aefa7a381d0a4a57",
      "name-candidate:f00e0f991e753f24b5f3c714015d3a8c98771ddf581e487bb0dfef9b046a838f"
  ]),
  ("name-candidate:83e894125b575635d5e9751382aac535806b21538037a98ccae0cbf68e47d726", [
      "name-candidate:532b89ce5bc8f279fc94278ea5c36e0a58eb6916f88e8d80660ac3f255d7c517",
      "name-candidate:83e894125b575635d5e9751382aac535806b21538037a98ccae0cbf68e47d726",
      "name-candidate:df0a06d89b4dc6f6e5ab7adf81983ad74e8c0dba965fed8c5f5a11a6a47c9668"
  ]),
  ("name-candidate:45082980f60043adf39912b8bac2d08d7b7bf3f8cc66f81b2357464fc58a3ec6", [
      "name-candidate:45082980f60043adf39912b8bac2d08d7b7bf3f8cc66f81b2357464fc58a3ec6",
      "name-candidate:4e6825736fc246f337f8acbbca4845f5ec2ba2dbf857e1b310d34d6217a1c048",
      "name-candidate:76aa2b017c0f129d29d550bddb0c2638463e42ed6b9d15a6a3afcba36f351320",
      "name-candidate:b43aba8906d65a3daf7934d54e0aeac3ac09ca5a8d339968a67220e786d1657e"
  ]),
  ("name-candidate:cdaa1f4c1f7c03d79bc5a07aac7f13dc2b0c8387037caef0cddc7f702f58f19c", [
      "name-candidate:6aaa6ed96d1b8ebed18214118c3588469e1716d572bd743e5d0a2a1ece6d1489",
      "name-candidate:9f587a16dbec66abe48683256a318382bff8f17329395912611a2079741ddf43",
      "name-candidate:c1878c185ac3b5e870abb48a65c5845c7c1c8192858a855e8857fd4400311ce2",
      "name-candidate:cdaa1f4c1f7c03d79bc5a07aac7f13dc2b0c8387037caef0cddc7f702f58f19c"
  ]),
  ("name-candidate:7483745cdfd70da87f549ccc323e5300a14b1e6619d72bc32bb39f616f500bc4", [
      "name-candidate:435ccfe3e4f2c95b9242bac0d7a77d72dd3375f0716eb7a2a0391f5735b53892",
      "name-candidate:7483745cdfd70da87f549ccc323e5300a14b1e6619d72bc32bb39f616f500bc4",
      "name-candidate:c5961201bed5a94d5386e9d721126abc22a26262f245bca03b7362a6e11a6998",
      "name-candidate:fe22a269b3d4136c45fd298775ec465e4721d4f0524ab082607e4d1571d04a29"
  ]),
  ("name-candidate:91457a9380c3506764fdb8fcf3c71d5012649c37888234c7f8cb3bbadd5c248d", [
      "name-candidate:306c08e2928339b4804b92906a3d9b4aef5371236b8312d6f602ea1bde12c352",
      "name-candidate:81ddebcc2e02da7c5ad33e4e159e776b7aaeff9c9c0701035dc16d1131089d3a",
      "name-candidate:91457a9380c3506764fdb8fcf3c71d5012649c37888234c7f8cb3bbadd5c248d",
      "name-candidate:d16fb306746a894075e3708c2988d274063071606686d7744fbd0dd58ab7a41f"
  ]),
  ("name-candidate:0e96afec1c680354bb96fe58c390eab5cf0ada4d7c4bfa6fea4ad780b38bbb22", [
      "name-candidate:071f508c4c673b34dc81cbf6b8af7bc1560a2249444400fb80d4e3e63c604e01",
      "name-candidate:0e96afec1c680354bb96fe58c390eab5cf0ada4d7c4bfa6fea4ad780b38bbb22",
      "name-candidate:0f488d1437cddf5b41b76488ecaf55fdfbe533f038567d3fd057a18a637a877e",
      "name-candidate:55cb356eb4337ba5d91ddd761ae8ebe43efe580086474c054a18a64b214a4225"
  ]),
  ("name-candidate:3cbf07130b6b7e9486103e56c097d0ad5560168503a5a3c5dc720db38711a0b3", [
      "name-candidate:3cbf07130b6b7e9486103e56c097d0ad5560168503a5a3c5dc720db38711a0b3",
      "name-candidate:8ebbf1c6812076a4f4070e849ab60070120e2b01503ccf2d5f08d5dea6b6e9c3",
      "name-candidate:f2eaff6668d46cb600baa46c865fd9913d4e7858c470d562ecc1bf4d50c47e34",
      "name-candidate:fc9d67a95b12dbdc016d94ce0301ace2c5e0b9e37236d67f5b8c85d0a5ebf9cb"
  ]),
  ("name-candidate:7ee1e6f3d157904756d9c0016054d1e8e213766fb2fa1ac81b5bd790a532867d", [
      "name-candidate:1b7e02e519a50f15b64a75f87d9ef030f3daaaeb301cb29ca4555ecaed3300a5",
      "name-candidate:7ee1e6f3d157904756d9c0016054d1e8e213766fb2fa1ac81b5bd790a532867d",
      "name-candidate:af1a3c2f7934666b95d05fbb6efa82b81e051047a09bc62eec250d3d5bbbe392",
      "name-candidate:fd0633344272a600ab9b4e9b3122fbd260b3a6b3110c425fff789a3c1f1e8df6"
  ]),
  ("name-candidate:9f1dd8e0f66865eb897d5100e41105bde07b7af12b0e27cd1eca8b2ae4853c24", [
      "name-candidate:165471044d100b0de021ee60669e3b2ee4e9ad7cae46524de912ae41257cedbe",
      "name-candidate:9f1dd8e0f66865eb897d5100e41105bde07b7af12b0e27cd1eca8b2ae4853c24",
      "name-candidate:b0059293e5508afe464431e514a4e2369ccb1cb27bb55422549a8273f2d8f9a4",
      "name-candidate:ec211bf53da52be91576d9790ae38b665f875c5a9bf95c77fd3eb64404004ea2"
  ]),
  ("name-candidate:33466b7751e2e04498d58129e36a81cc9d5a52120156042a96fbdbc02710ecbb", [
      "name-candidate:33466b7751e2e04498d58129e36a81cc9d5a52120156042a96fbdbc02710ecbb",
      "name-candidate:4d42b7bbcae2be5a4065413c69664aaca744b6247632d9a7d1ed292a61ebdf04",
      "name-candidate:65f04eeba9c611ce7f84334a711d4b5567597da5823d9546d3166cd3dcb14bc2",
      "name-candidate:c7211b4470b664df3c81bacb2e5e0f1a2ffc7c72579714eb212aaa375cf2f22e"
  ]),
  ("name-candidate:a40298f8fe3f554c23b95b7999fdf26188b3456204c8fadd010e82aa07546ef8", [
      "name-candidate:3703e1af689f656f5d1264744b077e61b486d9691eeffa2c61548567587049c9",
      "name-candidate:6997699c833e4143b5d1b4537f7361cd432bfa29c5b7ffc9f06fcf4329507a54",
      "name-candidate:a0d581bb359fce0df82742875ce40ee93a05c031ae770acb211a9ef57302590f",
      "name-candidate:a40298f8fe3f554c23b95b7999fdf26188b3456204c8fadd010e82aa07546ef8"
  ]),
  ("name-candidate:fa2d9ec427940e9fe3e126dcfa3eae92b551083ba3c03ec86d4b22e5c7c5dc42", [
      "name-candidate:03f79914421995115485acf2e4387935ce9f03fe62df7bcef5d2d7992ee2f2cf",
      "name-candidate:9ad3338a6d002c2f52a76985ebb5af2e1ae80bc5f4c7c28cdd1ea3d90cbfacb8",
      "name-candidate:ede57db81760fb871778a9a5889de34bf84ea9236d4978ecb43902be6cfa0541",
      "name-candidate:fa2d9ec427940e9fe3e126dcfa3eae92b551083ba3c03ec86d4b22e5c7c5dc42"
  ]),
  ("name-candidate:ccb9ce5a68bd42485b49479fa2beeeef1b611b1f782347cbf4e629fc6181913a", [
      "name-candidate:789163308a33cadf9523d78ee93264afc2f68d2379f66f502772b7096db46bf4",
      "name-candidate:7a996a79f3a954e35ac3a7a6f34ef8a043c2feab68b8efcd7e2742d18d79a6b2",
      "name-candidate:affe1535bff27fa575732f0a82949a3ac4fbf7809d7ef2654b553e6ea28b614c",
      "name-candidate:ccb9ce5a68bd42485b49479fa2beeeef1b611b1f782347cbf4e629fc6181913a"
  ]),
  ("name-candidate:1f2b3a18847eded0bf651db2209add9da240b555ae84f267e9d86831cc1dc46a", [
      "name-candidate:1f2b3a18847eded0bf651db2209add9da240b555ae84f267e9d86831cc1dc46a",
      "name-candidate:1fda5e021f03575b014b19cf39e9fbac238d5a5ca57aaba430a0672faf21dfbe",
      "name-candidate:59818993f887cef910b0c643b298ea296b2aa72df6c60b333a6452178a8d288a",
      "name-candidate:80aaf6e80b87f191baab3ebfb414989fd0080c71d6c2b36017ce41703bd3e654"
  ]),
  ("name-candidate:107b59c19b802e38dacab3678aad5756b864ef6e2fd4c9644c0add0604837d15", [
      "name-candidate:107b59c19b802e38dacab3678aad5756b864ef6e2fd4c9644c0add0604837d15",
      "name-candidate:508d00bc798ffbea24a723f9978c5d5dbf97cd2d9e629cbe50fb1c09ad2051c1",
      "name-candidate:987dd3aa22b74c866da44d027d12b47e7d9c6520aa3ec4421df9bfa07e36064f",
      "name-candidate:c3f0e8385b3329a90cece7777212e0a290978986362077a424beff720d196790"
  ]),
  ("name-candidate:e0efb0699a8641ce9a0beb25457633351da2a07d6a4d5a80073feacd4b5bfe26", [
      "name-candidate:793a51694e80e71f072e10c5c38853c04fcb2b85863140f43114583f95004820",
      "name-candidate:b786a8e45cc80a3b62b2130f78da81ddecd9ef0f0bf3199f851bb5f9094c68a6",
      "name-candidate:b9bbef3814c385214259e922dae1610ad9ebe245632656280f837fd2b5a3b2b8",
      "name-candidate:e0efb0699a8641ce9a0beb25457633351da2a07d6a4d5a80073feacd4b5bfe26"
  ]),
  ("name-candidate:c421e3798082a146549504362f104972a9edbb34eb6a1212d8cac995f0fe71cc", [
      "name-candidate:19b93330ed5120e07bd419a3e328bc5f50bcf080338233df8c3ae9ae91180d46",
      "name-candidate:19c9d80810b175e81eb1b1161170045926009e1bc1fe528067ff5391057a71cf",
      "name-candidate:c036075ea75f45a9249cd4b9ef1910eb81401d2a98d66bbd0892260a300a6265",
      "name-candidate:c421e3798082a146549504362f104972a9edbb34eb6a1212d8cac995f0fe71cc"
  ]),
  ("name-candidate:4478d22b52f43dead014eddad5126fc182f6fc510014f72666e8894bd8b2cc06", [
      "name-candidate:207cb0926b1f2bea15f28857b6aef712ecabc1560a6de949d1eb2a32559fedcb",
      "name-candidate:4478d22b52f43dead014eddad5126fc182f6fc510014f72666e8894bd8b2cc06",
      "name-candidate:90473cd28b7fb3f12869a9959dd9dd2c2fe5d524df6bf8b6251d2921b4a4409c",
      "name-candidate:f64d1e8dd932cbcc960b7d71950c550d0443591e0810d18328a7b8619e4337d1"
  ]),
  ("name-candidate:dc90a8eb190f8af2854120d79ded6b2c22c0a7a0cece8db18173e5dbfc09c6e3", [
      "name-candidate:00bacc02a018d1851ea512d006eba46024173b66b0dc9bd686973aaae16db68d",
      "name-candidate:a02e1f5e95efdbb1f9c44798d239aa92d91da0e1b3338587bd258d6e2fc68c7c",
      "name-candidate:cc92f03a7521a8603b0e1a35b2b6eff52d8948fc1a24263325aa1ac6054ecc32",
      "name-candidate:dc90a8eb190f8af2854120d79ded6b2c22c0a7a0cece8db18173e5dbfc09c6e3"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L50351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
