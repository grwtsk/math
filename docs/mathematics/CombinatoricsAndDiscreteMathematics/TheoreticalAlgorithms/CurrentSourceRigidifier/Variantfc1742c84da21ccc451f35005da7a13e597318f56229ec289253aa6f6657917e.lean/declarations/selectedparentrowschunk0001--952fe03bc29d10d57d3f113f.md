# selectedParentRowsChunk0001

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92a0ed2cd6b05abf3b09201330058ea87ca57cf95d40e7e19814fdf1b81375b7",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0001",
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
  "slug": "selectedparentrowschunk0001--952fe03bc29d10d57d3f113f",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114804,
    "line": 114609,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:952fe03bc29d10d57d3f113fc4baed246af75c91226124881d17313ef044b3ce",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92a0ed2cd6b05abf3b09201330058ea87ca57cf95d40e7e19814fdf1b81375b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114609–114804.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0001 : List (String × String × List String) :=
[
  ("formal-neighborhood:08f6520353af9c068662280636e57edbc390f97cc4f55469315af297ca8c021b", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:0904a81a52736f5fc80df0046b731664337622c00991515ea2945c1c53fd30f5", "formal-neighborhood:e289d5a424266ffdabfaf8857b7d94880067c1d6c8732438d134eaf5f5a2dd83", [
      "formal-neighborhood:e289d5a424266ffdabfaf8857b7d94880067c1d6c8732438d134eaf5f5a2dd83"
  ]),
  ("formal-neighborhood:0912c5ef980007d7d131297aa04d1ebbd67fd58a75c0bc51cbe8f090981648a0", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:09175d27eadd6c44fd09abff3358754fdaa090664ce49430cfd1f3699cdc22cc", "formal-neighborhood:13a131c2cd2c46a2b05f82e4127814101498e3a9dc28f95fb0266e030a6708c1", [
      "formal-neighborhood:13a131c2cd2c46a2b05f82e4127814101498e3a9dc28f95fb0266e030a6708c1"
  ]),
  ("formal-neighborhood:0963ec068a89547fa67b113b2fb67048e89a1db7ce93de0879069358a1f0f273", "formal-neighborhood:b505c853fae9be013d5dbd3e0e8be41dc36e76108050e48af60f7880d854dd95", [
      "formal-neighborhood:b505c853fae9be013d5dbd3e0e8be41dc36e76108050e48af60f7880d854dd95"
  ]),
  ("formal-neighborhood:097e318563b07acfd0ae767a227fdbfc674888cdf601876d9981ee5755d57668", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:099f3e43369930fcfb842ea389508bfad77eb4ecdac3e9cd33c6e65066b32852", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:09ce76c249979b5e3ce5b634084fc771b8e3c4df02a9391412ffa98839a54d1a", "formal-neighborhood:ed5b2ced8e09d2aee4c88a2577508fac6d0d96be8d006ee683945ffe5438d3f0", [
      "formal-neighborhood:ed5b2ced8e09d2aee4c88a2577508fac6d0d96be8d006ee683945ffe5438d3f0"
  ]),
  ("formal-neighborhood:0a032fb2cd19a8ed3eebe8136304b621947d7d73cb2c67b020d26059d5fd56bd", "formal-neighborhood:9dcb1c4ecbdde47cfa361be7ef8202b51b6f4507c44ffbacf58e8e6f893f82eb", [
      "formal-neighborhood:9dcb1c4ecbdde47cfa361be7ef8202b51b6f4507c44ffbacf58e8e6f893f82eb"
  ]),
  ("formal-neighborhood:0a150e6e554ddab757bbbc913b872c7619cfc8de682abc1d2e48265d201a2c06", "formal-neighborhood:ddb556b255d9188beb00101a2220152781af503b0085e98065fc1537be33a455", [
      "formal-neighborhood:ddb556b255d9188beb00101a2220152781af503b0085e98065fc1537be33a455"
  ]),
  ("formal-neighborhood:0a2a39d2ba80cc25b7a628c36a2007ee4c7a4a8ad69d2652fa907e12b3de57b8", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:0ab0d0bc01ac47e10edb7188a11bb9bc4ab259a656048f2fe1c32b40b7c316c1", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:0aee5836b6554da123afd60af10af6007d259ddb40acd9ea2182dd94c95a023e", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:0af56eb39af2493ac63f858cf0bb92b82171641e198c4b09446b816b38c4f67c", "formal-neighborhood:f269dab0cdf3143b9820920be11ba8f99ec1125b8e0ab3d9789288da9ff6b07c", [
      "formal-neighborhood:f269dab0cdf3143b9820920be11ba8f99ec1125b8e0ab3d9789288da9ff6b07c"
  ]),
  ("formal-neighborhood:0b084b9fca46e055df4067b26ba53524466203aea275b0f02846798265f2bb50", "formal-neighborhood:1fbae47b3ce53478213d126398d7f2123e881a693dff0cb7b8725d1a0047e970", [
      "formal-neighborhood:1fbae47b3ce53478213d126398d7f2123e881a693dff0cb7b8725d1a0047e970"
  ]),
  ("formal-neighborhood:0b161f5ab240dd2bf9aa6679bf1a36345d570e12fc4058f276e215907424b9ca", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:0b92d451f61cf442291559fafb2970b7c99138b9570e68a6a0020207e207b313", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:0ba1e2c19c9e6ff5e00c02af5ba4a94a53a5040a24da843eb88383ebf12a2592", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:0bdd888536fcfe4adf2ac4341ee3d69e50296152c8e25c32b364aea07f1a6ccd", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:0be4fa98ebc9666985cee61b817df19bdf497a91529629c7af8790c008ff75d8", "formal-neighborhood:6f1f38c9cc94d1ee4fe60e9d81a419d8202b4815dfda99acd3fd4d52a2a1bd0f", [
      "formal-neighborhood:6f1f38c9cc94d1ee4fe60e9d81a419d8202b4815dfda99acd3fd4d52a2a1bd0f"
  ]),
  ("formal-neighborhood:0c316a3677c52c233a101a26a63cdd2152b5bdca0c577da7faf4f8a2b016727b", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:0c4b4e7e0052448fb091aba3b9e593eac431ce96a19fbaf846de206607e36e90", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:0c6d72d7d7e6ca454643cc76e186fa702eee3a2abfe93f6dd2ec7766534575da", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:fcaf27c2b4e0a3bbaf4d403d0a2756d059ad6ff27d1245d696b4914578850859",
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:0c762d57a65122fec0ce09b1670bbb1884d5c61b249187d466bbcb79e4b0ba95", "formal-neighborhood:22b2651c161a88ad9b8c68dd45f83d504288d8255f7ac3928987f2517d94d81c", [
      "formal-neighborhood:22b2651c161a88ad9b8c68dd45f83d504288d8255f7ac3928987f2517d94d81c"
  ]),
  ("formal-neighborhood:0c8dd821238d8d9f7300e0b2a1a32dcb2239e24773f35e7d3b01f5cb9c9606e5", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:0c9d4396f86caa42fc4554513db953ff8cfaced1a2a4467aa13d233eb84a67d5", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:0ccdc80bd326968deef91fab9c8bfd76dfe8da9272155d21fce72a35eea6a389", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:0d421ca5642b064f7c7016bc637d1a81b1a2f728a5165aa102c4dd9ac66d50d8", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:0d598b01be358e075c72e5ee445d30ccfb168bed0021d63c007acc95e9138eff", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:0d617f18f86703acab03d474910e5aee41fd17dea8afec75e2f7279bd553616e", "formal-neighborhood:481d14c2a3777439eec8e8ef1cbe146cdfc2c9a67cb7f8f3ec1323b1c6ab1b8b", [
      "formal-neighborhood:481d14c2a3777439eec8e8ef1cbe146cdfc2c9a67cb7f8f3ec1323b1c6ab1b8b"
  ]),
  ("formal-neighborhood:0d83fdea9f6d3b211eb7278582c852655aa9a6163f5876c3c5027b67a4649228", "formal-neighborhood:dbb3ac5bba53f1f37daf540a8b57f7da7749168bd843e8dcdf8a25c355a1d8e2", [
      "formal-neighborhood:dbb3ac5bba53f1f37daf540a8b57f7da7749168bd843e8dcdf8a25c355a1d8e2"
  ]),
  ("formal-neighborhood:0dd3fe407d8d9badcb151a25b512ab2b943a10cd3985d1fa0a81e942b4454ff8", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:0e56708b5ca84473f35e4f2a3c46f502d2fed8bff5e90e7a64411f0e3a73704f", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:0ec645f7cef3a07b68d11bb5e52e2daefabad71abf0e97d8aa9f2483395c58d2", "formal-neighborhood:07f2c3a9d990b17e5bdbeecfa1ac1f10c17431aebbaf9d2d7ad8f82465ce79b6", [
      "formal-neighborhood:07f2c3a9d990b17e5bdbeecfa1ac1f10c17431aebbaf9d2d7ad8f82465ce79b6"
  ]),
  ("formal-neighborhood:0ecee53e06e00014d9a22f16559c6648ee2b9ed134db74a7e2176473ad24561c", "formal-neighborhood:cb744f31bf42f89245f03084e7bd9f53649295a493d24a83adb700a6e54e5690", [
      "formal-neighborhood:cb744f31bf42f89245f03084e7bd9f53649295a493d24a83adb700a6e54e5690"
  ]),
  ("formal-neighborhood:0ed6e9da14d90a40e82cdcfc8a73c37579f5253132e5d915eec0647b8a4e0327", "formal-neighborhood:28cf91897753d2b6cb579e32bdf1019ee43d50b4c9bf158d17810a687ba94dd6", [
      "formal-neighborhood:28cf91897753d2b6cb579e32bdf1019ee43d50b4c9bf158d17810a687ba94dd6"
  ]),
  ("formal-neighborhood:0ee22c7629d0f08e163d4d66aed42bb9a4219a29c7af5dd6e0c640ed2daa84c9", "formal-neighborhood:be89f7a3d34265d94cf60e2ce20b2c62eb5e0c0dde6bd8895082158ae82b29a3", [
      "formal-neighborhood:be89f7a3d34265d94cf60e2ce20b2c62eb5e0c0dde6bd8895082158ae82b29a3"
  ]),
  ("formal-neighborhood:0f63e5f8f9581e827b5f3c9bbb7a23912f91255afa6cd2fdfa1d18427c9ced9c", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:0f8e4e857dd10dd25720294c9bd258242eef559da683264db1d9838ba9cd9875", "formal-neighborhood:ed5b2ced8e09d2aee4c88a2577508fac6d0d96be8d006ee683945ffe5438d3f0", [
      "formal-neighborhood:ed5b2ced8e09d2aee4c88a2577508fac6d0d96be8d006ee683945ffe5438d3f0"
  ]),
  ("formal-neighborhood:0fa1682b34373cb6c20d3e389a98602ace878265ee1d667e83c1e5f2f2951931", "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727", [
      "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727"
  ]),
  ("formal-neighborhood:0fa36caebc4ded3e22fc835150693ca4e3311b25250167b51d5b5dab006870f2", "formal-neighborhood:125c36571e6c8e08671cc3a07899c40b1f2820c0c0768f4cc6bd9dd7a692717e", [
      "formal-neighborhood:125c36571e6c8e08671cc3a07899c40b1f2820c0c0768f4cc6bd9dd7a692717e"
  ]),
  ("formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6", "", []),
  ("formal-neighborhood:10162ea64d52c6d23e3af963d0cee113a68c16f1bc2bd9379e724708637d5f89", "formal-neighborhood:da40cf4500ad5a07503dfa87e3e7a17a99df33fdd64203069c4a86cce77a33ee", [
      "formal-neighborhood:da40cf4500ad5a07503dfa87e3e7a17a99df33fdd64203069c4a86cce77a33ee"
  ]),
  ("formal-neighborhood:1037312673e8ef764f81ba60e71ca957b799820bbeab8134bf83b0120cc3ced5", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:106ab357e21a0ea376008f7741089245b327c04d5bc93fc96b43933ad907511f", "formal-neighborhood:bfbcfde1ab7603e88f1f64fced086be53c638527f302246314667c75d76142da", [
      "formal-neighborhood:bfbcfde1ab7603e88f1f64fced086be53c638527f302246314667c75d76142da"
  ]),
  ("formal-neighborhood:106f7a85f5c5c0854b1f09b475ac15c126758bfb62cb248cddc12eb4e695877f", "formal-neighborhood:fd79f277430a054a091dbe4e773ca6cff622bc3436ebbc162ee0f4c78e72437b", [
      "formal-neighborhood:fd79f277430a054a091dbe4e773ca6cff622bc3436ebbc162ee0f4c78e72437b",
      "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb"
  ]),
  ("formal-neighborhood:109964b8485a135c1001d4d472bc2c2b2a839deea44eda307ee12cf5ff8a0158", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:10a7749a32850e654a1eb4bd196c2bdfc19efc97d41dffb9da3553e78a400941", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:10aa3f724c6b329752bf243fc2dff822af70826e776ea7748eb20f46af984897", "formal-neighborhood:818454c7c9170958efb67015b551227968d981d38bd038603a8d5642adc89d37", [
      "formal-neighborhood:818454c7c9170958efb67015b551227968d981d38bd038603a8d5642adc89d37"
  ]),
  ("formal-neighborhood:10ac387adde63114b547d64731fbf89cba9d2ace2088b6232d97df5c9952d9df", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:10b6337301fd880246f6dbebd2aa5f430c5c382b24054d19a8b3241a815f6d4a", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:10bd71589746ae3a1a7f1b1cc70d505228b05548a06a3caee09cc1aba53f64bb", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:10df30505a11183f493570089b0808147dbcb86933ce38d0629c47a4dba134f7", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:10e70f5e3c751707438e58f78d40efb08dd9a4094eeac60f3842437aab0a1cf8", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:10fa73c399ef4d4890f35f01d7c769b8e36c92733a992fff2ec2f11514c1d095", "formal-neighborhood:bfbcfde1ab7603e88f1f64fced086be53c638527f302246314667c75d76142da", [
      "formal-neighborhood:bfbcfde1ab7603e88f1f64fced086be53c638527f302246314667c75d76142da"
  ]),
  ("formal-neighborhood:1121429d7a7cd42b5deda285774cf80af91a19515fe8de07b29e3208f06ec4ba", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:112326c8f4217cc9d17ed50e9fd594faabace5b5f6b9d668469ec606a7a9b7b8", "formal-neighborhood:3aa0eb82b7cbdcf62e3a1967eed0a9f8520be98f1f7594698be3571c4d9a1dbf", [
      "formal-neighborhood:3aa0eb82b7cbdcf62e3a1967eed0a9f8520be98f1f7594698be3571c4d9a1dbf"
  ]),
  ("formal-neighborhood:11236e160c3f7364df208d3dcbff31f6379af5ae187207aefa1c162eac0a0962", "formal-neighborhood:10df30505a11183f493570089b0808147dbcb86933ce38d0629c47a4dba134f7", [
      "formal-neighborhood:10df30505a11183f493570089b0808147dbcb86933ce38d0629c47a4dba134f7"
  ]),
  ("formal-neighborhood:11444de477cdbb524a4f3a4d3e08ae249eedcc48698d79545df427c75bacbc19", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:116770dfc12195076d6f50a429f042e3a4b41868f82d76b606b7eaac3fff83db", "formal-neighborhood:0c6d72d7d7e6ca454643cc76e186fa702eee3a2abfe93f6dd2ec7766534575da", [
      "formal-neighborhood:0c6d72d7d7e6ca454643cc76e186fa702eee3a2abfe93f6dd2ec7766534575da"
  ]),
  ("formal-neighborhood:11fb518e19d6038b23076be3b6da7f53133197467dea9e64fd76ceb35f2a2009", "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb", [
      "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb"
  ]),
  ("formal-neighborhood:1210b35b4ae3716c119baf4f8d9d1a573aba4eca5cfdfba50fb1bde9ec119834", "formal-neighborhood:c56879317db7f83cedcb63b04cb92d8f8d3d085cd2d66c0e6e88f040b85ab93c", [
      "formal-neighborhood:c56879317db7f83cedcb63b04cb92d8f8d3d085cd2d66c0e6e88f040b85ab93c"
  ]),
  ("formal-neighborhood:123d5ad6a5b136e4a862e6bf4a53ff9137aa6c4a11acdb3394200f6b931990e6", "formal-neighborhood:fe158ec9621c8804d6fffab90957736e58486d3fab5abb064e8e61db87516f29", [
      "formal-neighborhood:fe158ec9621c8804d6fffab90957736e58486d3fab5abb064e8e61db87516f29"
  ]),
  ("formal-neighborhood:124b9e42574cf3716c1e03a5d7f337c716b8b70ed1780fa8cf551c7d9cd88631", "formal-neighborhood:13286c818d376ce96c289e47e85c5edd94bcad22e44d0668b5ee880d1af46712", [
      "formal-neighborhood:13286c818d376ce96c289e47e85c5edd94bcad22e44d0668b5ee880d1af46712"
  ])
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L114609).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
