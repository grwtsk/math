# modelCandidateSelectionsChunk0008

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c43a9c2d736804ddeb7fdfb41792f4a14bdd6ebd3fbd387156b52c16fe9707db",
  "kind": "def",
  "lexical_name": "modelCandidateSelectionsChunk0008",
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
  "slug": "modelcandidateselectionschunk0008--0d8135006ab04d044da5e1bc",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57438,
    "line": 57115,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d8135006ab04d044da5e1bc3260ed6ebbf58ca591a392b602c27ec867c30166",
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

Occurrence: `declaration:c43a9c2d736804ddeb7fdfb41792f4a14bdd6ebd3fbd387156b52c16fe9707db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57115–57438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def modelCandidateSelectionsChunk0008 : List (String × List String) :=
[
  ("name-candidate:444a03313876c79573bb1a70882678e56c8ac55237f9e6813fb6e545cfda758d", [
      "name-candidate:419b4e993b4f44529981627d6091bf1611d4bd971beef63e7b1fbd661bbe3d0a",
      "name-candidate:41a0ba1a5bb1c744ab59c152cc708a0b2ad5d1bf0bf4f261190c3b75270fa257",
      "name-candidate:444a03313876c79573bb1a70882678e56c8ac55237f9e6813fb6e545cfda758d"
  ]),
  ("name-candidate:57b211485bea4b8b40ed1b401200acb56691b3c237fe5a31161d2dce80a2ce19", [
      "name-candidate:51b5a8104c112af0b4fdc6eacd59f771e1c5c63bbce0be02ff673eaa8408a51e",
      "name-candidate:57b211485bea4b8b40ed1b401200acb56691b3c237fe5a31161d2dce80a2ce19",
      "name-candidate:581d860b7897543650591ddd6b2d182e749b50fd8fc6a763d939b5d292f8888a"
  ]),
  ("name-candidate:28094869bec0327b70b75abcea15fe4526d9de110d24479f0603745bd08a75df", [
      "name-candidate:28094869bec0327b70b75abcea15fe4526d9de110d24479f0603745bd08a75df",
      "name-candidate:9dd3b91b111877e0c43d05c55dcd268f73601caa108871f44a8334e6257fff1d",
      "name-candidate:c32d0cce6a0a137c605647e32e2c941d3f8a74a68862889aa83e8673897d2eca"
  ]),
  ("name-candidate:ad88e7c367fbab50d58259b903e4828723cd05bd4bd0661c36282bc4e1cd5085", [
      "name-candidate:751573bd8e8dfbf3ba163a6553cb00d0e73a98f4be0a2bf56e41b0ebc98bcbe5",
      "name-candidate:ad88e7c367fbab50d58259b903e4828723cd05bd4bd0661c36282bc4e1cd5085",
      "name-candidate:c12fbdf7a3efa1f04bcc32994b9f6595643b20d625d9e7d7ba36a00ec638fc34"
  ]),
  ("name-candidate:991554db0023d42d53e4cc4f0ff25ca94292e59f2220b17c6e115966056e9f67", [
      "name-candidate:918dcbe09cdba550422230fd4762d5aceebbf114a0687b2abd376664e6272fde",
      "name-candidate:991554db0023d42d53e4cc4f0ff25ca94292e59f2220b17c6e115966056e9f67",
      "name-candidate:d40cd0c48f628135fd949758c67bea1fd32317f3a754d576d69a880cf64447d2"
  ]),
  ("name-candidate:ecb2535be8c0b954e8f5b95561950821de14ebde593e913a7e10419878f9577d", [
      "name-candidate:a7cab676949a78df8567b45a6a365937e839d0f2271f6d8d38e52f242b669731",
      "name-candidate:d7bb3b1f14cfa86a50fbfd0b50ea1e2da82f33e92293051a504308498da77bf8",
      "name-candidate:ecb2535be8c0b954e8f5b95561950821de14ebde593e913a7e10419878f9577d"
  ]),
  ("name-candidate:35699d3e255ae316ee08e3436c308a674a756df5ffc9947f8c9f7f119c6c795b", [
      "name-candidate:35699d3e255ae316ee08e3436c308a674a756df5ffc9947f8c9f7f119c6c795b",
      "name-candidate:5420671c7f67cd0e12c0ed19824a401dc01db7f6b414be21a88658775e78c44d",
      "name-candidate:fbb6aa79c8ed6ac3997c204caa3c866fb0fafd6d402957d52447ac5d9dc60471"
  ]),
  ("name-candidate:c2100d7337a32d4a4b6345ee9e0e095c0d2f521499351b37a23ad6cebb8e9dfa", [
      "name-candidate:21c3f353fee2ffd7ddde85a119cb47cb0b9297fb4d7dcd7b678ca042835614ea",
      "name-candidate:8225725a53be8cf5124ad9b4ffe2a0d34974c21207d1398e8b9606fb0f0896ec",
      "name-candidate:c2100d7337a32d4a4b6345ee9e0e095c0d2f521499351b37a23ad6cebb8e9dfa"
  ]),
  ("name-candidate:0285eef42348ce7c705512e0c7cf616ca30bdcd13276e0ff92ff9dee51998bf7", [
      "name-candidate:0285eef42348ce7c705512e0c7cf616ca30bdcd13276e0ff92ff9dee51998bf7",
      "name-candidate:9ad0905881f33db60ca07eeb80f2d338c28fd7e6b12b656d5f9b7659fb05389a",
      "name-candidate:9ef6e04902bd2837cd818c4904307481d34b8475a4fc4f38b66def8d1fa069d3"
  ]),
  ("name-candidate:68831ba82e6c9aa6333a90d9c57303c28f1971457eb26589be6ffbbef04c6665", [
      "name-candidate:68831ba82e6c9aa6333a90d9c57303c28f1971457eb26589be6ffbbef04c6665",
      "name-candidate:8f30a223994035f9f2cc2aca7a11fd25c59713d1a55b08c3da9b1448781c326e",
      "name-candidate:9bd01bfbe9c32ea0474c09097fd670d16a0db8ba9f66821ede2b7f8254999924"
  ]),
  ("name-candidate:e5fd1663f54eaf9f2f7ab925ffb4d226657ff9e77a65e4e345b51b1a4ea48ba6", [
      "name-candidate:20ab348bf3431d909de07d4ae65caa03125c3287f17de358ac61912cd6bacf22",
      "name-candidate:c8c294dc748af4bdb50d3c6f41eb29e6f69c7aed9f9f3723d3e08f307665ccc5",
      "name-candidate:e5fd1663f54eaf9f2f7ab925ffb4d226657ff9e77a65e4e345b51b1a4ea48ba6"
  ]),
  ("name-candidate:aaa477862ba94af5e248cdd963207e7ff10cec4fefcad975ff433ad934eae0c5", [
      "name-candidate:40bbcca0b5380355e1b43b3846bf24114a32cf463e98c005969804746b9eff59",
      "name-candidate:62414e5a6d7c2df7f87ef67efac59ca8e421d55c0c09af6fd7557618141f8354",
      "name-candidate:aaa477862ba94af5e248cdd963207e7ff10cec4fefcad975ff433ad934eae0c5"
  ]),
  ("name-candidate:5df29640d86cf0ab44d21da107b115f2f0364fea7a2fcadff9d8393ed8aecb8a", [
      "name-candidate:395d1800c8d51993d4b2237fafeb890254def531809848efbbf926cc9e14ba30",
      "name-candidate:5df29640d86cf0ab44d21da107b115f2f0364fea7a2fcadff9d8393ed8aecb8a",
      "name-candidate:795f7d4b2f06220d9733de8ac4ead8c3a8dbc469f429aa8fd1f46ebfa297f463"
  ]),
  ("name-candidate:d26a7cc3f56111bc9e68f8e7d41cc565729ef56d26f540e448c8cf10f19ee001", [
      "name-candidate:0a483f927033a910a52e78b19a1c91bf57575d0f712f4c6036d017a1e6527502",
      "name-candidate:19ef6667f1159a7a7dd4144b00a5f7989b5f2fe8f609a9fc20c170e80ddd2e66",
      "name-candidate:d26a7cc3f56111bc9e68f8e7d41cc565729ef56d26f540e448c8cf10f19ee001"
  ]),
  ("name-candidate:108140c904bfe0a6f6db1ee721096fef476bd26bfd7dc52e0b16d55bb130867a", [
      "name-candidate:108140c904bfe0a6f6db1ee721096fef476bd26bfd7dc52e0b16d55bb130867a",
      "name-candidate:ebcd5127315b2825cf0ffdb017a0209516b5ebbf9dd2d129d389776b7005cf57",
      "name-candidate:f7ee8232178228c933fd9b508b3e30575d38373eb6667bdab1950f0d909ec556"
  ]),
  ("name-candidate:200c702838d7745a2a68545a589b88760f58ff2f279bda1c32307c435344c37d", [
      "name-candidate:200c702838d7745a2a68545a589b88760f58ff2f279bda1c32307c435344c37d",
      "name-candidate:759583229de53a6636e45ffd9d08869c873cfd41167bb2336d58d9ba515855ea",
      "name-candidate:be9da2fb9200c627fad58cc03f7398d5b7e62fdc420bb88832490d882247fb7b"
  ]),
  ("name-candidate:1a0bff3a51fb8c71d9f1e72f7cd7880f586f183163f90b4c7997b6895315fb52", [
      "name-candidate:0d10de5a7fdedf438610e483a206f97cef4c5ed94d636a9991f5495ba2788f0e",
      "name-candidate:1a0bff3a51fb8c71d9f1e72f7cd7880f586f183163f90b4c7997b6895315fb52",
      "name-candidate:796ecd68187ab8612d74aea8dd9649f99381e7888724760301b72033526a7a65"
  ]),
  ("name-candidate:559675b9a80af6e58541de6f4289552f71f5ac1bb42b6753296e1ac210233f1e", [
      "name-candidate:559675b9a80af6e58541de6f4289552f71f5ac1bb42b6753296e1ac210233f1e",
      "name-candidate:707d8e676db8ae5ca756b9644498063db968a618ea46bdc4a18e69deafd4a226",
      "name-candidate:9afd50c4fe883031f67de82f79994bb2db65a19d77b6d3231597824b40603824"
  ]),
  ("name-candidate:2fd8f9c2974e3c014341c1a92438ffe35b6e97dabb9e801b71db585701f18412", [
      "name-candidate:038dad9b526853e3e4f69fd1b557165e08e4fe19666c9b01a4d102ef20ac6350",
      "name-candidate:248ddb25bf39b444d025894d282a4ca74dd0c7c1c6a38bb3102c6e64c2fa7d4f",
      "name-candidate:2fd8f9c2974e3c014341c1a92438ffe35b6e97dabb9e801b71db585701f18412"
  ]),
  ("name-candidate:5d5228bdd951e59a74acd9c4a2149f7423ff15a2c00ff14a9c7889b3d83cf271", [
      "name-candidate:1ce942aeb544db1bb1a29c8ee69de86a4921e670e575804ffde8bb2aa521cd35",
      "name-candidate:5d5228bdd951e59a74acd9c4a2149f7423ff15a2c00ff14a9c7889b3d83cf271",
      "name-candidate:87989aaef800eb292854f66225dd2372a6a4a3590dda02abb5f969d5feddac9b"
  ]),
  ("name-candidate:e678ed48074c16a45ee8cd03a1a8caf27fc612768ce0f74ecc20eaf9f6dfc9ea", [
      "name-candidate:3a778918c99ad97c9a80d234e71883c841e49e547e2f33e610d4c9738f39a8d0",
      "name-candidate:67688fd906e7fba8c8a566da8286416cfefa6cd30167f3bc40379629ded7637e",
      "name-candidate:e678ed48074c16a45ee8cd03a1a8caf27fc612768ce0f74ecc20eaf9f6dfc9ea"
  ]),
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
  ("name-candidate:98146928e7d1d96057a6dd79b60eec68483f45b04f112b0420497fe936438c70", [
      "name-candidate:5a7eae50f0b4c12de5a086326fe24484d269310cef7053feb7187aa2c1ce2d54",
      "name-candidate:98146928e7d1d96057a6dd79b60eec68483f45b04f112b0420497fe936438c70",
      "name-candidate:e6df197961b2a28bef4e6e6e6b35206f3ef747030537f11e435b727a5cf0fe62"
  ]),
  ("name-candidate:8aec2f615544f560aa7246fbf656d0030b2003792a2d50bbba44ae8982ad8cd5", [
      "name-candidate:8aec2f615544f560aa7246fbf656d0030b2003792a2d50bbba44ae8982ad8cd5",
      "name-candidate:da10ba5e3e51a170964465be4d529ac9addd09d90716238e2967514494016ab2",
      "name-candidate:ffe71eac2118f39c833b3978efeb791e6109a8b0846d1adb5e59a69f84b68eea"
  ]),
  ("name-candidate:f9c490ed930f6cd2e25b3ec5be19e8ac23305c08e79a617d187d698151e39f99", [
      "name-candidate:72035c0d926faa35d44646a53c2c960826f552d51570cde50ce1d1d644157519",
      "name-candidate:c7ec797b24b90b06b92e377014d17ff2a8a08c906e2135cbb66ff678d00632b3",
      "name-candidate:f9c490ed930f6cd2e25b3ec5be19e8ac23305c08e79a617d187d698151e39f99"
  ]),
  ("name-candidate:6a909e79340b68fadf540cdf11af6c0bc5b79c33dfa2b1f1a2b3c8b2c3bf7dcd", [
      "name-candidate:42de8e3024b51ee2b00e1237eb4a5d30e8d83222ec1a1c7711dc71c6e095a17b",
      "name-candidate:6a909e79340b68fadf540cdf11af6c0bc5b79c33dfa2b1f1a2b3c8b2c3bf7dcd",
      "name-candidate:e35af0326ab284cdf3bb891cd884858b1772ef39965b1c60921df2d3f4f27902"
  ]),
  ("name-candidate:0378e37d121bf03a93c7bd09f99046b3143c4491e2c3514fc70cc8792879cfa2", [
      "name-candidate:0378e37d121bf03a93c7bd09f99046b3143c4491e2c3514fc70cc8792879cfa2",
      "name-candidate:6b363f84defb3731f0e3fb6a1c60791a374b21112b0dbc756e17f3ee29fa59a1",
      "name-candidate:ef18171b7c4330bb022aa4bfb9812d7894f503d2aa38c9653beb3a49c34b808b"
  ]),
  ("name-candidate:8176f99d4a2c81bd96be205ad14a7256c169fdaad5f89fb6040bd6c85e937968", [
      "name-candidate:8176f99d4a2c81bd96be205ad14a7256c169fdaad5f89fb6040bd6c85e937968",
      "name-candidate:91a7773eb5442f9e2f461ca84ea24f90e3a274b6c8e47203fc6485942254f09b",
      "name-candidate:b8bb64b2b6f1811bbf18daec0ece4e0fe50e1a2fb7cd161ee7c27c0ece5bd7ac"
  ]),
  ("name-candidate:94f191ef4eb7ca0b42c2f1e1ecac12861c253b4132d5543c2368438a95b2f402", [
      "name-candidate:7c7260c9a4438e953367b96492a65c2806db30ceb01eefcc1cdb05098dc46768",
      "name-candidate:94f191ef4eb7ca0b42c2f1e1ecac12861c253b4132d5543c2368438a95b2f402",
      "name-candidate:f8bbe85dbc2d3c75c6a75e8e50ef5ce72e52e281083bd9bcb00fa491786a6814"
  ]),
  ("name-candidate:39b1eff57abec626a928431c8af6808ba902d8a97e2d7c596f9dc24ec60a5375", [
      "name-candidate:39b1eff57abec626a928431c8af6808ba902d8a97e2d7c596f9dc24ec60a5375",
      "name-candidate:475580d5ce9f064734e98d48771ed1e1b49f9ae22c5bd806b3eb9aaafa1e9ccb",
      "name-candidate:cbe80ae13c56eb615fe7078f77423fdba918df6a2def6d404181fbb1daa259b5"
  ]),
  ("name-candidate:6ce89a6d83c1321c95a0f8ac0d4daf6cb29d8496fe0a5c9aafeaa6093b0cbc29", [
      "name-candidate:6ce89a6d83c1321c95a0f8ac0d4daf6cb29d8496fe0a5c9aafeaa6093b0cbc29",
      "name-candidate:9df33d53ad5cb577e09d7ad56a5d55e3904eeb42a412f5e87d8e55d43cd89f82",
      "name-candidate:d2846ea751f0ac2d07fcc2274f921a5a09bc4043294c1c9702f565c2cf1d1809"
  ]),
  ("name-candidate:0eb03ec0bf2dddc3dd687cf55360aa6923ad6c4818a2157fe798125f397e5151", [
      "name-candidate:0eb03ec0bf2dddc3dd687cf55360aa6923ad6c4818a2157fe798125f397e5151",
      "name-candidate:9c52c3c566892f820d6f8ab73c9bd6f1b3661a36fe9bdae927da0814f5058185",
      "name-candidate:d1455dcf95ff6e592eb2faa47ae2a307c0bdc42365dfde4bea138cdfcab7aa48"
  ]),
  ("name-candidate:da2bbd51fc799aa2a517edf95ffa2c669c7bee158e1106e231a95556a3220380", [
      "name-candidate:da2bbd51fc799aa2a517edf95ffa2c669c7bee158e1106e231a95556a3220380",
      "name-candidate:de27874ee8f6f7e887455d1115a93061df38479c3a526bc90a2c203dd58ffacc",
      "name-candidate:ee7a6b0cc96a1caab0cdec8c81c519c45194370b5b41a8d1c4ad104f41f4e358"
  ]),
  ("name-candidate:26c6acacd9f53dc6b9740157acdd82e07dc1943d09ad8bdc00fa5150373d885d", [
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
  ("name-candidate:5ffad534ff68bb0cd851cf2bafa172f7bca3fcef7ec434ab3cd9a0c53fe13bd9", [
      "name-candidate:26c76ba55a0963dd21c081e5ad43c610eece9851661bb586a01396191a8b50c6",
      "name-candidate:5ffad534ff68bb0cd851cf2bafa172f7bca3fcef7ec434ab3cd9a0c53fe13bd9",
      "name-candidate:71452a59d34705f548fb89e6d15422607e503e78c89e6746cfa87301c153bc21"
  ]),
  ("name-candidate:9958e319226e261cd50509287e4ec89fcf05738e7ccbb31f083301df6f868cf8", [
      "name-candidate:6b0bef5c67fa402435bfe89a642d2dc5908b22588c8845bde16f997a37b936e4",
      "name-candidate:988a1fdbd247f175b6d7a1eba4e1238d33a2719689b08230e25c922cbc1fc640",
      "name-candidate:9958e319226e261cd50509287e4ec89fcf05738e7ccbb31f083301df6f868cf8"
  ]),
  ("name-candidate:683d120f1b76f879ceebd3e1db015e0454d6f364ee7a9249e94dc9d2ba24a2bf", [
      "name-candidate:0aa80d59594efa1a780cc425da00de72eb1d0b77735626ec480c2b84ad66025c",
      "name-candidate:5d3ccf733ce178261f73eeebc8b5f3c75e70110823e48d76cdaf4dc6c3ed50bc",
      "name-candidate:683d120f1b76f879ceebd3e1db015e0454d6f364ee7a9249e94dc9d2ba24a2bf"
  ]),
  ("name-candidate:87a3b7ccf84a185daeee03a656a1ac5eea125d69bb9337663f4a412770df4c01", [
      "name-candidate:7839f18d77ebab179199c7334cb11b38cc7bda0687aec2b02b39cf89e14c0a4d",
      "name-candidate:87a3b7ccf84a185daeee03a656a1ac5eea125d69bb9337663f4a412770df4c01",
      "name-candidate:e93e6c2b782c79e535daba20ca9445b918ac156eb067b82038e5962fb912a5d8"
  ]),
  ("name-candidate:5b995dca53c34b4049007916a2ba06d4625e54020d4b98eb67a7547d74bea87c", [
      "name-candidate:5b995dca53c34b4049007916a2ba06d4625e54020d4b98eb67a7547d74bea87c",
      "name-candidate:a0236080df624bf8ffe9334bd9967bafdd7abb535c750b9856ad70734ec8ac78",
      "name-candidate:ddafdda5564ef8ad48d8f0c8d97a5273a811005ac0e3f88213c4237c3f0ff598"
  ]),
  ("name-candidate:184b6d4b1d43f8dc079af33e955bc94cb4f04e25b724dee53f2d4b79ce0df0f5", [
      "name-candidate:184b6d4b1d43f8dc079af33e955bc94cb4f04e25b724dee53f2d4b79ce0df0f5",
      "name-candidate:2524b63d85009e0faf54f8ad2566ff6b24acbef9bdb40e31e056dccf8728c046",
      "name-candidate:b2b199e73445322335cf9794af220882766fa78e692d01164c01fb18e9625026"
  ]),
  ("name-candidate:24f4c261513b9ec1490b866d85b1f73cb88bcca3c0e8283e010ef4ee95df8d92", [
      "name-candidate:24f4c261513b9ec1490b866d85b1f73cb88bcca3c0e8283e010ef4ee95df8d92",
      "name-candidate:9ff996d153af4b6b22d8f44d6d6a31195d4a420ecea33661e2e8e8e6cbc26d01",
      "name-candidate:cf3b25975a4f9c1935244f9d8321003664da36ea787631ea84874915fdced938"
  ]),
  ("name-candidate:d58e7fd5ada3be4fd6a3b4ec100d5e1680d2bb9878cab96031aab9f1b7f3d549", [
      "name-candidate:3ecdce31277d8a0dda4fa56f80a929cfb6eb9e9987761f4aad872a3f8e233d1d",
      "name-candidate:a8fef5798f37b8da31b97818db2ed79cd15ba3683eb2f9fb1d174dcbb4656d62",
      "name-candidate:d58e7fd5ada3be4fd6a3b4ec100d5e1680d2bb9878cab96031aab9f1b7f3d549"
  ]),
  ("name-candidate:f37af316b3b70167c87215df230c1ea0050d97a60cfecfd02986f617229a0068", [
      "name-candidate:c0b017b18a33b38a915f2a593a5a478ce1ff6917bd4e7f6fbc029156ef3474aa",
      "name-candidate:f37af316b3b70167c87215df230c1ea0050d97a60cfecfd02986f617229a0068",
      "name-candidate:f629c98a00f8adf4c51447ecfe34b1a778ce16fed0729b0f7ab526a8cef6acff"
  ]),
  ("name-candidate:806ccc8dfcf25ac27961c1eb35329236797264378f09618dd4006fd1c13b4842", [
      "name-candidate:3ac030e560652a1b8a58ef3be5caaaf7f1e0622122c93fcedf2e54b060c2b66c",
      "name-candidate:806ccc8dfcf25ac27961c1eb35329236797264378f09618dd4006fd1c13b4842",
      "name-candidate:985efa63784dfa0d0702c2bf2f0d061d2cefc76fd5b912652b71f1ef9200e3a9"
  ]),
  ("name-candidate:1f618f1411ba9ea74327fef37d7c1b52609a92725f95baeb2b1c6fca02ffaec1", [
      "name-candidate:1f618f1411ba9ea74327fef37d7c1b52609a92725f95baeb2b1c6fca02ffaec1",
      "name-candidate:3d12f0904c60a87a5551f576a53a6b4b4ad905cb5713b2aeb1aa984cc977df25",
      "name-candidate:84bb1b8638e1af0b9c272f5e422689d7d4c90f04b05d264f8d7c62f71b610d0c"
  ]),
  ("name-candidate:9089676d8209c1690c1844c4cd21f12451b74c6f6a42acfb9714a1d587e1a19c", [
      "name-candidate:715e53f52a47fd3cca28eaf5f0ba6bc3f9fa63cf9b383b4d557f85dff891c21b",
      "name-candidate:88bf6a5827c96032d904e8daaf413029eff50ba958f8b92def5232db656f21ba",
      "name-candidate:9089676d8209c1690c1844c4cd21f12451b74c6f6a42acfb9714a1d587e1a19c"
  ]),
  ("name-candidate:91ac718e42d3bf8704bcab0dce6636b73d14c8fff5589ae63e630a9589b88119", [
      "name-candidate:09ee5da95734cf52182e1e54c04878c532fca9e90f8c7de4401af3654cc0d379",
      "name-candidate:91ac718e42d3bf8704bcab0dce6636b73d14c8fff5589ae63e630a9589b88119",
      "name-candidate:ef208526b3e452177c20d86929ee99b42304825dad409fdc4217bab77e1e5599"
  ]),
  ("name-candidate:09d57dddc5484e2bf822bc7f487da9e11d5fbbec718181faddffe94330c6b0dc", [
      "name-candidate:09d57dddc5484e2bf822bc7f487da9e11d5fbbec718181faddffe94330c6b0dc",
      "name-candidate:0e65605ccf4a7012e734bd654b9e65aab0530b38fc1cb84ccd7287039e91aed4",
      "name-candidate:820f2617c3f53f59210a6ccf11cc5026fafb91aca2e4ae9e1e9680c70f159027"
  ]),
  ("name-candidate:eb16d75abd1ea25f35cf497e6d536e94eef07040c1be9cd8a8535e8214e5d6ff", [
      "name-candidate:5d9f0c0da2e240f3b640de7765c0f457f5c1b9284528f3d070957ae3ff5f2e7d",
      "name-candidate:6d21d0995275da03cba2236b32ca766a7af85241cde0a1674c5ad4e8fa620f8c",
      "name-candidate:eb16d75abd1ea25f35cf497e6d536e94eef07040c1be9cd8a8535e8214e5d6ff"
  ]),
  ("name-candidate:4b901670ac73264fd1c2ee1ef9c982969b289f3182eb5214a83e83097acaf636", [
      "name-candidate:4b901670ac73264fd1c2ee1ef9c982969b289f3182eb5214a83e83097acaf636",
      "name-candidate:a899f41c971621afa231dcc7434be9348425b2874dcbf23bdeb1ac04837648c0",
      "name-candidate:f6ea7b9f5ce3cf2aa94d5066bda0e4a8e395fed8faee7e1626771b9c8a3b0ff5"
  ]),
  ("name-candidate:af12b3df9319d180c72b572965fa4705b5022f02616a3d0858df52bc8942d176", [
      "name-candidate:2de3f82c228e5fc333655aeba53d54bfd021dc3990f6a1df2e1190b1a3121eaa",
      "name-candidate:af12b3df9319d180c72b572965fa4705b5022f02616a3d0858df52bc8942d176",
      "name-candidate:f564beded045ced2a7ef22567b282e51ab364d8094b979f2313ffd50d7c58012"
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
  ("name-candidate:bce0c286d57ff45374cf67f73204f1c399645972c19d5ee5794841dc5fb4a8d2", [
      "name-candidate:31791bb3004c5a38a97bfaf17fe433ce8a949dca5f88681511e81902b95e1e17",
      "name-candidate:4d6c6562739d90ca97c721ffe16ab94f4c681977f95926f154d09a9e83881539",
      "name-candidate:bce0c286d57ff45374cf67f73204f1c399645972c19d5ee5794841dc5fb4a8d2"
  ]),
  ("name-candidate:87b67d02d907390d4a8393a381993e83c84afe66bab914b30059edd6ca703b71", [
      "name-candidate:87b67d02d907390d4a8393a381993e83c84afe66bab914b30059edd6ca703b71",
      "name-candidate:93403e8d880da44973f911e2ad4d264a4edbe67cf18765d4ef933927a91011ca",
      "name-candidate:ec3b89e74ca72c236cbceec7a8ad1c192764d772fe6cf945a0a36f9217fe924f"
  ]),
  ("name-candidate:d35021a49a014a685c453b01f33709cbd7f8cb2c795b784445e07dc32335d334", [
      "name-candidate:09a03df1573f2555108ce121f50517b0cf1b83ecc36615fc7602027334299f62",
      "name-candidate:8b7686b155e7e13f03df25be80683db92fdeb6504d5ce8e62aff7a6aea6cadfa",
      "name-candidate:d35021a49a014a685c453b01f33709cbd7f8cb2c795b784445e07dc32335d334"
  ]),
  ("name-candidate:3e6f9d344a1ac29bfe54564154e130109727090facd703d69cdce32bd04c74e4", [
      "name-candidate:3e6f9d344a1ac29bfe54564154e130109727090facd703d69cdce32bd04c74e4",
      "name-candidate:44e690c1ae2e21c045d2d51a8e257ba5cac79ef2021ea3bea1e5ca71bd81b7c0",
      "name-candidate:c7549788d4fb96872013b5078454b25a5428677300d1bf0e7bb49cdb228dec3b"
  ]),
  ("name-candidate:61a587f9224670e29d88b8a6585cdf0faa9b78c45da89150b18ed5519a759a2d", [
      "name-candidate:61a587f9224670e29d88b8a6585cdf0faa9b78c45da89150b18ed5519a759a2d",
      "name-candidate:dd941c790c9a54347b8911f97f3fe411709e79fafdd9d95d96cc1767ed7aa0f4",
      "name-candidate:fa1c478e615d8ec18766853c25066b3b070660922a696ceaa4bb920e0beff164"
  ]),
  ("name-candidate:409e1e1e1844813bc69f6984a961f12c7949acfd1f95f79fe2e805a55866f6f4", [
      "name-candidate:409e1e1e1844813bc69f6984a961f12c7949acfd1f95f79fe2e805a55866f6f4",
      "name-candidate:5bf19eff441bdc56d1fd86b127715c8d10248c8d46b442c52cd0d3e4fa3de14f",
      "name-candidate:e69d07f28512cd945dfa4416f8de16ba47fef5f25094618eb1e1e0651d3b3ffa"
  ]),
  ("name-candidate:38a4c32a8a1ad708211a753449f24f9874a7b0982e54dc8968e5628e717f07cb", [
      "name-candidate:0d878a5dc3756f759e91855bb4744690b81fc7cee43500ef6193f36cda76aaf0",
      "name-candidate:329873c8905130aaba09528b908d9f570c73e93a6fe700d036eb5c96e41b631e",
      "name-candidate:38a4c32a8a1ad708211a753449f24f9874a7b0982e54dc8968e5628e717f07cb"
  ]),
  ("name-candidate:d6f139227a83145e1f7ba86f2e6c31e1aac798d3efd8d50883ed10c516b49626", [
      "name-candidate:0d9caae04b5911f2571e753b4608ee8daece4a54f9d6d15d6c859d8ba06d594c",
      "name-candidate:7be2a319dc4a2775f46a695892ee8ae93bec77fb052edac3000a119025fa1403",
      "name-candidate:d6f139227a83145e1f7ba86f2e6c31e1aac798d3efd8d50883ed10c516b49626"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L57115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
