# modelCandidateSelectionsChunk0011

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:30c5603e4a88a60c3c3eece3c703045d1c94190666d2cfa42a35090e273808e9",
  "kind": "def",
  "lexical_name": "modelCandidateSelectionsChunk0011",
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
  "slug": "modelcandidateselectionschunk0011--c8c2bc0570882125ade51691",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58400,
    "line": 58079,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8c2bc0570882125ade51691187ca8d805d0f70af46d6b1c3e47261269f5f950",
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

Occurrence: `declaration:30c5603e4a88a60c3c3eece3c703045d1c94190666d2cfa42a35090e273808e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58079–58400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def modelCandidateSelectionsChunk0011 : List (String × List String) :=
[
  ("name-candidate:4c62ec2cd8a6ac882e0e01433cb39b9ed5ec61ee4917f8e4ae29640cd1bfd078", [
      "name-candidate:3e3fe02bc2ba11309147077ace0f964a31b4fb3491cb34e9d130513a7a13bfc9",
      "name-candidate:4c62ec2cd8a6ac882e0e01433cb39b9ed5ec61ee4917f8e4ae29640cd1bfd078",
      "name-candidate:bc42fc045ea15f9d72517ed8436d732b40def18a489a9f1338a7c83539a3b618"
  ]),
  ("name-candidate:988b8b5613fa083c0ff598cf85dcd56b9209cb40b45457ddbf59b3656abca685", [
      "name-candidate:2531b0697b394edf9ba6aabd9ba742426a0aaba1dfa0013c9af01fe1931d4edd",
      "name-candidate:988b8b5613fa083c0ff598cf85dcd56b9209cb40b45457ddbf59b3656abca685",
      "name-candidate:b352323b0ff06fcf94ba73631c61353462bbe4c8e074bd426dd71b1ba78de673"
  ]),
  ("name-candidate:9552c0a02c325d874c57cec7a3661828bc6e11dd63d0cc29692573aebccd549c", [
      "name-candidate:51036b7ea74922261d9cef141b1e24d05b031b60ebf0d38bfad7126a6a3de1df",
      "name-candidate:9552c0a02c325d874c57cec7a3661828bc6e11dd63d0cc29692573aebccd549c",
      "name-candidate:bf35f46ae9a05b9b7f43ec9462b3dcb25458ff2bc8ff66fa92e16c0d25b453e2"
  ]),
  ("name-candidate:952874a1680055295360962adae31a61016e863a3ab9baaa9e693edfb8c430d5", [
      "name-candidate:4020fe64528e56276c202277b1c8e40b627a07f13c77c2531c01d7b069adfe45",
      "name-candidate:952874a1680055295360962adae31a61016e863a3ab9baaa9e693edfb8c430d5",
      "name-candidate:f8800080e7a97e4ba347112b04b0d1a5302f63d43c77cb8e4541d5ffee07f48f"
  ]),
  ("name-candidate:47b576039f4043d3d58aa739e78844c869d2462927b8fb565e2a8b7e5b1b949e", [
      "name-candidate:16b88ae168006618ebbf2466dd8fa9bd4089a818c2bfb1e6a90c8b6255e0649b",
      "name-candidate:47b576039f4043d3d58aa739e78844c869d2462927b8fb565e2a8b7e5b1b949e",
      "name-candidate:964df9f45ed1f7f178e065232b4d5f951ec2bd15af7c0d937e5c26fd28be4f08"
  ]),
  ("name-candidate:59fad7970a023d7cf50b3dd27860744cc79d0de571e4d231bfcd5172e1d817de", [
      "name-candidate:158f45fc7eb26d96eea645cbc2eb38f71d2c3533430dba0184ef72794e2e2ca5",
      "name-candidate:59fad7970a023d7cf50b3dd27860744cc79d0de571e4d231bfcd5172e1d817de",
      "name-candidate:d0382d543eebac96eed4eb9762653203cbe799b9da9a1c326085eaa958398037"
  ]),
  ("name-candidate:d048ce2988e1e38f05f33ad261fc3169a6991c2ee9630b30c8f5c2c08b60e337", [
      "name-candidate:536a66d52676cc89fb95188798e40570c6e0a91c260ad5172365b614d81f1408",
      "name-candidate:9a1f7c20493f9a2da923f26e7c2e645f27815a5985297328e4101598406e6cd1",
      "name-candidate:d048ce2988e1e38f05f33ad261fc3169a6991c2ee9630b30c8f5c2c08b60e337"
  ]),
  ("name-candidate:a04db7253519b0669868e02b866ef9ba877fc88fe5d1f51b53fc32bac686b62b", [
      "name-candidate:a04db7253519b0669868e02b866ef9ba877fc88fe5d1f51b53fc32bac686b62b",
      "name-candidate:d120da175609030983d399d2967b0a7e40e12b1283e200444d96b528ef9c31d7",
      "name-candidate:dd77433c7d2b04e929320ba0bf3e90d0b6db6f513cb3d526201fa0da68b9af95"
  ]),
  ("name-candidate:372f1bfb3c759bde6cd0760738ed23b5e94d192d27c696cd4a4b8cda0566c5f3", [
      "name-candidate:372f1bfb3c759bde6cd0760738ed23b5e94d192d27c696cd4a4b8cda0566c5f3",
      "name-candidate:a30e2fd898ca3b61e0b91cba4671bdbe068a7c6eee364f1f3f6944bb2d8521eb",
      "name-candidate:a48090b49e3352986c2669c807995fd1ac8900324c63c29981747703570db5dd"
  ]),
  ("name-candidate:1a99c5c86e03419430f1166232bbd7325732fc396db153bb348257d5af964771", [
      "name-candidate:0bd2e6d01e5eb12efd56807ff470780aac9ca9376503d9d00feb781a6719aee7",
      "name-candidate:1a99c5c86e03419430f1166232bbd7325732fc396db153bb348257d5af964771",
      "name-candidate:f21e2d8f390e2e26d4a17dda0f43c766faf85993330a91368c75cf0ba946ae64"
  ]),
  ("name-candidate:a784651e80fae5e9e3a50c51c428a02af6a57d92077de693646a067375286608", [
      "name-candidate:a784651e80fae5e9e3a50c51c428a02af6a57d92077de693646a067375286608",
      "name-candidate:b31dbabda7d51ec8d5ad82304ff40f9905c707510f87af1a79bc3715e37e2f07",
      "name-candidate:e991733a2a94320e353498c884b799e2e314e289c0640b4d652eaba8e240efdd"
  ]),
  ("name-candidate:6699415d6ccd7555a86872b25946fea465ee41dfe85f7cfc63192db53e974ad9", [
      "name-candidate:4603b608838ff5e97d6b9fff39730cf106d7fabf2c39457452eaeb3f0bf70a32",
      "name-candidate:6699415d6ccd7555a86872b25946fea465ee41dfe85f7cfc63192db53e974ad9",
      "name-candidate:bf3ec61b1b21761d35cfb57441a07b1f41a52b5832d855db2ac2572b0e167c06"
  ]),
  ("name-candidate:1bbeeb679229c986680ee8eab28f9ee54180d1901c990565a796afe58e99b5ac", [
      "name-candidate:19c898ace919bb6e4046cc7ee8525b3677ee47ba5f7f273e4a6eda699bf12cbf",
      "name-candidate:1bbeeb679229c986680ee8eab28f9ee54180d1901c990565a796afe58e99b5ac",
      "name-candidate:660119ba93fd1b83dff876457469119b61161ab4ba5302db23efa8e2760943e0"
  ]),
  ("name-candidate:ddf843dffaf684d06a0627f0e0f3173ddd703b10e7161d4bac70aaa75adf8ca1", [
      "name-candidate:ddf843dffaf684d06a0627f0e0f3173ddd703b10e7161d4bac70aaa75adf8ca1"
  ]),
  ("name-candidate:bf66033f5180860780d91e715a80dfcd0d5ee38f6f6c65ae1fb12b8ccaf0481e", [
      "name-candidate:12829181e5b24c9c20b3de07d725965a67a854c7bce73fb61a29817f972d2c9b",
      "name-candidate:574f1e64d9dfa93d6809d5c5a8f0aef3b7879a93bf6a015d12dfdaba3fb6bf0d",
      "name-candidate:bf66033f5180860780d91e715a80dfcd0d5ee38f6f6c65ae1fb12b8ccaf0481e"
  ]),
  ("name-candidate:6921b69a8705cc7bfbd19e1424927a4f370cad63045cc5c2ad6495650275fec3", [
      "name-candidate:0975957067c74b698528af0e49dac299709d36d38ff7dab9a34ffb3447fdda50",
      "name-candidate:6921b69a8705cc7bfbd19e1424927a4f370cad63045cc5c2ad6495650275fec3",
      "name-candidate:889a9f6ffa6be2c01337d85f1c9ceb157080956f71a0961ea82b1cc33bb7ee58"
  ]),
  ("name-candidate:a0429cd852764f1c9b4c154e05a3496a2745f761c18cc0f9e4cf7692c960ae88", [
      "name-candidate:0474065e295813ee9c61952d32a8bdae3f3c70528323fc53a44c7d57babbcb51",
      "name-candidate:95a4e06bce89528af78191175434ede13d157de307c107b79f6d864426293bd6",
      "name-candidate:a0429cd852764f1c9b4c154e05a3496a2745f761c18cc0f9e4cf7692c960ae88"
  ]),
  ("name-candidate:ff2bbb327db7d0de8cda5e35af393c5da47178bbbba9ea20f45bfb8b143c866f", [
      "name-candidate:745f5906e7e20bfc2aa980792516ff3d13e89fa5749c6a925edc383b263dacee",
      "name-candidate:c7d18842c19186cd3a48eec86319fb2ae32b0d85cbe3d25ac0681905763cf2bb",
      "name-candidate:ff2bbb327db7d0de8cda5e35af393c5da47178bbbba9ea20f45bfb8b143c866f"
  ]),
  ("name-candidate:425544f1c6864edaec2186f47021a0123714a11e6ce889ea563287f172ca912a", [
      "name-candidate:05fa0c6edc5aeb8fd8b97988de2fe67f4dd24e671561627f66c0f9ef33ecb165",
      "name-candidate:164d6ce0c8a82e57dd2fa94a4d80fa52b9fd801f35357770679a377ee6b5ddb2",
      "name-candidate:425544f1c6864edaec2186f47021a0123714a11e6ce889ea563287f172ca912a"
  ]),
  ("name-candidate:37a599abed770f83cf883dc3df8ac56f50a2aa7537c511317ea95a21677175fb", [
      "name-candidate:37a599abed770f83cf883dc3df8ac56f50a2aa7537c511317ea95a21677175fb",
      "name-candidate:b6e36c4d3866ebf9fcba16fc6dfc523ec8b2f1464e622ef72d07c7b24b61bef8",
      "name-candidate:f0ac37fcf1db06caa6bfcbc992c7b1194426abee0b8d93ce4268caadff7a6ea4"
  ]),
  ("name-candidate:da7adc7554d0b3a34d4e2042de7b38b9686c05493cb9f100a62992c84c78e211", [
      "name-candidate:8dd6b7155310dc8fbae77b2ccafce8925681f91fec1431bd2426f680d392012e",
      "name-candidate:d2a94c5782b88ce3a80da7e4dfcc5cce7a0deaef2a7387c3884e7fedc225ee1e",
      "name-candidate:da7adc7554d0b3a34d4e2042de7b38b9686c05493cb9f100a62992c84c78e211"
  ]),
  ("name-candidate:6e169849bb9b31cc5b8375bf88887cfc4c121b8775bfc1e7b48dea891afe9a31", [
      "name-candidate:240cda7c254af430131bc06d8dc0fc8c7472b2542d3639a0949078276939268d",
      "name-candidate:6e169849bb9b31cc5b8375bf88887cfc4c121b8775bfc1e7b48dea891afe9a31",
      "name-candidate:a19657218526a401c2a1a344e094a71f9b37902ac6d39eef983b320037a4b4b5"
  ]),
  ("name-candidate:d6b6692eaadb15d40f158ec3c49965237ea7a127ecfb7911f52ed26132148d6d", [
      "name-candidate:13eae17d67ca3348b9d9a640d3e9d61f42f38ad8b9014eaaeeb8d64aaeb84965",
      "name-candidate:410a6d6a9dcea23be95cffb435c552cabd51af8d705d325701dc279ad6383401",
      "name-candidate:d6b6692eaadb15d40f158ec3c49965237ea7a127ecfb7911f52ed26132148d6d"
  ]),
  ("name-candidate:4cdd576d1e5aedae944f57042fc4c0c9418215d52bd013744a9d1d913e186632", [
      "name-candidate:33555d372ce05957063bc30e35c3a85730f9993bd2c08560d2ce1174f930ee46",
      "name-candidate:4cdd576d1e5aedae944f57042fc4c0c9418215d52bd013744a9d1d913e186632",
      "name-candidate:9e63b86bc8468057097acea74fd22dd12bfcabd91d4957354f232ef3a9e4b375"
  ]),
  ("name-candidate:4f98f793fffdc8267e8238f5341c8d0e4a97d396f71df4f8e564a15562ffdb37", [
      "name-candidate:4f98f793fffdc8267e8238f5341c8d0e4a97d396f71df4f8e564a15562ffdb37",
      "name-candidate:f2a8115d5dfd443fbea58db78ff363671b2fd040f0fd5e10756805b8b0503d18",
      "name-candidate:fbd4168f049c1f7ffc0812fd19ab6cac33d4bcee09b0ec1029fd3077d50f8d8b"
  ]),
  ("name-candidate:76ce52d591838b7067676debd79727118fa5fdddfd3420e3ff0944b691cfb3cb", [
      "name-candidate:40c891fee1aeb1bd687b54b736e11377ef2026b10fbe5a2004392eb3ca271c21",
      "name-candidate:76ce52d591838b7067676debd79727118fa5fdddfd3420e3ff0944b691cfb3cb",
      "name-candidate:8f140d15a926c405fc46a4be0e225c5544012a8dc541b2498d0466f222e6acb3"
  ]),
  ("name-candidate:813aa94851a67da546b41c3b44e80c1805d8a1bf5b796833d6eb762a654028af", [
      "name-candidate:77119392b9fd75b0cddac73fc7040a6bf557fac8d346cb5c4c2fd922e97aa16a",
      "name-candidate:813aa94851a67da546b41c3b44e80c1805d8a1bf5b796833d6eb762a654028af",
      "name-candidate:b288de6e0baf34dfb8e564f3862acd342e2002a18749a1f9335eef78aa29a6b6"
  ]),
  ("name-candidate:300f6d693a76d5a90830a4c8d8aaf513f38e6ab2129181133e3844a302b148ee", [
      "name-candidate:300f6d693a76d5a90830a4c8d8aaf513f38e6ab2129181133e3844a302b148ee",
      "name-candidate:945f2ad68b9170444b6466c264155257163d23e0c52b9dfc44a393093710fcb3",
      "name-candidate:9f5b7bb8679b6109e074c3c5987018e94031dbe8c2e6579fbf01d178ba6d2765"
  ]),
  ("name-candidate:a2f96894ce8915e79428dbba890d663f376e04a525ebec9ad0fc7a1070ba2a18", [
      "name-candidate:2add06e62491c897763a8092c45a84280c0004bf7ccda7eb4c17ebfea633a866",
      "name-candidate:a2f96894ce8915e79428dbba890d663f376e04a525ebec9ad0fc7a1070ba2a18",
      "name-candidate:d5aaed1ad1ee7f5a57da287e565148d43aa17a86e7cd6fd006e19df81e1ca928"
  ]),
  ("name-candidate:f3724e9ea5c30f279dfa4ded5d51cc6e437987788fae91a79f229fe8c8edfd5b", [
      "name-candidate:42ea8fc1ff1e96ac342500fae81ff89c3d93b4b1c8fd70332d223ca295298055",
      "name-candidate:52ec5aceb45f1cf5bf0e6f309f157566c962cda30fcb7bb81126b402448a6003",
      "name-candidate:f3724e9ea5c30f279dfa4ded5d51cc6e437987788fae91a79f229fe8c8edfd5b"
  ]),
  ("name-candidate:da7c31b1ac9e8c19870f43e18bbc8ee31aa7b7a47b04d66c6d5850d71308dca2", [
      "name-candidate:3305af84462d5f8e828dd27f553cd7e563f13bdb275472b95f8f89f143930126",
      "name-candidate:4b9d7f0d81944c0a340ee6391ec738f8cbd85ce20607a73fdecbea842be31933",
      "name-candidate:da7c31b1ac9e8c19870f43e18bbc8ee31aa7b7a47b04d66c6d5850d71308dca2"
  ]),
  ("name-candidate:a64cf38d2f54921c4b181b51ecbb38a3feace02ac6da425d7c853cbbfbf615dd", [
      "name-candidate:5af6248423ab980b8a936088c43eff5e819f5a22a36e43e195bbb9273eab195c",
      "name-candidate:9e4735f8808dbd145f764683aec47c10adf72e2b360fafbdb478ff617e31a4fa",
      "name-candidate:a64cf38d2f54921c4b181b51ecbb38a3feace02ac6da425d7c853cbbfbf615dd"
  ]),
  ("name-candidate:62c84ca837a66c86e4ba7121e9dcab984753cda53e1cc100f6977b5ee4baf31d", [
      "name-candidate:62c84ca837a66c86e4ba7121e9dcab984753cda53e1cc100f6977b5ee4baf31d",
      "name-candidate:82a8f53dcdc35954fb69bd680fafc88e78b42ff259875c9809daabd6a3b15ad8",
      "name-candidate:8f6dbb8e7439de2fbd026869f029d60cd4e0f7a7f15056d88dc33614ca27f849"
  ]),
  ("name-candidate:6a36e2302ad608634395512f1febf6fc8ec20c896f1d2fd6baf82e0d37608940", [
      "name-candidate:4eab8c2fb723e8e9e25dc1cbca607756c6e49b6bf743c2f0dfcb43b1991dff2d",
      "name-candidate:6a36e2302ad608634395512f1febf6fc8ec20c896f1d2fd6baf82e0d37608940",
      "name-candidate:c0be0f190fcfd42142292fb2eb10e5469ae3459ccd398c574810e92e19791b88"
  ]),
  ("name-candidate:4ede4f0fb60c9e3026f260094492f37a5ae323388df85f9f5f0e31c17d56b39c", [
      "name-candidate:4ede4f0fb60c9e3026f260094492f37a5ae323388df85f9f5f0e31c17d56b39c",
      "name-candidate:5c9da167ff77230886fa987af43d9eea288e8f103abe0de6cc6d12920b47a979",
      "name-candidate:c6e68a0f903310e68114133f08470418e10428a8864af0833c7ecaf879921697"
  ]),
  ("name-candidate:9f5e5bccab5716aca7d6e5c282369fc2ef0cdaed01eaaa1052d03559bb04abca", [
      "name-candidate:787a149d7310ca05790c7a835ff16be4231f2657069ccc328e4ee6433d7803d4",
      "name-candidate:9f5e5bccab5716aca7d6e5c282369fc2ef0cdaed01eaaa1052d03559bb04abca",
      "name-candidate:b62441a3baa6fea518038c8f9a9e97e333cba5aedd1ed17e6196607797489577"
  ]),
  ("name-candidate:43a6934598c1cd9464c43c83140aa0490551c6609facd308d26ea69b100a5861", [
      "name-candidate:43a6934598c1cd9464c43c83140aa0490551c6609facd308d26ea69b100a5861",
      "name-candidate:5d63b61ef4ee137d1dc32124aafa6cd6ca90e715d20d6ef632d2e69150220401",
      "name-candidate:f1eb0e276ae06ee0ef069251a49f7aa56dda10106f88c3679d045b0a99edb8aa"
  ]),
  ("name-candidate:5158cc924655a8ed7735caf0da7675b9016f6358b0b18949850bbae5852fb154", [
      "name-candidate:1c89b8db8eb0d05ef7395c7dddcd637a3396ccffdefb127602e6de62b85397e4",
      "name-candidate:2697d5fa9b3b2082b3055f73f752b1d38cd036fd91fc3681adfda260b8c935d2",
      "name-candidate:5158cc924655a8ed7735caf0da7675b9016f6358b0b18949850bbae5852fb154"
  ]),
  ("name-candidate:7143ae6d7d148d9d3c0b47b5a00d4d17c96f14964901f8e9af8f1ad150c4d81d", [
      "name-candidate:7143ae6d7d148d9d3c0b47b5a00d4d17c96f14964901f8e9af8f1ad150c4d81d",
      "name-candidate:b7d998b86fee7033088a095d00700b5ab7a933b6f57c502f80791f41a56bcf58",
      "name-candidate:f106acc0f05e803f98e818d4abc1aa42b5a0256fcfa8d80a01694a86aa3b621c"
  ]),
  ("name-candidate:ab654b6153d3aa1d2ae575adfe42a5d09d1236eacf5d891d360f6982a47e7f35", [
      "name-candidate:a11fbcb4a18fb31947695ea5567daa301bac6294cf6a84c30b8cbd302d62d6ae",
      "name-candidate:ab654b6153d3aa1d2ae575adfe42a5d09d1236eacf5d891d360f6982a47e7f35",
      "name-candidate:f609e5cbe6fb4fdc729dd6bece3f194c822ce9c0c1d1753e0067df5cfda1bdec"
  ]),
  ("name-candidate:3611021e864ed72dfaac8672ba634648f581d323f73227f173167feadf41403f", [
      "name-candidate:079dc5b46a7768e2bb47e953e7c49a5fbc0ea1837262f15a973095c374c4400b",
      "name-candidate:3611021e864ed72dfaac8672ba634648f581d323f73227f173167feadf41403f",
      "name-candidate:8f74504b63370ef1b7b72a4e3bfbca005b3d5025e98d427f6d40df172c36c573"
  ]),
  ("name-candidate:d16f0d6b3b3fe10eac506cdd3a84d4952296529f7ebf7e83a01294cb4f0a1dd5", [
      "name-candidate:6818f5396c10e6ff2123e186bc84bd9df4140089668b3c1ec86e4cb62bae579e",
      "name-candidate:b8930da80409229b06d618eed0c4e83ee9ef1ef03331656a7bb47220ae15eb93",
      "name-candidate:d16f0d6b3b3fe10eac506cdd3a84d4952296529f7ebf7e83a01294cb4f0a1dd5"
  ]),
  ("name-candidate:63d9f873a56d94a5140ddd955c3ebdb413e77464c29ad4a1fc696899a19dd4e4", [
      "name-candidate:07dda4b247fdc9c56c8859960827b3bae365a8624626a09b679d67a6cf94d8d4",
      "name-candidate:63d9f873a56d94a5140ddd955c3ebdb413e77464c29ad4a1fc696899a19dd4e4",
      "name-candidate:a54e5c5bd3c3e185c613b50c26714919dcc435ddb117424c618e2a902a3ff3ba"
  ]),
  ("name-candidate:3ff2eaf855f2ab5dfbaf17fcfc69d1a8cc027f0b9d6b7cffd747c7ded6dddd2e", [
      "name-candidate:3ff2eaf855f2ab5dfbaf17fcfc69d1a8cc027f0b9d6b7cffd747c7ded6dddd2e",
      "name-candidate:9d91f571e28b4deb9dff6497a02505b211bb765bba32d0a561ed7eb9a599d2cd",
      "name-candidate:eb22f2ca4fcc9513f6a913b6325fecb424af22a8b4844d0008e8b176ce92182a"
  ]),
  ("name-candidate:d9d757f9fc197acfea20acd4b978a9c7f8d7633fcaf4dd117500d1fdf92c19c9", [
      "name-candidate:86417037efb271f9cea0ce6efa62a39ca49c804760e63fbe2c5de99cc4943051",
      "name-candidate:88f8f583014433abc8b5ee6669114e4527722b3a73aeed7b4ce662f846a8fa1e",
      "name-candidate:d9d757f9fc197acfea20acd4b978a9c7f8d7633fcaf4dd117500d1fdf92c19c9"
  ]),
  ("name-candidate:d32afa9081645f0675baf1e763cbc73e54e5378d7e57fdf8bd888ceec805315e", [
      "name-candidate:d32afa9081645f0675baf1e763cbc73e54e5378d7e57fdf8bd888ceec805315e",
      "name-candidate:e06cc9fb26530840fc12afcad025075ef93e8a32f68d306059ba869748853590",
      "name-candidate:e17b3888886229f85422849cd532e9c94bc8c9baf38af42049390d876be6f216"
  ]),
  ("name-candidate:0e7bc0ee761904c60df16969178f9e264a9dc13d5d50bb757dbf648431ff70ac", [
      "name-candidate:0e7bc0ee761904c60df16969178f9e264a9dc13d5d50bb757dbf648431ff70ac",
      "name-candidate:6481e289e8fd52c54f23b5b399f0b78166950e9b58a0bac42c0ed2d14f41b2be",
      "name-candidate:7cf017c2116eaaca4c35be2c45c3d90d74f65afb0070e67aa9f0f5f2571d4766"
  ]),
  ("name-candidate:46a39bc1715473b0cab51e0227a4bb128d7b4335dfca4f8f63c34e92d52bfb5d", [
      "name-candidate:46a39bc1715473b0cab51e0227a4bb128d7b4335dfca4f8f63c34e92d52bfb5d",
      "name-candidate:4c018b95df4647385fcad08310cd91d0eb15e74c26ab91e2beee27c23fad0f4e",
      "name-candidate:b8b1b8e48dedc2689833cb9cefc4699f5c5d9251fb797c466a7873e4bc65c5c5"
  ]),
  ("name-candidate:c5689a11909c97ad514abee47a17c91df6971ec5c9ee1a1ed08f751b8c2861b1", [
      "name-candidate:1a346ad70f8aaf08fd17cf727d344dbe6a5eebeb1e8f0492c71f8b4fe7f767a1",
      "name-candidate:1f33fb68384438fb9b62d039a4accef1bcb01d6fc1183684e6eda399831b4dd1",
      "name-candidate:c5689a11909c97ad514abee47a17c91df6971ec5c9ee1a1ed08f751b8c2861b1"
  ]),
  ("name-candidate:e15883095bf748e4cc48675e2212d6a4d75cf8ae437d6efdb299712968441d78", [
      "name-candidate:42fb3cc8930aa6fa7b99141f23a3187bf794021104c4894936321743c70b176b",
      "name-candidate:6bb76cff0dc9e79f9902691a4c4566f9e13d7a7c3901c6582c0c65e7bbd31825",
      "name-candidate:e15883095bf748e4cc48675e2212d6a4d75cf8ae437d6efdb299712968441d78"
  ]),
  ("name-candidate:01912ed70fbba7ea041bbc2830c6e96a9579bec2482076722478fa1da7a25bcb", [
      "name-candidate:01912ed70fbba7ea041bbc2830c6e96a9579bec2482076722478fa1da7a25bcb",
      "name-candidate:245723734a5ecfcf534fa65edc31bbd85454dd4c6d3b36bbb24f902049caeafd",
      "name-candidate:54c5b89387b8895303b7e110e6f9a1f0578c8501525671993c3d416101e29f8c"
  ]),
  ("name-candidate:fce4ec5ed9a7f17094c7937ee964d74a396a28143dc812f8bc98a7daa7b776eb", [
      "name-candidate:53b2022c7612ae3cb51b1308f8056edfaf1de1655ba4c5f49cb74c03811969b0",
      "name-candidate:79a978abdb62eae6e86c7c078e9b746f9d794c0bf5b731e4265abfd2aad3d55d",
      "name-candidate:fce4ec5ed9a7f17094c7937ee964d74a396a28143dc812f8bc98a7daa7b776eb"
  ]),
  ("name-candidate:2b7cc98ec5714703a5c49ac0d0c32ac50953e83705caecbb32f55773b36eec5e", [
      "name-candidate:2b7cc98ec5714703a5c49ac0d0c32ac50953e83705caecbb32f55773b36eec5e",
      "name-candidate:938093ca512372b234138c93f1be531f5d6f84c512d7a97b2b5b23d736aa7d55",
      "name-candidate:9e65abcc0b00af336696fbe1583ec8d1e2fbccceaaa1d61f2ad8582f8553a797"
  ]),
  ("name-candidate:801f766bd6f21d030516006526b4be63d55183ed61cd5574bda411f2cd8b9003", [
      "name-candidate:801f766bd6f21d030516006526b4be63d55183ed61cd5574bda411f2cd8b9003",
      "name-candidate:81ace380bb550a11de2b58eee78f3c548df8c4dbc983b00a4872a641f1842c80",
      "name-candidate:91caf0fd25682ae341b4e29189cb8b2b72943381762068f3c6af739c4dde2df8"
  ]),
  ("name-candidate:75e4bce8dc55c79a072f4c8c9bd036c6f9e3e6f531dedf77ffadb67b15794c17", [
      "name-candidate:07a023502c7127b25c0c859277b34dc5d71a755ef6a3772f32dc56ee3000bb67",
      "name-candidate:1fa50f96f735b7b379a04005020f63f078d6d1bebe44e27053d1bddab1405194",
      "name-candidate:75e4bce8dc55c79a072f4c8c9bd036c6f9e3e6f531dedf77ffadb67b15794c17"
  ]),
  ("name-candidate:8d495e0f11fcf5255e4e888f567fa088f3d236c92901f485e1be81fe88f640c8", [
      "name-candidate:5b9a8bab6298ed1f668b9264d317e83f7f77e8dabeffd466d8e4e3429f8e0abf",
      "name-candidate:8d495e0f11fcf5255e4e888f567fa088f3d236c92901f485e1be81fe88f640c8",
      "name-candidate:f69df1809b615cd6a5726dcef9a07064a3fb7e378e636abb8abe59de7eea6802"
  ]),
  ("name-candidate:774f04339ffc5d386fbfcdbf2161e6bf10de72119cd090f0270e957398e78d19", [
      "name-candidate:555daa980cf53878bfc2c67d966dc1718346a31b65f11ff40fdcc35294eac029",
      "name-candidate:71e270dc7eef3f4d03b54833ea3852fb7bc1af6c2d177b3ab85432c21855c382",
      "name-candidate:774f04339ffc5d386fbfcdbf2161e6bf10de72119cd090f0270e957398e78d19"
  ]),
  ("name-candidate:4eb4a819da0cd72905eff61600e3529c72ce7323c977e0f65726b9af8fb231da", [
      "name-candidate:4eb4a819da0cd72905eff61600e3529c72ce7323c977e0f65726b9af8fb231da",
      "name-candidate:5f17092459d19c255f263bdd139a1cf959ccc8239efaf6407616b93c43e1ddda",
      "name-candidate:95a7564a88ac8e81918d96746eeac0f1c6d181cd1f4447f3dc98339fc04c971d"
  ]),
  ("name-candidate:78f8504597940eadf5021da2168de8835ffb56c14245fd46573d675f12d6da91", [
      "name-candidate:552fc36eaa1ae1a49804058579ae2b2bccf5022dbe2b4263bf47594c069683f1",
      "name-candidate:78f8504597940eadf5021da2168de8835ffb56c14245fd46573d675f12d6da91",
      "name-candidate:e1ce38da16a08adf88fafe99c96402dfdc3281a237fe8f6d0074ce581084b8b2"
  ]),
  ("name-candidate:4f841e41357bd26541f697aab5cb2fc5ff95cc227129b8515dd56c42b34f1c8d", [
      "name-candidate:4f841e41357bd26541f697aab5cb2fc5ff95cc227129b8515dd56c42b34f1c8d",
      "name-candidate:936f584d0845947b173d5636369f29232aa6168380125cffc5cd3e260d433661",
      "name-candidate:d3a3cfa02aa271214f76db83694d8c479c93501931075ced9520cada5d874e71"
  ]),
  ("name-candidate:43237451ce1576fa336eaabe2031ac4b0bc5a83de30b4cce861f07b9f1acb05d", [
      "name-candidate:353fed4f323751a7ef2aa8220254644c96e1ba3f4a814617e2b8d4165802e2b7",
      "name-candidate:43237451ce1576fa336eaabe2031ac4b0bc5a83de30b4cce861f07b9f1acb05d",
      "name-candidate:8ebb01cb3a16595d931d65e91d9cc52822a7e7a74a5423c77461ef5623ea11b6"
  ]),
  ("name-candidate:08d491044616c52d7a5872f0ca2619924158b60ec2b5a9542db2828299aec1ee", [
      "name-candidate:0686b458a547a9e479b2522effa70dc99d32b6b37d220cc5a14832993abdb048",
      "name-candidate:08d491044616c52d7a5872f0ca2619924158b60ec2b5a9542db2828299aec1ee",
      "name-candidate:f0a49388dbbb387e08bbdef41c6984a24bf126ae32c4da0d4a93cebbd6abf97c"
  ]),
  ("name-candidate:062e5570462258efa50e0e89c5276513b7f28231dda7b8d34ae82b30d1edd0b8", [
      "name-candidate:062e5570462258efa50e0e89c5276513b7f28231dda7b8d34ae82b30d1edd0b8",
      "name-candidate:7d5fa2d0c2d6c5c6a0f058cd81edf0fd6d0fe6da9d254d6ef4e696f71fbc8e97",
      "name-candidate:954c9ffbe73eccae05cc32aa334350fcf950ffe29722b22fdac512e2b675d10a"
  ]),
  ("name-candidate:b530e7a58af2af63e57ff3ee9cd06ab8cdf4a4aae461660719c6863f5d9555a0", [
      "name-candidate:2e8216f87d630d962654d3c866c0828db9ee3ce11256ee611568788a38211afb",
      "name-candidate:b530e7a58af2af63e57ff3ee9cd06ab8cdf4a4aae461660719c6863f5d9555a0",
      "name-candidate:b7bc9bef96ffa5aa41cd476473e86e004614e563dac71f29c99de6605e66741f"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L58079).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
