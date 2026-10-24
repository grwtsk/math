# candidateSelectionsChunk0017

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe3ccc65dc33ab8767c5806c9cafb5ea747542c58b10644fee8d2a4ccdefec29",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0017",
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
  "slug": "candidateselectionschunk0017--d848b0530a964218fd80e53a",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47391,
    "line": 47028,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d848b0530a964218fd80e53ab5e858ecce5e1be000202f8a2c06f74318a4614e",
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

Occurrence: `declaration:fe3ccc65dc33ab8767c5806c9cafb5ea747542c58b10644fee8d2a4ccdefec29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47028–47391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0017 : List (String × List String) :=
[
  ("name-candidate:dbc910361857581e5303d0c5de1c3e7c54fcdbd3c3f4adfd66115ec7c92e4319", [
      "name-candidate:dbc910361857581e5303d0c5de1c3e7c54fcdbd3c3f4adfd66115ec7c92e4319",
      "name-candidate:f67b258988f90b92e09117f3a287689c620b74b65f857c3d5ccd3960693c282a"
  ]),
  ("name-candidate:d613fec1738fc6f9f6cbfd7f28036b5af6adb3269e14a0f1674185db09b7b89c", [
      "name-candidate:289fb850c8bce7e670cac80182a17910fede50f8a07d7cbedc53e53f462fa212",
      "name-candidate:74ab3a9057dbd24c9bf2d3b035112f0198ff8b070832f8846bc20ee76789c42b",
      "name-candidate:863603d21449b200c7da294ca6d129c107b55fc983e32fcf45be71d890240cb6",
      "name-candidate:d613fec1738fc6f9f6cbfd7f28036b5af6adb3269e14a0f1674185db09b7b89c"
  ]),
  ("name-candidate:e3c728ff359814f08d0fc7f5846d020a74f0c1832066d91fb5454dda572dcae9", [
      "name-candidate:87b79cf1311a8d3b7911c4e0cad7f1800aaf6ec4bb5e6600a26cc051c9431520",
      "name-candidate:93903d0a6d8ac306a75d0408686ff208e7f607d4390a4492cb5c75b6d956f2ad",
      "name-candidate:e3c728ff359814f08d0fc7f5846d020a74f0c1832066d91fb5454dda572dcae9",
      "name-candidate:f7a408d18c48425d12ada36aad755d4a3932d8a24f75f90239d6d45583a33ed6"
  ]),
  ("name-candidate:736227c3cf44c10456cb95e8710c5832578e86e916e7bee6b5e204c9f26479ee", [
      "name-candidate:0b72c301cce8857e83f2aa667c265a746fccc946cf9d4e3cb9bf4af31f2f8a32",
      "name-candidate:107a4ce2a9c521563517a82ed73141132c1bb6c408b5a148d674c44141aecf08",
      "name-candidate:736227c3cf44c10456cb95e8710c5832578e86e916e7bee6b5e204c9f26479ee",
      "name-candidate:d6ed0a5a190ca7807fd9dba8d01b268f9c16fc096c6fe1e65160a02607e9839d"
  ]),
  ("name-candidate:f1d67717e9093f2fcdb4ef4cc673bdd438a6091988e15ac5541cb008368022cd", [
      "name-candidate:01e2bb7512e034f35d0bd4b461123b1acaa6a7f16df97dd7b5fab5e42ea8aa98",
      "name-candidate:181efae19a8980a5c9fde1de4d99c576c97af55ada2ed9de675b35eb142669b9",
      "name-candidate:db5097b5406cd0e102b2f000584c6c2c2610b1a71ce0a79748514dcc017b549d",
      "name-candidate:f1d67717e9093f2fcdb4ef4cc673bdd438a6091988e15ac5541cb008368022cd"
  ]),
  ("name-candidate:9f0b427229e9ccfeeeb193699e3cbb6757e82267331e63c91e8d6fc0330ade3d", [
      "name-candidate:253b04ccf5734af4c7b674afc973a01e9e45f6d26db0dcf90c62b1c9630634fc",
      "name-candidate:2a76b7aa34fbe55943e88b96f289526780a1762ae499806c9e691ceb0565c99c",
      "name-candidate:9f0b427229e9ccfeeeb193699e3cbb6757e82267331e63c91e8d6fc0330ade3d",
      "name-candidate:e2ce9c2d33310671b09b9d73c20232ad0fada8e778e874743e2e6ed45d024dac"
  ]),
  ("name-candidate:c88b7ac28c665575e01447d158a4fa57ccfab750086d94106e747948161f1f09", [
      "name-candidate:5189e94c11f1b6ee8d60792bbb0a2b2d24cab38a9feac43a63c2a2154bc33881",
      "name-candidate:717fe6efafd50c959fc6396efcff5d4e2ec0b0c3f6a1077bc40229b2e41010c1",
      "name-candidate:c88b7ac28c665575e01447d158a4fa57ccfab750086d94106e747948161f1f09",
      "name-candidate:cb9048454493776f9105660f2bae858c2f735016f17b545f7f52390b49d001bb"
  ]),
  ("name-candidate:40b6b3fb8628218d06a5f8124e63fa4f554d33d4290a033825ac36699ff9a1e3", [
      "name-candidate:40b6b3fb8628218d06a5f8124e63fa4f554d33d4290a033825ac36699ff9a1e3",
      "name-candidate:c2aecf50493e858c69db91f8bd253d3096821d19d0e586f58d58117f7fd0dbf2"
  ]),
  ("name-candidate:88f4ffb09954fbb5a4246674ed5ec00ee23cc1816ca32afccc5b8cc7e9b0a5a3", [
      "name-candidate:5c3bdaaf4ea4e003f282c5afde59c91f57c5cc86ccb3f99edde388cd8ee17691",
      "name-candidate:88f4ffb09954fbb5a4246674ed5ec00ee23cc1816ca32afccc5b8cc7e9b0a5a3",
      "name-candidate:a466b87642e9e7388ff2f562b25ce52750a2a44e15549721c38a36d1119998a8",
      "name-candidate:a75fc507f4060b5f09b630aaed778754eeb522d352170078dbaceb0daebf63a5"
  ]),
  ("name-candidate:bf0e500abe63a2524b0b6cf58505aa74f25a6c06f994a46abcf6ec30520c6f7f", [
      "name-candidate:21e7e5cef9bd4986ea411222a653a514145431cb579f497a587527c55743beca",
      "name-candidate:3737719a773d0bfe90af34ed3406daaba1e2891b876eb08b4ca5f37ac368b682",
      "name-candidate:9644bc9d1db9cc538a1c9a9670748e79be3255f49043ddd8793bde591aa1542e",
      "name-candidate:bf0e500abe63a2524b0b6cf58505aa74f25a6c06f994a46abcf6ec30520c6f7f"
  ]),
  ("name-candidate:917538011503550eb4305db324b282e44aff8249973db36dcdf464c5d2acdd2f", [
      "name-candidate:16aa6611317d833a1dda5ee0421dd85dab025484b11224cf4f626821b41735ec",
      "name-candidate:8b44a5b9895b88e4b6901a7cf1446a1acec47f855367cade3bc8d43dc7ccc64b",
      "name-candidate:917538011503550eb4305db324b282e44aff8249973db36dcdf464c5d2acdd2f",
      "name-candidate:d90987690819d53d89f22d72148a9419f1ba762b69574f241611ee4af1cdff71"
  ]),
  ("name-candidate:2c5b75a5e309a2959f77284c48683162157c7205eaad3cc4c8b2f07b73947e1e", [
      "name-candidate:2c5b75a5e309a2959f77284c48683162157c7205eaad3cc4c8b2f07b73947e1e",
      "name-candidate:c1a25744400af03c562bc9269b3e3fdf8b625c0cdd9d375ceeb8c805e9b307d5"
  ]),
  ("name-candidate:d8458a59edde2ea3179fb66bfc5f83a823dae6f12bcd5b16c3997398091a3678", [
      "name-candidate:1c606862c0f65cf62451014a6da3341c8c2a8528647f06e73ef3d7a307afbd92",
      "name-candidate:9bf5e6f584199f5ee0bdf478fed41ad3985a786f25f1944d70a6cf5071c7bfef",
      "name-candidate:a4c659dd736eaf8e824c4d4349d6612b3e2b6754b3ae7a74f38817b2556cba72",
      "name-candidate:d8458a59edde2ea3179fb66bfc5f83a823dae6f12bcd5b16c3997398091a3678"
  ]),
  ("name-candidate:aefad41554e30d8e0838599e31f77419706de2a402523bb71a80960ee4489ee5", [
      "name-candidate:6791ca54c92aab25f97a2171f0edf0c52ddd23ac900a326f8fbb4d151fc28337",
      "name-candidate:83981c4fc124e5569f4b42476ce87464f06144db5655cc4af0a9135491a421fb",
      "name-candidate:aefad41554e30d8e0838599e31f77419706de2a402523bb71a80960ee4489ee5",
      "name-candidate:c8cdd40950eec0ffe3fcec5d65a7c38bce2f48acebfca5f2f106fb1b78929cc3"
  ]),
  ("name-candidate:67ef5bb24fafc2e979c195981ccfe09f2fca0ff1696024bed34f6528c9583c04", [
      "name-candidate:514cfcdc7527a7910ec3d332fdccceb6cc7e770103a2d07e68059c7f9457a77f",
      "name-candidate:67ef5bb24fafc2e979c195981ccfe09f2fca0ff1696024bed34f6528c9583c04",
      "name-candidate:8b94c0b3380f9a79b08a129a7cf57b4dc7ada0400c9c20c9d1aec5d164de9a12",
      "name-candidate:dde6f365289bfec961d82db1a49815be7526a9c8785065289593b917d38d2214"
  ]),
  ("name-candidate:dacd688b6d828c78607bd96dcdf424963e3dc34f49a650ba764b4a0a5921e3ab", [
      "name-candidate:bf8d338c6449a36b555b66a7597bdd683ab0c222c0c698df96af5c5f2168e0ed",
      "name-candidate:c231098ca6e48f12ffcdba2b00c550883b832e49279aac8e480646a4a472abd2",
      "name-candidate:dacd688b6d828c78607bd96dcdf424963e3dc34f49a650ba764b4a0a5921e3ab",
      "name-candidate:fc9682f1aa764b209c8466637adfb8102292ebbc9aa93c8abcc5813330822dbc"
  ]),
  ("name-candidate:1d5e72efc4703d181438641b7ddcac67b2fbda411cdca542d2a8f53a1faf0e3f", [
      "name-candidate:1d5e72efc4703d181438641b7ddcac67b2fbda411cdca542d2a8f53a1faf0e3f",
      "name-candidate:8104cb83ab3f41aed6a8f349bf24c073de4bc9068c4c6214662dce2087bfc55a",
      "name-candidate:b6f35ee84f91032dba39e361102ce9af69ac1f0d07b5457a03838216f4b45a6c",
      "name-candidate:bb92b16ab2ace47344404f638b02c395c76b85b79fcafc85ed97bcd0bcd60c2c"
  ]),
  ("name-candidate:ea723abf670d9a531468c18d2a7d22c08f3db213ff6f01c568ec7585731af070", [
      "name-candidate:1c4f6831eecfac501edca3c0ac5fb46e33e5047d4fa00a7b758db068b1c1cb26",
      "name-candidate:52ec3b07ef199d22cac2d9ad2d6407c70bd5ab3719254278ce7cdc8e990b59d0",
      "name-candidate:db8cccf46767c3b27e34d0ab054d2953571ac98b7811b9f46b0151ab8fc5f055",
      "name-candidate:ea723abf670d9a531468c18d2a7d22c08f3db213ff6f01c568ec7585731af070"
  ]),
  ("name-candidate:2d74e4bdf6e6148092c024af6e133cd47bf06e361e49b5f5912bd124834ec923", [
      "name-candidate:2d74e4bdf6e6148092c024af6e133cd47bf06e361e49b5f5912bd124834ec923",
      "name-candidate:5a505d85b3d8560fc3013d5f7ea4763caf8dc2695061f9c0e4bab0e6ab43b34e",
      "name-candidate:e112375c6b3574789cb138c903b47353b3997aaea850ccea6af724077dc29134",
      "name-candidate:eab1078014839774fad1bae6f0701fbcaffb9179809f3a8a148e8bf1a1823156"
  ]),
  ("name-candidate:5f7cb6eed59408b2718974c233eabb50a8d7d419918baee709b5464e19da53ba", [
      "name-candidate:5f7cb6eed59408b2718974c233eabb50a8d7d419918baee709b5464e19da53ba",
      "name-candidate:8262846c348cc5f4f86b07445b3fbe737cdbf55d626a634f48a6c8c5a21a4d54",
      "name-candidate:fec0e88ed69c75c8cb91dd230491de62770ef89bc6ed3d5b1edf396cb6eb59e4"
  ]),
  ("name-candidate:b74cb06b2d6a7088baaee76fd78622a7a87ef5cbd4b7821718a357992e7e193a", [
      "name-candidate:616fd435061c6b5fe7fa7fe6687ea0d7fb80b67d1e82718edfc2283574e990c4",
      "name-candidate:b74cb06b2d6a7088baaee76fd78622a7a87ef5cbd4b7821718a357992e7e193a",
      "name-candidate:c94242c68cada5bd71c0fdbff035e0b323bf0f92339d1298803be236f95a6428",
      "name-candidate:e6c644bef25dced1899a73075995c08fd8c4547dccf9d5d41ff628da8795c3ae"
  ]),
  ("name-candidate:ade4643b6b8e1bc0ace4a7da64f495a51dbffeac5ce79beb321dfbf8b766aa22", [
      "name-candidate:6a943b2ab9b0c159b1a4a5b623325e68e5cd0e296f7683dd56028b43af86d483",
      "name-candidate:ade4643b6b8e1bc0ace4a7da64f495a51dbffeac5ce79beb321dfbf8b766aa22",
      "name-candidate:c9d9e2070bb67fff895d9eaadadd8e833ba4011120d9012c5ff86527e769f324"
  ]),
  ("name-candidate:8c03638da15a45dd7c52ee7d4b2acaed6a33b5f94674559e852b973ca4d111be", [
      "name-candidate:17034a827ec59bd449f930bc9cfba9940ebc366964f0fb720cea8aad9adb70e9",
      "name-candidate:8256175cf0ebec9fec1b3f2f5ed3f941e3ae47a08019a404427a94c9aa849257",
      "name-candidate:8c03638da15a45dd7c52ee7d4b2acaed6a33b5f94674559e852b973ca4d111be",
      "name-candidate:9fcf61b611c99647abf8afc25dfaf350b49763780828e14f940c5f5769f2bd59"
  ]),
  ("name-candidate:c64cf40a33f19690b30e6b7f409ad80ebfe4c7c4feeb42f777b8fa8466eaa91e", [
      "name-candidate:2bcdce451e001b63f348a848e3eb0620c91dc4035171f511e8e7ee5e10f17145",
      "name-candidate:54c9d389fa20f713b388dd631304ce7ef06289290f88a5b3710bb7579e5e9169",
      "name-candidate:c64cf40a33f19690b30e6b7f409ad80ebfe4c7c4feeb42f777b8fa8466eaa91e",
      "name-candidate:ea51c45479111fab17d268d59de78891f3c3fc0f8d615b8333ac35746c91853f"
  ]),
  ("name-candidate:504dd25c84d9a21096e0465832b79e9115507ae1645b222d8f505a3c53a4b916", [
      "name-candidate:504dd25c84d9a21096e0465832b79e9115507ae1645b222d8f505a3c53a4b916",
      "name-candidate:7d85bc809b1877a937b7cd31b50d2742f1e8e39ac08239e26263cf922407b599",
      "name-candidate:c87a597dfc8855c1545bfba600fd56ce219a57051eb173d4f7bbbd8ac9145669",
      "name-candidate:ee506aad98264c1ef9c93ed047cfe598608a3a287925343a6e5c4a976b088b15"
  ]),
  ("name-candidate:4b7786605fb3dc0717d513cc5387adf421c1be9f978e6047a4bc3b2d951a3195", [
      "name-candidate:1e1d59caa3ad301e24fb8ec41a70d87f7d2ce2828b4658cc21c74460c146a7f9",
      "name-candidate:4b7786605fb3dc0717d513cc5387adf421c1be9f978e6047a4bc3b2d951a3195",
      "name-candidate:91e28b70f137a060fbf87ea24db757448c6f6abe461a96755edaa992842234a7",
      "name-candidate:cf497fe1f69ddf5e24733cd00c8769688311fabb38acaa8634e1f1425e65e29e"
  ]),
  ("name-candidate:4f6d5c1ee164789906ef62f5dbb77548149ed74b02ae30641b6db6057936f9aa", [
      "name-candidate:1ad16a3e6152ca1240fa9b2eb82834aaa2981e0b52f42b650ad89b618f3217c9",
      "name-candidate:4f6d5c1ee164789906ef62f5dbb77548149ed74b02ae30641b6db6057936f9aa",
      "name-candidate:d5a84963d46e078bb08e474832015b0d4db4d44c3616e635265334bb8e9c2a9b",
      "name-candidate:e540739a635b690e9ff0fc5579420720526013c4b9723bc667ac45b0e2940ea1"
  ]),
  ("name-candidate:5adaaf05fcf7511f25128895ba94a914a96e163d79880153f4ffbd65ef07a684", [
      "name-candidate:57f3c047e392cb33c555ae27faf69c2eb9300f4e675a0c88f79338cb8f22acbb",
      "name-candidate:5adaaf05fcf7511f25128895ba94a914a96e163d79880153f4ffbd65ef07a684"
  ]),
  ("name-candidate:93083b8fd8790e6edd527b93aae3464b3668dfce1813b7056c117ab43a3f1196", [
      "name-candidate:5b0a5b66291de7f2487a765ec71d76337e86effec1fc05f7df7101df13eaa8be",
      "name-candidate:6d6d84b006b986b6b637dba67091a1afebe2e0f6b83c5f0e928eb05018cebc70",
      "name-candidate:93083b8fd8790e6edd527b93aae3464b3668dfce1813b7056c117ab43a3f1196",
      "name-candidate:fa7feb3dcf39bb0ab5a9864130c686d3a580cbaf9c72b3963b0012e4af03b5d6"
  ]),
  ("name-candidate:50f2e57fa8d37775836f12b30c0c128d256b0d4a6af59c0392600257932b9f69", [
      "name-candidate:3780002f124093e1403f39d9318b8581fc001fd042316c25738fcdca75fad581",
      "name-candidate:50f2e57fa8d37775836f12b30c0c128d256b0d4a6af59c0392600257932b9f69",
      "name-candidate:75bcf2fdde95ea052b710384d8e127aba713e51c8ecdda008ac85f810830bb42",
      "name-candidate:ccf1f04c53916c88d49cbde9d9d14d83afbe3d4193ba2ff59bd8b512af2dda76"
  ]),
  ("name-candidate:1a9089d4b7031151617819e6363b2a8244dcec3b4acd61b4db4a2e04a60db9d2", [
      "name-candidate:1209cd262c6fe8168864fbd38efca4e42bc5cce071826e95e2c740b855183ef6",
      "name-candidate:135380be2de123b848ac90c1bc8b0ae9c777f948013a75378688feb1ebdf8f49",
      "name-candidate:1a9089d4b7031151617819e6363b2a8244dcec3b4acd61b4db4a2e04a60db9d2",
      "name-candidate:76100f4cd6f5a5c708c9b926ce9a837e40c4a00f857ced969029853750b7fc58"
  ]),
  ("name-candidate:fb3f110367f1b7094bd1177dcc7778e664c73237bd9df82b2440353bb7c50588", [
      "name-candidate:04ae861e03a8eb35e0c67166dcedc93a4a1950a4709dedd2ba2b1c0af2b0ebb3",
      "name-candidate:7184833a67e9821ba1b569bef754506dd260cc5d320708abd2af1145b5f0fa00",
      "name-candidate:97217cae3e954ac82cf04a51d211669b9948b04326c94f72e9b796ccf7c2f775",
      "name-candidate:fb3f110367f1b7094bd1177dcc7778e664c73237bd9df82b2440353bb7c50588"
  ]),
  ("name-candidate:72508785cf024a2f81de3d9b931550125eb5624b6154ce0ae58a37a2f12b3af4", [
      "name-candidate:090f0ff5e3eed9889ff1f24d1e8a86a77267dab5b02e8e48f065fc74bc64d768",
      "name-candidate:44f6d59b43e64f884a909c4688af6ef4d4a6db895167d51b1ff39c6ad16ae8de",
      "name-candidate:72508785cf024a2f81de3d9b931550125eb5624b6154ce0ae58a37a2f12b3af4",
      "name-candidate:b0d9e990b8ea370a6ce968ccf0a6ec2b5b39b080980fad3f46df64c34c74b8b6"
  ]),
  ("name-candidate:282d764c3abd1aeab448ac0912aced5e541aac27dd997401be5cb1fd62d1f579", [
      "name-candidate:256dc3602d34dba681036478ae3a43463579622e045d4d34996228a46d9f7f20",
      "name-candidate:282d764c3abd1aeab448ac0912aced5e541aac27dd997401be5cb1fd62d1f579",
      "name-candidate:8602a7476437c8f04c3d644fa6f2859bb9c81f78cd85fa9cc68517cebdd8c47e",
      "name-candidate:92646550b803c6b9ae262245aa4adf5149f10e20ec06cd76768c93fca3892c35"
  ]),
  ("name-candidate:6fa38ca4d0623eff337ded69ff5a449c82b1dd77bd273f4371accc3aec7cc656", [
      "name-candidate:2da6670d111979d6f088bac64edd62c029eeef3a41b2fcb0bd207afa1efd740e",
      "name-candidate:6ee36e32cb3e7f2c2e57f79f1953f861156643fb11183b05a793b471049dd857",
      "name-candidate:6fa38ca4d0623eff337ded69ff5a449c82b1dd77bd273f4371accc3aec7cc656",
      "name-candidate:7ff8870bf3cfd0596111f8c8aaf5fb87466a547d2ce79733476ccbb546f2cd83"
  ]),
  ("name-candidate:d94d3389ffbd66f453ee22dec55032fafbe531e273ef5af4ca301949b761a265", [
      "name-candidate:392351fa98a67dab3e06ea4e33416e6cd72ada922547e6a301bbafff727a9e3f",
      "name-candidate:d41342b3d562053318a3d1e5c5d45299b906bcc1fc4b397313b56beebb2a577b",
      "name-candidate:d94d3389ffbd66f453ee22dec55032fafbe531e273ef5af4ca301949b761a265",
      "name-candidate:e190ceabfefaad34b06e3f3b74a4b61443e8053ffff05c2cc3eaead08779884d"
  ]),
  ("name-candidate:ec5bfd0a81ed7d2a37e6dec6dd5329dc533fb387d85a324bc176459c21d25238", [
      "name-candidate:40cb6f3e78822f49b4a540d916ca3ba4bfdac64422b0ae4b255d9b0ee78cc430",
      "name-candidate:ec5bfd0a81ed7d2a37e6dec6dd5329dc533fb387d85a324bc176459c21d25238"
  ]),
  ("name-candidate:90e24680b0d64c29e91b9da925bf18cee79db138541832b870b9db2ed87fa705", [
      "name-candidate:3a01b9e62a4db46567ea64f4f2979d03f9ea464ae59994e62ae90a195c56eb91",
      "name-candidate:3def802474ff2eb7d65f18c9601ae092be2b6cf91981079157cb33616b93e98b",
      "name-candidate:52f3c450ce3953dbcdd59531ffe8971a9f14b5d3270d9b081ea7362a1c151bb6",
      "name-candidate:90e24680b0d64c29e91b9da925bf18cee79db138541832b870b9db2ed87fa705"
  ]),
  ("name-candidate:05f6c1730702ac9141f3a914f474f5df2c5095143ce517aff1c52b882bd9f2e8", [
      "name-candidate:04127d7c331ae192a3550ff825fceb20e930c24a0385c1df11b772b8bf454769",
      "name-candidate:05f6c1730702ac9141f3a914f474f5df2c5095143ce517aff1c52b882bd9f2e8",
      "name-candidate:2ab1e3a4cc91345bf0244f04b5a669e91d9c357fbdf49a841f0f34bd0e8cfc58",
      "name-candidate:86dbe3e42a3545a956093da7fe6c71d070a23ba5c0ac125c12545214860ddc7d"
  ]),
  ("name-candidate:e2f7e8f982d456685a741a0e086e9f949c807d6c0cde74af688d23e54671423c", [
      "name-candidate:57650756ddf8dc1ee8b088594cbb71972d520387ac0611634c801d069dd27a4e",
      "name-candidate:cbca9a288e1bb22cf83093b0759bf2bab22ad563b697bcad86d9df10f7fc425e",
      "name-candidate:e2f7e8f982d456685a741a0e086e9f949c807d6c0cde74af688d23e54671423c"
  ]),
  ("name-candidate:65f6642a871553853e1dc64db6635613fa6bb4ca43aee64dda5b74c5fb008f73", [
      "name-candidate:409c35d1397d50888c9aad71409099aa05c8232c3adbb40e7d86ded6c2e69497",
      "name-candidate:65f6642a871553853e1dc64db6635613fa6bb4ca43aee64dda5b74c5fb008f73",
      "name-candidate:bdfecdb59e1e83d20ecf6f40ea1b091512da7ad09a7a5db5d152bd3b519684c3"
  ]),
  ("name-candidate:dd246ca565eec6c849dccc57b509ce0376109b29e2cbc87dcf8d6acdb5f96111", [
      "name-candidate:dd246ca565eec6c849dccc57b509ce0376109b29e2cbc87dcf8d6acdb5f96111",
      "name-candidate:f022480b313faf1cdccaf17dd0e06966d59aa351953a83e97d04bb6f4b8fe31d"
  ]),
  ("name-candidate:c720dfde951eba499eafff8d842d8a114290c9139ca9883f450bfb7e9af1ec82", [
      "name-candidate:57134495618b06212ccfdd8da3fd511f073d00fbe6f5b6d3506f2ced2440a4ca",
      "name-candidate:bb24047b7767ce6738a62c14116ee2c1a29f111ac2e242db2f23c77b5f87f7aa",
      "name-candidate:c720dfde951eba499eafff8d842d8a114290c9139ca9883f450bfb7e9af1ec82",
      "name-candidate:e3184defc51398152114e0208eca988ee78e9850c3573097ac6abefa209bf6f4"
  ]),
  ("name-candidate:d6c8a8ed3371cc799eb6b16d20d08d2f170994c34a55d9021f93307d6971e198", [
      "name-candidate:0baf8d72d6683c1e620c7e0dabdfebd95e636b98bbaa4c3467d0d7344032a3ae",
      "name-candidate:17aca597c5906d91e88724106dab1e197d49242c1b76c29356a0bc76b3348b81",
      "name-candidate:557e8a38e86f3b1f6a02543f8042d700488bf9ebedc7683f423887b2541544e7",
      "name-candidate:d6c8a8ed3371cc799eb6b16d20d08d2f170994c34a55d9021f93307d6971e198"
  ]),
  ("name-candidate:71a83e4ea97cb4129041b7dc5cf8a5a48b54e22dc523c9322b3c5d449357556c", [
      "name-candidate:544fdf4bfd5c531027ade16620bcd0747557ba928635e7f685365e0c458223a6",
      "name-candidate:71a83e4ea97cb4129041b7dc5cf8a5a48b54e22dc523c9322b3c5d449357556c",
      "name-candidate:8db4f2c6ed7a64ccb16f418750793d5d763803c11b63b74088ccea3afbe1cf97",
      "name-candidate:eb548d4b8524d004d80562d3f4b13ecd98865bd875b6b83e45bc7629dcb71080"
  ]),
  ("name-candidate:33354b0a67c153b5441398583fd36eef626539cb61b6ed37ebb13b4b911c8cfa", [
      "name-candidate:02b003ae57fd67848ccfe25dcd01205f036cf7241e42dc29f5b6484790e53b0b",
      "name-candidate:33354b0a67c153b5441398583fd36eef626539cb61b6ed37ebb13b4b911c8cfa",
      "name-candidate:aeba3e905ef1529fe957269ce4574fe38bf9efb6881d1b5ccb5d3784e3339dbd",
      "name-candidate:dd0fb1bd1fa56b80d6835bce7220436df8f128771a310455bd8a341650e29762"
  ]),
  ("name-candidate:37495c6b77a26c656264158e1ff5c2687cecc5e500cc9ec9894f96b91ac15e0f", [
      "name-candidate:08bbe569debba9c7d4b46a868422d0d9fc98dafd2115318d60b29190e25a7f93",
      "name-candidate:128ccb44ca21ee4465440a01bb9859598126a675c8ad802d0ad1d652b65e4387",
      "name-candidate:37495c6b77a26c656264158e1ff5c2687cecc5e500cc9ec9894f96b91ac15e0f",
      "name-candidate:b7b9222005cfb71aaede0086aa070971e37f292afce47f7f6dda2fb8cb1c0d07"
  ]),
  ("name-candidate:0b1c5f573cc4149d8d321ec847e0b114a1ca1058f21152836208985c0515c0e7", [
      "name-candidate:0b1c5f573cc4149d8d321ec847e0b114a1ca1058f21152836208985c0515c0e7",
      "name-candidate:2887826bee101064f6f3cb0f9eda6264c6c0a7df3d22423313cf91f7d52a06b3",
      "name-candidate:ad33ebee7fe97be6681147d037c6277179f6d7dd88fc4b670420763168e2a401",
      "name-candidate:effe97d14f353bdd1a621985930705234338ec2076a1d26ec0d73b53c98a61b7"
  ]),
  ("name-candidate:e32c33c0784d47f3f6ee310d051b0abfb9a2b2896a164fda7e375a3bcdfb03a3", [
      "name-candidate:d939e161605a929964ad6457c2dc56c98db9a5c8e3e94d6c427323edb62f023a",
      "name-candidate:e32c33c0784d47f3f6ee310d051b0abfb9a2b2896a164fda7e375a3bcdfb03a3"
  ]),
  ("name-candidate:776ede109efb61bd71ba7a82282fb698eb6c47af2bc8f9bfc18ee4c1e0a7b2d8", [
      "name-candidate:58a45b740eb60a25595b4c093213ddb367a3c32a48dacd2f1f8065c810a9a99f",
      "name-candidate:659f462e10a359eb1489dd5d7a865b91643f2c7a5c711ab1b9132479c4b98624",
      "name-candidate:776ede109efb61bd71ba7a82282fb698eb6c47af2bc8f9bfc18ee4c1e0a7b2d8",
      "name-candidate:d55ef36bf4a23ee481449a42f341aa8b1c19595f18f16096833c93aba08c2368"
  ]),
  ("name-candidate:94ec16e38840e770f745b92fc046e38aa4036733e0b522a17be742c165250ddf", [
      "name-candidate:1fedc75d414eb9a2327bd68fbab10e1ec390b0fbc829e2e6b6592505a33c8415",
      "name-candidate:94ec16e38840e770f745b92fc046e38aa4036733e0b522a17be742c165250ddf"
  ]),
  ("name-candidate:d25d6128d5dd647ee0991568746f73cbf6ca0e5047ce53d051ca1202293921cc", [
      "name-candidate:04203fb346acf08543520ffc87458e9000a69fb10bfad01c9449f97e63615951",
      "name-candidate:b1e61d599c42033635f9631e3c79a72db8447727ad94e6f0028fc13a21b70eff",
      "name-candidate:d25d6128d5dd647ee0991568746f73cbf6ca0e5047ce53d051ca1202293921cc"
  ]),
  ("name-candidate:de166f69ebd40314e1b686f094f656aca4f78d2486fee2cf8d0b3aac1df8941c", [
      "name-candidate:5c12a75b86405277ce33d146eb98fa3e7435b56b5f29a70595165dd3200f1cd7",
      "name-candidate:b226ab5fcd0e1f8f408e371a1ee0e82c5e3130d5058365c849b475bc76d55ef3",
      "name-candidate:de166f69ebd40314e1b686f094f656aca4f78d2486fee2cf8d0b3aac1df8941c",
      "name-candidate:f5c6414e4e80c59498e13f3285457cac27f751009289c5ec341123ed9312f352"
  ]),
  ("name-candidate:3b075f1ac9df0f24a8bea85f210b69653db5a112687f71419d19a91367d03a46", [
      "name-candidate:3a8985ca42aeb98d659b8cd4b848774509c2b434e665483c5722349dd7ecba05",
      "name-candidate:3b075f1ac9df0f24a8bea85f210b69653db5a112687f71419d19a91367d03a46",
      "name-candidate:550e68c3ce036911fb33f5fabb8808a18d19987d0ece61e1eaf9a75a5194fbe4",
      "name-candidate:639cf248d69940fc1e977103bdd5be813cdc3e87da53847b34c7e1f34abf3bd2"
  ]),
  ("name-candidate:42049f86d522a6b3b94b87f14851d326ba45fc4f7e9755f601090b7868b66f8c", [
      "name-candidate:396b3256e45097c9b98fc081266fa0d45e46767c89d3ac53375e26a426497e37",
      "name-candidate:42049f86d522a6b3b94b87f14851d326ba45fc4f7e9755f601090b7868b66f8c",
      "name-candidate:7a6152dd38e2fe0633b104eb05a5d872439f16eb79f4f1f077632abe12a4fe7e",
      "name-candidate:f78aadac044c4cc6b0a4791fc277e0414ff7e0700ed8514e362db7f372d4bf6e"
  ]),
  ("name-candidate:397464d379ced0020853e14cd606581fb4824f6b1aa3b4809ecd9214b7d625ea", [
      "name-candidate:397464d379ced0020853e14cd606581fb4824f6b1aa3b4809ecd9214b7d625ea",
      "name-candidate:4e324e20a36549ba10205329bc4d43431a4d58b4203860c7fb46a0e5cb3f7349",
      "name-candidate:ac7b509acd6fd0ebe911cc82bbd2d3bc5538e8e6e090a0ee801b345c2ed11b9d",
      "name-candidate:de10244d0362279cbb12799ad9b153c05b46a043a98799a40103804c38257a19"
  ]),
  ("name-candidate:8b17357f8c0fdc9ecd477d2ac29c4e924cc0140eb6f557abeb6c36143843e93b", [
      "name-candidate:6547ac29a3ac9bcc8477fc6802d6ee1f8f995d85b68c93331012abe786418810",
      "name-candidate:8b17357f8c0fdc9ecd477d2ac29c4e924cc0140eb6f557abeb6c36143843e93b",
      "name-candidate:b43aa53cbfee296ecb3579c6c197893f1cd71631db20ae7dc95ab4b23728bff7",
      "name-candidate:b6a6f88a858a0e156eff0bd2c888b1cee7f34a0f4570376885f3d717d0f3a2c5"
  ]),
  ("name-candidate:59896d140e4ab56f5daccd3ee592b277aa647e7b8c3c921a1f427a6fbe4b8843", [
      "name-candidate:22a28b84dcfb20378c95d90fb808d7a506158876786cf5e501eccace6f8afe48",
      "name-candidate:59896d140e4ab56f5daccd3ee592b277aa647e7b8c3c921a1f427a6fbe4b8843",
      "name-candidate:bb2dd2d62edb6168c02329b7aff69f892528a3d8fff3739cc831bbfcc8453998"
  ]),
  ("name-candidate:2e851cbd035b2d2485499905eaecac2328b389db160ce5b686f10d090e7af57c", [
      "name-candidate:2e851cbd035b2d2485499905eaecac2328b389db160ce5b686f10d090e7af57c",
      "name-candidate:3b1d1bb1e2d45eb3361d9518cf101701736ab283eb25a03ad69e203a94ad5813",
      "name-candidate:e9d8605482a119a1c0160c637c47a008e9d0ad5c137e133b777a0146255836db",
      "name-candidate:ec9afcd87ea4ee38bbfa8ae29f7813da0ebb00dd241201d7d952f44b36d85326"
  ]),
  ("name-candidate:4af09ce61eca516ff1ff2171eb76f64b3a17c0cf1a3829810d5aeb69680ba1d8", [
      "name-candidate:4af09ce61eca516ff1ff2171eb76f64b3a17c0cf1a3829810d5aeb69680ba1d8",
      "name-candidate:53ef82467aa0995a57f65abedc8f54975d6ea5ef34a05049c6bcd45242d1d15c",
      "name-candidate:77eeae9c7ec53a967ef9f89290a75386eccc711ad965509f71284019f312b13c",
      "name-candidate:e6ff6377d0017da4859bed7c9b65afa9f5e7a2d2a984aceb7776999bf786ccd2"
  ]),
  ("name-candidate:5b547539f33ac46dc67a83ec94cbd75e51f33337829de4681a9dcd20f2bf4723", [
      "name-candidate:1f691c727c71c2cc5cdb04743a80d952b3019c0de2641d9848c5536ddb7bd5a3",
      "name-candidate:56070ef89a542a733f10f63c3c71a26f487b322a3592a705573f1020fccf588c",
      "name-candidate:5b547539f33ac46dc67a83ec94cbd75e51f33337829de4681a9dcd20f2bf4723",
      "name-candidate:972c8aeb878aa43d2043c0ae050994c906061f1b61a7a529e7f1e02cb0fb32e9"
  ]),
  ("name-candidate:567635692779ee8257ee542cefee107f541dc29afb59c8becd8147993cd100aa", [
      "name-candidate:1637fbd3a1040704452ba1bf1cecea65b69f1880df4649be32090c6620ee4e47",
      "name-candidate:1a88ac9aca7f40c26f00ddfba24ebb0e70a5bd0be037cfb424c8f2d4cfd3a88a",
      "name-candidate:567635692779ee8257ee542cefee107f541dc29afb59c8becd8147993cd100aa"
  ]),
  ("name-candidate:343922738e9c0eac138b84a6ad30d685c5ff898f85b05be5d1bd1560671ce81a", [
      "name-candidate:343922738e9c0eac138b84a6ad30d685c5ff898f85b05be5d1bd1560671ce81a",
      "name-candidate:40b6996c0d576eb9c47cee7b1dcacd3608ea608f20a3e22a161c5ff3ece9156d",
      "name-candidate:5a10410dc1df38c843e95af37ac1f246102216ffac362cc73b30dc8a8e5c6b25"
  ]),
  ("name-candidate:c9c6e58375019f479f2a4d6552ac527dbe6d320c70343eb7e23383b7d4916972", [
      "name-candidate:996b7ca7a252fe8a64e330e8231094b7eaf84dd503cdf5cdadf87be0c6845ab8",
      "name-candidate:c9c6e58375019f479f2a4d6552ac527dbe6d320c70343eb7e23383b7d4916972",
      "name-candidate:d273ef035be177cbbcaa7af6032822bf2c1dfdb0269a22893a2993d68935e1f7",
      "name-candidate:fe20a46ccf89f74da49d677c76cbdaed19435d07b95acba90663fe74338c3cde"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L47028).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
