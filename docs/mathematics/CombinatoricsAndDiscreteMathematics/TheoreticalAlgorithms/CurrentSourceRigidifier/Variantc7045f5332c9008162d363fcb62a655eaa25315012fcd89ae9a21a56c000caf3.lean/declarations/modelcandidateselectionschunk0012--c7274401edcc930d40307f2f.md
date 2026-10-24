# modelCandidateSelectionsChunk0012

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:044a2a3e6544d34dffec22b626e280d993e7deccce8a3fddee8cab5db25a1d91",
  "kind": "def",
  "lexical_name": "modelCandidateSelectionsChunk0012",
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
  "slug": "modelcandidateselectionschunk0012--c7274401edcc930d40307f2f",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58732,
    "line": 58409,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7274401edcc930d40307f2f3af893355c28f0400b77252f8a68cd880199eb55",
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

Occurrence: `declaration:044a2a3e6544d34dffec22b626e280d993e7deccce8a3fddee8cab5db25a1d91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58409–58732.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def modelCandidateSelectionsChunk0012 : List (String × List String) :=
[
  ("name-candidate:349c8582cac5481338c626e2b429285b69d69917a204f33fdcd1ec21418318ba", [
      "name-candidate:0c0652573753cb979e8d23c64c15a85b96cdc7a120f2e8a4d1c56d01c793875e",
      "name-candidate:349c8582cac5481338c626e2b429285b69d69917a204f33fdcd1ec21418318ba",
      "name-candidate:db3f10131be8e66e2d66467ccbc3e24f3a06386e8e10b0b502ec4836f11c1eed"
  ]),
  ("name-candidate:dea513704637ed7af57d10e20f4f113f3736c533531faecc0bcbc2d2b88b6f9a", [
      "name-candidate:b9758337b3bfef80354612aedf486a023af8ff48cc5fa0373fc33018dea6bcac",
      "name-candidate:dea513704637ed7af57d10e20f4f113f3736c533531faecc0bcbc2d2b88b6f9a",
      "name-candidate:eebc664a0b2101744adcb69553c5effac0f1c069719709f76802a4d737ff9fdd"
  ]),
  ("name-candidate:1453ee36495eb26d037e9fcf2f2d96325acf089ef76a9a8e3c9763a0a4bff5ef", [
      "name-candidate:1453ee36495eb26d037e9fcf2f2d96325acf089ef76a9a8e3c9763a0a4bff5ef",
      "name-candidate:5e49c971d63a96f969f7410a80d41a87869f5d9c44316edba553326cf918056f",
      "name-candidate:bfb965b36b070433de081505ad2133d30767cb9545b768080c2ca104b0c024d7"
  ]),
  ("name-candidate:7b23ae8c57f8ee29535718c615cdcdb3a27a2c6ce23dfd0df06076a7082a1900", [
      "name-candidate:278a5aaa34b90f3a4d5860819b8ab5c9f555f29f33c48057da073816428bb0f2",
      "name-candidate:7b23ae8c57f8ee29535718c615cdcdb3a27a2c6ce23dfd0df06076a7082a1900",
      "name-candidate:b38a872a31e3e85ab550cb63383a0abcf2665b354db7da5beb08e4efe223acca"
  ]),
  ("name-candidate:faaba6c7ff31044c25b26edf8e657cf35fba6ccf59c8f03e04d1c2e892b2fa21", [
      "name-candidate:19dbea538868d8a6c44b80312a8b5fbfebe8c31dddd351cba7744a1795f98966",
      "name-candidate:d60f6cbf3ef0067f4407b1ab8245b56b4c85586956498af79a402b91636c85c4",
      "name-candidate:faaba6c7ff31044c25b26edf8e657cf35fba6ccf59c8f03e04d1c2e892b2fa21"
  ]),
  ("name-candidate:d01ad7dc2d3fa83e03c0ca6e949a3a8fd76c715241ceebeab196a1962fa6c685", [
      "name-candidate:17e334b56cff393a0f4a9fc07c1136d1b419512a6038a9f353e1c0065736475a",
      "name-candidate:884f06d1c5dd57f3672d5a08ad854a669d04edb4f4d7146c97e91ba5fcb0e122",
      "name-candidate:d01ad7dc2d3fa83e03c0ca6e949a3a8fd76c715241ceebeab196a1962fa6c685"
  ]),
  ("name-candidate:a4814cb8e8dbb7bd57af7a471056df6ea548093e2184878e3df3d3a4eead731b", [
      "name-candidate:28156fb797959fde8cbe0a356f35985bdcac8b7466213be8ee170374b8ce16ba",
      "name-candidate:a4814cb8e8dbb7bd57af7a471056df6ea548093e2184878e3df3d3a4eead731b",
      "name-candidate:b22cbd0c7f3562a2790d9f8941d0e0c722cec617dc50146f7d04a28ee7adea50"
  ]),
  ("name-candidate:34850eff434c1b47d1a316c30a8c7052fb683059b7c027db0b4a12378f1da4c8", [
      "name-candidate:149603d7d8064c108cf68e247c348c8339ffc6aae87184f07b25752fed80403f",
      "name-candidate:34850eff434c1b47d1a316c30a8c7052fb683059b7c027db0b4a12378f1da4c8",
      "name-candidate:a5a2409a96c50f322dba5c3c9be6c0086f4b981659d75c14819f023f160521e1"
  ]),
  ("name-candidate:95bf68d08b5fbd0d821d031a93ce312921258ad6d1ab5a626e584cf81193304c", [
      "name-candidate:0e9bd6f27051634b071c8dfd0b9ff04fab9c9992c0fa95adfdfe30568fe42868",
      "name-candidate:83bb506fe9510aca6eb0ad6f56a9fa052074e19ba4f60790d7faa68aa685d6a8",
      "name-candidate:95bf68d08b5fbd0d821d031a93ce312921258ad6d1ab5a626e584cf81193304c"
  ]),
  ("name-candidate:2efd875cc9300e8023a46c67a4500572790689dae0e4665257cb659cf6c51933", [
      "name-candidate:05a282fd9bb789de2a2af179f562725faaacab8681de6bd0672b30baf9b6b72e",
      "name-candidate:2efd875cc9300e8023a46c67a4500572790689dae0e4665257cb659cf6c51933",
      "name-candidate:6a86cc15e67b6c75a6ac48c0b7e989cbd713aabb8fa1029c32cbf62a569a2ffa"
  ]),
  ("name-candidate:ca90a06c2a9a4fd776b705f4e7cd8a16dcaeb18b59767cae4d0f4902665cd6e7", [
      "name-candidate:64eeb35e88aa06b2f749b919e7a9b74c4738cb716894379ac2f376d4ddd21e08",
      "name-candidate:79cfe3090dbf6295200e259c739d8a353ecbc88c3509ab8aec496c58c8ab0f68",
      "name-candidate:ca90a06c2a9a4fd776b705f4e7cd8a16dcaeb18b59767cae4d0f4902665cd6e7"
  ]),
  ("name-candidate:39b22f8a82d1e54d42dd45782dfccd30bd3814ae78cec0c0850ca9965aad4848", [
      "name-candidate:39b22f8a82d1e54d42dd45782dfccd30bd3814ae78cec0c0850ca9965aad4848",
      "name-candidate:90a84de44d004ec879b223c9ce3d89b2f737363585ba6e0b4ca42242e4107165",
      "name-candidate:c6eee39601c8f4452dd128d25b30aa4f645f169b454d56613aea75407359489f"
  ]),
  ("name-candidate:fa9f870a5743089de30c2f5ee9c395f822bc13172716e64d184169389b0947a6", [
      "name-candidate:b3f8a31a882daa18e6dfc76a3fb0e312c6719ccad1f397546a5b79674d19b6c6",
      "name-candidate:bdc8e64c643037d55997332e756c061cffee4bf51620e82cf9805ead328ff3c4",
      "name-candidate:fa9f870a5743089de30c2f5ee9c395f822bc13172716e64d184169389b0947a6"
  ]),
  ("name-candidate:e74567cdd6b398d3db2bac3264cd0283b1f48a185561106ed0fcd563445eaac3", [
      "name-candidate:87b3650a2cfe947115dd7d4048fc9184484d36bda8cf5202c181de89e0c841eb",
      "name-candidate:e74567cdd6b398d3db2bac3264cd0283b1f48a185561106ed0fcd563445eaac3",
      "name-candidate:fe2fdd78f272dca425fd83f6df324ec2858b25ea53066c5bef3ab54339fe5031"
  ]),
  ("name-candidate:485c66a95f64f005a75354f14ebe16081057f52194f654a33b9f55c4d57e841c", [
      "name-candidate:08c82d3227ccf1adf47885aa8b2cfcb4d87171ccee2dfbe5363bdca62ffb0b3b",
      "name-candidate:485c66a95f64f005a75354f14ebe16081057f52194f654a33b9f55c4d57e841c",
      "name-candidate:8d9f883046dfe22290bc1366a7c0ea7b5f754f26a58f6619c5006e106c770501"
  ]),
  ("name-candidate:be07fef64d1c0a5422a3c58e76478b6886ccd219a712093af7d0dfbae7fea1d9", [
      "name-candidate:3d1f758b845f152c396f9a413193cee62436f6816ab78a269d65cd3d93bf29d2",
      "name-candidate:577410d5da52b58b8d2b46bcc6786b924ad6b7536d24358f48ad0f74ec279b1a",
      "name-candidate:be07fef64d1c0a5422a3c58e76478b6886ccd219a712093af7d0dfbae7fea1d9"
  ]),
  ("name-candidate:bd09cf923e71eed1dc03f36b9a7c3f0a8908016680d53815b5b87de2c6688ed1", [
      "name-candidate:7963b4bf2e2daa0a8b2c8bd331c2f9aa5262c333bf510ff1e7f8d0bca1150adf",
      "name-candidate:8675213350763515e814cead136b5d2add94bc8e0fd5bdcf63cf4e81c606fbe7",
      "name-candidate:bd09cf923e71eed1dc03f36b9a7c3f0a8908016680d53815b5b87de2c6688ed1"
  ]),
  ("name-candidate:f94056344e2ba7f06523b5a09bb6d93e750dfba7b1d284b576572d69ff5aca07", [
      "name-candidate:2c89c61eb2c6d24de7575f11549ccebfe1d6465b7dd7be5a99eab6f725d14526",
      "name-candidate:67599fcf47fc39b2d21537e138a289fa5e302d02e7236c9c410c89af608ac5de",
      "name-candidate:f94056344e2ba7f06523b5a09bb6d93e750dfba7b1d284b576572d69ff5aca07"
  ]),
  ("name-candidate:6e5006d1e4a830c3c3c5b1c54e8a9b274cc238fb042306101311dc252f8bb314", [
      "name-candidate:47f8cacce7c567588a4cf9b4b09c16fd2d27da21a20d9e7cfda759b418a0a849",
      "name-candidate:6e5006d1e4a830c3c3c5b1c54e8a9b274cc238fb042306101311dc252f8bb314",
      "name-candidate:f44d0c29e0c471a63626d1c02ffe5d1275589948c51438d22c3d1d971ad25b98"
  ]),
  ("name-candidate:4dd410739ae9e5a3e4a717704beb4e818a626bc87aa86e208627471844298508", [
      "name-candidate:388610e1b13c604c8c06c66fca73a9553a5b8feaa7819780ec603409b75a7b89",
      "name-candidate:4dd410739ae9e5a3e4a717704beb4e818a626bc87aa86e208627471844298508",
      "name-candidate:e1c3868d4f0abe0bc5de27d640a388c31f13cb662a24183821bc5c5f9be4a89e"
  ]),
  ("name-candidate:12f85f15788febb69bb0412575d20302839e8b178dc7d22ceebcbe46cc96b8c3", [
      "name-candidate:12f85f15788febb69bb0412575d20302839e8b178dc7d22ceebcbe46cc96b8c3",
      "name-candidate:2d002aec1c463fe3a838ac297746ce461dd8aa1dff9fdf2c442c5754338273f3",
      "name-candidate:5dc6bb2e2ed9970610ce7ed9ebb7d5268f383efc31f5839e7213671a12caf226"
  ]),
  ("name-candidate:21760834e7201ee9f62fbad81b5dfa02535b5b5af372a2db0fc562465df4c4a3", [
      "name-candidate:21760834e7201ee9f62fbad81b5dfa02535b5b5af372a2db0fc562465df4c4a3",
      "name-candidate:841c9f464c472ae16d333abb77f4c04bb42afce7fa098d56d1ba43d89162fd7e",
      "name-candidate:c35f2616fda5c26e1b3d12ce883f198ae35032e47d4b82d2bc1592fcefa69edf"
  ]),
  ("name-candidate:5a7607a5ea2cfd7dac8f64ddf2a599e40b1e6fe8bbe8ea91de155c227866f612", [
      "name-candidate:5a7607a5ea2cfd7dac8f64ddf2a599e40b1e6fe8bbe8ea91de155c227866f612",
      "name-candidate:bdc2a8be8c440023c2e0d8022f64f123fa0f74c5e38f096f4839fde285184dad",
      "name-candidate:e887a98caf3fb48319b680d5f8f99a9adbeeb6956e6b05a453a6e6ccd12f49fe"
  ]),
  ("name-candidate:3b2c45fcf1a26116541eb8ef10b6c2901e0f4d7909adcd732a57154383f75f0d", [
      "name-candidate:0276a5a67a960deac38c1a2a324a9ce9d30653513adda8898aaeb9fbe3a21b0a",
      "name-candidate:3b2c45fcf1a26116541eb8ef10b6c2901e0f4d7909adcd732a57154383f75f0d",
      "name-candidate:58b9543b041b14d6ce9f882290c7a8f675b5056fa48b56a33767232103db6980"
  ]),
  ("name-candidate:c967eeba292c7faca6cb467d0d7bb7a7ecb960e664e02317d9ba099d6baba10c", [
      "name-candidate:a2fcb8948e82e3ce8c6114ad90a1d6aed67fdea4155242b63b6489fc3c443070",
      "name-candidate:c967eeba292c7faca6cb467d0d7bb7a7ecb960e664e02317d9ba099d6baba10c",
      "name-candidate:fac3c8ecd96a331fd0f644ae7aa6ab81401f5cd6ff4a7f9f2c5ec5b20b2c36d1"
  ]),
  ("name-candidate:9e6181fe3ab6a871b3e10cf4aa7ec1e0f01f58349c14aed8a6269593b1a1a26c", [
      "name-candidate:1930c6cc58219c6a564d21401b2a792b3f8fd3ded74987c682dc68cc9b85d82f",
      "name-candidate:9e6181fe3ab6a871b3e10cf4aa7ec1e0f01f58349c14aed8a6269593b1a1a26c",
      "name-candidate:b00258df64520eb1ee6e0523f0e760ac1445319b3ed91b4368082311e553d6b8"
  ]),
  ("name-candidate:ec936038be379ab3f3d01c2b3e8355203d1d1ed467ad6545bb6fe3c179129ff6", [
      "name-candidate:5e0e3351576d27f719af43e519792ba293c0c8c549d1986e98af146a3f43f8b2",
      "name-candidate:ec936038be379ab3f3d01c2b3e8355203d1d1ed467ad6545bb6fe3c179129ff6",
      "name-candidate:f1cf3e01d1d1c49fb13f00674bde1bd41fd920e52e07f9c159e05d108e50561a"
  ]),
  ("name-candidate:df4029b13e033a4435ce2e49623861b4b2c8a047ccf32b3c7d53f139d1e426aa", [
      "name-candidate:967ba410fb1a8d410ec96ee057c3ce63adb0d1acf747d0780b9098388a568377",
      "name-candidate:9c5fec9e00fa06e980fb022ae3ac21b86eba0ea34e558e5bbca09885e57353a7",
      "name-candidate:df4029b13e033a4435ce2e49623861b4b2c8a047ccf32b3c7d53f139d1e426aa"
  ]),
  ("name-candidate:853a8a5c91c447e8b924d2ef2d65e184853023149e9e213cf412c19b713a6021", [
      "name-candidate:63d68bfe648946de464de23c162dde4a58e12ba9707b8123d7685e985a37cf36",
      "name-candidate:853a8a5c91c447e8b924d2ef2d65e184853023149e9e213cf412c19b713a6021",
      "name-candidate:db55f84bd196fad607fbde11a08acce7228d5ec6da8944221e899e47fc3e45e0"
  ]),
  ("name-candidate:c84d6f965ad5e86c5d852eefd88d7159421e2b55370c5c15e216f0713a937199", [
      "name-candidate:17c112bc706ffa230a8aa900ba2cc93cefb8452b7dab9ab3f06a64e99852d76e",
      "name-candidate:88fb483e01a11ac67f56b8f83eca4bce6f2a296e9c0349d576a186fd9f42d7f9",
      "name-candidate:c84d6f965ad5e86c5d852eefd88d7159421e2b55370c5c15e216f0713a937199"
  ]),
  ("name-candidate:0d6daadba66a498a572ff10376d06d9355f69bb1dcd340434bef72ffe9dbf70b", [
      "name-candidate:0d6daadba66a498a572ff10376d06d9355f69bb1dcd340434bef72ffe9dbf70b",
      "name-candidate:5eea1c05bd449da7b851f03bb85cc1366834653e5dadf9bfa8eeffd5ce48c2c2",
      "name-candidate:aeb6c1daa4b511640d4ecaa5229477b51dbf86b9331681b117ff1cea938f3ec7"
  ]),
  ("name-candidate:d63d27629564b3fbf3d9fee74629dc4d478b582e2baa501b0e7aafcdc7e3c88c", [
      "name-candidate:5b4b09c1c7c0083629e8e8d26cfedd72d3db5c670c5310805e679f9076b976a9",
      "name-candidate:ab05b6b7290c47ce9db975db0dd2825301d3fa68a3b2f3574481ed10b6e26aea",
      "name-candidate:d63d27629564b3fbf3d9fee74629dc4d478b582e2baa501b0e7aafcdc7e3c88c"
  ]),
  ("name-candidate:f0e0c9739a74167b152fdfdfd9294af8d00cc87879fd407f9c53f3267cba7d7e", [
      "name-candidate:80a7f7105a13050c182703b5d98b0be2a0b43bbfd3f7dae8b932f57d31695b3b",
      "name-candidate:90464522fbc85f388a0d477602569da5a75d26480dd9e6dd427ae3a3837b80bb",
      "name-candidate:f0e0c9739a74167b152fdfdfd9294af8d00cc87879fd407f9c53f3267cba7d7e"
  ]),
  ("name-candidate:6bbc63e7ac98d1a27963de96256bcb343b63869df67b5778979b58cef73bbfb4", [
      "name-candidate:13565356d4208f65da592f315228038c16c657915788675fb2b6176a0e68e0fc",
      "name-candidate:17241d7a5bad917a9401f607bdd6e2f52145eeaa186e0f1130490e01a95ae2a7",
      "name-candidate:6bbc63e7ac98d1a27963de96256bcb343b63869df67b5778979b58cef73bbfb4"
  ]),
  ("name-candidate:715c514c991fe98cf8f19629ed5d723decde63314f2d796cee6ee76b39f6b9e1", [
      "name-candidate:34409ea32f80927921f4fbddcbd542fe41e2c8e94d9873954cb3a563ae2016cd",
      "name-candidate:715c514c991fe98cf8f19629ed5d723decde63314f2d796cee6ee76b39f6b9e1",
      "name-candidate:eae0c4a4c3d4acd27c7dccb4176b4c68c1af5dbc2d3fbcfbfede6acf4c201866"
  ]),
  ("name-candidate:bba6cd67662d20eb8e388260ef8bf6ffa36cac9fab29a63e43094e37594f406b", [
      "name-candidate:2ac76d69310a9fa3fd312f36094dd5709818d3265841e42edc3a509a9174e880",
      "name-candidate:8b52ecc0e2125689813c9b76ff29292b6451971fc771070782149f2293c5e492",
      "name-candidate:bba6cd67662d20eb8e388260ef8bf6ffa36cac9fab29a63e43094e37594f406b"
  ]),
  ("name-candidate:f857c723890d7faf77ae1bab81c0a363a3a4cbb4f267bd2eba2c84982745e168", [
      "name-candidate:23fe07ccc0fdb1b8c86496dd909ec00770483f4cd7157aa7878b5975961b32d4",
      "name-candidate:782175d9a93993f1e40203da758ef08aae411f43c9074f768eada87663dc0b36",
      "name-candidate:f857c723890d7faf77ae1bab81c0a363a3a4cbb4f267bd2eba2c84982745e168"
  ]),
  ("name-candidate:abcddde1decc544b51eacf1a0045a179aa4f5f00776e444fa7ccbf575ff79fea", [
      "name-candidate:227da095d4cbcabd90411173dfd389c34fdf1fef6756d1c780ff5c2996eebb2d",
      "name-candidate:abcddde1decc544b51eacf1a0045a179aa4f5f00776e444fa7ccbf575ff79fea",
      "name-candidate:b4ad67671312f692fc777715b84b3fee711c34e9e099555f14e649602f42400e"
  ]),
  ("name-candidate:223b1a9786b91f34ceb7b60ccec8efa9c71f229373ddd7d8ca59c87cdfa72ee1", [
      "name-candidate:10f3677c29ee1091eacc2fc72d303de78c492f1323abc1f50133fe19dd9a43cf",
      "name-candidate:223b1a9786b91f34ceb7b60ccec8efa9c71f229373ddd7d8ca59c87cdfa72ee1",
      "name-candidate:c1615586e56e3e3fbeb190b0598fa7bf87381b7d13300ee14ac815f9fa44e89c"
  ]),
  ("name-candidate:349f727df2f7412500dd657f524dc8c6b422cb60fe765f6d72028864195ea23d", [
      "name-candidate:067b21eb2b1a5b5202635c7bfff471a5a1fc2c0d46778d05a0803e147c480789",
      "name-candidate:131c0562423c76f4c605a673998f6fa13cecd08b801b91010fc0f5eea54fc364",
      "name-candidate:349f727df2f7412500dd657f524dc8c6b422cb60fe765f6d72028864195ea23d"
  ]),
  ("name-candidate:657eebeb4b788a6d20e475b3453339931ae332a3856e1ae097d110a66dad39f3", [
      "name-candidate:139f90a62c077925e8f775a3f11d54025448763be63876126c43a1f1b20e2490",
      "name-candidate:657eebeb4b788a6d20e475b3453339931ae332a3856e1ae097d110a66dad39f3",
      "name-candidate:796153e12c2b8d4079e9e446b2804da2752be9ca8db216de3801b8189031026b"
  ]),
  ("name-candidate:8988d31e5f84ef52ba85e3884fcbf60f70862c2fde24fed249fe93c3a9b4b282", [
      "name-candidate:8988d31e5f84ef52ba85e3884fcbf60f70862c2fde24fed249fe93c3a9b4b282",
      "name-candidate:b09b3454608ed68145d4b1d53c412a2bea7b3c578114170bfab2169a2fc26e45",
      "name-candidate:e1f63c7f145735c3256a1d211b04054ca8f31ff9a63c3180755cfef4bdb88b54"
  ]),
  ("name-candidate:de6e1a658517b05828922b10b941df6e567bdca69c098f7d4a2f702b5ff803dd", [
      "name-candidate:386843ae78f60b88f58e40fd526603d28d40b71c17fa0fa0fa1d56ae1aca56e0",
      "name-candidate:866656912b3b85d4c1f7f11099871482f81daadf0b558cd660b1634faaed9473",
      "name-candidate:de6e1a658517b05828922b10b941df6e567bdca69c098f7d4a2f702b5ff803dd"
  ]),
  ("name-candidate:1cf8556030db1b56124b477fd10f5ae4fbdb361c0f45e460b6413bfd33bbc806", [
      "name-candidate:1cf8556030db1b56124b477fd10f5ae4fbdb361c0f45e460b6413bfd33bbc806",
      "name-candidate:24910d3c505bcdaa1dc20600d2f79617adc3b0c0c124c5522d6f7716ee6b58a6",
      "name-candidate:b0d73ef851c73067073e24f5578ce392f5c02949b7352441fb1ddd8ee03a387c"
  ]),
  ("name-candidate:887366b502afd89e60526ef1d3c12ed39ffacea147cf21f44b5b246093a022f3", [
      "name-candidate:67e6cc9510db272aac035b4c9ef9cd7b4c0017a64127584d10734726e99d67dd",
      "name-candidate:887366b502afd89e60526ef1d3c12ed39ffacea147cf21f44b5b246093a022f3",
      "name-candidate:bb8247109b3e29f791d0b01261cb63d0f1ff0187efb8948062f1b47df438f065"
  ]),
  ("name-candidate:b50d973fa8894d2533e6d7c9c39deb8115f9e4d73c7ad681e16dfa1c3244d25e", [
      "name-candidate:7f976e120f214287887e41e8be2895bf52d4e0cedd4739f0cf4cb1ddd8713a6f",
      "name-candidate:9240e5b2470689ee28b68246d7f4c409d0a407504add0c382b630b6a9f742e02",
      "name-candidate:b50d973fa8894d2533e6d7c9c39deb8115f9e4d73c7ad681e16dfa1c3244d25e"
  ]),
  ("name-candidate:fb7ce3ef5d9bdf500495abccec88784d9ae671be2a892daea62fb04d99d4f025", [
      "name-candidate:0c4e7676945931c71063fa971d7330ffe4e88dcc63e2578eb10df9cd524232a8",
      "name-candidate:c8d3ec769adfba7b834b8561caf4aa236ef933081a7c30bbd3918669b9b70393",
      "name-candidate:fb7ce3ef5d9bdf500495abccec88784d9ae671be2a892daea62fb04d99d4f025"
  ]),
  ("name-candidate:3d989cdb79a4e952d3c23b24c93b5863bfc93fac795d6d8688a951de648f586b", [
      "name-candidate:3d989cdb79a4e952d3c23b24c93b5863bfc93fac795d6d8688a951de648f586b",
      "name-candidate:aa445cd68a81e99d1578ee154047e4928ec7245504862a9286bcd91a0a2dd169",
      "name-candidate:f937c0e2ef6af4f63eb0ddf35372d85fce9513556df06e7b9709f1ec4c18ece6"
  ]),
  ("name-candidate:e51a901483327d6db1c0f5ee820db41e1b7942ee3927bff56f3655d05699913c", [
      "name-candidate:aeaa2b7f1033b13a33bf0c4447efc7300cef4f4155535518c3a57ce3f151ca3d",
      "name-candidate:d96c2870879a58af4aca46de396adedc5e49e5c85b0dc954402d691b71a0c5b9",
      "name-candidate:e51a901483327d6db1c0f5ee820db41e1b7942ee3927bff56f3655d05699913c"
  ]),
  ("name-candidate:3c73b752dfd79aa37e75affd2b23478d52048275bfed2c9051849b0e0e574752", [
      "name-candidate:3c73b752dfd79aa37e75affd2b23478d52048275bfed2c9051849b0e0e574752",
      "name-candidate:b83db4c21f2f70569370783db5f18fab01bed7b5a44a00153fa1c596eeca6d0a",
      "name-candidate:be49710cf6a71bf3726c6e47ea5003ee108ca0bba2e43fd056cac98b873bc29c"
  ]),
  ("name-candidate:2948db2f0f95a238aaa33ef212385c034a1729c3b14e1ff563134a667a2d005d", [
      "name-candidate:0c0b994c86be333e7bd10177bb2d812f1bb08ed41044f1595f5ee05e22a7fec9",
      "name-candidate:2948db2f0f95a238aaa33ef212385c034a1729c3b14e1ff563134a667a2d005d",
      "name-candidate:34b0e0f18577c2e883f497ae61815d51bd71e00eaa27d4df2245a515c03b1605"
  ]),
  ("name-candidate:fcd670ff7441f5d71ac75c09c841f28746768ac781e9b9e86d69bea4d4501032", [
      "name-candidate:3bedcf18ec0f05ea1e5dce90d381ee1334888d0cb11c57be994fe476d2c8d2e4",
      "name-candidate:894cb72366ea1620dbcbd006d91a9b53af0ab3c5f42f8a406b08dbd1f9d1f7f7",
      "name-candidate:fcd670ff7441f5d71ac75c09c841f28746768ac781e9b9e86d69bea4d4501032"
  ]),
  ("name-candidate:bddc7e5874526a64f64b7f0365d3aa407c0c423c5a6e4f67dfa46d07b5fc5220", [
      "name-candidate:4d2a26eb18ca0d0404cae63e6d0b40bd3436281101447c3e682952d6ef3b7821",
      "name-candidate:a62e4a2d3da37d2d46fa35bf8e9c5b5bfa1a5c576240c4007fa60320069cbe19",
      "name-candidate:bddc7e5874526a64f64b7f0365d3aa407c0c423c5a6e4f67dfa46d07b5fc5220"
  ]),
  ("name-candidate:c57226d1f3ffef713747d6484271037e94b428cdcb018e7188215dd3ba667f80", [
      "name-candidate:52f9f36bdf0067bd04cf89ea6c50829604d4c032211d70e6f08019f4921ca51c",
      "name-candidate:a749c783a941f47a15dcc51755f772f29385eb6afad42ed48fa291557448eaf2",
      "name-candidate:c57226d1f3ffef713747d6484271037e94b428cdcb018e7188215dd3ba667f80"
  ]),
  ("name-candidate:99a9b6a76eaabfb673a064284777ba2662ce26b7c1b91f826f68f48d0a877c43", [
      "name-candidate:59c69602e21ee4004f9c236fc763a327138e2318b561cfaf66d06747896e1c54",
      "name-candidate:99a9b6a76eaabfb673a064284777ba2662ce26b7c1b91f826f68f48d0a877c43",
      "name-candidate:e8138523cdcae334c8261eb728138231802974da7bb38683e04f19e554a0a114"
  ]),
  ("name-candidate:93abdf553425e5757e87d670865edf99f6cb27aa94e2f563e9fdb2be893d91d5", [
      "name-candidate:148245aac038183252b1fd2a37bd55eea25d73a19a97c40c647114d33d28e87b",
      "name-candidate:93abdf553425e5757e87d670865edf99f6cb27aa94e2f563e9fdb2be893d91d5",
      "name-candidate:d4a31e3e96b616cdb9be73982c89034b9533069bf0287bb3d3b8cdebd47e3928"
  ]),
  ("name-candidate:b27e82961088fcf3f9c46e95a99c35b2b28615e2037aea8fed357839bdc00417", [
      "name-candidate:4100c9ec798bb939333caf2e55576d70a37d453f2b8fd3f931066ec3b0edde89",
      "name-candidate:b27e82961088fcf3f9c46e95a99c35b2b28615e2037aea8fed357839bdc00417",
      "name-candidate:e52961f67bcab508377de49f5f30d2552c5be2ef7a1bd66beaf54e7f82024c97"
  ]),
  ("name-candidate:04b76f457dee9124d1ebe4402db24ec5e9d68e39d1dcb19cb18c5010cd843c8c", [
      "name-candidate:04b76f457dee9124d1ebe4402db24ec5e9d68e39d1dcb19cb18c5010cd843c8c",
      "name-candidate:a4917b6f5d99b4ed4550bde4e0a8a987d627f7bc8d62bc2ae57caa24450b04bb",
      "name-candidate:ada8a398ce32a2317c39f9fd24c2eee471e57e3aa90e61e9fa2c276a62e01736"
  ]),
  ("name-candidate:0872ba0358608053d59f9a17514532dc33fd4b75334332dc93fb70a5a4afda9a", [
      "name-candidate:0872ba0358608053d59f9a17514532dc33fd4b75334332dc93fb70a5a4afda9a",
      "name-candidate:1d79bafc6fa7657131ffe8dc0fcae165594a65c03b88206e075e84a199bf5f00",
      "name-candidate:9f66a25cdd69142566cbc1f17bb221bcaab53628d6fae4efc7d0cb8ae768c64e"
  ]),
  ("name-candidate:beee2aeb1603989543ce5bea4e0ebefaff781d0be7a50b20f742befa9af513d5", [
      "name-candidate:5345b6f08b5773ea8ee96de46546519a5c34b8926a15da49f6bb0a50e1522e42",
      "name-candidate:5ffd8312662458126dc2b3efaf74bf001371711d9f90ba03faff52e8f61561cc",
      "name-candidate:beee2aeb1603989543ce5bea4e0ebefaff781d0be7a50b20f742befa9af513d5"
  ]),
  ("name-candidate:dfe522c19f8e6e600fb38a4ee70ee8f93c649bb52ec8b7b3057742999b9e13ea", [
      "name-candidate:b9cbea348f373f4ddf6ad6975972cb4aef6adc5a9b6abe834bb96eb16abd64df",
      "name-candidate:dfe522c19f8e6e600fb38a4ee70ee8f93c649bb52ec8b7b3057742999b9e13ea",
      "name-candidate:ee877db5cd8a88b5efafdac52401f6bd02acaedba0a7fd0d82b5b3da16f05baa"
  ]),
  ("name-candidate:66f624a32fa3af2e6c871852c0c145f6f5f269a02a976757907192edc78c0c3f", [
      "name-candidate:05378ce4b6fc1c1734133d58c404833fcb35cf77b34f45e915dac795ac8f1a54",
      "name-candidate:66f624a32fa3af2e6c871852c0c145f6f5f269a02a976757907192edc78c0c3f",
      "name-candidate:fad145bd075cac95c89a754106e1310c4a4687fc473076e1ebc4444e95cfe026"
  ]),
  ("name-candidate:617c15f627df110fbb5bcc46d54112c22dcc05a9866e909d6b961b78ced047e3", [
      "name-candidate:4a83ff5778be13d41c54aaf683f43b15bdd3ec764ff3f457a5ce7755a305a6bc",
      "name-candidate:617c15f627df110fbb5bcc46d54112c22dcc05a9866e909d6b961b78ced047e3",
      "name-candidate:7bc6f6e07e8c2f418ff0ca62d0fa87422740a58b595a307fdc5827fa194a9dfa"
  ]),
  ("name-candidate:e6edcf62156bb7a30d7f49ff59ac97596306fd21fcf7ee019cf4ca7ab2f946ca", [
      "name-candidate:12be7146604b0bbc26bc29e1c5d7249246c10e4d33d1551a8283d49de24b23b1",
      "name-candidate:e6edcf62156bb7a30d7f49ff59ac97596306fd21fcf7ee019cf4ca7ab2f946ca",
      "name-candidate:fc391e77114369351f006c21766289d9c0a35e101740d4fee905d662e23cdced"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L58409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
