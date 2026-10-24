# candidateSelectionsChunk0023

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af8d10e809c302b8d6722c09e04418becc5c9bdf0297c53fce6da2abdf791672",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0023",
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
  "slug": "candidateselectionschunk0023--67fde39b37833f3bccccd9ce",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49615,
    "line": 49244,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67fde39b37833f3bccccd9cef08c5449d4a39a1da431178fb9716ef2eb6655e3",
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

Occurrence: `declaration:af8d10e809c302b8d6722c09e04418becc5c9bdf0297c53fce6da2abdf791672`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49244–49615.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0023 : List (String × List String) :=
[
  ("name-candidate:e200913f2ea33d13e106c13b3ed8ed214054c61fd3327352a07fcad3ef9e40f0", [
      "name-candidate:e200913f2ea33d13e106c13b3ed8ed214054c61fd3327352a07fcad3ef9e40f0",
      "name-candidate:ed03f53594c4290b5b80674560ed2cb7c023c93434066fa989ad6ab2ac2f37ea",
      "name-candidate:f5b8258823871b81cd5fd3e5fe2e1675bc6ca547d34765c5379a1a34d46a0671"
  ]),
  ("name-candidate:ed3a8ea3ba160fd4c4a5fd969c692c17d581a184553f46a449bec6787638c5db", [
      "name-candidate:3bb0aa1692939edfd9265eb498c3a95581959aa1281af44aff277e82251e5ff5",
      "name-candidate:a88a900be161d7b7cfef3672bbc6aff06964a0efa26676abb6b5dd8b0b14b17f",
      "name-candidate:cd8c20c54340206f7359204ec928e78b8c5d791599efd16b37beb5858a420fef",
      "name-candidate:ed3a8ea3ba160fd4c4a5fd969c692c17d581a184553f46a449bec6787638c5db"
  ]),
  ("name-candidate:2577af4e7ddf7d23c10186ee2d9c824d63388b35099ccc61cfb284a748f92ea8", [
      "name-candidate:2577af4e7ddf7d23c10186ee2d9c824d63388b35099ccc61cfb284a748f92ea8",
      "name-candidate:816fd954fa4807b2855c8d133ab25764a15035844778394eefe96d1663f0c745"
  ]),
  ("name-candidate:21c9d65030045a6ea8549def4c691ad85a1c5c00e7896aaf171d86e9ec8b2d19", [
      "name-candidate:1f93de387ec3f4bf8b8f1c7b7662db8a069b85871c3c4a73303049ccce702857",
      "name-candidate:21c9d65030045a6ea8549def4c691ad85a1c5c00e7896aaf171d86e9ec8b2d19",
      "name-candidate:2a13558f8d1141dc0d94bfd7756b4006f6a36fe615b4501e26db5ba5c32960db",
      "name-candidate:2d4cdb8590dcc643a20cb5da34c799d17666459763a3aa6a7fc0d44b4ce2897d"
  ]),
  ("name-candidate:2949227b688ef2adc850315f718e8e92b9eda12c9c5c515c775caea3b943427d", [
      "name-candidate:2949227b688ef2adc850315f718e8e92b9eda12c9c5c515c775caea3b943427d",
      "name-candidate:8195299de357792950bd52762973734adfe7a3706d5d1199c9145a26a4201c64",
      "name-candidate:c161352e2b82799645a959d1515520607f70c8ad75b0c43982be41493c79e8f0",
      "name-candidate:fa0e7bf1c24cb04bf1355aa89232136c6c9f591f167e08da8c32820fcea6b57c"
  ]),
  ("name-candidate:9b56410974f77110468b037c58072ceb5772ab6401ecc6a5d6277a7a4001db47", [
      "name-candidate:12be7fd14e5f392874cdd4fa93c5ab2a59fd837c1569c9ab1d74a3c6b5112e4a",
      "name-candidate:4fa826f54f54aed21e1b9ea73939c51f1497e8b798bbb5c8a75ad9d166d05a61",
      "name-candidate:9b56410974f77110468b037c58072ceb5772ab6401ecc6a5d6277a7a4001db47",
      "name-candidate:f7b18959631241d1269ea844c181e1196956e4a2b1ddc398d429842729c0ffaf"
  ]),
  ("name-candidate:a5e52dcf4a8f78887c9f00636d4277e1d76b6a91df243b7c198d6aab53e75621", [
      "name-candidate:87015fbd935b0b518cc8c9667483c6711a7d2cb7dbfb820b629a29dd793e00d6",
      "name-candidate:a5e52dcf4a8f78887c9f00636d4277e1d76b6a91df243b7c198d6aab53e75621",
      "name-candidate:ba731ce7b81240de9e77fc50829ad0296962b289139cc0fd5e3b7c3b0476af2a",
      "name-candidate:dcc8dfe5823e4b15c08bec69972fe82b7de0ac64530c0bdfdf5648704fc5c129"
  ]),
  ("name-candidate:47e8c7444e3920e5dffacebc566bda7be5be40ac84adeb695548496f5eaa20e6", [
      "name-candidate:33c5f7fb198655e9c941ab71c234872bc9486808155d9af81b8bccbcf42d73c7",
      "name-candidate:3afe6cd538f4714830e144dbc96d0991efa0b0e614ab14f0bc27a6f5b4bc2c35",
      "name-candidate:47e8c7444e3920e5dffacebc566bda7be5be40ac84adeb695548496f5eaa20e6",
      "name-candidate:fe80e8ae0ac2500c3419fdd94ad254b935d9e3894f0a03adc54921750b6c6d25"
  ]),
  ("name-candidate:f3a136435794d44cc034a90dde2516490cd5d29a67e6fcdf3d758114ae0a435c", [
      "name-candidate:4fcffadaf6586f184a6b404e1607b3ff1665106d3724cf89bea211f8e862ba04",
      "name-candidate:596a40a963d414bc84d6a659387cd6c1ea568e50c90b19e98e2b8011fb286bf2",
      "name-candidate:6b2b816d0aa45030e693133acd617a613a6da969be07413f647d43a46739bde1",
      "name-candidate:f3a136435794d44cc034a90dde2516490cd5d29a67e6fcdf3d758114ae0a435c"
  ]),
  ("name-candidate:a187cd0d460609e13e0cd57f4b52fc08909c85b8c6160e9f43d77e973455b806", [
      "name-candidate:00dbaabd3cf22f491678ac94f221461e2577611fbab91afdc26327bdbd5c5ac1",
      "name-candidate:4d0d83cdc46a00d78036b181734de7e2fadadf621459079b1053064c09901786",
      "name-candidate:8f334775b5419848da5ceddd37bdd9e2548dd8aeebbeb18af537f0fa7ca4848d",
      "name-candidate:a187cd0d460609e13e0cd57f4b52fc08909c85b8c6160e9f43d77e973455b806"
  ]),
  ("name-candidate:f414634a7a46ae2712772f2acfe66b25592a38c3589d7929aa2b8b02ae6f93e1", [
      "name-candidate:7d7a10e9fda47d1f498c952d91cf1ced723f510f7fcbfef84ff0f482c657da13",
      "name-candidate:b1238ea0cc1e16dd2eea8cd40420375e830ca15ef2eee73f16984c703a198226",
      "name-candidate:c8e3bd5063129e5044328c0e583ab3000179de8ecd1c33d8d2e3687eb516f189",
      "name-candidate:f414634a7a46ae2712772f2acfe66b25592a38c3589d7929aa2b8b02ae6f93e1"
  ]),
  ("name-candidate:313ded6bb13bb135a0fbac2d39383699a7c7d6425e8cb7442524befa4026304a", [
      "name-candidate:313ded6bb13bb135a0fbac2d39383699a7c7d6425e8cb7442524befa4026304a",
      "name-candidate:473b7b98639c61ffb7d8d04f2e74335a5f7f629448afec2bb5c3ef46274d6d67",
      "name-candidate:7977f9340015374ecf940587bcb5bccd69878ad4abfcfb890b72fb510f6a00e1",
      "name-candidate:e84f63711ed1108a40677098726a96084318697a45c5804d856c40617733f74f"
  ]),
  ("name-candidate:d0cab0ee22516c2cb149b007d5bc9afa2fb1546d5c0b186c52f4b47c16c7c5bc", [
      "name-candidate:3381d34208c7835bafcf24600501cb26aae5396d277c0a399b03cb41c69cdaa8",
      "name-candidate:8dd26b02e84187cde1ad35f65fa06eb647be77e81935360f06eea0ea5255d16a",
      "name-candidate:d0cab0ee22516c2cb149b007d5bc9afa2fb1546d5c0b186c52f4b47c16c7c5bc"
  ]),
  ("name-candidate:0d52746ef2f12290032818845890aafc4d62b905424ddac38931eb8b9e80ccdb", [
      "name-candidate:0d52746ef2f12290032818845890aafc4d62b905424ddac38931eb8b9e80ccdb",
      "name-candidate:8e50b1df1a675652521cce21b47171e2541a6dff7a632869668d62e4df1cc2ee",
      "name-candidate:c65d79cf736651faefad956875ee455a606d8c6cca32d07b6196570af9e17eb0",
      "name-candidate:e75b99c7b9dae16904af84d8fd7c455973eb6955f677ead066df167e0f5156f7"
  ]),
  ("name-candidate:66931e5d282060b5eb01a2166ba3672be05e62bac68ff5dde8f515fa253a1fcd", [
      "name-candidate:34e2c202613a5aaab27a57234896726f4dff690e8a06a961f5282fe06e663c1f",
      "name-candidate:66931e5d282060b5eb01a2166ba3672be05e62bac68ff5dde8f515fa253a1fcd",
      "name-candidate:986f78c49463084cb18d8ee8ffec6c50c316a1f229ba9ed09ce937d67c1baee4",
      "name-candidate:b96a5f9c307bf88af79f6c542d59ada2dfb449b3bb7b41005da9e5c2844ec9d6"
  ]),
  ("name-candidate:8fb05c1c1b9cf88120947153ef85c3861d8758f6b600ac63b59e9715065b9522", [
      "name-candidate:45066a8826584115161684fa1790200ca91c1139f94d6fd28c5e9581fedf577f",
      "name-candidate:8fb05c1c1b9cf88120947153ef85c3861d8758f6b600ac63b59e9715065b9522",
      "name-candidate:a64a8ad5c8474d042b3ff84eb5f86f8cd7a08ec1148d94008359262f795d0c61",
      "name-candidate:af7a4f3bd14883f49a96114b78c19b3b405a6437019b533af52208341be08db0"
  ]),
  ("name-candidate:aa988756307189013ff71050a16ebffe85fedcc4b84a2c4f625c2237eeccc7dc", [
      "name-candidate:03f0b896d5e0eb9bd2727139e23e2b8c8de1120b39fad793643179f0f67523cd",
      "name-candidate:578861d7737e459c0bd96adb806d56383577e939967801ce196bf69cac509157",
      "name-candidate:742e9a72b9c74136bcaf6d0ec8ca8308e39cc570cfde2a5a1bd2cac53135fdfb",
      "name-candidate:aa988756307189013ff71050a16ebffe85fedcc4b84a2c4f625c2237eeccc7dc"
  ]),
  ("name-candidate:baf9fabe5af8da9978f0307b7eb0bc53147e3303880172eddd3f130e3ddb5af6", [
      "name-candidate:08c95f6249da770797b1504bc9c7c9abfa8c6fefb64d72da8efbe86697a66486",
      "name-candidate:11067d3273d526517cbbaeb684aea52d756e6191aa072e7e6baef2b75076930e",
      "name-candidate:86e2dd0758c515bbaa89f27456d19ed17de1013538f979585fc7efa352c401a8",
      "name-candidate:baf9fabe5af8da9978f0307b7eb0bc53147e3303880172eddd3f130e3ddb5af6"
  ]),
  ("name-candidate:d487717695005b3759bd1f9ef0307bc54e706e3e53108f59ee0100c55dff91f8", [
      "name-candidate:281e39eaa02c83a1e982a669ab7577051d6dd4b8666a6818d27801b81d04f709",
      "name-candidate:5e822389b1d638d65e9fd49963979e013e1f62cafa5568fe53a6f21822bea728",
      "name-candidate:bf8f3b3d7bf71d4565c55d9c78b5bab20955ddd272ee046a0771ebe030eb3d61",
      "name-candidate:d487717695005b3759bd1f9ef0307bc54e706e3e53108f59ee0100c55dff91f8"
  ]),
  ("name-candidate:f7b9de3425e7de13d9ed413d5f01f7f9db5005259f5a0b4c44ba119820cc0283", [
      "name-candidate:9679ed6a698c1fb1043140aa48c7f0cae7207cfd7e08c0296be05ef878a97faa",
      "name-candidate:f7b9de3425e7de13d9ed413d5f01f7f9db5005259f5a0b4c44ba119820cc0283"
  ]),
  ("name-candidate:5fb0cbdee35dc03f13eeb74d672e67e050c56308252179f49c70344b593f8c84", [
      "name-candidate:56a5c214bf9c4c5385dc691cd81fe443862e1253685b02b14f8cc6d63163e1c5",
      "name-candidate:5fb0cbdee35dc03f13eeb74d672e67e050c56308252179f49c70344b593f8c84",
      "name-candidate:dfba79aff49d2a4587db8a6d97f9ecaecf6a0a66812cdd9cd2c01e0990164175"
  ]),
  ("name-candidate:6dd81dfbe69142a29f0d63040d720954decd1b84f0a4844a0d1c6786aced437d", [
      "name-candidate:3e44e94d799d82c9f8aeec58d606c87d35a4e4a109a29c03404774b7c8381581",
      "name-candidate:6dd81dfbe69142a29f0d63040d720954decd1b84f0a4844a0d1c6786aced437d",
      "name-candidate:ce70a44173fef55d67de733a15714a8d3adb00c7c96fcb4b2f1c4ce14422a182",
      "name-candidate:d5f38f59109aceed53309d03ee7239fa336b70e00d86c5d121338a9fe0b2c1f4"
  ]),
  ("name-candidate:9fce55e991f29bfa65a2d78595cf0678a3b29ca29316da30064704aaf9d98ffd", [
      "name-candidate:5fc6d998b15fa7aa6c62fd2b14f2f892c67e217e63625889d444e193db19c6f2",
      "name-candidate:7c34733edd9cccd7b4a5efebd99767df18a4c66f9b99915dec7692bc519f60c3",
      "name-candidate:9fce55e991f29bfa65a2d78595cf0678a3b29ca29316da30064704aaf9d98ffd",
      "name-candidate:c95508691f6a02f24e9c7175d5920800305f296c50ada98cdd7c86e02fa6a786"
  ]),
  ("name-candidate:bd000e49ae1b5d5c58393caf5802e5b72f6466322e05ed8bbc29b12c4f2a0e2a", [
      "name-candidate:31365d29f9159c779b8aad919d2d94602c0b920d4bad90ca94456434a27a4cac",
      "name-candidate:72c729977048a48a729ae22d82a3a6c33e434ffadb2751936ae8492e911f37d6",
      "name-candidate:b8b5468a98aa3e1eca9aab469bb8a9ff4c7070294f5c1fa38a88e815119796e3",
      "name-candidate:bd000e49ae1b5d5c58393caf5802e5b72f6466322e05ed8bbc29b12c4f2a0e2a"
  ]),
  ("name-candidate:e24cf72f495af8d65db4fb4b9c535e86e0c2533b3169bfdc951e6e970337291a", [
      "name-candidate:2f847b2112c200acb2c370006db37d6e33118af3f51819e467b36aefde510552",
      "name-candidate:655cfba3f0bda62bf667c6cee27cc22153220fd25112d6be172e1e5ec8e85f51",
      "name-candidate:e24cf72f495af8d65db4fb4b9c535e86e0c2533b3169bfdc951e6e970337291a",
      "name-candidate:e91821ee1f86f2f9f24e9f6ba6c0fa7df1338e2202a8a6b214a3376d4e183287"
  ]),
  ("name-candidate:da5fd1266846659ac8fd6d5320e2b7dee5b870b0ffde1e60e0a7a0ac9fea59b8", [
      "name-candidate:2f32ab6630069e2f2ec263f88d1bea469348bb8053914c146d50449797f85d3d",
      "name-candidate:b123345d230b76c6b31d839e836b2456d0a78e0f5aef558c6032a2ed47100d92",
      "name-candidate:b53cf549a16bc66231d3f65cc62febf0919c8d55805ebb19d88d10648c8e4c91",
      "name-candidate:da5fd1266846659ac8fd6d5320e2b7dee5b870b0ffde1e60e0a7a0ac9fea59b8"
  ]),
  ("name-candidate:a422ff09fbeaf9e88fef2388089885d62380d18591186c51d490fab2d9f1dd4b", [
      "name-candidate:6ab3b40f9be05166a22c5dec3ef8054f8ab57d064b9cdaa6c7d4e3962e3ade62",
      "name-candidate:a422ff09fbeaf9e88fef2388089885d62380d18591186c51d490fab2d9f1dd4b",
      "name-candidate:c0e0d01c3c618fce85156578bcdc4699da2da5be1285a9492dbbd52669610edb",
      "name-candidate:efaee0bc17b1a3f88ec2f09d3a78d35f0bbd7a4c9133d6419559f720a8db7589"
  ]),
  ("name-candidate:6317b066c052f7fa6a68886320f491117c03d169aac44e39f3b269b554e967cb", [
      "name-candidate:6317b066c052f7fa6a68886320f491117c03d169aac44e39f3b269b554e967cb",
      "name-candidate:71d04058aa594fe40e6389e39b4a160a4fac603d67f5b3eb70c0990898e3c58f",
      "name-candidate:abb547e53b7d09b198fc614a354b424f25410f115d8f8f4fc25b7962c0610b7c",
      "name-candidate:d17ab64d18b2e3ed8d2e4daf6aebd647ea2f73420fbe7b2000405e2e5769df88"
  ]),
  ("name-candidate:e0b4aea2ae9c419d41918fc3ae062966b3461eaf19cdd1ca8b4cc3bf5da1bfc9", [
      "name-candidate:508126e25228999df5aa80bbfe13ddbde6ea04b5be543ff43b447c382cbc2aca",
      "name-candidate:a6eba201893f7522bb2c2dfdf1e894e60678c97845f7305f364fab89d0dbbd6a",
      "name-candidate:b80aa21ccc28e49973b9b79fba9962221483ee0606b8c4573008410fd26b6aa0",
      "name-candidate:e0b4aea2ae9c419d41918fc3ae062966b3461eaf19cdd1ca8b4cc3bf5da1bfc9"
  ]),
  ("name-candidate:be48b90ee6e05f35ff3cbf3f563395e65b26186e9138ec0b5fb4b405076d9e9b", [
      "name-candidate:09df4c15f0390e9f5de231689fb903ebfc1dcac892245c695751831b73851d18",
      "name-candidate:787c89aa570c816fd091a3b3a8133b81b1ccb773cd2e568baca156731536bac6",
      "name-candidate:be48b90ee6e05f35ff3cbf3f563395e65b26186e9138ec0b5fb4b405076d9e9b",
      "name-candidate:c9da50bdfae90c165da63d1512e39c4706cbf3541ab4a0274e2587d88bae9614"
  ]),
  ("name-candidate:fb5d085ebc8e7246cf624392d08c0b9f6bd49a88ddca9e3efd7dbd83ff294e32", [
      "name-candidate:31eb78b3dbbe798e96a63bb7864c257d00422ecd3477a27ef8db43f0f2f4078a",
      "name-candidate:593afcc9ffcafad083723bf83537a3e990ba89b6b4c308df4acbf5390d774223",
      "name-candidate:7736190d5d34f70b89247e29ddd61720aa8f70f25275b0f4375bf1669320bc48",
      "name-candidate:fb5d085ebc8e7246cf624392d08c0b9f6bd49a88ddca9e3efd7dbd83ff294e32"
  ]),
  ("name-candidate:fe4b88f333425007491a7b0d3006a714089888397266ec6120774536a554f2b5", [
      "name-candidate:ecdd6a25e5b5912af653bc2af109cb29eb6b23f9e1b63da5b7d38f11b756c07f",
      "name-candidate:f91b6ce2946551ab0515c13ae76be1123a9c47afcc63a62a3e3ca774484ab302",
      "name-candidate:fe4b88f333425007491a7b0d3006a714089888397266ec6120774536a554f2b5",
      "name-candidate:ff1a9b95835839557622ba032752ff6a07a31b90a7f94cb7127415bad7defa3c"
  ]),
  ("name-candidate:7fd7675026fc5c92935b6ee649eb273ebada10453980bf7a3e441a608a731a54", [
      "name-candidate:00e099e61231e4536d5cf485055f5b17aeedfc14b9f4b70e8664f28594770876",
      "name-candidate:7fd7675026fc5c92935b6ee649eb273ebada10453980bf7a3e441a608a731a54",
      "name-candidate:aca857d3bd25aa9a9dbbd7a0aaefb56615b8e4c9f165ffd79196af2db6a2d4c5",
      "name-candidate:b923324a0ab594713cc51ff500e0e18523345de3d66e32b037c0804c43347fb2"
  ]),
  ("name-candidate:ad5633dbc37163f8f50ef48b67b187f659bca516c18573cafdd1674ffb7c9c39", [
      "name-candidate:12430c237830886493862bf1a4acffe7181e5d0481e5ed088af8b9f5123b5fa0",
      "name-candidate:23fa926d78b9d94c764f328ebd10ea4aa8bb5e8d0f3c6724995686b83f2b2608",
      "name-candidate:ad5633dbc37163f8f50ef48b67b187f659bca516c18573cafdd1674ffb7c9c39",
      "name-candidate:f321795f316656091926916c8ac2ab338f276d4fa99165837283b0d7afe71c0a"
  ]),
  ("name-candidate:745cffa7aa63056d6b24c4c3d0eac8022140f46cbeab661dbd43d22759e260fe", [
      "name-candidate:419ab26d13af5b43963e82074868661bb37cb35309216495482378584ec8cab8",
      "name-candidate:745cffa7aa63056d6b24c4c3d0eac8022140f46cbeab661dbd43d22759e260fe",
      "name-candidate:81ed5cc117cb6a9b7cfa8bb881ab36b0e6b1bcbcb1c4199d0f2dfeceb344d570",
      "name-candidate:e2b4ceb91b7cd78b15a025d9ebb554baf2e1bff35ec5ad0a07d0dc66241721bc"
  ]),
  ("name-candidate:61c2f892f8e4d39c4086ab885046d66c582f438b33531225be018926357c6b1c", [
      "name-candidate:2ca3344642113fc14a1cfab054db9c7e5ce42023598de5cf9e2d3c0ccd33a943",
      "name-candidate:61c2f892f8e4d39c4086ab885046d66c582f438b33531225be018926357c6b1c",
      "name-candidate:7325d0dedd03c51223b960c3de834efbc2854aa62490526d6a798ef1eecf9ab7",
      "name-candidate:cb6bbae5735a3bfd3a0b78e01cfcb09c17f3583234e681bbbad7aa2295728d21"
  ]),
  ("name-candidate:65ddb3279f400ae224a9cb88721c06d2838cdaa39c28d82f8a4555156b3bcdd4", [
      "name-candidate:2e182a2825146297bedaea094269b2e04bdd6169a39d24ac4bc812477301696c",
      "name-candidate:652110ab8baa4af98d2762886511f45d3251facb47831ae618ab6760dc8135f5",
      "name-candidate:65ddb3279f400ae224a9cb88721c06d2838cdaa39c28d82f8a4555156b3bcdd4",
      "name-candidate:e6488dd1d1e38eee5435d2a30d7057fb34ad9d9120810da46ac1a05cd1097cee"
  ]),
  ("name-candidate:c492965fd5d498d9d0c5bf6bdd976b4803263de8927a91bc5af0c06c2888ef74", [
      "name-candidate:7f099b8fc059f0bd6aabae91bb084e2594399a8905b2b68ccc65c18d57400ce6",
      "name-candidate:c08a88fb8d51e19952f94a54f9800d4f1d3b7231c3bf9d34f73bdea74564393b",
      "name-candidate:c492965fd5d498d9d0c5bf6bdd976b4803263de8927a91bc5af0c06c2888ef74",
      "name-candidate:ec7b756f9ed7d9ee7eb25534d71bccc7ae3d556edff2be3e471aae2ed6058fb9"
  ]),
  ("name-candidate:313e34740798ab9bd35135c90bf102ef695ff83815b743704ea045d2e55b84e7", [
      "name-candidate:313e34740798ab9bd35135c90bf102ef695ff83815b743704ea045d2e55b84e7",
      "name-candidate:890520528a3e1de74f74ceff94559831ea872081d36c391846c4609f1541f82c",
      "name-candidate:aa2bde81a33e6a65f46b91e12fc15c4f824c645a17e1e37f5329e9f14995c228",
      "name-candidate:e31ec97b20219bf63cbd785193fd45628496efcd68f54d729b2dcdde356f25c0"
  ]),
  ("name-candidate:cd7d0317c1af0286cac062f5cb419f162b2aac5d14fbed8e5308a3414887a309", [
      "name-candidate:0ba0f678ded37f06508d13c5a01394080981e8fe077e79257406765a50ebd8bf",
      "name-candidate:7449a5d855f6db4b07e34dc99c2a8291cc144f2a21c140654f046b97726d0f8c",
      "name-candidate:cd7d0317c1af0286cac062f5cb419f162b2aac5d14fbed8e5308a3414887a309",
      "name-candidate:df40dfb884f59b2abfea4b85865b58e1dcc75c2fdb98843adb0bd4aa36759b5f"
  ]),
  ("name-candidate:7a681e306386ffcc0ee071606883535a3cb05d024046bf3b8c1c2befea14b633", [
      "name-candidate:061154997de70c3586508b3a6739c41f85fee5a0d8f451c5c829455ddbe3b8a5",
      "name-candidate:334c7ef184873c5b5d334702d36f4f3a5b2191b17809c0191cd955354f06bdf8",
      "name-candidate:7a681e306386ffcc0ee071606883535a3cb05d024046bf3b8c1c2befea14b633",
      "name-candidate:c11ca6307a52fe5a6e861cff24118d7f269d476343bdab1711991cc3469fe1f9"
  ]),
  ("name-candidate:37246ebdf1c0c4646d3e714286c19a1d8dbae45cdc9d90f525b83cf8e93768f5", [
      "name-candidate:37246ebdf1c0c4646d3e714286c19a1d8dbae45cdc9d90f525b83cf8e93768f5",
      "name-candidate:db48ace60b8d53eef53e8664ceb7b4c8afde5e13e07387647a3a0174a2151570"
  ]),
  ("name-candidate:e2891f255546cd7a8b4aeb0adfa43944a143af20e09e6550c0a52e8ab091d5a5", [
      "name-candidate:3132d1a2e9a7e8b54074cff0471ba0bcc660c8774eb3408b55a8dbf277b259f4",
      "name-candidate:6cf80080e2bc73fad9b8e7c9abd62ab9ddf3fbfbd2f6f480e6611a5336f4883b",
      "name-candidate:858b54604671cfdcb9bfc6b91d03cad897e7ba858e46290446b762cef64b838b",
      "name-candidate:e2891f255546cd7a8b4aeb0adfa43944a143af20e09e6550c0a52e8ab091d5a5"
  ]),
  ("name-candidate:5df2d585a4714bd822c1721b4a2458b2d162871f99137c4aa815456cbd5481fd", [
      "name-candidate:5df2d585a4714bd822c1721b4a2458b2d162871f99137c4aa815456cbd5481fd",
      "name-candidate:6ccd2025ca86b98458a72af85503fb583c3df7ecb18511a9d515c13016c2678b"
  ]),
  ("name-candidate:6796eeb34ac484137e9240026ba2744e44403f9287273f9c617e348596b59f7a", [
      "name-candidate:03764a35e250e3a79ff1d2181b5c3cf8675d64f1dd8e941982efbad645042eb7",
      "name-candidate:6796eeb34ac484137e9240026ba2744e44403f9287273f9c617e348596b59f7a",
      "name-candidate:8e6ca22866229908dea311f423fcbb8932c203b5ba63803c36f001bc6df52790",
      "name-candidate:fb2542c396a8cada88fc0ab5519532d64c4cd3e94ce8e346986a5a7d11439ea4"
  ]),
  ("name-candidate:e02e81e42dbdb2b50293d4af1d1becca13116a5cb9bf5ef10a31e0740517fe69", [
      "name-candidate:014c89f30238776ed1c149d58f94929d4a0695d9e3af09ae5f8f6708ba498fac",
      "name-candidate:1dc8fdc2187fa389afba23f7bd6c88010ba858c71f6f680dd9f4cbc13158cb40",
      "name-candidate:bba66859b75620ad0b93802782d64fa8904c8d2221d022597c5cda4f3b06025d",
      "name-candidate:e02e81e42dbdb2b50293d4af1d1becca13116a5cb9bf5ef10a31e0740517fe69"
  ]),
  ("name-candidate:bfd4831766060f77c74ffaf2bf56ae54ba97763483d4ccaae42fe202a4f9a9c3", [
      "name-candidate:9b8bfd62b95aed0a1b6886adacacff9c08b783ba752b644ad93a668e78d2be55",
      "name-candidate:bfd4831766060f77c74ffaf2bf56ae54ba97763483d4ccaae42fe202a4f9a9c3"
  ]),
  ("name-candidate:3889c0a2e15275dc9b94eef48c00af205ef4a42fb2f4fc6205df0608945e1a70", [
      "name-candidate:32cf5b95f70b76a4abf21ef673a68a841b3c69900be325b249b8fb8792db6f8d",
      "name-candidate:33372fb2bedd43f007f70acf657455d794c24f694c0fbf3346c1c88b1e56a2df",
      "name-candidate:3889c0a2e15275dc9b94eef48c00af205ef4a42fb2f4fc6205df0608945e1a70",
      "name-candidate:cba533fd6a9321bfe9d1ace2391f7b7675cb8d960b8b74bcc3a658d9586917dc"
  ]),
  ("name-candidate:f28b35303fc62aec3ac280f59ba5e29892b9a968f19143984e686110ed113d16", [
      "name-candidate:0c10ce6e062e07ea091641bf540369af0bdb5c7cbb562df501ef3a4fa4d8133e",
      "name-candidate:59ed6d8c23ee21138c130854c9595c80c7efc34bc25fc644f49b4104e90f7b14",
      "name-candidate:f28b35303fc62aec3ac280f59ba5e29892b9a968f19143984e686110ed113d16",
      "name-candidate:fa2fc647e51c63dcb108799d988023aad28002979fe791c6bb18f1fe68e7c661"
  ]),
  ("name-candidate:678af261038a3b8caa4db53fb3cf24b426945b076e34dd7ca73459871194d2e8", [
      "name-candidate:38725cfd7e828746dcc0b1f52eb118fe450c6c9eccc9ffca02af5eb47d7e60c3",
      "name-candidate:402790c931046b564d12103f0499d603d2c8cfa8bd8d2f5f3d6f81d1bad3e224",
      "name-candidate:641b55f45b807959de540f588ccdec6853c5e799cb5a9daaf9aeda4b82e89f8b",
      "name-candidate:678af261038a3b8caa4db53fb3cf24b426945b076e34dd7ca73459871194d2e8"
  ]),
  ("name-candidate:d23c5f8dbe175b2543c698e659c6aadb949b6009b29ccc79217422bf35fc5be7", [
      "name-candidate:6788adca2805ead1e385fdcb25ea2e7bbf34be7ad9c092cee5e30143eeef0528",
      "name-candidate:cb04398aab13017cbacfdaff549b23a7cc40f61eddfcf54c9004387af1d5e25c",
      "name-candidate:d23c5f8dbe175b2543c698e659c6aadb949b6009b29ccc79217422bf35fc5be7",
      "name-candidate:e528318e33976b68b2215ec99b546368dde8ad79a142f038fe4531d672f19257"
  ]),
  ("name-candidate:f3bc6424e93ec63b9d500b26410cfa193299a1d9805fe0ab7a13a2f99f468927", [
      "name-candidate:2dd8cc287a3f5d60aa10420abb112db92a68bb6139e73f9b3d8f40b06f81c677",
      "name-candidate:5d3791ff8d4ba1b1e8ab165329ae5f467cb1efc6a20928e10dfb8877acac52b5",
      "name-candidate:f3bc6424e93ec63b9d500b26410cfa193299a1d9805fe0ab7a13a2f99f468927"
  ]),
  ("name-candidate:5a5deb4313ddfed7041d17e8602352b27c2135961138707c810cc3487f86032d", [
      "name-candidate:37970fbce521dad55d8d5df371540e02e0440ec6978bc26a7332ea7bef5d1eb5",
      "name-candidate:5a5deb4313ddfed7041d17e8602352b27c2135961138707c810cc3487f86032d",
      "name-candidate:8f557a3dfaace4051f086035e5073d364d0f408881da3da039927f2af129b8ab",
      "name-candidate:995e2701f55ce505ae0dce3f50a07a7858fba4723c1f4c34480a2df9b2b725ab"
  ]),
  ("name-candidate:77b9657f7fbddccf451a6186d24549389b3f5227ea21eb91a99a998379e0aa2f", [
      "name-candidate:43ca31cf5f8f4fdae1f072776a58ec353aa5a67e97380f0dd52f26a635cb6621",
      "name-candidate:77b9657f7fbddccf451a6186d24549389b3f5227ea21eb91a99a998379e0aa2f",
      "name-candidate:a074006a37f86bbd0ce8f1ad595a413edaecda301080c3b6c1bcf92f347710fa",
      "name-candidate:ee93c58f32fe7ae285a432ef9a8326d8c3017866e0154facf138b5e189132856"
  ]),
  ("name-candidate:fbd8e72b2f3617b30c2fb24017b1f2add35926b1ef8ae62674eabe7b460d27ee", [
      "name-candidate:137a57304ce865fe546dd5e3de6e807bdf9725be82304014d0e48205145126f6",
      "name-candidate:3a1e9ab7cb378b212aa0562e7540eff9366980b04b89f6bb9e893df7054f1de0",
      "name-candidate:b0afc7599e8114be65ec480b292f2da30470144e14fb2849992bda3b7c8849b9",
      "name-candidate:fbd8e72b2f3617b30c2fb24017b1f2add35926b1ef8ae62674eabe7b460d27ee"
  ]),
  ("name-candidate:940d9a05c0493281fb715413d4efc855259d5126def20dfabb6f0b9a27ca0daa", [
      "name-candidate:64c90c02e9823d2ea4ad678fe356503e6831529bd540c80aacc87ef1106d2a05",
      "name-candidate:940d9a05c0493281fb715413d4efc855259d5126def20dfabb6f0b9a27ca0daa",
      "name-candidate:985503da5544fea8b3ff25e8f8bdc7c11adf77d7a30ce672813ea1be9b2c021e",
      "name-candidate:cc1da05e0ce4b374ebdf200ed483053c278867a0097900e2a6a87465f46bbc14"
  ]),
  ("name-candidate:0a9690b079f0065065b5b4d0fb46c415d2fd281986b22517dfe5d99eaf6d955b", [
      "name-candidate:0a9690b079f0065065b5b4d0fb46c415d2fd281986b22517dfe5d99eaf6d955b",
      "name-candidate:3416ade3afb707e7bb7a5b0af2b6eeecbb720a0b5ac2d18e76af7fabcdbfa393",
      "name-candidate:45d1b83587121b2ba91e3adfec8d4509485e09763f3f50018627a4a277abf074",
      "name-candidate:b3d3e4f15ac3d7fcbd99d51aa2c682099563039b3ea63ed80f1982504c084506"
  ]),
  ("name-candidate:610add6886020c31d577e19e7c59f21ae10dd006fde65e74aea4c4def8ab8a6b", [
      "name-candidate:302458ffb57c208854df21ea44c7971f952e5191135832ceb40314c88e61f82e",
      "name-candidate:610add6886020c31d577e19e7c59f21ae10dd006fde65e74aea4c4def8ab8a6b",
      "name-candidate:7265da2216df3e9a2a313a5d64c17d460388ec4f194c36b4f7e8eb04e335f9dc",
      "name-candidate:76722965efdcc0a2455503e33d382840d75c90cab256bc09ab11411152c6d96a"
  ]),
  ("name-candidate:b646e2fa76ccf6e8b635d620dbee8b7bfc20fafd46eda4b83ad2a337c6afb111", [
      "name-candidate:b646e2fa76ccf6e8b635d620dbee8b7bfc20fafd46eda4b83ad2a337c6afb111",
      "name-candidate:fe7b065b6353b2992f705d1f214ab32c9b07da631aad5271f82b24491b72d129"
  ]),
  ("name-candidate:019c58961a67ac53c8b18ccee1be8a62a7498c758b4f87bfb424ac22d9aaeb55", [
      "name-candidate:019c58961a67ac53c8b18ccee1be8a62a7498c758b4f87bfb424ac22d9aaeb55",
      "name-candidate:0d566201dd617533f198b4d2692cd6e3b77c333c222d930b558b0be88e26a44f",
      "name-candidate:25e2fb88a039551e8c26f0748faa0cdc993f77428be0ca929075b5d31ebfb61a",
      "name-candidate:a30a21233c7c2679b39b9da7f8d95e401e76701fe908f7fed22171f683e6dfed"
  ]),
  ("name-candidate:ef2a8077587578cbff35d7d11356e8af04cb8d7696cf1446a8d522dcc2a4383e", [
      "name-candidate:061f8b6cb2153afcd8710248843c088b3b4480a1c0cb81a82a5b7bae90a45909",
      "name-candidate:12e5dd049945450ceabe5fb821bdce89bb6e4b7ac81d9122a757f187d4fbf350",
      "name-candidate:609b9585fcadcb36b59bd4844f583f302b2cf3e062b9d8695dc636de1e5d9bf4",
      "name-candidate:ef2a8077587578cbff35d7d11356e8af04cb8d7696cf1446a8d522dcc2a4383e"
  ]),
  ("name-candidate:e388e099a5143caa4426f8639aba5db18c729efe8ee9c3beb2116763368b6c21", [
      "name-candidate:48e3bd13b9ee9b3e285bae5ce62a81c7b4d64aba1cd048a42c6425cd3112608f",
      "name-candidate:87044c361d4e615f73710fe74bbf1131fa3c586a71e4d78e82671886195e5c18",
      "name-candidate:c442b297602e3c6b23192950c6f986347be1687c559c1f52838554d0c31eb63b",
      "name-candidate:e388e099a5143caa4426f8639aba5db18c729efe8ee9c3beb2116763368b6c21"
  ]),
  ("name-candidate:bbf35c9f13e24cc6e085827b7066f5bc575246125b2559972ad8c2c1109f3f1e", [
      "name-candidate:14e84dac59f4f4288c39a222d898d4500a7033610894b0a2a8f037334f884d0a",
      "name-candidate:67b8130469740a94b021a92b5c13d35ff69afb05d85654dac6bd48303fee5d7c",
      "name-candidate:bbf35c9f13e24cc6e085827b7066f5bc575246125b2559972ad8c2c1109f3f1e",
      "name-candidate:e8c34948c95a3adb29fd7f6194c75b6a8056ddf59cf285952ffbefe9706c3f1f"
  ]),
  ("name-candidate:af509f1270ce93152c3448f56d695a260b28de055069fd3fa1bb93d9827122c6", [
      "name-candidate:40897a46abe87000166a578628bfd061d3485a031300385a50171cf67fd6c73a",
      "name-candidate:af509f1270ce93152c3448f56d695a260b28de055069fd3fa1bb93d9827122c6",
      "name-candidate:c68862196d317b5876c4ab6c14178866742d0b39bc14177acda17e003c1cb35f",
      "name-candidate:f3a07a4bd1662283fc40b79e8dc5991764bb171a8a75396bdbd541cac66685d5"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L49244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
