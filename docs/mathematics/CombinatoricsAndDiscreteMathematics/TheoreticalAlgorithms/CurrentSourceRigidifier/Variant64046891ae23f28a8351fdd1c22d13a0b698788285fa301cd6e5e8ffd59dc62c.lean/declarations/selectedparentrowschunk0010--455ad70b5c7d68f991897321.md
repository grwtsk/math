# selectedParentRowsChunk0010

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e297e8147ae0940e8f378ccbaa13c827e0e7ac5f63092866c16e884d620be64",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0010",
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
  "slug": "selectedparentrowschunk0010--455ad70b5c7d68f991897321",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134209,
    "line": 133970,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:455ad70b5c7d68f991897321f209c768f1360b1c26cc1ef59df83b38ab269861",
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

Occurrence: `declaration:9e297e8147ae0940e8f378ccbaa13c827e0e7ac5f63092866c16e884d620be64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133970–134209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0010 : List (String × String × List String) :=
[
  ("formal-neighborhood:4cda093213acd71a865b0e3d2f299ab97933744fa841a640d2d89e86c37974a2", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:4d08cc46dfe32ae6c11f6032e11aac3a617f4e50ff89cfc6c9c9dda5290186c1", "formal-neighborhood:c8a6c0954b95287ba8261ab92de8750c8f45ff15675a94768ea0f4d9ad864283", [
      "formal-neighborhood:c8a6c0954b95287ba8261ab92de8750c8f45ff15675a94768ea0f4d9ad864283"
  ]),
  ("formal-neighborhood:4d2fab85a33b6ed7f2564c2f794242411be247bc3816e707a06f8bb410408f81", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4d4147bbda827ed1992ba09a59d5466e6be55934024b52c5c68835b0cc4ca00c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4d6a624dca578d147d1646ee4c35af3833faaf1fdee08f4e9695f26483a6e59b", "formal-neighborhood:f269dab0cdf3143b9820920be11ba8f99ec1125b8e0ab3d9789288da9ff6b07c", [
      "formal-neighborhood:f269dab0cdf3143b9820920be11ba8f99ec1125b8e0ab3d9789288da9ff6b07c"
  ]),
  ("formal-neighborhood:4d77ef6f793b12cff92ed3594b8ca14ef7a3e74a3206226c28a56e3af95f1447", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4db006dae00363894b6ccd9902dae4096f8241fad8f103fe3e10ede8303ddf0e", "formal-neighborhood:04f1f6558a2bbb851618e052e472ef8d25eb03ce21cebcc922f9ad030b1ce104", [
      "formal-neighborhood:04f1f6558a2bbb851618e052e472ef8d25eb03ce21cebcc922f9ad030b1ce104",
      "formal-neighborhood:be89f7a3d34265d94cf60e2ce20b2c62eb5e0c0dde6bd8895082158ae82b29a3"
  ]),
  ("formal-neighborhood:4df859139163d00b7e89b70704276226d9d27a5ac99b346b2cc3d02d3f8badc7", "formal-neighborhood:9bc4e50c8185f9b60891fa9559652ecd1ced1b3536985244dd4667afdefbaece", [
      "formal-neighborhood:84914f66686fb42f92484d59a70b16f47b45bf96eaf6eb73be6823da524050e2",
      "formal-neighborhood:92277ca3a05868c1cb231080c8b181b83c54a1f097f5400d1e52540393797333",
      "formal-neighborhood:e0e183cc6e6d33a3e06c523a45b396bdfcbca8bfb4eae33ba3a686b1c3bb20f1",
      "formal-neighborhood:26b06a673cf716cbb84b03f6837f03be9b1319ccfc009766fb34d9e2470783e5",
      "formal-neighborhood:a90bd0e9644540a207cbdde7b43999f994fdb133aa075e21b587c1baa1bf09f3",
      "formal-neighborhood:9bc4e50c8185f9b60891fa9559652ecd1ced1b3536985244dd4667afdefbaece",
      "formal-neighborhood:783244e3fc7adff5dc64b9126cbdbd43dd8c146e2f58163b5c77548f6f527911",
      "formal-neighborhood:c17e1d97ad3175563b69c31fadeae5cf1baad0c74b9675a2c7f0ed3bf2cf0960",
      "formal-neighborhood:0f64db12c79c2f41e61961ba51ac10ae29a02d2f09573ac22fcc24fc0043abf2",
      "formal-neighborhood:13f7dbd5a1ac694429edac312dbacdbfeeb9d15e991c26b7465afd04a49b5aee",
      "formal-neighborhood:1d83d0bac209958cc226a9aabaa983535fa5b998b0d44ea206c55bf3576aacd0",
      "formal-neighborhood:f46b8c3ed8871c8d9b44866ee303e3c6dd3c9bb81223c90c8cf791283689599d",
      "formal-neighborhood:c459aab585429e968bef4efb477ddbc105ed2e11a2e5c0bffb6e9b09278caaed",
      "formal-neighborhood:3a2c09084c62cefa713621662a86fb93c20a2514535cefa1a8c095a207dc00be",
      "formal-neighborhood:4aad956f72b2a884d395d45deb3c9784caad5b3218a054fd666e3d6b4257c957",
      "formal-neighborhood:5628e6274b983bfe3218e18d2d52ea18b2995808ceebfa8ec0024c6ca9de9078",
      "formal-neighborhood:fb409c2b3d7e917d9558a8bcd32165204d404106d9cda340314cec0feeaa6525",
      "formal-neighborhood:fecdec499ad91c35b5351c073ca6a7f35791d04f463f8f2b49673f04ed892d28",
      "formal-neighborhood:e4b74551252befae5a67b4f32034dd928ae87c735fb16e69e26533013edcbc62",
      "formal-neighborhood:1e71ab07846acc4f392e2abe2389359e6f9cda1c7f980935c455860afcf5398c",
      "formal-neighborhood:9a6c3cd7557b35129b2ff784c3520a2562f8d377c78768463cc9d444049bd876",
      "formal-neighborhood:50bd43a4f2eed4673e9f27979ddf0ba419683ecd50aece930630665ca89a40d9",
      "formal-neighborhood:5cf91f22296e3c9362d2ad1982b52039b0ad5cf85ee877331edfc5d2de1b51a8",
      "formal-neighborhood:a3bd88a022561e332d8931e260269785c6fcdd6716dbf87a92f229ad8770a7eb",
      "formal-neighborhood:f01df75a1b6adbf8bff9530f1b82a8b4b4b129e4440ebc46ffae5283dba089a9",
      "formal-neighborhood:7a0f454a30a2837bb9ad11f68357b293ef7b983dd0b3aa37eeeff0b73d4efb99",
      "formal-neighborhood:437976d96ba3c279a80eb19892ef04f8dc420d2c3baefb5c6001138279e0d820",
      "formal-neighborhood:87e780edd068c3cf0ac9bfe3f585635d0f6559a62788e8048759d182aece1acc",
      "formal-neighborhood:e0c1425ff6f3cce8c76999c2dc8bc0af60466a781671d42df2875a208babb076",
      "formal-neighborhood:de4eb40fbb7ee8c3a7e27198e983df682e81e340e7ab85986e3dc1efa2546541",
      "formal-neighborhood:8425a6b227f66b542006230885f7a8f699c7de9d5ebf619dc9120cba57325067",
      "formal-neighborhood:f9cce25bd58ee0451ef0724b3b9bf8ee4375aa37b0cde11241b72c391a8f024a",
      "formal-neighborhood:717ad3b945424443db2a0bcf5edecac27ced90bde01f42aaf4a2238c3ea0d9c2",
      "formal-neighborhood:da559acb86332e845bb94f3c87e1e41c3e73976c99022429a724f31d3334a098",
      "formal-neighborhood:a4304f94df6d40b5387e4d6ef05e5dd80e10484af1fc1ce6449a640e1b6cff6e",
      "formal-neighborhood:6a59f637eec4c7bad57245e217e3ee77dba001bc53071604fec73e6c0d010ed0",
      "formal-neighborhood:a61bc31bde1354453af31bf7b6b7b7f305f7f190d81c8d5a5846aa95d925091e",
      "formal-neighborhood:366938d45f7f2f8abb1e9da6800fec2a6de6abef3b3317805416741f8551bac2",
      "formal-neighborhood:6a6fbd335e59eb025bd3de9f3071e28e0f62a71ae32094eb8c826d3a3a2ecb01",
      "formal-neighborhood:f215ff5f028edbb11b3489ed457ade187dd660a0744651c6662c6bbbe5987712",
      "formal-neighborhood:21ffef18b20848eb8e5a73e4c66d2d56b2c4117cabd3fb65b135c6d67127678b",
      "formal-neighborhood:28a54d30327aa16d858a9cf726fbb291c0119b27aa814b7c1ff1ae49023be272"
  ]),
  ("formal-neighborhood:4dfef37f343375a8b5769f1ddb66b5cc20396229282f8f65cd8703599383aecc", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:4e41fabb9ec9cb8012b9523d146e697f25c74c764e30823a044bf40be0be2389", "formal-neighborhood:8592af13237a6039328d4eb0a583959069690765d57e996cc2bdf8bb6b63bfc1", [
      "formal-neighborhood:8592af13237a6039328d4eb0a583959069690765d57e996cc2bdf8bb6b63bfc1"
  ]),
  ("formal-neighborhood:4e4bf4264687a5340a575b08c62bca92bf30f3d039fc2fbf850ff8e376e1035f", "formal-neighborhood:a7db0a46b7d2613cfa874ad0dfc0ea40c0f97f59b966e64449e0e90506d2f94a", [
      "formal-neighborhood:a7db0a46b7d2613cfa874ad0dfc0ea40c0f97f59b966e64449e0e90506d2f94a"
  ]),
  ("formal-neighborhood:4e523d448d67be647f75fc2e39b24170dbce61087d3fb30a25c1927580637862", "formal-neighborhood:6ca385528799e6af0a096338e93ee2ade36b7909ff6e9fdb6933fd44b4919dc1", [
      "formal-neighborhood:6ca385528799e6af0a096338e93ee2ade36b7909ff6e9fdb6933fd44b4919dc1"
  ]),
  ("formal-neighborhood:4e73bb8066f8251a46654ff8036fc97ff9107f8b41e868cdec3500eb5778fdb5", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4eaa383a0b69b17c82dcab40e7d88a5fca0c7e041d1149cf82b93028f70da830", "formal-neighborhood:1404be9403355f071a912c2682915693b8a54f446232621f1cad10b458c86d88", [
      "formal-neighborhood:1404be9403355f071a912c2682915693b8a54f446232621f1cad10b458c86d88"
  ]),
  ("formal-neighborhood:4ec74283cde0c69bcb7ba1cb63c905a710ef71da266cfb5877faf1913a56d935", "formal-neighborhood:eac08d7fb00cc1a72fc481c5da6404d82b0bf777ab56b23e4d748355adad3eaa", [
      "formal-neighborhood:eac08d7fb00cc1a72fc481c5da6404d82b0bf777ab56b23e4d748355adad3eaa"
  ]),
  ("formal-neighborhood:4edaa65c20517f440ddf567b54f23a286be402e879526f83889c8516fb9293bf", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:4f076a56ac67454045277cb3d24553938e7afdb2b0fdf2c56206b74f00ba2f4b", "formal-neighborhood:15dfb597c1618625ee5639b8b370404fabe5fb82d37c58746b4114b77522d1ea", [
      "formal-neighborhood:15dfb597c1618625ee5639b8b370404fabe5fb82d37c58746b4114b77522d1ea"
  ]),
  ("formal-neighborhood:4f4529e92a5a20555e586f86cdbb889dc45a09fc3b1e08f7b84a5a5ce66d0728", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4f5ae974901de7003d5ec3fdc45d10c276b8d87efe0ec7d52287d1e3a42e6c6c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4f7c91d2d32e2f335d578b428e53457c221f74e41ead4ae505382705b6a389a7", "formal-neighborhood:be89f7a3d34265d94cf60e2ce20b2c62eb5e0c0dde6bd8895082158ae82b29a3", [
      "formal-neighborhood:be89f7a3d34265d94cf60e2ce20b2c62eb5e0c0dde6bd8895082158ae82b29a3"
  ]),
  ("formal-neighborhood:4f94dfa16dda2b69b31d2b4ad18041a883668ee50fb3d4409426fba65adaf89b", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4f95a368536f654959d20b1cd4eaf509200fdb169198b9b566a98329a237000c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4fa136cf8d433d29ce3c34a95eed2b14254c3ea83228ddfdf9f4f5d1b6f28b1d", "formal-neighborhood:22b2651c161a88ad9b8c68dd45f83d504288d8255f7ac3928987f2517d94d81c", [
      "formal-neighborhood:22b2651c161a88ad9b8c68dd45f83d504288d8255f7ac3928987f2517d94d81c"
  ]),
  ("formal-neighborhood:4fcedf8bc52e75940eb7d8aa1762cab3802302692b69dc201de9a54b1af82ef4", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:4ffcbf1b5baf16e5ecc9955f0d8fb0e5f9b9005c58d43fc29f2ede7321db4632", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:502d747dced5614a19373cde25ebd3f91e974c983fc7750300747ca67658e10a", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:503620a9f4e761f9dd0acc177361d8b416541decd38d4c02eeeb8f23cd68fe80", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:50552809ee489002579efe70efe6877e8d4810d02d07170799dadea2dc6af2b4", "formal-neighborhood:22b2651c161a88ad9b8c68dd45f83d504288d8255f7ac3928987f2517d94d81c", [
      "formal-neighborhood:22b2651c161a88ad9b8c68dd45f83d504288d8255f7ac3928987f2517d94d81c"
  ]),
  ("formal-neighborhood:507fb52e6a623ea49f1aff21fd66246a93c6d877c09683a746fa325c2cbc89d9", "formal-neighborhood:3b3ef9591dd4f52b01a6b82029faf2b7ff4bc78212e75451770cf88a86b6450f", [
      "formal-neighborhood:3b3ef9591dd4f52b01a6b82029faf2b7ff4bc78212e75451770cf88a86b6450f"
  ]),
  ("formal-neighborhood:50bd43a4f2eed4673e9f27979ddf0ba419683ecd50aece930630665ca89a40d9", "formal-neighborhood:fefa39290137c0f7c1dd29fa56bb46085a90d89a991bad37d1389a1bf6469756", [
      "formal-neighborhood:fefa39290137c0f7c1dd29fa56bb46085a90d89a991bad37d1389a1bf6469756"
  ]),
  ("formal-neighborhood:50d480f86bf9a1a9ec68d4abbae944e3b1fa5ad00a93b738ddb4043eb46c4cc1", "formal-neighborhood:6c52d61eb59e42a2294fe4379bbd39c3e9c1e59b6dab02acfe66b08861d988e1", [
      "formal-neighborhood:6c52d61eb59e42a2294fe4379bbd39c3e9c1e59b6dab02acfe66b08861d988e1"
  ]),
  ("formal-neighborhood:512d0398b86be206bdcd7403bd7eacf7760a5cb81f49303372218f948ae9b13b", "formal-neighborhood:732df222b418aaa75f8c317334abcfe51d90c71d829ae02f09336bb2dc41893e", [
      "formal-neighborhood:732df222b418aaa75f8c317334abcfe51d90c71d829ae02f09336bb2dc41893e"
  ]),
  ("formal-neighborhood:512dc53022d1bc51687fc53e1770c16101053c41ead918e9c219054e263db515", "formal-neighborhood:2ea7be6f0e8832dd34864f98a66a03153331d5d432006f9ea33857610bf72cad", [
      "formal-neighborhood:2ea7be6f0e8832dd34864f98a66a03153331d5d432006f9ea33857610bf72cad"
  ]),
  ("formal-neighborhood:514066eb981c017b739099f1fe6675e291fa1ca78d34856ecc24509954fd900f", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:51500b5d0798181a28258cfb31ae544a7712f500534ccf663d4323bff873e63b", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:5175f2af6728a95618bc309d7993466bb0cb63c7b5449aa36ca1378a67c1ad14", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:518c0ebeed4654a834e530e58cd1bbd466f86ab4e6271430f8d22863bdc2695c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:51b6875d1d3114965b9bcb77d64bcd0fa1f89885a0aa915c4162ce7519ac8bbc", "formal-neighborhood:68443baa8b726b6ac9734eb9c2ebbfcdfc8a8b11a70686d9e23f0366c59ceda1", [
      "formal-neighborhood:68443baa8b726b6ac9734eb9c2ebbfcdfc8a8b11a70686d9e23f0366c59ceda1"
  ]),
  ("formal-neighborhood:51dcdc41f2fea01f20ed232ded0ac0c8d0faf4d9160df9ca03fec6ab556c744f", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:520d7b2339e74bebe85c82fafb0fe06124f4f5856841867fa35b813fde40b3f1", "formal-neighborhood:e7b28d477c8421bb29bad5a4eaaaa64a7995c55bc3299163e8462338e22f93a0", [
      "formal-neighborhood:e7b28d477c8421bb29bad5a4eaaaa64a7995c55bc3299163e8462338e22f93a0"
  ]),
  ("formal-neighborhood:5298bb62b587e4e65360f11390f0ff1da1e95326c6a37c2d8dcdbe9e571bbb4b", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:52bff48783846734fd6b6dff7a6af1d56c95f139ef31788df6eb287502331edc", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:52c0e6ecdb531a8711f4b72af59602ddd92e8d50eeb24504fb6f1ae77a6c12f8", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:52d20b2b5d1da82c2f3a0ce9312fd5790a1b9fa2ffe8baa02848c9f18c0e7392", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:52fc0dbfd6b7cf58fa6d6aa382f6db5d5e6d81ca4889df2102f3490615494f3e", "formal-neighborhood:31d24d29f67a1e5032212cff1fcc0dedee7e6a2ecd6ab6bbcdf05aa7d137209b", [
      "formal-neighborhood:31d24d29f67a1e5032212cff1fcc0dedee7e6a2ecd6ab6bbcdf05aa7d137209b"
  ]),
  ("formal-neighborhood:5316d42f0fe5c77c90139cba6f9b8d4dbd545f3836a8804b330516c10c84b46f", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5318510a0b6bac2d9b826d0243167278ec4366b013389467e169b4511a3e6ea7", "formal-neighborhood:27adde9d85deb808e321547700540aa05496cbff51dd7c28bd15678e36190f8a", [
      "formal-neighborhood:27adde9d85deb808e321547700540aa05496cbff51dd7c28bd15678e36190f8a"
  ]),
  ("formal-neighborhood:5334bfdea047351bb7c418a534db74efcc6f9f12051a61976164fcbd130512a0", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:5340168fd22a92a6e3384ac5a086747a112669b1b89214be586fdf50a031d824", "formal-neighborhood:2ea7be6f0e8832dd34864f98a66a03153331d5d432006f9ea33857610bf72cad", [
      "formal-neighborhood:2ea7be6f0e8832dd34864f98a66a03153331d5d432006f9ea33857610bf72cad",
      "formal-neighborhood:b1630910a3f907f4116ae3438edf3d18a7e55194540faf9916a00a6c819ca81e"
  ]),
  ("formal-neighborhood:53617112f807ed923eb20dcbe264509a321305f24aab9b7cec09e80e4335d1a0", "formal-neighborhood:b505c853fae9be013d5dbd3e0e8be41dc36e76108050e48af60f7880d854dd95", [
      "formal-neighborhood:b505c853fae9be013d5dbd3e0e8be41dc36e76108050e48af60f7880d854dd95"
  ]),
  ("formal-neighborhood:5371e1d4f2502e0544b55a6685e4cfd6dd97ded20e1d0a14770839e4b81ee5d5", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:537f85abc2ac34a1af4baca10366e7f0c1249ca68e5e46952224a312236ea350", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:547bbcec17386493c3de44c487dfb8bb00e81754f6df6d9d82de1f1d5188ae47", "formal-neighborhood:122f67c84934b650672f0aa4f4f31b8d29aeb1757b2c207e121769a12b224cf3", [
      "formal-neighborhood:122f67c84934b650672f0aa4f4f31b8d29aeb1757b2c207e121769a12b224cf3"
  ]),
  ("formal-neighborhood:547d9c095f12c715d53e0290f9e0675f81c5f7dace8a1d01bc3abea5284ef9f7", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:5489ad930cbb408bdada8eb6a48042062c785b9df0ba127b6f3f22ae759aca60", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:54c906a5d5167844726847960c18d060585ac771b2912f3ba8aef56e4d24f18d", "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a", [
      "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a"
  ]),
  ("formal-neighborhood:54ef2dd3fec3d5b0b13595cf7b69f4a33d58a72b3d4bb7f045e26265384d1157", "formal-neighborhood:e0830e42b19c02772163e72e7736e9a5251686e086041155551288fecf84a0df", [
      "formal-neighborhood:e0830e42b19c02772163e72e7736e9a5251686e086041155551288fecf84a0df",
      "formal-neighborhood:fa53402ad15f5b7eee02fade8383b612cd02ff439c4da4c60c54f07961ad9030"
  ]),
  ("formal-neighborhood:54f9f11e41fedff19af41cfa748c1ddcd3599f38d0b7dd3d33e9ad77de1b8f98", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5504bd55b246c16d0855ec1cda715897f098f30e12a5529d892aa24a7e0617c1", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:55065ee86f36ae207b6e751a201fc5e757d318fc04e4543cd1896e593e7c8e31", "formal-neighborhood:97aa7ccfe06364471db5ec2b85b3507cb57f47077245b4d2f24251df215dd5e9", [
      "formal-neighborhood:97aa7ccfe06364471db5ec2b85b3507cb57f47077245b4d2f24251df215dd5e9"
  ]),
  ("formal-neighborhood:552882edd1fe9773ebe6d5f08b8929e80bdd4a1067927f7dc0a94231fc4e0a24", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:554574ed5f0ff36d7fd701efb5fbf9743e0341a58742f488e71f9085e25542dd", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:554fc0528011e5ea0825f04a9dcbd57ad31ebbe197047f164c13e9c839414753", "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378", [
      "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378"
  ]),
  ("formal-neighborhood:556fce1b4c2c216d282478f5ecb6f37fd0939e100204d9bfaab24bf3151d9ce1", "formal-neighborhood:6c978835c396eb444f4edc3aee53a4a306223a44f08f8d1135170808a8ba8275", [
      "formal-neighborhood:6c978835c396eb444f4edc3aee53a4a306223a44f08f8d1135170808a8ba8275"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L133970).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
