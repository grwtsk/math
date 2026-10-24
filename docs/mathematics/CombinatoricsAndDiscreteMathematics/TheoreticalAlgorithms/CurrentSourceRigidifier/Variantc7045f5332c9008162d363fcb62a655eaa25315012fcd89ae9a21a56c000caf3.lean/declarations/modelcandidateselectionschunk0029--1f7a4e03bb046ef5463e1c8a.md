# modelCandidateSelectionsChunk0029

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d32d26c5600ff122de58dbe444588d38a065ea217cc8b4f0a416a1dcb304e047",
  "kind": "def",
  "lexical_name": "modelCandidateSelectionsChunk0029",
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
  "slug": "modelcandidateselectionschunk0029--1f7a4e03bb046ef5463e1c8a",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64890,
    "line": 64519,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f7a4e03bb046ef5463e1c8ae7c23a43cedc0ff21e51b1aee042c7c0ac3eb602",
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

Occurrence: `declaration:d32d26c5600ff122de58dbe444588d38a065ea217cc8b4f0a416a1dcb304e047`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64519–64890.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def modelCandidateSelectionsChunk0029 : List (String × List String) :=
[
  ("name-candidate:934bcbaa7bb9b7b58efb1835c7340e53d535290962e17896b20bdd37c57d2513", [
      "name-candidate:4a6dedc3ab1023846e82daa15b293521a9bc55c2bdce884ae877a4bf3b9b815f",
      "name-candidate:6db398348811813194750bfe26ac77872028c09553c98ec88dcdf2a6182f32ba",
      "name-candidate:934bcbaa7bb9b7b58efb1835c7340e53d535290962e17896b20bdd37c57d2513",
      "name-candidate:a6b1980d3c22dfd5f2d7b228a285ca3a13e1a934c4fe7fdc3cdf6ddd772ca100"
  ]),
  ("name-candidate:9eb1e713f5babff7e92d4d46f05859019131320a3b63daf761a4d4af245009c5", [
      "name-candidate:46dcd707419e8216019790f698cdc3b57d3df7efb02c0dc8219e0f7fd8d2c2e5",
      "name-candidate:4ec21a5cc288c5ad10da72f436a33c6b7aa7e3c533885960358f5c11c143e614",
      "name-candidate:83af7379b41baa4c28fecd905f792a24b83fa3a277709a9c788724c252224f8d",
      "name-candidate:9eb1e713f5babff7e92d4d46f05859019131320a3b63daf761a4d4af245009c5"
  ]),
  ("name-candidate:c8f455a8cd583ec770477701f22523ded00e583cf202fcb3dc4c88d762912d94", [
      "name-candidate:ae43b55db0c48c217faee2f80a37791deddb10e30d6fcd840c3ef23af97d59c4",
      "name-candidate:c8f455a8cd583ec770477701f22523ded00e583cf202fcb3dc4c88d762912d94",
      "name-candidate:e08cdde66af071656081fff9ebfe9c6e09e681d205e7c5430ec210164f12c0aa",
      "name-candidate:ff688eb786e70f371738d1eb5c7714ceb9eec8b1c651659df0a7babfb5abbe19"
  ]),
  ("name-candidate:728b828dbb2d0429021020376acd0330c988faba04da7fb78d1598f459552bf6", [
      "name-candidate:117259cdf61ad15cb6fa6333f57bc8fbaf887994eff1c36d91c9894454fcee75",
      "name-candidate:2af08d3c9c5b01b8f88d49f07a487063b818cb316ab965a2c8d36d7b5df84b97",
      "name-candidate:6bae065d29596dbfdc13f41eb35d437948d2e209bd18554a350f6f7c3353ba0a",
      "name-candidate:728b828dbb2d0429021020376acd0330c988faba04da7fb78d1598f459552bf6"
  ]),
  ("name-candidate:cc70a5f4de698471f4a58af42a2f2035b3ac2d7fb2168c8efe17eb05099d98fc", [
      "name-candidate:a962de8b801b7a0d12e493af85bb9ddc8c94e4956d5008e58e8afa9392573afa",
      "name-candidate:be1b3dacac5a46d68cc8ee8e62004f90f324dd7618d941fdcb5605521523e45f",
      "name-candidate:cc70a5f4de698471f4a58af42a2f2035b3ac2d7fb2168c8efe17eb05099d98fc",
      "name-candidate:eb382920ffdf268cc270d5c75c0de06f213b7811525e07340709391193bdb321"
  ]),
  ("name-candidate:a4f6135525200898519f0adedfa77d849fadce1fdca704ac1a1e0ac9468c9c25", [
      "name-candidate:29d26f2b44add31b1cd28b8b942bb1ff6f88d3afdca7d762e23baadacb160172",
      "name-candidate:61765b294ddcf221ca28588fa56fe0326132f8566b1441d0e25cf7416c8b0b97",
      "name-candidate:83e667250be2597a9f399a558ce1f22093862647122a78891850e57b55d5ba12",
      "name-candidate:a4f6135525200898519f0adedfa77d849fadce1fdca704ac1a1e0ac9468c9c25"
  ]),
  ("name-candidate:49e683d2125ec9a407b6690e3fb76f13a18ff51247584c4218a209fa582b1cdc", [
      "name-candidate:313d17ff6ed3077911e38da7060d6be2282fdb5fd88239aa904b374053317236",
      "name-candidate:49e683d2125ec9a407b6690e3fb76f13a18ff51247584c4218a209fa582b1cdc",
      "name-candidate:89dd3759ea2db8d9abe28fbc0108ecf510a79391fba24b6f2cdd3c03048c1108",
      "name-candidate:a307a642292d41f177ff98d86d7a5622811dd8bdeb123ad7040e8c00f3d8f287"
  ]),
  ("name-candidate:8e22400a69e0eb7bce526bdac9c6c963b539359c995f44b7152e03f5b22d7427", [
      "name-candidate:09f7016c416017910c2c22604ac5757535a8dba2034f1f3040aed5ad861b14b4",
      "name-candidate:8e22400a69e0eb7bce526bdac9c6c963b539359c995f44b7152e03f5b22d7427",
      "name-candidate:b38e1ccfd411e4de5436c588f62061b127541b066890ee2019ed17326e6697c4",
      "name-candidate:f13507934eb69b0bf8d16f4417dd775c8af78c542bdd5c2072d7a27cc37127ea"
  ]),
  ("name-candidate:cdc9764e6f36e4513bd8d6ee8723eb4cf23a20e948a588eb4f10046851ef3b57", [
      "name-candidate:1183550e7c67bde5cc598a08d75ddca1d776eed4cdc9345eec6492b92d08ce26",
      "name-candidate:28b3bdd038bfb9d7d67ad0ed1dc7a10670b76adae5c48b5616bb64900a05acc1",
      "name-candidate:30d078f8099a09b24cc1760f4007c6ee474661ab2e1015d01de656d8a062c84c",
      "name-candidate:cdc9764e6f36e4513bd8d6ee8723eb4cf23a20e948a588eb4f10046851ef3b57"
  ]),
  ("name-candidate:440093b0a6b085da570e2b6d46abc6db6a5eeb1c57a0e5e1c8bde18ed397c9af", [
      "name-candidate:01eb73dcbc37422fbc217502b6712774e7f4fcaf3ffb2ab269a9ad268c48fb4d",
      "name-candidate:440093b0a6b085da570e2b6d46abc6db6a5eeb1c57a0e5e1c8bde18ed397c9af",
      "name-candidate:6cc9442bf57cdf2b164bc402df8ba1e996a764bcc37142379d14c09f241b1e35",
      "name-candidate:87fa421fc57b866e6ba35a4233db573d5e61c67ba02f5980c6644de10ed4b75e"
  ]),
  ("name-candidate:5acf0336c8aef1b090939614e0c9972d3a80082b90bfb6226737eb6266892aa6", [
      "name-candidate:156e4723c972a62c88c661f4b32cc48f9dd2910e16d7a122baab9126101c62e8",
      "name-candidate:36848f342df899cda377a07fea5666d228927dfd849e79138cf2b07220b0c6ad",
      "name-candidate:5acf0336c8aef1b090939614e0c9972d3a80082b90bfb6226737eb6266892aa6",
      "name-candidate:91d2cf3f9e9b4299c0de459befd81f3f74606413a21767a2342ef6141f67530e"
  ]),
  ("name-candidate:9fa296380a683bc899a47aa38309a4e93caddcd8c5257b870277f0e119ef67b6", [
      "name-candidate:31a8483290b9f130eb47097b3fa6495a978a677fa256d6ef068eaeba8d2350f7",
      "name-candidate:5fa14f61a96aae36e57124f2861b030e2184c6c9f36c5350ad41ffd14aabfc8f",
      "name-candidate:9fa296380a683bc899a47aa38309a4e93caddcd8c5257b870277f0e119ef67b6",
      "name-candidate:ac93e8abcb4129b35f645f787f0851b89d981689c18277eb9c84bb88c4dfbdbb"
  ]),
  ("name-candidate:ace75c0a07f33e112fd115bb5e1e37808c8145fc7003aaaf66da8df9108bf60b", [
      "name-candidate:82997aabbb143372e48ec8123e4b5824bf376e95cb6e4d4bd4beb0f1b8edf0cd",
      "name-candidate:8fc4aebc535a1489d0cec7ff6606d4e74e1206f5f1b3bc255712df58d45394bb",
      "name-candidate:ace75c0a07f33e112fd115bb5e1e37808c8145fc7003aaaf66da8df9108bf60b",
      "name-candidate:fd2993da22bdfd1000b550a58175a0e3708b1410264fe792416b42fd788cc88e"
  ]),
  ("name-candidate:a7e7e59be295f5ad3dbf41b23b1e8610bfacdaba14b14cb036b63c1b22a7d22c", [
      "name-candidate:360e81ed1c6886331d3a01d1440115a358ce9fc32b80236c707ec74f7a058492",
      "name-candidate:a7e7e59be295f5ad3dbf41b23b1e8610bfacdaba14b14cb036b63c1b22a7d22c",
      "name-candidate:bf0952baa0c6a5e8b7e6ae35ba799999d4271acd8aba1a0b2e661ed5ac47f100"
  ]),
  ("name-candidate:76c62693ee4c490f14733c932c2bdd161ecdb3fedab6cd9d6ff57a43dd53612a", [
      "name-candidate:13937262aaf4d84db633680ff565e4574ca4142018f7ca870b8377ee73104166",
      "name-candidate:401e8298e95464596a22d2867e6fba82f1a2e0d1eae2bfa60a2129aa5e30043d",
      "name-candidate:69aa56ac6b8497e64b45941387fc06d05db99388282693b4b10e32c51dcf42b9",
      "name-candidate:76c62693ee4c490f14733c932c2bdd161ecdb3fedab6cd9d6ff57a43dd53612a"
  ]),
  ("name-candidate:b5927cc5ddf799cbb218053e838c80acde6c627040518b8da0ac75588607def2", [
      "name-candidate:3948f13594ca9b8040ee135200117c5e0c84ace67e4a910453a19c325ff725ea",
      "name-candidate:b52f0b6316c912d9f37c419c36ed36cc47050347bfd409d516e0a02410179c85",
      "name-candidate:b5927cc5ddf799cbb218053e838c80acde6c627040518b8da0ac75588607def2"
  ]),
  ("name-candidate:1623118073c103f0e824708aa461820a2ada9cad3aacd853a7a3a113ff68a2ef", [
      "name-candidate:1623118073c103f0e824708aa461820a2ada9cad3aacd853a7a3a113ff68a2ef",
      "name-candidate:7283fb7c0f51a0603e80ed2841ed5dfc80bd5266a0ce89a3de2be60c037bb668",
      "name-candidate:aa3ac7ebc0ed2f75fcf88abd6fee29479aa5f4207202b1a4c2633375490560ae",
      "name-candidate:d178c9d0e48cb8c483d07e1aef9f276381703b9e652273a19109ac02bf33b3b0"
  ]),
  ("name-candidate:090964e9ee051621be60715d00333c5c368a5c4aab3564038389479646084944", [
      "name-candidate:090964e9ee051621be60715d00333c5c368a5c4aab3564038389479646084944",
      "name-candidate:2092c122464d09483911f6d33fa063ba8caea696012ae9473504159dd8c365e9",
      "name-candidate:3509d4c59f2063973df0028144db79027b2f312e98fdff40f3f2ebba9f32f3d9",
      "name-candidate:99996955aaa70fcd3d79f3ca41ea3758c2961c61d23297e94e328874bbcfc75a"
  ]),
  ("name-candidate:313f8d4eb6e72f48c4760ac762d9e53d3be23ddfa30ffe1e8621afb062baf516", [
      "name-candidate:313f8d4eb6e72f48c4760ac762d9e53d3be23ddfa30ffe1e8621afb062baf516",
      "name-candidate:74978b8b3e46bcea1d446007117096916ce49219c79c391520fd9cf17446bd5e",
      "name-candidate:7eb63d6858889867f4d68cba606699a79436ba2b12c656d5b660aa10536f6e73",
      "name-candidate:ab534ab5f625e389276e49a4f8b6442e71605a663fc2f3f9b17cad23252fc7fa"
  ]),
  ("name-candidate:6860601779357c9712a17530b27d63a309d4715917ce6ef67326a3773b207c5e", [
      "name-candidate:3e86afcdad37bad56959765d786d76d5c8e324dcb3cb0c5de4ed5341b45b3d23",
      "name-candidate:6860601779357c9712a17530b27d63a309d4715917ce6ef67326a3773b207c5e",
      "name-candidate:9d9a829cac339b3de9af3761e0ea4b24cc7af6c74c1d8e8c15f297a655fb87f7",
      "name-candidate:d1748676bbfc7d74bfa89c1dc9f6359ba056c563655bcba1290c3228963f93aa"
  ]),
  ("name-candidate:4971e0f216e90170f61fc0879ab237beef484bad818d57e8ffcb34c195edf5f5", [
      "name-candidate:0a78fa6a27946e1bcbf7be9838e465a808d6b30e7b6ca34fdc64c94801d576ab",
      "name-candidate:37a93760a2a6703335b993ea1e599d18819c470eebd57c2c25a03ca0d45ab372",
      "name-candidate:4971e0f216e90170f61fc0879ab237beef484bad818d57e8ffcb34c195edf5f5",
      "name-candidate:bf4a96f6e88a145a2735a056220b56df610e275a30fb217c3023b173cbbee8e0"
  ]),
  ("name-candidate:501f94a5228bbbfceaf3bc0c6e5c34afb72b547b4ed3d0b31de4de67046e942d", [
      "name-candidate:501f94a5228bbbfceaf3bc0c6e5c34afb72b547b4ed3d0b31de4de67046e942d",
      "name-candidate:893d8abf0032f2692efd783052b3e8288b691f16716e651d209ac3ee9a8136c7",
      "name-candidate:b74c319075adc7cd7f7fb7cdf07179db2501813629c08a29fb09d8e51d34e636",
      "name-candidate:d2578922854effc60b11c5e6a7318dda1e86088f68e0121e8a4c9361188fed2f"
  ]),
  ("name-candidate:34428fbfdfff5d159caa6dbead0a0a4b7f6cd975437ecf16082ea11a42760cf4", [
      "name-candidate:222a9bc02d8d1f9567183320a0da24e2d2d5ffab0dd7d010d4e5c494a528566b",
      "name-candidate:34428fbfdfff5d159caa6dbead0a0a4b7f6cd975437ecf16082ea11a42760cf4"
  ]),
  ("name-candidate:421c46b0ff59baced4777daba40c2ea5100579204e726d841b8e997e492e9f0c", [
      "name-candidate:10a0552b446d2868072ab77071b692f84946a7d7976e199c39eabc2f1ce53598",
      "name-candidate:421c46b0ff59baced4777daba40c2ea5100579204e726d841b8e997e492e9f0c",
      "name-candidate:c001622af0cb3bc5c138b9dd9f18756b2f57f82acc58a7b5385f3720034e6c84",
      "name-candidate:c405d3228b62cccc367f6a5c90404d478e179b45078f6c21831c7b0003e16356"
  ]),
  ("name-candidate:9867752c77563254574475a253ebe8259b6884aaf91e2bdc8738956367ccb33c", [
      "name-candidate:32830df7d495627ee34cebfcd4f044988795606a7f1f58f9bd2997b1831022c3",
      "name-candidate:9867752c77563254574475a253ebe8259b6884aaf91e2bdc8738956367ccb33c",
      "name-candidate:cd9a6f7e5a5913f8d7f9c8e2ed83a818561a383beaf475a4aaeff4d99ca4f18f"
  ]),
  ("name-candidate:41ede36e5e544d27e0cdd605b2b7b8b175b3ec79c3b06467f42d37a70bdb7a62", [
      "name-candidate:3fcd85666dd0c908286b8c45934c189ad95b69a1f9d5a7dbb48c7dee80ea6eda",
      "name-candidate:41ede36e5e544d27e0cdd605b2b7b8b175b3ec79c3b06467f42d37a70bdb7a62",
      "name-candidate:509b7e2554752eb19b5f95aa4e5b0fa4d11c9c6629970a75f20c7dabf7b1dc51",
      "name-candidate:e88c791f8cb25f8efd991fc7d8e586aadfe1e0544a3cb6eb3f306ee96f14de09"
  ]),
  ("name-candidate:d03220186d7d47adfe5b964a8633e0a4f9dc4258e46529ab001208853e4d2d87", [
      "name-candidate:35f88aef2dbf588eed0c4ab639ae22a16ffac51fff8f976faca97a7c92cfa3b6",
      "name-candidate:45223cf95bd12cbbee0bc28bb455629123c7e5ef6b35e671b00e2db0481ce61b",
      "name-candidate:49569c2724c8e91f0e0809cd2f86274ee819b1a72490820d177736675d7ac180",
      "name-candidate:d03220186d7d47adfe5b964a8633e0a4f9dc4258e46529ab001208853e4d2d87"
  ]),
  ("name-candidate:933f6be8741bd8d3717446769f15c8229a8198611a6b56dc6d73cf572b4b54d9", [
      "name-candidate:933f6be8741bd8d3717446769f15c8229a8198611a6b56dc6d73cf572b4b54d9",
      "name-candidate:ced6f9cf1a69ac77619e6584c81e98db90ba703bc6f03179c04d926c38293a01"
  ]),
  ("name-candidate:f6b8022ba226e60d82057ff3f19b2373acf2207efd19064a2331418f2fa31bc4", [
      "name-candidate:3553de2e00d46a00183a29f966b5835c70d0c86ef0cc5c3f7f908e749c046e0f",
      "name-candidate:44429e4537f08dd7c48005acfa7d0d25b68b277d1db5eb18b09311e4852c15ce",
      "name-candidate:e806c46cb93694e63359c224a5f14c636da7d56fa7bdcc34426f63a35c897eaf",
      "name-candidate:f6b8022ba226e60d82057ff3f19b2373acf2207efd19064a2331418f2fa31bc4"
  ]),
  ("name-candidate:78debdcc70afef497fff0a889453d01ca85a9bb39c99ced102eac83fc8ee5162", [
      "name-candidate:041a43e8fc4e4783ccd164baa1c86340eb4684d93309dd2f0e2d774f254dcbc4",
      "name-candidate:6b8eeedf4e7145d2222c25bcc243211128138869ba437a46151af8a9fe52ef2a",
      "name-candidate:78debdcc70afef497fff0a889453d01ca85a9bb39c99ced102eac83fc8ee5162",
      "name-candidate:855b4bff2f219490d710a15b6f5e4ff4a68483971289a30bb5db18fbc93b797c"
  ]),
  ("name-candidate:d68704664561e4ffce0b4d1f77a5d3d26696badaa8d502eb8ddf36763929351a", [
      "name-candidate:800b82ea94c9de2f7332b2b36c0c17dd424d4c331bb9e15549128bfd4cbb2f78",
      "name-candidate:b54e0a7e6246af2ba889f4a5754cecbf13ad0ac87f237eefeacfb6c2013a480f",
      "name-candidate:d68704664561e4ffce0b4d1f77a5d3d26696badaa8d502eb8ddf36763929351a"
  ]),
  ("name-candidate:0f9f2b93eb54e517be698793d5f70bff942978f5c94539ae084cbc9bd335d81f", [
      "name-candidate:0f9f2b93eb54e517be698793d5f70bff942978f5c94539ae084cbc9bd335d81f",
      "name-candidate:ca131770e96ffe8991d6eff7cb258840c7b495b5a97d9da2c44ffe4937fbfc67"
  ]),
  ("name-candidate:2247eb86443be736a923aec4a1419917a3333ad3ef63bf0d6f36843a16e8ac71", [
      "name-candidate:2247eb86443be736a923aec4a1419917a3333ad3ef63bf0d6f36843a16e8ac71",
      "name-candidate:6891580b849dd727d407d37bf333fd12c5a38c48492ac6bc359319ca0b40ebe3",
      "name-candidate:a251f85e2f81bfc2cb25e7b9f8a474f598875f6dc2f18695be76d70b97a8c44b",
      "name-candidate:a42ec9949b69560c272f292553e496505806527fb3545befff4992f65ecc0f9c"
  ]),
  ("name-candidate:fc02862a22f5fc23fa0e703013e884a488c8566a1e1a7072b2a17830793776f9", [
      "name-candidate:3506ae5622dd1df96d9158c9fc66a216a59687e5dbc3954a281ba0bfac5c908b",
      "name-candidate:d5d60469963f1bd025ba278c325a01029c17773bba99a9108dc7da06bf03d1c7",
      "name-candidate:e095819d22efe3b6f1eeb57182ff353ceb5d6a058ae73ecd57337a7f1118b137",
      "name-candidate:fc02862a22f5fc23fa0e703013e884a488c8566a1e1a7072b2a17830793776f9"
  ]),
  ("name-candidate:6a2f24f2148395a87d06c4ddf2c1dc742303cdd9e08d293e12161ff473709ada", [
      "name-candidate:13b2f79db867bf711f576e6582079459b44d155b0020b6c599465069ebe54050",
      "name-candidate:6a2f24f2148395a87d06c4ddf2c1dc742303cdd9e08d293e12161ff473709ada",
      "name-candidate:a58aa3fb09bbae35cce76a55308bdd5eb41ece1ca78ab79b80005575c02fbd8c",
      "name-candidate:fcd4b8a2a621e781244446e0ee85f456393bff04c4abd9d01b5a06fb9408544f"
  ]),
  ("name-candidate:299309a3572ff0dde9fc8c10062117dc9aaae44fa08fd71a7a673d30c7ce8bcc", [
      "name-candidate:0df021ecb0b02948e88e89f06aa9096ffd72634fbeb20460ff5e1d8043e15c69",
      "name-candidate:299309a3572ff0dde9fc8c10062117dc9aaae44fa08fd71a7a673d30c7ce8bcc",
      "name-candidate:c818862982ab652af6b7b161c610470656063c7563a8647eff0bad83ad683dbf"
  ]),
  ("name-candidate:13709da41117873aa56ba75ce1c5e8bd8b9d2d867b7a0da980c2d58fb489e3c6", [
      "name-candidate:13709da41117873aa56ba75ce1c5e8bd8b9d2d867b7a0da980c2d58fb489e3c6",
      "name-candidate:69132f1b0f8d941a90ceef0e4175fb0afc5278dd4c7ba25ff3c11faa118ba00a",
      "name-candidate:e772b66ad48e05053961df2ee5dfb37e7b7de130aa7c41f271c78c86aa3ca82d",
      "name-candidate:fa80c583cbecfd200f794d071445417d8c7f7e51408ebf38b743784e95bd73e7"
  ]),
  ("name-candidate:c402ef5ed1876120264484786b7e601e783c5ad7288c0675a2ec738986e56965", [
      "name-candidate:1847cd2cfcc1d7b7c372e8eccc51ecb2c345bf64f68bf1fb7c5913d55cad0937",
      "name-candidate:43dda35e4f5ffda07e2709e8ac3dccb1ed2ba9473bbde7ff2a686c3650fc3d66",
      "name-candidate:8eb32dc3dc4b2070193323ade42661f5a81bc6db2479699a4dc6ec9c254f35e7",
      "name-candidate:c402ef5ed1876120264484786b7e601e783c5ad7288c0675a2ec738986e56965"
  ]),
  ("name-candidate:6857761f5bf6eafbc3cb951896b3da31a2715bd7066ce291f95e3e0a0f94c5a8", [
      "name-candidate:2d7f04646478c251f18b8567c074e5e96869cc29cef1809649460dcd35cdc198",
      "name-candidate:5591be381e6c473606e2d17ddc6a3d0fbef3934cc7b71a0b40db588cfde77d18",
      "name-candidate:6857761f5bf6eafbc3cb951896b3da31a2715bd7066ce291f95e3e0a0f94c5a8",
      "name-candidate:ad0829b42b01c6c17ef4eeb585f0872fc44335414454c40971eaec4b934d8015"
  ]),
  ("name-candidate:1be2c73f6093990e5b82b030d6f4246545fa58226931960b1984cbbcfc227b14", [
      "name-candidate:1be2c73f6093990e5b82b030d6f4246545fa58226931960b1984cbbcfc227b14",
      "name-candidate:4f4012cc4be0395fe61a6d6503847b387b4ce93676a47d8419a167894ba6103d",
      "name-candidate:59cddc054b5ff7775fb4d5da261e29eade3914d66462238b3ca72282e994f94d",
      "name-candidate:b0b589fec09aa580b9b4b381eca384148da5445fc173f3caf0434ae1a06a90ff"
  ]),
  ("name-candidate:7153ee3ef8a580f476429b060a5403be3ee295d042de9fdd1a3188d800b0854a", [
      "name-candidate:2c30ecc0798a8d299eee37c6d1e4a1b44422c116855ab50bceb4e1ea810f051f",
      "name-candidate:7153ee3ef8a580f476429b060a5403be3ee295d042de9fdd1a3188d800b0854a",
      "name-candidate:744e2cdb230713a771ffce5720db6bf54aa4a603cc1a657371bc3acb3780b3f0",
      "name-candidate:929a604f0e751f6a5e093c742eea8f4b3b67d7c1cf9f6e2b0ace1dbf80def91b"
  ]),
  ("name-candidate:202d41a0b9f76ac9a3c7ed2032cfa8ecd7c54a3c7e791da5ea9544819107cd47", [
      "name-candidate:202d41a0b9f76ac9a3c7ed2032cfa8ecd7c54a3c7e791da5ea9544819107cd47",
      "name-candidate:ffb4d3be30634450340d9306ee51725a6bd41bf81077a4ed64fe032370c6aa6a"
  ]),
  ("name-candidate:06f5b21dbf7905b757772a956d41cf786ea049a189a116b53609d8615ed0f065", [
      "name-candidate:06f5b21dbf7905b757772a956d41cf786ea049a189a116b53609d8615ed0f065",
      "name-candidate:5edae38bffe2a4894f1fa888f6d35a44a83b44276b3220d57ca336701ba6513d",
      "name-candidate:819269866df0ff771d5e8aa9fadc7ba21508aa77f0aeb4bd7dbf169526a8e2cf",
      "name-candidate:f24d8232060e9ab00a54a181ed58b467a8763c8f873e7af5c3f5f8c14400799f"
  ]),
  ("name-candidate:12b749b0d839434e4e2b24c7783c0c7c564a1050f6a94fbef890440404d4368f", [
      "name-candidate:12b749b0d839434e4e2b24c7783c0c7c564a1050f6a94fbef890440404d4368f",
      "name-candidate:2bf0611d95bdd0020a4030f44bae64021a3fbccb92763b4b0ca17f5151f8c32b",
      "name-candidate:69f1801560c949891be763db01a814adc3ff33a3b9673c2705f096e92db239be",
      "name-candidate:afa59707419862a5d695c1b3c45f92e34a7e194edce977f922236d9ae63b25fc"
  ]),
  ("name-candidate:1f8a4e2edbf5079bc174428c81abfc8de7898a38921eb870e42b7ad840c34404", [
      "name-candidate:108b0e1df5ede71fbabf876867ebf76e235ce5b9a2e4ea7f0fed45123f1011a1",
      "name-candidate:1f8a4e2edbf5079bc174428c81abfc8de7898a38921eb870e42b7ad840c34404",
      "name-candidate:204db2bbf4586bb6a3019e4956c1a4489ad4e667db57f4524826c2fb06dcf726",
      "name-candidate:6b7aa2745cedd810038ae626f59f609250105d2db1fd938a98d9374a47f2dce8"
  ]),
  ("name-candidate:a211a91c8e9b98aa7f3a653e47e2d80301ff563304d76fd3068090268fbdfc2d", [
      "name-candidate:1f013f9fa09bb479158c1615f097a4ae7a8f1253abeee3ade61bd93c104f9f4f",
      "name-candidate:54978a183f2c1a82ae70184d4d545ddf8c10059f5ac5af22a2c471593fb7fa0b",
      "name-candidate:960f909a1db113854930316222197647f75048f39b3855ab5d1f09bf1a9cdb69",
      "name-candidate:a211a91c8e9b98aa7f3a653e47e2d80301ff563304d76fd3068090268fbdfc2d"
  ]),
  ("name-candidate:1415ccc313c2dac8fcfe508c6fe680fabd8b237ba99539f6c06d533e16e78124", [
      "name-candidate:116a2e04d736b73a2fbbf3524c2576c2f8d156db617be0a3ef2bc1781b45586c",
      "name-candidate:1415ccc313c2dac8fcfe508c6fe680fabd8b237ba99539f6c06d533e16e78124",
      "name-candidate:2cb9ff6ddcd73ccbc77752d97fc2b09f59e95c3f4bf24f0deac98309aeedc6ff",
      "name-candidate:c0ccdd5696d320d4c95ada8d83a52311c6538914a5fcfad9cddad8432f53600b"
  ]),
  ("name-candidate:e9c94769110ff35c74cfc02e7a09408808e081f46fd100d73bbb8160893be0c7", [
      "name-candidate:310c820ce91bb9dad3437836e51d42a1ad258c084369f194f2aeb82714ed53d1",
      "name-candidate:a7f144f6a55d2c8b1d52886cef35e2cec1e0ee57b4229923578cbb046e9a0f55",
      "name-candidate:ac3432cf7f2f47c9bf331e968eb47f9bde20323eda77d70ee6104b2d630e8828",
      "name-candidate:e9c94769110ff35c74cfc02e7a09408808e081f46fd100d73bbb8160893be0c7"
  ]),
  ("name-candidate:8cce7a00d326881517960ccc0441018605abada54493a710c0f707a3f56b2419", [
      "name-candidate:02081b341373b132623ee48133a804c10d24977814b918cfb610009256e8f0ad",
      "name-candidate:583a4ab1dbf62570f434730ad69c52cfd24e9722041f9805730acbd1b7f973b3",
      "name-candidate:8cce7a00d326881517960ccc0441018605abada54493a710c0f707a3f56b2419",
      "name-candidate:d6016f5463e6641c87e4bdc7c95fd8136a2972e43b80e3372c346c1ab8685ca2"
  ]),
  ("name-candidate:7ecc906a24dd14ac476e33bf0e15b34150b5b0ff572b6f07a34bc2f625ea083b", [
      "name-candidate:1d1593cb9d93f51354e7d603aa159e2bb2e01d9d48c0c4225880e432c31b5d66",
      "name-candidate:1edf718c0ba0e8d23e53deb99d523bb8ddc596c8413ca9612b4ca63cc6eb2ad5",
      "name-candidate:7ecc906a24dd14ac476e33bf0e15b34150b5b0ff572b6f07a34bc2f625ea083b",
      "name-candidate:e736e0069c3c72c6c1086c798365165487e931b314bd550e2d0954e4e49556d0"
  ]),
  ("name-candidate:05397a4295a60427b4e6ff198ba71afc6f86a6cee9acfe32b9aba305f18a0d2c", [
      "name-candidate:05397a4295a60427b4e6ff198ba71afc6f86a6cee9acfe32b9aba305f18a0d2c",
      "name-candidate:2e98d57b610ec56d7c311f6ad4f23edd2100a37770f6fca1c1a9cbaf398ee5d4"
  ]),
  ("name-candidate:998fae783b72bc2402a48769073955423bf0fcfb8368fb2a10120a5d4f098703", [
      "name-candidate:4c382133fe8c3a31681af4dd9234363d82c2d1801ceb92d80df6936acf8b9b85",
      "name-candidate:8f6bd315a489031cbfa67aaa4dbe7859b47e47718ddf29e5e9dc56babaadf0b1",
      "name-candidate:998fae783b72bc2402a48769073955423bf0fcfb8368fb2a10120a5d4f098703",
      "name-candidate:e35bd68cfbcfd0f0e208045813f810d5f0bde22bb67f9bab1474a699775e3c11"
  ]),
  ("name-candidate:cd1565ded529deb8950647a443a44943d1706f62d277671b2c493d8ca7b7e1f0", [
      "name-candidate:419b654263e94c1cc7e50a6924cfff25130897b63baaa6d5ac9f320e71f3cfa8",
      "name-candidate:cd1565ded529deb8950647a443a44943d1706f62d277671b2c493d8ca7b7e1f0",
      "name-candidate:f4935849ef40e58fea003a0c3189a108ab4d29bcba4e25f1e330a3355a0bf7c8"
  ]),
  ("name-candidate:8b33802a07bf7d7910a03087c8b34138c4aa38476fbf2f4162a9b6da6969466d", [
      "name-candidate:2e4c7d7c054ad0bbaf024ff5cdc531ced9bf1cbdb11004e0cb733764527e8366",
      "name-candidate:755e0d6325fc23f76450a147bc3343ab72e8e56a136129eb1c011439560bd6cd",
      "name-candidate:8b33802a07bf7d7910a03087c8b34138c4aa38476fbf2f4162a9b6da6969466d",
      "name-candidate:eb75b6a5b0f535426c1098036d7c90eb827483574c013d8d611b844554ba6a7f"
  ]),
  ("name-candidate:9a44d910031680ad68d4521bb7da5f0329f8bee1d7c3d9e8688c2ae203afbf42", [
      "name-candidate:5d720ba87d489456a119d9241a245eab8a4bc4076818642237081ec2e3a6b66a",
      "name-candidate:9a44d910031680ad68d4521bb7da5f0329f8bee1d7c3d9e8688c2ae203afbf42",
      "name-candidate:c03f2f88daf392073e298ef294d700dad368a68d57f312d0803951ffa28b8052",
      "name-candidate:df62b6ecd52c6f9ea7520698994b45dd691e18e28e24d60892c5483c9638fd2a"
  ]),
  ("name-candidate:9cb5f63a1672f4037026bf238e80ae3783341bf7d0096aea4789ab713060777d", [
      "name-candidate:1efbdc097db1d953db28cf7b8dddce7e7b9df47f4768cca098aee68e2cf0d23a",
      "name-candidate:416ff5896340da8bcf18e1c3b05c9b32bbaec329a076a6051c1edd51ad353c89",
      "name-candidate:9cb5f63a1672f4037026bf238e80ae3783341bf7d0096aea4789ab713060777d",
      "name-candidate:b7cd102efde63b320d17afae30d15cff09c629090936d391420bc08d9eab0918"
  ]),
  ("name-candidate:da981bc0a639168f80c2bd7ec91f38666a7748b713891223e48a5f2f417cccbd", [
      "name-candidate:54962e65a34f1ae0066888ed394a12a1f6080794499ed025bcc52c416d9ad215",
      "name-candidate:736b9cc7b9bcf861f5d54ffad7dcd17ae5e78ff9b1c23543b8952e267387da98",
      "name-candidate:ca2f0a61622a539d45ccaf6b470fe4e5261927b1a6e94ede73d500da9dbec46e",
      "name-candidate:da981bc0a639168f80c2bd7ec91f38666a7748b713891223e48a5f2f417cccbd"
  ]),
  ("name-candidate:079aa9b5f96050ea121f2bed2c461399d0c70de7f92adef9775dd53f1d8b227a", [
      "name-candidate:079aa9b5f96050ea121f2bed2c461399d0c70de7f92adef9775dd53f1d8b227a",
      "name-candidate:9ab30b8fa5462f2e6c4357ad4bd789cd63e96dfd1a2747886cbb9315563fd265",
      "name-candidate:aaf512f270cf2ba072cd89264d8dde6abd53d4042a9f7df4e11d1967e541cee5",
      "name-candidate:d72d70e99cd6084bcd376ed15b028d2ebf6587f859efe662f0609166a098aaf9"
  ]),
  ("name-candidate:f0e2d98ff48ec4fe0a0333f4913a3f098a1198f3c7ddc40902790ed776cd74b2", [
      "name-candidate:2cdd43a3811f4adb9d886246c95206969b46cf5e4cfb5b270d30099371f0a33a",
      "name-candidate:320526b3cd3ef88f2091e31cf65790177bc8e936f8d65b8a69fbc3c4427571d5",
      "name-candidate:f0e2d98ff48ec4fe0a0333f4913a3f098a1198f3c7ddc40902790ed776cd74b2",
      "name-candidate:faa6418bb5b7f46ecf4d6758efef3cb8194560a7cc2b4e200414c08610343772"
  ]),
  ("name-candidate:a1ba9108d9086240a497a5b1312817a12a83ca7dbb558394476c3adddf4cf4e3", [
      "name-candidate:4143e4583d8521931b4f83f583dbb3b65b3bf2267e998fc2571f474339c7ab23",
      "name-candidate:626191c1bf929d3f6f39c5ecd17ce85a1c78f34926800ebbd074e3219a21b925",
      "name-candidate:a1ba9108d9086240a497a5b1312817a12a83ca7dbb558394476c3adddf4cf4e3",
      "name-candidate:ef2390173615db5565f036e38e792daf6fb98d939e00f0704c595e6744693f83"
  ]),
  ("name-candidate:def1daa5026cbfb7613de3c4bf6f247bf928d3740f7760637f4c54bae71529ec", [
      "name-candidate:2b63155733427777e2659667f51e932d14bcaff7e98ebd87ee7b892c3d6e24cc",
      "name-candidate:ab4141245d63f72edc3592fabb1ced4128d18317cd21672dd228ef0db26c9cda",
      "name-candidate:c5499e2feb964b02c5988ef9ee7ae09936c088223eae4bb9fd60d1ce8067aa59",
      "name-candidate:def1daa5026cbfb7613de3c4bf6f247bf928d3740f7760637f4c54bae71529ec"
  ]),
  ("name-candidate:87ec60a83a0659355f78fe44db258748caa144a111ec24687d605b411b97e6fa", [
      "name-candidate:48fae7f92cfcb50626c81d326d5b4d89debed5be19b3aeb05992cedc820ac2d8",
      "name-candidate:575834ca78e98e5b0cac8bfef1744567cbda52da6d1e6dce1e461d63ccd125f4",
      "name-candidate:87ec60a83a0659355f78fe44db258748caa144a111ec24687d605b411b97e6fa",
      "name-candidate:ff81b0bf8d05e9c13c6b3b414a7832e29626dd592b0d23dafb7d043c57178c37"
  ]),
  ("name-candidate:a71946683743392e6b8825d0ceff37ac907276066d4d525c8922124332058bb9", [
      "name-candidate:15beab110c5cf7f4b2f5c93f2aabe50120594be4f9c499c564e6eaddc0b3579b",
      "name-candidate:90ed46f1bd34d3af5beb0e52a7e12aea1e7cb19bd6b79a963e4ad941b674566d",
      "name-candidate:a71946683743392e6b8825d0ceff37ac907276066d4d525c8922124332058bb9",
      "name-candidate:bd7f09e3dea4deb995dbb07dd647bfe4f2b2e0906844d83a3e78fd83a9f57ebd"
  ]),
  ("name-candidate:8bdf1bcff07980039d515d7f7527ffe13f8c3d5f41a77c5bc13e79cc91f6aefc", [
      "name-candidate:6320eb7ff2a6f334b9efc8b659b6e15a0c98ba3a0e3afe34e964b3eba16f9b53",
      "name-candidate:8bdf1bcff07980039d515d7f7527ffe13f8c3d5f41a77c5bc13e79cc91f6aefc",
      "name-candidate:96a10764516dd51303b510c25135d4cdbe2cbbfcb2d3b1018977ff5e0621f4f2",
      "name-candidate:df0a939adffb112ed7a04a92c3f1352093c6164ea5d6ef3f5cee59c0c79358de"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L64519).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
