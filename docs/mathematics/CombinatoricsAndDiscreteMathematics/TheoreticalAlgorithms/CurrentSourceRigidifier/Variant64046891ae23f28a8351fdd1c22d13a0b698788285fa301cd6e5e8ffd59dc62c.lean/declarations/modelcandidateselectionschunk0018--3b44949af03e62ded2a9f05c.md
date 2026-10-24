# modelCandidateSelectionsChunk0018

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a0be0687e8be4a4761109bf7310524e1bbc20b3a717701ad04d6f576b98bd2a",
  "kind": "def",
  "lexical_name": "modelCandidateSelectionsChunk0018",
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
  "slug": "modelcandidateselectionschunk0018--3b44949af03e62ded2a9f05c",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60804,
    "line": 60442,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b44949af03e62ded2a9f05c79eae8ab8a704c77bbe5554cf34a65071a239c86",
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

Occurrence: `declaration:0a0be0687e8be4a4761109bf7310524e1bbc20b3a717701ad04d6f576b98bd2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60442–60804.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def modelCandidateSelectionsChunk0018 : List (String × List String) :=
[
  ("name-candidate:9fcf61b611c99647abf8afc25dfaf350b49763780828e14f940c5f5769f2bd59", [
      "name-candidate:17034a827ec59bd449f930bc9cfba9940ebc366964f0fb720cea8aad9adb70e9",
      "name-candidate:8256175cf0ebec9fec1b3f2f5ed3f941e3ae47a08019a404427a94c9aa849257",
      "name-candidate:8c03638da15a45dd7c52ee7d4b2acaed6a33b5f94674559e852b973ca4d111be",
      "name-candidate:9fcf61b611c99647abf8afc25dfaf350b49763780828e14f940c5f5769f2bd59"
  ]),
  ("name-candidate:54c9d389fa20f713b388dd631304ce7ef06289290f88a5b3710bb7579e5e9169", [
      "name-candidate:2bcdce451e001b63f348a848e3eb0620c91dc4035171f511e8e7ee5e10f17145",
      "name-candidate:54c9d389fa20f713b388dd631304ce7ef06289290f88a5b3710bb7579e5e9169",
      "name-candidate:c64cf40a33f19690b30e6b7f409ad80ebfe4c7c4feeb42f777b8fa8466eaa91e",
      "name-candidate:ea51c45479111fab17d268d59de78891f3c3fc0f8d615b8333ac35746c91853f"
  ]),
  ("name-candidate:c87a597dfc8855c1545bfba600fd56ce219a57051eb173d4f7bbbd8ac9145669", [
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
  ("name-candidate:e540739a635b690e9ff0fc5579420720526013c4b9723bc667ac45b0e2940ea1", [
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
  ("name-candidate:75bcf2fdde95ea052b710384d8e127aba713e51c8ecdda008ac85f810830bb42", [
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
  ("name-candidate:7184833a67e9821ba1b569bef754506dd260cc5d320708abd2af1145b5f0fa00", [
      "name-candidate:04ae861e03a8eb35e0c67166dcedc93a4a1950a4709dedd2ba2b1c0af2b0ebb3",
      "name-candidate:7184833a67e9821ba1b569bef754506dd260cc5d320708abd2af1145b5f0fa00",
      "name-candidate:97217cae3e954ac82cf04a51d211669b9948b04326c94f72e9b796ccf7c2f775",
      "name-candidate:fb3f110367f1b7094bd1177dcc7778e664c73237bd9df82b2440353bb7c50588"
  ]),
  ("name-candidate:44f6d59b43e64f884a909c4688af6ef4d4a6db895167d51b1ff39c6ad16ae8de", [
      "name-candidate:090f0ff5e3eed9889ff1f24d1e8a86a77267dab5b02e8e48f065fc74bc64d768",
      "name-candidate:44f6d59b43e64f884a909c4688af6ef4d4a6db895167d51b1ff39c6ad16ae8de",
      "name-candidate:72508785cf024a2f81de3d9b931550125eb5624b6154ce0ae58a37a2f12b3af4",
      "name-candidate:b0d9e990b8ea370a6ce968ccf0a6ec2b5b39b080980fad3f46df64c34c74b8b6"
  ]),
  ("name-candidate:8602a7476437c8f04c3d644fa6f2859bb9c81f78cd85fa9cc68517cebdd8c47e", [
      "name-candidate:256dc3602d34dba681036478ae3a43463579622e045d4d34996228a46d9f7f20",
      "name-candidate:282d764c3abd1aeab448ac0912aced5e541aac27dd997401be5cb1fd62d1f579",
      "name-candidate:8602a7476437c8f04c3d644fa6f2859bb9c81f78cd85fa9cc68517cebdd8c47e",
      "name-candidate:92646550b803c6b9ae262245aa4adf5149f10e20ec06cd76768c93fca3892c35"
  ]),
  ("name-candidate:6ee36e32cb3e7f2c2e57f79f1953f861156643fb11183b05a793b471049dd857", [
      "name-candidate:2da6670d111979d6f088bac64edd62c029eeef3a41b2fcb0bd207afa1efd740e",
      "name-candidate:6ee36e32cb3e7f2c2e57f79f1953f861156643fb11183b05a793b471049dd857",
      "name-candidate:6fa38ca4d0623eff337ded69ff5a449c82b1dd77bd273f4371accc3aec7cc656",
      "name-candidate:7ff8870bf3cfd0596111f8c8aaf5fb87466a547d2ce79733476ccbb546f2cd83"
  ]),
  ("name-candidate:392351fa98a67dab3e06ea4e33416e6cd72ada922547e6a301bbafff727a9e3f", [
      "name-candidate:392351fa98a67dab3e06ea4e33416e6cd72ada922547e6a301bbafff727a9e3f",
      "name-candidate:d41342b3d562053318a3d1e5c5d45299b906bcc1fc4b397313b56beebb2a577b",
      "name-candidate:d94d3389ffbd66f453ee22dec55032fafbe531e273ef5af4ca301949b761a265",
      "name-candidate:e190ceabfefaad34b06e3f3b74a4b61443e8053ffff05c2cc3eaead08779884d"
  ]),
  ("name-candidate:ec5bfd0a81ed7d2a37e6dec6dd5329dc533fb387d85a324bc176459c21d25238", [
      "name-candidate:40cb6f3e78822f49b4a540d916ca3ba4bfdac64422b0ae4b255d9b0ee78cc430",
      "name-candidate:ec5bfd0a81ed7d2a37e6dec6dd5329dc533fb387d85a324bc176459c21d25238"
  ]),
  ("name-candidate:3a01b9e62a4db46567ea64f4f2979d03f9ea464ae59994e62ae90a195c56eb91", [
      "name-candidate:3a01b9e62a4db46567ea64f4f2979d03f9ea464ae59994e62ae90a195c56eb91",
      "name-candidate:3def802474ff2eb7d65f18c9601ae092be2b6cf91981079157cb33616b93e98b",
      "name-candidate:52f3c450ce3953dbcdd59531ffe8971a9f14b5d3270d9b081ea7362a1c151bb6",
      "name-candidate:90e24680b0d64c29e91b9da925bf18cee79db138541832b870b9db2ed87fa705"
  ]),
  ("name-candidate:2ab1e3a4cc91345bf0244f04b5a669e91d9c357fbdf49a841f0f34bd0e8cfc58", [
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
  ("name-candidate:bdfecdb59e1e83d20ecf6f40ea1b091512da7ad09a7a5db5d152bd3b519684c3", [
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
  ("name-candidate:aeba3e905ef1529fe957269ce4574fe38bf9efb6881d1b5ccb5d3784e3339dbd", [
      "name-candidate:02b003ae57fd67848ccfe25dcd01205f036cf7241e42dc29f5b6484790e53b0b",
      "name-candidate:33354b0a67c153b5441398583fd36eef626539cb61b6ed37ebb13b4b911c8cfa",
      "name-candidate:aeba3e905ef1529fe957269ce4574fe38bf9efb6881d1b5ccb5d3784e3339dbd",
      "name-candidate:dd0fb1bd1fa56b80d6835bce7220436df8f128771a310455bd8a341650e29762"
  ]),
  ("name-candidate:b7b9222005cfb71aaede0086aa070971e37f292afce47f7f6dda2fb8cb1c0d07", [
      "name-candidate:08bbe569debba9c7d4b46a868422d0d9fc98dafd2115318d60b29190e25a7f93",
      "name-candidate:128ccb44ca21ee4465440a01bb9859598126a675c8ad802d0ad1d652b65e4387",
      "name-candidate:37495c6b77a26c656264158e1ff5c2687cecc5e500cc9ec9894f96b91ac15e0f",
      "name-candidate:b7b9222005cfb71aaede0086aa070971e37f292afce47f7f6dda2fb8cb1c0d07"
  ]),
  ("name-candidate:2887826bee101064f6f3cb0f9eda6264c6c0a7df3d22423313cf91f7d52a06b3", [
      "name-candidate:0b1c5f573cc4149d8d321ec847e0b114a1ca1058f21152836208985c0515c0e7",
      "name-candidate:2887826bee101064f6f3cb0f9eda6264c6c0a7df3d22423313cf91f7d52a06b3",
      "name-candidate:ad33ebee7fe97be6681147d037c6277179f6d7dd88fc4b670420763168e2a401",
      "name-candidate:effe97d14f353bdd1a621985930705234338ec2076a1d26ec0d73b53c98a61b7"
  ]),
  ("name-candidate:d939e161605a929964ad6457c2dc56c98db9a5c8e3e94d6c427323edb62f023a", [
      "name-candidate:d939e161605a929964ad6457c2dc56c98db9a5c8e3e94d6c427323edb62f023a",
      "name-candidate:e32c33c0784d47f3f6ee310d051b0abfb9a2b2896a164fda7e375a3bcdfb03a3"
  ]),
  ("name-candidate:58a45b740eb60a25595b4c093213ddb367a3c32a48dacd2f1f8065c810a9a99f", [
      "name-candidate:58a45b740eb60a25595b4c093213ddb367a3c32a48dacd2f1f8065c810a9a99f",
      "name-candidate:659f462e10a359eb1489dd5d7a865b91643f2c7a5c711ab1b9132479c4b98624",
      "name-candidate:776ede109efb61bd71ba7a82282fb698eb6c47af2bc8f9bfc18ee4c1e0a7b2d8",
      "name-candidate:d55ef36bf4a23ee481449a42f341aa8b1c19595f18f16096833c93aba08c2368"
  ]),
  ("name-candidate:94ec16e38840e770f745b92fc046e38aa4036733e0b522a17be742c165250ddf", [
      "name-candidate:1fedc75d414eb9a2327bd68fbab10e1ec390b0fbc829e2e6b6592505a33c8415",
      "name-candidate:94ec16e38840e770f745b92fc046e38aa4036733e0b522a17be742c165250ddf"
  ]),
  ("name-candidate:04203fb346acf08543520ffc87458e9000a69fb10bfad01c9449f97e63615951", [
      "name-candidate:04203fb346acf08543520ffc87458e9000a69fb10bfad01c9449f97e63615951",
      "name-candidate:b1e61d599c42033635f9631e3c79a72db8447727ad94e6f0028fc13a21b70eff",
      "name-candidate:d25d6128d5dd647ee0991568746f73cbf6ca0e5047ce53d051ca1202293921cc"
  ]),
  ("name-candidate:5c12a75b86405277ce33d146eb98fa3e7435b56b5f29a70595165dd3200f1cd7", [
      "name-candidate:5c12a75b86405277ce33d146eb98fa3e7435b56b5f29a70595165dd3200f1cd7",
      "name-candidate:b226ab5fcd0e1f8f408e371a1ee0e82c5e3130d5058365c849b475bc76d55ef3",
      "name-candidate:de166f69ebd40314e1b686f094f656aca4f78d2486fee2cf8d0b3aac1df8941c",
      "name-candidate:f5c6414e4e80c59498e13f3285457cac27f751009289c5ec341123ed9312f352"
  ]),
  ("name-candidate:639cf248d69940fc1e977103bdd5be813cdc3e87da53847b34c7e1f34abf3bd2", [
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
  ("name-candidate:de10244d0362279cbb12799ad9b153c05b46a043a98799a40103804c38257a19", [
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
  ("name-candidate:bb2dd2d62edb6168c02329b7aff69f892528a3d8fff3739cc831bbfcc8453998", [
      "name-candidate:22a28b84dcfb20378c95d90fb808d7a506158876786cf5e501eccace6f8afe48",
      "name-candidate:59896d140e4ab56f5daccd3ee592b277aa647e7b8c3c921a1f427a6fbe4b8843",
      "name-candidate:bb2dd2d62edb6168c02329b7aff69f892528a3d8fff3739cc831bbfcc8453998"
  ]),
  ("name-candidate:ec9afcd87ea4ee38bbfa8ae29f7813da0ebb00dd241201d7d952f44b36d85326", [
      "name-candidate:2e851cbd035b2d2485499905eaecac2328b389db160ce5b686f10d090e7af57c",
      "name-candidate:3b1d1bb1e2d45eb3361d9518cf101701736ab283eb25a03ad69e203a94ad5813",
      "name-candidate:e9d8605482a119a1c0160c637c47a008e9d0ad5c137e133b777a0146255836db",
      "name-candidate:ec9afcd87ea4ee38bbfa8ae29f7813da0ebb00dd241201d7d952f44b36d85326"
  ]),
  ("name-candidate:53ef82467aa0995a57f65abedc8f54975d6ea5ef34a05049c6bcd45242d1d15c", [
      "name-candidate:4af09ce61eca516ff1ff2171eb76f64b3a17c0cf1a3829810d5aeb69680ba1d8",
      "name-candidate:53ef82467aa0995a57f65abedc8f54975d6ea5ef34a05049c6bcd45242d1d15c",
      "name-candidate:77eeae9c7ec53a967ef9f89290a75386eccc711ad965509f71284019f312b13c",
      "name-candidate:e6ff6377d0017da4859bed7c9b65afa9f5e7a2d2a984aceb7776999bf786ccd2"
  ]),
  ("name-candidate:972c8aeb878aa43d2043c0ae050994c906061f1b61a7a529e7f1e02cb0fb32e9", [
      "name-candidate:1f691c727c71c2cc5cdb04743a80d952b3019c0de2641d9848c5536ddb7bd5a3",
      "name-candidate:56070ef89a542a733f10f63c3c71a26f487b322a3592a705573f1020fccf588c",
      "name-candidate:5b547539f33ac46dc67a83ec94cbd75e51f33337829de4681a9dcd20f2bf4723",
      "name-candidate:972c8aeb878aa43d2043c0ae050994c906061f1b61a7a529e7f1e02cb0fb32e9"
  ]),
  ("name-candidate:1a88ac9aca7f40c26f00ddfba24ebb0e70a5bd0be037cfb424c8f2d4cfd3a88a", [
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
  ]),
  ("name-candidate:bdd78c830c116e608d87dc23bfd9c0b402ad44b58f0b7d3ff2e6a23eedea6d41", [
      "name-candidate:37b8c587ce3979f95d2d344095d29f6fa52680a93a77d020a6ba50ed3d6dd110",
      "name-candidate:740989629a3594f16b505ea50f6a4cb8986ee3cb7a4eb0dce5ca62f27f3eac57",
      "name-candidate:bdd78c830c116e608d87dc23bfd9c0b402ad44b58f0b7d3ff2e6a23eedea6d41"
  ]),
  ("name-candidate:75c1cc6b8e3d381ba29c290b740a6c4680b3c8431dd2ee2fac0e7bc3ec6be0e8", [
      "name-candidate:75c1cc6b8e3d381ba29c290b740a6c4680b3c8431dd2ee2fac0e7bc3ec6be0e8",
      "name-candidate:93fd7c3f5807c2d46779e9a35142e566f58fd19c9df9385ead2f7ad6534c8221",
      "name-candidate:b33b3c03be4f96bf434333cb7c24a7a1be68fe1be58e99db6c009192765f5092"
  ]),
  ("name-candidate:ed09a85a03ed5a830951c836b24c1a6120d28077115bbe8c3ecc4d1e7f40f3df", [
      "name-candidate:5b287dfa4f686a6edb042a2de3b52ea15189307616df0aaba6f7d7d9405246b9",
      "name-candidate:746d395a1081c1523d592805ab976a1ec27ef7d5b1a7cdfabad8ddf9c797a109",
      "name-candidate:ca49446aac793489f3f8d8c075ecdb1b1d75fcfbb107785c1596cf3a2b509f8c",
      "name-candidate:ed09a85a03ed5a830951c836b24c1a6120d28077115bbe8c3ecc4d1e7f40f3df"
  ]),
  ("name-candidate:8d9d74b33b8c5605007286679e6706f793a6f8efdf71ff77db7b700c26682aad", [
      "name-candidate:4fff5f61d1bc44024e256f8a622aa023640d01eb369f6a3a9c9bc61436c44866",
      "name-candidate:8604039473ffdc87ede267c26e092003ea234f0f96f140ace49476be9e471c13",
      "name-candidate:8d9d74b33b8c5605007286679e6706f793a6f8efdf71ff77db7b700c26682aad"
  ]),
  ("name-candidate:cd012a5e90da295ff41586937bb22ef09c71396a2a95dbd4c5c19bd124f0dd50", [
      "name-candidate:3c68fcd497ab26b96ef0627fa783a1809c74fab9a3c0c9c0cf5280acd21a8d83",
      "name-candidate:59aec4a953f4cc0991a2db4ddceafebdb7a5c28d430cd33fa9823cb789054003",
      "name-candidate:7ea35f3b1bc041ac3f3d0674e39faf46fc971b3c9e7f3f418f38a5f67e3f03e7",
      "name-candidate:cd012a5e90da295ff41586937bb22ef09c71396a2a95dbd4c5c19bd124f0dd50"
  ]),
  ("name-candidate:96a42fc779f99f290b462239c022b7efe139eb8c292e32a8ae3cbf3538fe4319", [
      "name-candidate:141976b2ff26b656f6edf5d8b1edf2f01c3aad990129ca481efc7ba6632961a2",
      "name-candidate:7d1d55f147bbc9c284a4922193e6f934751395476945565943ab65dc0ec3d776",
      "name-candidate:96a42fc779f99f290b462239c022b7efe139eb8c292e32a8ae3cbf3538fe4319",
      "name-candidate:c089b140b39c5bc89eb815c936ebb174b1ed673089b7209a7cbee199d2212493"
  ]),
  ("name-candidate:9b4828197a306ab0073804a139c21a6f4d18a1a475b518440c1aec3b78cf970a", [
      "name-candidate:940d5441efbb52641346688068d57b11324d90b8a3991a6bdf6213ab3830b4c3",
      "name-candidate:9b4828197a306ab0073804a139c21a6f4d18a1a475b518440c1aec3b78cf970a",
      "name-candidate:a89151ae43bd6f0d0279ae5560a1350f6fada6fa2036f4d7619138e81ad05c95",
      "name-candidate:fdd1cf8be410253ca6aab1c2bfc943fdd17bc5ce150b4eac64b3019492cbe2f6"
  ]),
  ("name-candidate:5f37b4ef36308af86f484173991b2dae7c6a0973dfd211bbe4376ffb91a2a7e8", [
      "name-candidate:5f37b4ef36308af86f484173991b2dae7c6a0973dfd211bbe4376ffb91a2a7e8",
      "name-candidate:a6863f8ecd2ef673971fb3383f4181697eca19c6a7c2c7463771fc92c5154495",
      "name-candidate:a88bce146177337c6c1f075840135b8df34f60dcf6534e19b73bddb89dd0f4ea",
      "name-candidate:ca2f645b69bf126e053bfdbfc6109562e60af47bfc6309e5664a9628ee4fe4f5"
  ]),
  ("name-candidate:79038785ac3c84c5868041d978ef98fc8355fa8ddb1e4e40da618d9bfe80cfa4", [
      "name-candidate:79038785ac3c84c5868041d978ef98fc8355fa8ddb1e4e40da618d9bfe80cfa4",
      "name-candidate:d2f13c608b3097eb8c6a4f308086a878ad12dd8cd6895361584949fb90f06ec7"
  ]),
  ("name-candidate:fd9c399d7c690daf20d4611386f043f8383592435b2453e838cb3928eacad49f", [
      "name-candidate:afcfb2a1f12860797dbfb7199852b178b78f3cc842b5ea3fcd20cf22d37bfd4b",
      "name-candidate:fd9c399d7c690daf20d4611386f043f8383592435b2453e838cb3928eacad49f"
  ]),
  ("name-candidate:a029c76e6351ef0c2ac6c128f636fdc60f81df2ffd4dbaf698b9021e711abc9e", [
      "name-candidate:3eeb4ef2fb0d4d1e73a81e496f2165332fa71698aa2c815c45b62fdbb3a87b02",
      "name-candidate:928ef70b7c54dd7e0395a1eb74890b26101db96c0af5bda0312b9bcb2638f0d2",
      "name-candidate:a029c76e6351ef0c2ac6c128f636fdc60f81df2ffd4dbaf698b9021e711abc9e",
      "name-candidate:cfcb92774e524c8f723b3ea0f54f1bdd35777ed06cd7432c39e13c55cf2afef9"
  ]),
  ("name-candidate:37fdc2399aaa5468c31eb47d4c5760b30faf5040622d9b649a41a547189a72e2", [
      "name-candidate:05ef7e6b633ffdc73297f2a565cef31b3e5d5865abb3d81a3221ae1077061b48",
      "name-candidate:37fdc2399aaa5468c31eb47d4c5760b30faf5040622d9b649a41a547189a72e2",
      "name-candidate:81db386b4fdeb9d46c519e057cd028c5462b30769d97a425707b6bc9fdd6331c",
      "name-candidate:ee92022475137f146fc50c2ca7633988725bc020e35ad880b3029a933e061b01"
  ]),
  ("name-candidate:1bd684007e2fc5f2aa035f23ef404471461a40295e5973fd610bb347ddeea354", [
      "name-candidate:1bd684007e2fc5f2aa035f23ef404471461a40295e5973fd610bb347ddeea354",
      "name-candidate:1c62af4b6e9901d7b258d830acc59e0749a9aa647d981a72201283acefb30e08",
      "name-candidate:4ba70af6c014dceaed393feb807c3c5df8f59113d40bb9801ca02ab7d6e78bfd",
      "name-candidate:56990f241912d125b0f967fdfc07b6f304c133d529ed46036d1ede590a631923"
  ]),
  ("name-candidate:30141ec08fdcba7b7b8d5cf2abf5fb6ba23e0f61adf17527d74f63bbaaf5265b", [
      "name-candidate:27bcfecabb28206e7b63f3a3cfd3377c8841e021649902ad7197d49b6e8e07d3",
      "name-candidate:30141ec08fdcba7b7b8d5cf2abf5fb6ba23e0f61adf17527d74f63bbaaf5265b",
      "name-candidate:bf2caaf9f54ab48cbfcd4383cd516c1a35df660e0b8dd6375ab2706c223df4bd",
      "name-candidate:c3a26fef9ec2a17f96fbb9367d3aae90571335767baa481b72da38f4f5c08aa7"
  ]),
  ("name-candidate:71927100f32d2279159bf764cc0796ded57ee1caa4bca409073450f3a6db149e", [
      "name-candidate:507b2205a298e52d835e9b2dbcd0c6345ed7416760e7799e5d615dc4d8565e9e",
      "name-candidate:71927100f32d2279159bf764cc0796ded57ee1caa4bca409073450f3a6db149e",
      "name-candidate:ea4914e5584ae4760e26e5a0f77f8f41871f07cf1467ae401e861adad1719831",
      "name-candidate:f2b0f15f62c21bd000a6c95c6fabbbb1a31785e83febbea7aa4df7fd91291be8"
  ]),
  ("name-candidate:3bf10902cfa8ecbbc2cadbf6b894ec6cbd9d3df76d2fcc476e1c4d3f8ba13107", [
      "name-candidate:1c77f7f7ddee664d12f023c46fcb81932bb33c927c7706d78ea87d2d129b6f16",
      "name-candidate:3bf10902cfa8ecbbc2cadbf6b894ec6cbd9d3df76d2fcc476e1c4d3f8ba13107",
      "name-candidate:543ffda60fa1599f14910bb2af467d7530af07d21328a3d180c593ac2264c52d",
      "name-candidate:64ce0ecff207f047f3d18794787f78dca85e12baa705454cfb1786df0602c1bc"
  ]),
  ("name-candidate:7979b60e5279d43ebee7a91bb0d190dca1c6c8fc65718ed0fed8eaad002523bf", [
      "name-candidate:454f61a70b542f80267889fc15b319aabfe9b98e4923f9c8bc4cf7d1ea027990",
      "name-candidate:7979b60e5279d43ebee7a91bb0d190dca1c6c8fc65718ed0fed8eaad002523bf",
      "name-candidate:80ac1832e14ec089c26dcdd5fbebdbfc3b3216d3fbf7515683239024c4891844",
      "name-candidate:83d3974f2f9fecd34b4ce78e9fb3736c5eb22b5a627e6e5bae7f31accc74cfab"
  ]),
  ("name-candidate:f7e17e497774862c19eac84fa3c4fc5b34c45e46b7dbdb2235cd86c80880a9aa", [
      "name-candidate:7e5d01db5d64922308044c63c903e0a866b57ff0ef52b302c81dd357e63721ee",
      "name-candidate:a4405a03db1f4144c8da466b6bb7ee84907471e311e05cde60ca9193ee384bb1",
      "name-candidate:a65af73a9ae14a8583707d08a3406a656905d211d1875f3d89674c70ba826dd2",
      "name-candidate:f7e17e497774862c19eac84fa3c4fc5b34c45e46b7dbdb2235cd86c80880a9aa"
  ]),
  ("name-candidate:58d6df536d00cd2655c5fd71b6977868172aad1095cddee320ebf85a227b7057", [
      "name-candidate:3094240b12961184f9c460186350193eca4632c0ee18166b453edd3069b0bbc0",
      "name-candidate:340da6e7fd33ffe9283909a4c447786657d143a8ac8fe69bbbb1c32729f7409f",
      "name-candidate:58d6df536d00cd2655c5fd71b6977868172aad1095cddee320ebf85a227b7057"
  ]),
  ("name-candidate:525d701b2783cce274ecb82f52478a9dd5070a012a94e4e76e636356dc99c3bc", [
      "name-candidate:06be6174abbe83ac71a299b9cad9f8b293b30b1768365d5fb2d86373996ea485",
      "name-candidate:0cc274a8c93c095c5a77699b5840a972d2f0fd80735b783351e9560c239874ec",
      "name-candidate:2ccf9a8bfc5a81252a78834126e2e3336c1ae5076ba4fde46af5f70021536c58",
      "name-candidate:525d701b2783cce274ecb82f52478a9dd5070a012a94e4e76e636356dc99c3bc"
  ]),
  ("name-candidate:dcb308093ce48022c39a717dbc9550b0803977f28c5f4f321a4199b8d0f2b7be", [
      "name-candidate:23e0706ff2a4aaaebb0cae39b7809e2886caf59756cfb139773c563511972852",
      "name-candidate:6dee5351cd18cf18403089a67142027cf9df49f1359b0e0fe6bf9bc05cd10090",
      "name-candidate:dcb308093ce48022c39a717dbc9550b0803977f28c5f4f321a4199b8d0f2b7be"
  ]),
  ("name-candidate:998269e38acbc1fc725cbad757422a4234e33fd255a5e9bb7d8378a3d8cfa85a", [
      "name-candidate:40dd935abf32648b4b7ea72506b3f9d29c0f13b00f5e07ff647beea5708d0a3c",
      "name-candidate:998269e38acbc1fc725cbad757422a4234e33fd255a5e9bb7d8378a3d8cfa85a",
      "name-candidate:a65c7000fd77b4ccc7e4c218970d8acf4ded1e00a2e4904cd50e1bdb2714bee5",
      "name-candidate:e20766541fa36dc9a12ba4994b78b65a9060c86d63e083cb780c24d6d9b2bf28"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L60442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
