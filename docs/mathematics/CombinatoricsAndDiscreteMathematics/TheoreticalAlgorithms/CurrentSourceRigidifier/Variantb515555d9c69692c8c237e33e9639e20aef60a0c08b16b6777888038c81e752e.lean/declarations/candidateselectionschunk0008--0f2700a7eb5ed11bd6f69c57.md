# candidateSelectionsChunk0008

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:044932b256c646d4d5784078a459062365bc8f5afabefa1527ff53f501e58a4c",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0008",
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
  "slug": "candidateselectionschunk0008--0f2700a7eb5ed11bd6f69c57",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44354,
    "line": 44031,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f2700a7eb5ed11bd6f69c572f71f414a6c4bb829f343c2a2a4d12362adb16b4",
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

Occurrence: `declaration:044932b256c646d4d5784078a459062365bc8f5afabefa1527ff53f501e58a4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44031–44354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0008 : List (String × List String) :=
[
  ("name-candidate:98e42830b3c93dc3aaebe0d8d7ae43593abfd3341c7910a9a7f1ee9312c1e71f", [
      "name-candidate:03e1cb21dda2abb46746ddf0f584335e8dde3f80f54f9e23bd2ac63b8c689ac0",
      "name-candidate:98e42830b3c93dc3aaebe0d8d7ae43593abfd3341c7910a9a7f1ee9312c1e71f",
      "name-candidate:f33a3d50f2a5785f98446e1da9ba54750d060097babb92014997db25b92e75c6"
  ]),
  ("name-candidate:3cecdbaed04ea67db405c7d6bf905da25b0e0a8d11479ba4d8045ab81e752fdd", [
      "name-candidate:297d967b8fe212b69d1ec88579678e556b3f3129204f1c7b8cdf81e29fbd34ba",
      "name-candidate:3cecdbaed04ea67db405c7d6bf905da25b0e0a8d11479ba4d8045ab81e752fdd",
      "name-candidate:ea06d5070a2e2ac6e9f3b82d051975c36422530ecc2bc46bf49be45cc9a3ef63"
  ]),
  ("name-candidate:01f5991aa4eca6a2dd2f83b160709a3f70d7c5fea817753743751cf14526c029", [
      "name-candidate:01f5991aa4eca6a2dd2f83b160709a3f70d7c5fea817753743751cf14526c029",
      "name-candidate:45907405bc580e474b6c85f3a9d64b6836b50f48b23048e22ad3e9595008d1b2",
      "name-candidate:f25e847b14905dcef864f086efe0ecb64d431008e108615c9be892abd25088dc"
  ]),
  ("name-candidate:98146928e7d1d96057a6dd79b60eec68483f45b04f112b0420497fe936438c70", [
      "name-candidate:5a7eae50f0b4c12de5a086326fe24484d269310cef7053feb7187aa2c1ce2d54",
      "name-candidate:98146928e7d1d96057a6dd79b60eec68483f45b04f112b0420497fe936438c70",
      "name-candidate:e6df197961b2a28bef4e6e6e6b35206f3ef747030537f11e435b727a5cf0fe62"
  ]),
  ("name-candidate:da10ba5e3e51a170964465be4d529ac9addd09d90716238e2967514494016ab2", [
      "name-candidate:8aec2f615544f560aa7246fbf656d0030b2003792a2d50bbba44ae8982ad8cd5",
      "name-candidate:da10ba5e3e51a170964465be4d529ac9addd09d90716238e2967514494016ab2",
      "name-candidate:ffe71eac2118f39c833b3978efeb791e6109a8b0846d1adb5e59a69f84b68eea"
  ]),
  ("name-candidate:f9c490ed930f6cd2e25b3ec5be19e8ac23305c08e79a617d187d698151e39f99", [
      "name-candidate:72035c0d926faa35d44646a53c2c960826f552d51570cde50ce1d1d644157519",
      "name-candidate:c7ec797b24b90b06b92e377014d17ff2a8a08c906e2135cbb66ff678d00632b3",
      "name-candidate:f9c490ed930f6cd2e25b3ec5be19e8ac23305c08e79a617d187d698151e39f99"
  ]),
  ("name-candidate:e35af0326ab284cdf3bb891cd884858b1772ef39965b1c60921df2d3f4f27902", [
      "name-candidate:42de8e3024b51ee2b00e1237eb4a5d30e8d83222ec1a1c7711dc71c6e095a17b",
      "name-candidate:6a909e79340b68fadf540cdf11af6c0bc5b79c33dfa2b1f1a2b3c8b2c3bf7dcd",
      "name-candidate:e35af0326ab284cdf3bb891cd884858b1772ef39965b1c60921df2d3f4f27902"
  ]),
  ("name-candidate:b8bb64b2b6f1811bbf18daec0ece4e0fe50e1a2fb7cd161ee7c27c0ece5bd7ac", [
      "name-candidate:8176f99d4a2c81bd96be205ad14a7256c169fdaad5f89fb6040bd6c85e937968",
      "name-candidate:91a7773eb5442f9e2f461ca84ea24f90e3a274b6c8e47203fc6485942254f09b",
      "name-candidate:b8bb64b2b6f1811bbf18daec0ece4e0fe50e1a2fb7cd161ee7c27c0ece5bd7ac"
  ]),
  ("name-candidate:7c7260c9a4438e953367b96492a65c2806db30ceb01eefcc1cdb05098dc46768", [
      "name-candidate:7c7260c9a4438e953367b96492a65c2806db30ceb01eefcc1cdb05098dc46768",
      "name-candidate:94f191ef4eb7ca0b42c2f1e1ecac12861c253b4132d5543c2368438a95b2f402",
      "name-candidate:f8bbe85dbc2d3c75c6a75e8e50ef5ce72e52e281083bd9bcb00fa491786a6814"
  ]),
  ("name-candidate:39b1eff57abec626a928431c8af6808ba902d8a97e2d7c596f9dc24ec60a5375", [
      "name-candidate:39b1eff57abec626a928431c8af6808ba902d8a97e2d7c596f9dc24ec60a5375",
      "name-candidate:475580d5ce9f064734e98d48771ed1e1b49f9ae22c5bd806b3eb9aaafa1e9ccb",
      "name-candidate:cbe80ae13c56eb615fe7078f77423fdba918df6a2def6d404181fbb1daa259b5"
  ]),
  ("name-candidate:c2948a5095270139ff30cc40d8da7c4afac318013bb25930a0907b04c45874b0", [
      "name-candidate:72ff2823a0d3b4d155e3b8f9ea1759d3db16cb8d41a3c44306ba349720a13cb5",
      "name-candidate:c2948a5095270139ff30cc40d8da7c4afac318013bb25930a0907b04c45874b0",
      "name-candidate:c362ae84445e9445a1ee7e2a44437a5e8db46427185bac873b0aef004d070088"
  ]),
  ("name-candidate:6ce89a6d83c1321c95a0f8ac0d4daf6cb29d8496fe0a5c9aafeaa6093b0cbc29", [
      "name-candidate:6ce89a6d83c1321c95a0f8ac0d4daf6cb29d8496fe0a5c9aafeaa6093b0cbc29",
      "name-candidate:9df33d53ad5cb577e09d7ad56a5d55e3904eeb42a412f5e87d8e55d43cd89f82",
      "name-candidate:d2846ea751f0ac2d07fcc2274f921a5a09bc4043294c1c9702f565c2cf1d1809"
  ]),
  ("name-candidate:d1455dcf95ff6e592eb2faa47ae2a307c0bdc42365dfde4bea138cdfcab7aa48", [
      "name-candidate:0eb03ec0bf2dddc3dd687cf55360aa6923ad6c4818a2157fe798125f397e5151",
      "name-candidate:9c52c3c566892f820d6f8ab73c9bd6f1b3661a36fe9bdae927da0814f5058185",
      "name-candidate:d1455dcf95ff6e592eb2faa47ae2a307c0bdc42365dfde4bea138cdfcab7aa48"
  ]),
  ("name-candidate:da2bbd51fc799aa2a517edf95ffa2c669c7bee158e1106e231a95556a3220380", [
      "name-candidate:da2bbd51fc799aa2a517edf95ffa2c669c7bee158e1106e231a95556a3220380",
      "name-candidate:de27874ee8f6f7e887455d1115a93061df38479c3a526bc90a2c203dd58ffacc",
      "name-candidate:ee7a6b0cc96a1caab0cdec8c81c519c45194370b5b41a8d1c4ad104f41f4e358"
  ]),
  ("name-candidate:2ef6cab4faf20559b0435ea157faab3afbd1741faf66dd2985492e1903b624e0", [
      "name-candidate:26c6acacd9f53dc6b9740157acdd82e07dc1943d09ad8bdc00fa5150373d885d",
      "name-candidate:2ef6cab4faf20559b0435ea157faab3afbd1741faf66dd2985492e1903b624e0",
      "name-candidate:d95353160aa4b2150b332ee26a79d421c3ff8f909837fca8f9c89ffde6559ef6"
  ]),
  ("name-candidate:32cb7acd89b6c29819302301b40940d2e4794b58220c9da4a7e786c521438edb", [
      "name-candidate:2161102574a7136479552a52b0001dd20bfde63fe0baa463ab01c1f22c51ef56",
      "name-candidate:32cb7acd89b6c29819302301b40940d2e4794b58220c9da4a7e786c521438edb",
      "name-candidate:5ec6681d38ddb040ed5c7b6f98448818b3f18ca8720fe4ce16138dff57c437de"
  ]),
  ("name-candidate:d34aee605d258d9996d02573218d1d15a80bc549a2f1b137da5f13b36735bf99", [
      "name-candidate:9e5fdb0b2d7d716b37cdca932d67dcdddf09b431b6751e22204eb76f47b40244",
      "name-candidate:d34aee605d258d9996d02573218d1d15a80bc549a2f1b137da5f13b36735bf99",
      "name-candidate:f62d33c7a831ba69d8e958b9fc7e39186f1015ae15c6bb8ca438ff55676c95ec"
  ]),
  ("name-candidate:26c76ba55a0963dd21c081e5ad43c610eece9851661bb586a01396191a8b50c6", [
      "name-candidate:26c76ba55a0963dd21c081e5ad43c610eece9851661bb586a01396191a8b50c6",
      "name-candidate:5ffad534ff68bb0cd851cf2bafa172f7bca3fcef7ec434ab3cd9a0c53fe13bd9",
      "name-candidate:71452a59d34705f548fb89e6d15422607e503e78c89e6746cfa87301c153bc21"
  ]),
  ("name-candidate:988a1fdbd247f175b6d7a1eba4e1238d33a2719689b08230e25c922cbc1fc640", [
      "name-candidate:6b0bef5c67fa402435bfe89a642d2dc5908b22588c8845bde16f997a37b936e4",
      "name-candidate:988a1fdbd247f175b6d7a1eba4e1238d33a2719689b08230e25c922cbc1fc640",
      "name-candidate:9958e319226e261cd50509287e4ec89fcf05738e7ccbb31f083301df6f868cf8"
  ]),
  ("name-candidate:683d120f1b76f879ceebd3e1db015e0454d6f364ee7a9249e94dc9d2ba24a2bf", [
      "name-candidate:0aa80d59594efa1a780cc425da00de72eb1d0b77735626ec480c2b84ad66025c",
      "name-candidate:5d3ccf733ce178261f73eeebc8b5f3c75e70110823e48d76cdaf4dc6c3ed50bc",
      "name-candidate:683d120f1b76f879ceebd3e1db015e0454d6f364ee7a9249e94dc9d2ba24a2bf"
  ]),
  ("name-candidate:7839f18d77ebab179199c7334cb11b38cc7bda0687aec2b02b39cf89e14c0a4d", [
      "name-candidate:7839f18d77ebab179199c7334cb11b38cc7bda0687aec2b02b39cf89e14c0a4d",
      "name-candidate:87a3b7ccf84a185daeee03a656a1ac5eea125d69bb9337663f4a412770df4c01",
      "name-candidate:e93e6c2b782c79e535daba20ca9445b918ac156eb067b82038e5962fb912a5d8"
  ]),
  ("name-candidate:ddafdda5564ef8ad48d8f0c8d97a5273a811005ac0e3f88213c4237c3f0ff598", [
      "name-candidate:5b995dca53c34b4049007916a2ba06d4625e54020d4b98eb67a7547d74bea87c",
      "name-candidate:a0236080df624bf8ffe9334bd9967bafdd7abb535c750b9856ad70734ec8ac78",
      "name-candidate:ddafdda5564ef8ad48d8f0c8d97a5273a811005ac0e3f88213c4237c3f0ff598"
  ]),
  ("name-candidate:b2b199e73445322335cf9794af220882766fa78e692d01164c01fb18e9625026", [
      "name-candidate:184b6d4b1d43f8dc079af33e955bc94cb4f04e25b724dee53f2d4b79ce0df0f5",
      "name-candidate:2524b63d85009e0faf54f8ad2566ff6b24acbef9bdb40e31e056dccf8728c046",
      "name-candidate:b2b199e73445322335cf9794af220882766fa78e692d01164c01fb18e9625026"
  ]),
  ("name-candidate:9ff996d153af4b6b22d8f44d6d6a31195d4a420ecea33661e2e8e8e6cbc26d01", [
      "name-candidate:24f4c261513b9ec1490b866d85b1f73cb88bcca3c0e8283e010ef4ee95df8d92",
      "name-candidate:9ff996d153af4b6b22d8f44d6d6a31195d4a420ecea33661e2e8e8e6cbc26d01",
      "name-candidate:cf3b25975a4f9c1935244f9d8321003664da36ea787631ea84874915fdced938"
  ]),
  ("name-candidate:3ac030e560652a1b8a58ef3be5caaaf7f1e0622122c93fcedf2e54b060c2b66c", [
      "name-candidate:3ac030e560652a1b8a58ef3be5caaaf7f1e0622122c93fcedf2e54b060c2b66c",
      "name-candidate:806ccc8dfcf25ac27961c1eb35329236797264378f09618dd4006fd1c13b4842",
      "name-candidate:985efa63784dfa0d0702c2bf2f0d061d2cefc76fd5b912652b71f1ef9200e3a9"
  ]),
  ("name-candidate:1f618f1411ba9ea74327fef37d7c1b52609a92725f95baeb2b1c6fca02ffaec1", [
      "name-candidate:1f618f1411ba9ea74327fef37d7c1b52609a92725f95baeb2b1c6fca02ffaec1",
      "name-candidate:3d12f0904c60a87a5551f576a53a6b4b4ad905cb5713b2aeb1aa984cc977df25",
      "name-candidate:84bb1b8638e1af0b9c272f5e422689d7d4c90f04b05d264f8d7c62f71b610d0c"
  ]),
  ("name-candidate:715e53f52a47fd3cca28eaf5f0ba6bc3f9fa63cf9b383b4d557f85dff891c21b", [
      "name-candidate:715e53f52a47fd3cca28eaf5f0ba6bc3f9fa63cf9b383b4d557f85dff891c21b",
      "name-candidate:88bf6a5827c96032d904e8daaf413029eff50ba958f8b92def5232db656f21ba",
      "name-candidate:9089676d8209c1690c1844c4cd21f12451b74c6f6a42acfb9714a1d587e1a19c"
  ]),
  ("name-candidate:ef208526b3e452177c20d86929ee99b42304825dad409fdc4217bab77e1e5599", [
      "name-candidate:09ee5da95734cf52182e1e54c04878c532fca9e90f8c7de4401af3654cc0d379",
      "name-candidate:91ac718e42d3bf8704bcab0dce6636b73d14c8fff5589ae63e630a9589b88119",
      "name-candidate:ef208526b3e452177c20d86929ee99b42304825dad409fdc4217bab77e1e5599"
  ]),
  ("name-candidate:820f2617c3f53f59210a6ccf11cc5026fafb91aca2e4ae9e1e9680c70f159027", [
      "name-candidate:09d57dddc5484e2bf822bc7f487da9e11d5fbbec718181faddffe94330c6b0dc",
      "name-candidate:0e65605ccf4a7012e734bd654b9e65aab0530b38fc1cb84ccd7287039e91aed4",
      "name-candidate:820f2617c3f53f59210a6ccf11cc5026fafb91aca2e4ae9e1e9680c70f159027"
  ]),
  ("name-candidate:f6ea7b9f5ce3cf2aa94d5066bda0e4a8e395fed8faee7e1626771b9c8a3b0ff5", [
      "name-candidate:4b901670ac73264fd1c2ee1ef9c982969b289f3182eb5214a83e83097acaf636",
      "name-candidate:a899f41c971621afa231dcc7434be9348425b2874dcbf23bdeb1ac04837648c0",
      "name-candidate:f6ea7b9f5ce3cf2aa94d5066bda0e4a8e395fed8faee7e1626771b9c8a3b0ff5"
  ]),
  ("name-candidate:a0942814f0d3b6d3aaeda3def5a23e31e99f1954db85c8328d91e0f57637393b", [
      "name-candidate:a0942814f0d3b6d3aaeda3def5a23e31e99f1954db85c8328d91e0f57637393b",
      "name-candidate:ee79023b1fd81142f0d2fee3e36dc6b076e010248169f691f7c34942077a05b4",
      "name-candidate:fe90c294995c5bf27f90e5c393649f736d04591073c3ccfe7c159f71291e30cd"
  ]),
  ("name-candidate:e596cc8c6200cb520dff8c38f416f0b87013c066f21de9e00a19c1134b888abf", [
      "name-candidate:0b8aea01db3be537c684a07b6d5b5fe7ad625460b7f0eceaec95b3dabcf48c68",
      "name-candidate:9ec9ef041228352508bbd23b2964349e884ddeb103e7efc2e0ec3a2b48734f04",
      "name-candidate:e596cc8c6200cb520dff8c38f416f0b87013c066f21de9e00a19c1134b888abf"
  ]),
  ("name-candidate:31791bb3004c5a38a97bfaf17fe433ce8a949dca5f88681511e81902b95e1e17", [
      "name-candidate:31791bb3004c5a38a97bfaf17fe433ce8a949dca5f88681511e81902b95e1e17",
      "name-candidate:4d6c6562739d90ca97c721ffe16ab94f4c681977f95926f154d09a9e83881539",
      "name-candidate:bce0c286d57ff45374cf67f73204f1c399645972c19d5ee5794841dc5fb4a8d2"
  ]),
  ("name-candidate:09a03df1573f2555108ce121f50517b0cf1b83ecc36615fc7602027334299f62", [
      "name-candidate:09a03df1573f2555108ce121f50517b0cf1b83ecc36615fc7602027334299f62",
      "name-candidate:8b7686b155e7e13f03df25be80683db92fdeb6504d5ce8e62aff7a6aea6cadfa",
      "name-candidate:d35021a49a014a685c453b01f33709cbd7f8cb2c795b784445e07dc32335d334"
  ]),
  ("name-candidate:fa1c478e615d8ec18766853c25066b3b070660922a696ceaa4bb920e0beff164", [
      "name-candidate:61a587f9224670e29d88b8a6585cdf0faa9b78c45da89150b18ed5519a759a2d",
      "name-candidate:dd941c790c9a54347b8911f97f3fe411709e79fafdd9d95d96cc1767ed7aa0f4",
      "name-candidate:fa1c478e615d8ec18766853c25066b3b070660922a696ceaa4bb920e0beff164"
  ]),
  ("name-candidate:e69d07f28512cd945dfa4416f8de16ba47fef5f25094618eb1e1e0651d3b3ffa", [
      "name-candidate:409e1e1e1844813bc69f6984a961f12c7949acfd1f95f79fe2e805a55866f6f4",
      "name-candidate:5bf19eff441bdc56d1fd86b127715c8d10248c8d46b442c52cd0d3e4fa3de14f",
      "name-candidate:e69d07f28512cd945dfa4416f8de16ba47fef5f25094618eb1e1e0651d3b3ffa"
  ]),
  ("name-candidate:0d878a5dc3756f759e91855bb4744690b81fc7cee43500ef6193f36cda76aaf0", [
      "name-candidate:0d878a5dc3756f759e91855bb4744690b81fc7cee43500ef6193f36cda76aaf0",
      "name-candidate:329873c8905130aaba09528b908d9f570c73e93a6fe700d036eb5c96e41b631e",
      "name-candidate:38a4c32a8a1ad708211a753449f24f9874a7b0982e54dc8968e5628e717f07cb"
  ]),
  ("name-candidate:0d9caae04b5911f2571e753b4608ee8daece4a54f9d6d15d6c859d8ba06d594c", [
      "name-candidate:0d9caae04b5911f2571e753b4608ee8daece4a54f9d6d15d6c859d8ba06d594c",
      "name-candidate:7be2a319dc4a2775f46a695892ee8ae93bec77fb052edac3000a119025fa1403",
      "name-candidate:d6f139227a83145e1f7ba86f2e6c31e1aac798d3efd8d50883ed10c516b49626"
  ]),
  ("name-candidate:4d708cae99dbcddcf62fb54276c91848396397caaba04407f79593568a6daedb", [
      "name-candidate:061c17a129f2840e91df6f0c7f5327ed9f4d36b06252362476a5555d689f3a8e",
      "name-candidate:4d708cae99dbcddcf62fb54276c91848396397caaba04407f79593568a6daedb",
      "name-candidate:c85ab76c332f8176054a72574653491b11b88c50ae7d1972a7c2515be8e90a47"
  ]),
  ("name-candidate:029240b69381317476f21c64d9bf51d3e4a3d9ad289cedf1ef981241eb91a5b0", [
      "name-candidate:029240b69381317476f21c64d9bf51d3e4a3d9ad289cedf1ef981241eb91a5b0",
      "name-candidate:8ff4046733cd8991dbca5bc590c20980d2cdc0aa577fa6ccc4ab7c04896cae2c",
      "name-candidate:f06e154ae31ff55fc45f98a5c7569be8476c77a9ebfbb2dfc3ac9e3fb8eddd6d"
  ]),
  ("name-candidate:a29d97730634f04d5657ede08bde01136831d017b2179f0a28bcd997c85531bf", [
      "name-candidate:692d5682f3e41e55fed11ad4e629d466fcd2e72c9c039eb9d5bd586c86f3f3c5",
      "name-candidate:a29d97730634f04d5657ede08bde01136831d017b2179f0a28bcd997c85531bf",
      "name-candidate:b09445d4b2251343e20a013ff14897b6c0ce3e1d929367afab7a38c66af75d55"
  ]),
  ("name-candidate:f5eb8f51a50dfa773a8c046c7995dc10b44b8947af4589773b72da9a5df82b11", [
      "name-candidate:12336ca9f554c090efbb1eb4041ca1ad32961d817e5f2c271d4671528cd7e152",
      "name-candidate:8cd74c064d2b47b769cb290fcb1b5be477172b222cd30d8a8c54afc886497191",
      "name-candidate:f5eb8f51a50dfa773a8c046c7995dc10b44b8947af4589773b72da9a5df82b11"
  ]),
  ("name-candidate:1ba6bd8a38ff7752491c6609c4d50054632d4669110b47c3eb9d1b0afa970fdc", [
      "name-candidate:0e9a7c1b662dcc09a31d0a0cfc25a0ca511a593046a657db34d4d8ca760e6aff",
      "name-candidate:1ba6bd8a38ff7752491c6609c4d50054632d4669110b47c3eb9d1b0afa970fdc",
      "name-candidate:9d7537556879d20da1688ecc6aa3163d2d8537439e2718ee3a03732bd32148aa"
  ]),
  ("name-candidate:2759416785ec8d585b445e1206d9cfe6555874b0f18ad754e37e671b2eb8fb4c", [
      "name-candidate:2759416785ec8d585b445e1206d9cfe6555874b0f18ad754e37e671b2eb8fb4c",
      "name-candidate:a6c7bb7a53508a1159e9d5dc60005f17f20ccf23e6045ac5b7433713a7c6137e",
      "name-candidate:d2851ec232791e5516e9ad226292058d7834e3b08779f1dd0c771e743a133d9f"
  ]),
  ("name-candidate:805027931d41982def2b5a22c527a4da87699ef4574baba88cadb3378dec1716", [
      "name-candidate:3d7a9d66d2fd8bfd75a498d244f40099f0de2ac9706282cd1bc556d5bcc58bb9",
      "name-candidate:75ea3393f5d0ee7f3ba246d60b1684c953513bb1df46679094d317300b63ac96",
      "name-candidate:805027931d41982def2b5a22c527a4da87699ef4574baba88cadb3378dec1716"
  ]),
  ("name-candidate:6bdfb1482d5e2527ddf79e228cba1492b11484f8d2aebd7a0a500e73d25a624f", [
      "name-candidate:1712243888babc558854e087c5fd017c6f529ac92ef498ba18478e79be990d55",
      "name-candidate:436cdd780bfb7b11fb57372531cf6d6342f5ce3821b90c6c38b772060fe3778b",
      "name-candidate:6bdfb1482d5e2527ddf79e228cba1492b11484f8d2aebd7a0a500e73d25a624f"
  ]),
  ("name-candidate:4212b0cae8cf4d15feee6edc872442e5d6a038535dd60958aef9a16beae7c83a", [
      "name-candidate:4212b0cae8cf4d15feee6edc872442e5d6a038535dd60958aef9a16beae7c83a",
      "name-candidate:8f2dd9721bcb43eb337c646f8aa1e77598c898811f9eb6ac1a6de220f90429f4",
      "name-candidate:f9a3eed69ecfebe6282d0f5d9ad746e0233b2d38a2d0babf828103b8d5e9de36"
  ]),
  ("name-candidate:8739485c3963d00f0b38d6adca71384e6fb3ac443cba7aad6ba7ddb01b7f4972", [
      "name-candidate:118feeb566b2f1cc79c21f23094192ead595f067b1b64ba5713c99e098b1fbe1",
      "name-candidate:8739485c3963d00f0b38d6adca71384e6fb3ac443cba7aad6ba7ddb01b7f4972",
      "name-candidate:a301cc16b813ad8b353c19b18f3914489bfbe2604e3894c3ba27c77ab09ab12f"
  ]),
  ("name-candidate:cbf537521a456f941efc20a6ceb5492710676d54730d048741116254e50a4a31", [
      "name-candidate:6d50e49dfdf2f6f36c4dc92d634ed1e5beb923123a2bb9c229028efa40f95f80",
      "name-candidate:cbf537521a456f941efc20a6ceb5492710676d54730d048741116254e50a4a31",
      "name-candidate:dfea399d5688c0442c0559ec012c4bd79bb8f12a3b4d0f5d29e7ea7b3fbf72a4"
  ]),
  ("name-candidate:bfbf1bc9a70ffa9e496bd72a2257dda7d6123dd36ca8b2ef473b8fa7005aadef", [
      "name-candidate:2ac8af265e1f040858822fd8ffa151ead8c7cc42c47e9a2d046bdc427350ee04",
      "name-candidate:2ff269899bf8a0b5c8c59f291452a454dc032a98a5794b8473dd6e53b2ad8a73",
      "name-candidate:bfbf1bc9a70ffa9e496bd72a2257dda7d6123dd36ca8b2ef473b8fa7005aadef"
  ]),
  ("name-candidate:9291092739b4cf95b4afed0c156069ad0c31f6f8aff494a97e096467dbdd3d95", [
      "name-candidate:3a38be7059ff183e155ec1bb19c31c35cf857699584e4f94a3d7a9b796f99e3c",
      "name-candidate:9291092739b4cf95b4afed0c156069ad0c31f6f8aff494a97e096467dbdd3d95",
      "name-candidate:e2bd5f7af2ad60fa76f0849331ed3198aca167a091ef53292f7209b9a17c6a5e"
  ]),
  ("name-candidate:5f54ffcc132627d725a179ae4451ad90d7ae0038826491298fa24a4ec6589401", [
      "name-candidate:3c04e56dffe3b51e25fa43da8bfaad02e75f0ce91e3b4ca796137386e096eb10",
      "name-candidate:5f54ffcc132627d725a179ae4451ad90d7ae0038826491298fa24a4ec6589401",
      "name-candidate:c013a890c744261d1443674c0be9826c77c16da5ac7b43ff098dd81bb0f54a03"
  ]),
  ("name-candidate:fe844875bc6a5f883986ea9d26e59ca3b2c83ecfda6c914c63e8984806237614", [
      "name-candidate:369115530b5ff092fb1ee3abe6d6abdaacc8d91df65146c5c01b09965f7a0b07",
      "name-candidate:42fe68be49441515028318f791ae74318aa7b36de8cb57637a5dca7c874de768",
      "name-candidate:fe844875bc6a5f883986ea9d26e59ca3b2c83ecfda6c914c63e8984806237614"
  ]),
  ("name-candidate:4272dcea0f511573b6fdb617b25713f831c4f676720104e638edacc456d0662c", [
      "name-candidate:4272dcea0f511573b6fdb617b25713f831c4f676720104e638edacc456d0662c",
      "name-candidate:441364114c37f4a8dfc4d09ff0403f5afba386fde97df7b5a4533fa68bda5a38",
      "name-candidate:afec83c3443e20f29ccc92d219b88708aa37802efd4010fa4566df82bc22a48f"
  ]),
  ("name-candidate:60de043dc4489a4f0b6dd84e360497ea6661e3a4ff25005c99435858d04d192d", [
      "name-candidate:59b652ea00d14cdab552c36404c06858fc5d5200509f91664e1290d4bccc3fd9",
      "name-candidate:60de043dc4489a4f0b6dd84e360497ea6661e3a4ff25005c99435858d04d192d",
      "name-candidate:ef376eb288c2c05e69184c463815d527b7a6c3ea95bdb09e2fe7ef7e937b21b7"
  ]),
  ("name-candidate:0885c619a5e145aeb1f320a627f6b12c9277bf53eba2d291727328318183b62b", [
      "name-candidate:0885c619a5e145aeb1f320a627f6b12c9277bf53eba2d291727328318183b62b",
      "name-candidate:2399d476c5d5a30466701ae1cd2aaa8e01bb8a69018bd07391653ae8b891cc00",
      "name-candidate:e82d8381a0798d6445c6149cac65d2afa3c43f95637b4464de1be017090277f0"
  ]),
  ("name-candidate:63685f30dd7716382156edd336a4fc9f40b031a69d2dbe8b20da9623b5038d7f", [
      "name-candidate:63685f30dd7716382156edd336a4fc9f40b031a69d2dbe8b20da9623b5038d7f",
      "name-candidate:8d3fde76053280098e91e8212ca9186bd23e64b422b785570d9a4bc1412c91b2",
      "name-candidate:a666968c1fa0150ff69b6df3b759c177d6b977a23291cc75d33c21096dee76df"
  ]),
  ("name-candidate:d8b72fd5ade38229f7f3f1b1eb090233ca2deb849a850e07ee517c2545a6b500", [
      "name-candidate:5db44d3740e2fe42b254dff4ff85bb06cdfa21081bb9f24a881c37467cc3dda9",
      "name-candidate:a49731aa3a7aad586d92d5c7b476813bafde34f8df5f202d0f8f0c6313758097",
      "name-candidate:d8b72fd5ade38229f7f3f1b1eb090233ca2deb849a850e07ee517c2545a6b500"
  ]),
  ("name-candidate:8129b3154bf7e23a587b222b28b77e5a6b91c1f95a8afde44a205964b2705334", [
      "name-candidate:31c104f95e74d5a6b18bb4e9600572ce6c8b84b7dbc997e2ccc244e2b0d2fe7a",
      "name-candidate:34dc44802d17d08b0c32f7f34de757fdc2b8f8486cfbe5f9e6bd05cb1d31eb5f",
      "name-candidate:8129b3154bf7e23a587b222b28b77e5a6b91c1f95a8afde44a205964b2705334"
  ]),
  ("name-candidate:53a31d87e994bae53970de3cde1d05b97c5752f5c60e4a62871a04128144e6fb", [
      "name-candidate:480240b19a1628bcac64e4724a1ec8c7cb0b8cf58cce26b239bd2a4ea7961da1",
      "name-candidate:53a31d87e994bae53970de3cde1d05b97c5752f5c60e4a62871a04128144e6fb",
      "name-candidate:9b173f253d250b74126a08fe8f0eb187d4ceac782c8432361ee51c5d253342cf"
  ]),
  ("name-candidate:d99982bd765286016f91668eeeeac871574b10dd851bcc8b2a36fe14df160e4b", [
      "name-candidate:b83f6be50dc3b2e1752f8b51a23685c22dc92fc2c961f6d7b12b19b443598e88",
      "name-candidate:d99982bd765286016f91668eeeeac871574b10dd851bcc8b2a36fe14df160e4b",
      "name-candidate:e7306ed10788afb9d31e4548a2acab65cd7ebb42f5a0e51fb40ab55554e07ce8"
  ]),
  ("name-candidate:1e5f032a6f51edcfed07d676ccd84b5d32ab68e105ef67a79fed2594fc27fb4e", [
      "name-candidate:1e5f032a6f51edcfed07d676ccd84b5d32ab68e105ef67a79fed2594fc27fb4e",
      "name-candidate:9446215acd4a7288f0d9bbe6484b300e778c8e3b839d2b96cfe504c2aa43f29e",
      "name-candidate:a7ef8cf376b6d64acc5bd6882233e670bf19de5a55d9724735c81935ce61d2ed"
  ]),
  ("name-candidate:248a8f967dd79fde8b2ae9624618b1f2afdf3d20b2d7d117db4c984ebf4cf5e1", [
      "name-candidate:248a8f967dd79fde8b2ae9624618b1f2afdf3d20b2d7d117db4c984ebf4cf5e1",
      "name-candidate:8d642a60d5a0da51d0519ce965ef77dd52aef8afe467306e1d8e0f6ef7e008ab",
      "name-candidate:9e899f9afbebd4d132faef72ab664e7f07cc367cc63340a0f1d0422dcbe0c9d7"
  ]),
  ("name-candidate:e1073614853fa5fc5bc20bf67c661eab59ae054fd25b6a70e75a2197c5b0c897", [
      "name-candidate:438dc17843027a509e6727db87e81d9e4130bb605d9406376312b7c1989690dc",
      "name-candidate:b33d9833d036801873e4d34bbe94b4db35ad6f18c03f49c3c6552482e89fb936",
      "name-candidate:e1073614853fa5fc5bc20bf67c661eab59ae054fd25b6a70e75a2197c5b0c897"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L44031).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
