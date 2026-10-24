# selectedParentRowsChunk0022

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:043697d219cc81e86986e77c5bb85e9de456aa3180f9e72d2ba711d05a88237d",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0022",
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
  "slug": "selectedparentrowschunk0022--11cfb9ae2b377e16bbc505d4",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136606,
    "line": 136409,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11cfb9ae2b377e16bbc505d49d0453dd4faff183c5c6a32451cd7200cb1e8562",
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

Occurrence: `declaration:043697d219cc81e86986e77c5bb85e9de456aa3180f9e72d2ba711d05a88237d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136409–136606.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0022 : List (String × String × List String) :=
[
  ("formal-neighborhood:abb1eba9cb685f9637284b7a7b4636ad7dd506812f721d8b395aad290b1dabf0", "formal-neighborhood:648c87db79955f7c76c5a236ebb56be832448a0a0a40a828ba15090e1f1b9a35", [
      "formal-neighborhood:648c87db79955f7c76c5a236ebb56be832448a0a0a40a828ba15090e1f1b9a35"
  ]),
  ("formal-neighborhood:ac02d46965746419fcb4d30687b5eb32c7f9f8862699f7e5711abb1ffd5b52a6", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ac170b4274b7b4c60a9468bd335fb316c166a3c4ce8cc486c14c7fba8b28b625", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:ac1c1e1f6f0b670cf6cf3b6ae77e2187cc81ce3505f3bebd3a1343e18c53370c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ac2c7d3c2a227c67de391700b03b58c1d8f5810f174388f38bdf180fd6947ef5", "formal-neighborhood:bc4d87524da11f184b63e08a568670bd85881d7a24372aa38bcea8de95adeca0", [
      "formal-neighborhood:bc4d87524da11f184b63e08a568670bd85881d7a24372aa38bcea8de95adeca0"
  ]),
  ("formal-neighborhood:ac55893c198552a5506779221fe94646d97a7737a56ec79e489327b72aa97eaa", "formal-neighborhood:9926c61b70f9581613897ba0c9178560f8aac2f192f81117f7dbb0677ae01270", [
      "formal-neighborhood:9926c61b70f9581613897ba0c9178560f8aac2f192f81117f7dbb0677ae01270"
  ]),
  ("formal-neighborhood:ac5c15e1eee33f49c413a9604774e41daf83e7a558a0f7a7497e5d212dd2b2a4", "formal-neighborhood:07f2c3a9d990b17e5bdbeecfa1ac1f10c17431aebbaf9d2d7ad8f82465ce79b6", [
      "formal-neighborhood:07f2c3a9d990b17e5bdbeecfa1ac1f10c17431aebbaf9d2d7ad8f82465ce79b6"
  ]),
  ("formal-neighborhood:ac91b6058b5b3987d02503bd5ba2e9618536961373176c41ee68fee73b0b8ed9", "formal-neighborhood:e289d5a424266ffdabfaf8857b7d94880067c1d6c8732438d134eaf5f5a2dd83", [
      "formal-neighborhood:e289d5a424266ffdabfaf8857b7d94880067c1d6c8732438d134eaf5f5a2dd83"
  ]),
  ("formal-neighborhood:aca60873b354b24b6d9e4af79b9b3f99be9780e55d88d9b8f20ce72262412208", "formal-neighborhood:dbb3ac5bba53f1f37daf540a8b57f7da7749168bd843e8dcdf8a25c355a1d8e2", [
      "formal-neighborhood:dbb3ac5bba53f1f37daf540a8b57f7da7749168bd843e8dcdf8a25c355a1d8e2"
  ]),
  ("formal-neighborhood:acaba95e8d183a102bec4cd8b406f4b91c0a3ff787616e7f23cff386439703e6", "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb", [
      "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb"
  ]),
  ("formal-neighborhood:acdc936ece20b6ea8100cb6fdb495a1f373d26f41ce849bc206c529777f2ae85", "formal-neighborhood:faa763dca853bc9b756bce2fe236668e733cd9a039803ae53672ba149b7d21c4", [
      "formal-neighborhood:faa763dca853bc9b756bce2fe236668e733cd9a039803ae53672ba149b7d21c4"
  ]),
  ("formal-neighborhood:acf029fa053a75f5e54086799d31d681a9184e2372cce405b2bcd0fcf3e32d4f", "formal-neighborhood:af2c0242a0ec82004560ff1d0899192b9e4660b3f518a4a9d4e962cec1459797", [
      "formal-neighborhood:af2c0242a0ec82004560ff1d0899192b9e4660b3f518a4a9d4e962cec1459797"
  ]),
  ("formal-neighborhood:ad37cb5e5199bdb91a772b8e926e05262869f43f1bd55af03676b6fe8ee78bb8", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ad707e1bfc3d6e58c694dbd023a17e11f91e1c2ded42dcc7c95890aa992f9d4d", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:ad71113232c9b3d81a84f6e81e88bf629e02807a16e610e9e82f5032a4a14c63", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:adef690e788352db8e30cdef49a6f2baf1fb370ec2ef641c7cf5cf6d9676f683", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ae16fdcb99fbd918c5410a33ab021bd2791023b75c828e3866b60e1f5c710de5", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ae3831752783913f2144d921786b816d2f1382cb100939ac71df19ce26150895", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ae71ef259b48a4fdbbe1e2df90482a16d2b210a640a29a641bdb0f104c852550", "formal-neighborhood:b5a00a6767d5f4f0ffe69f96458a770f234d4621bfe9dbf0c67f38cbbb952d1c", [
      "formal-neighborhood:b5a00a6767d5f4f0ffe69f96458a770f234d4621bfe9dbf0c67f38cbbb952d1c"
  ]),
  ("formal-neighborhood:aea1266793685f6e1e5ddaf1959e9323f489029639673702bd548086e622458c", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:aeb6bedab8e499bf10481e7d1edaa26079b4ace90107ddba5398f9bc4520306c", "formal-neighborhood:042d587954c58887d90ac83fe959d726370de15dbbc2f1334ab51d2f886eaea4", [
      "formal-neighborhood:042d587954c58887d90ac83fe959d726370de15dbbc2f1334ab51d2f886eaea4"
  ]),
  ("formal-neighborhood:aebfc10558668e2bf63377185c344190a85158bb4aeb18f0e209b000bba1d822", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:aec180979267f9757f2c513b1d08817c10c107169d03484deb2c9b2576a628bd", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:aed5bd593787903cdb59dc34253b3dc18665779482babd74e5587c7660ce45d7", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:aedde246dfae7a2114ad45f8a26edd3fea35005b52bf0abc974f6fca73cb0e50", "formal-neighborhood:da40cf4500ad5a07503dfa87e3e7a17a99df33fdd64203069c4a86cce77a33ee", [
      "formal-neighborhood:da40cf4500ad5a07503dfa87e3e7a17a99df33fdd64203069c4a86cce77a33ee"
  ]),
  ("formal-neighborhood:aeff920892db4c9cfb9a135ad8cc0777c25d412eb8aea4e53dd6d3652e43286a", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:af01052b30a45409900e89650d31898c27cc0a7e0f848268015eff58f6595b67", "formal-neighborhood:dc3cf71cf4730ad1e27b4693fc98589d6e242aa0352f109f1031053629728e37", [
      "formal-neighborhood:dc3cf71cf4730ad1e27b4693fc98589d6e242aa0352f109f1031053629728e37"
  ]),
  ("formal-neighborhood:af0604f06a0d3332185db786c0167edc765e3acdd5d2634009393a79002944c7", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:af071c9fd7a8c14d2bb6e7418f46f7b85ae971bac320f1d1744f3c990445fc64", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:af0e65d5afb60b1bc99ea16d5525e98f3c563b7443105da2b4c75df412498cf3", "formal-neighborhood:a87a66d8aa4c658903ebd0376bf84494b7ed23a23290d9aab236a30cc1432637", [
      "formal-neighborhood:a87a66d8aa4c658903ebd0376bf84494b7ed23a23290d9aab236a30cc1432637"
  ]),
  ("formal-neighborhood:af2c0242a0ec82004560ff1d0899192b9e4660b3f518a4a9d4e962cec1459797", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:af38453ec913b27ba6aed257edfba73bd6a2289961622aa2d1222101a1bacd39", "formal-neighborhood:dc3cf71cf4730ad1e27b4693fc98589d6e242aa0352f109f1031053629728e37", [
      "formal-neighborhood:dc3cf71cf4730ad1e27b4693fc98589d6e242aa0352f109f1031053629728e37"
  ]),
  ("formal-neighborhood:af632f915f3ecb8eea3e2bdf632bf3c2353b3b18ef7714c9b91ead94684d76c4", "formal-neighborhood:719286ef6eb354f4b05ec86b688e34fa80cf96d0457974ccf2b698ce9fa8a513", [
      "formal-neighborhood:719286ef6eb354f4b05ec86b688e34fa80cf96d0457974ccf2b698ce9fa8a513"
  ]),
  ("formal-neighborhood:afa193efc631749c6280601d5e0a00ab63fc7429207dbf48f4e03a6f43d05da2", "formal-neighborhood:648c87db79955f7c76c5a236ebb56be832448a0a0a40a828ba15090e1f1b9a35", [
      "formal-neighborhood:e715575969a98c46aa47725dec5e5221254b669521b37bf9c6a8850d08cce3a6",
      "formal-neighborhood:648c87db79955f7c76c5a236ebb56be832448a0a0a40a828ba15090e1f1b9a35"
  ]),
  ("formal-neighborhood:afe91eee81b3d103d4af3910236b9b99f87b71371ea2a6e384711922a6d818a7", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b00395cb6c087e743d2f06a0736134a9714d2f07d4abbfe7b3615aa602bb4b9d", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b03730f2863d69fc0971dd2504667484e0e488f13d695a089de469b35baa3062", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:b03df3eb5d31495f9df623e940db6d5dd2f52c719db98f9549f2422112d2c3a0", "formal-neighborhood:23c4bedec07dc9fff0e80eb902166d412c341d4358b304c80125ed55a0fd73ed", [
      "formal-neighborhood:23c4bedec07dc9fff0e80eb902166d412c341d4358b304c80125ed55a0fd73ed"
  ]),
  ("formal-neighborhood:b040ea2928c0c68b559bfe4a4ab3cb65b3c1163965550d7eeaa35506774f7828", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b05eb3340c3b277210f0c5c6fba3f06448dea00538d4baeb4905cb683e54e451", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b081ad96f016ca96577fff58382208ec7898bdedbaf1fe9f5e41e60df67cb979", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b0828230aef57981a781e4918d5d50129041ad72de7448d5a9c4f1e16ce1fdcf", "formal-neighborhood:1fbae47b3ce53478213d126398d7f2123e881a693dff0cb7b8725d1a0047e970", [
      "formal-neighborhood:1fbae47b3ce53478213d126398d7f2123e881a693dff0cb7b8725d1a0047e970"
  ]),
  ("formal-neighborhood:b096b40a2dd479c7f93a3c1900c95d8e3422baa158e1f2718b538d3bc5b0b8ca", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b11210349174b3b55aa279ae6eb6c09b200417cf43092a7fa3832f5d620372db", "formal-neighborhood:1bc4dd98895fcec7a2c498da264d6fb2ba53cf167bf9d32684f8a4261285fd00", [
      "formal-neighborhood:1bc4dd98895fcec7a2c498da264d6fb2ba53cf167bf9d32684f8a4261285fd00",
      "formal-neighborhood:9974e0eb7b3514c52de76d4342389baaacc3e7aa6afddeb9180684ed683fcd20"
  ]),
  ("formal-neighborhood:b121563c6efbade9772c6b26e65f9667659ace6370faa3adb4531db2747e275e", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:b1630910a3f907f4116ae3438edf3d18a7e55194540faf9916a00a6c819ca81e", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:b171e49f80a86c8bdb1e307baa33b63eb5637378f71e8e0e66e4a9b197fe3fa3", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b17faf5067e1b109e096e7ae7b698a6b431bcefcd0ddd4f741e020f6399153c4", "formal-neighborhood:11444de477cdbb524a4f3a4d3e08ae249eedcc48698d79545df427c75bacbc19", [
      "formal-neighborhood:11444de477cdbb524a4f3a4d3e08ae249eedcc48698d79545df427c75bacbc19"
  ]),
  ("formal-neighborhood:b1a1f55550ddefb997629d1e1e856dd45056b27be13d1744dd7708e464a3aaf4", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b1ddde551fc0bb53d1d13e14e7b4624cb6e053e3caf53a47485c925b070d58aa", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b1e5e646620bd0addce379a13907ddf641c7ff2de96ff15132458a1a88862cc5", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b2444dc925b31bcb775a1d2cf7d6816cebb682fe776e90c7cd695ee4b81bf5f2", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b253fd6f679587d5e56276d518078f835e800d6b34bf669f3f769d4051c13780", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b2717d27ab29a21a6e4335fcbea2e7b51f2569bdcb10ee191ed8a31bfabe2e5d", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:b2804d7ae57abecf46e4400061209aa7c60eda537ad767bc16e75924166fc73d", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b28b1ffa29a619005caebf0e865fd1c22c482cdcf6ed081f489b8fb25ce45194", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b2ea3bcb4c2ecb1068ec4d775e4b1f51a9247ff068c57209f33088e2ddbde7a5", "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a", [
      "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a"
  ]),
  ("formal-neighborhood:b30198ae331dcaeb074720ea0578f73809a3fdce33a86988cfd381b8df529e51", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b30842c5671636ac0c538e09dc7db733068b1568d2411ca5cfe08244d37b2608", "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", [
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:b32d73dbe4b596847c805cb203b6f1b42c44e89839bca3d6b2674eb82a64acb5", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b34596b04618007801e5db1463737093baed9245f675481d4e76a7786acc8427", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b347cdb69ab4dcb9d387c30bb63987a21e53a455991396e9592d65abfb3d471a", "formal-neighborhood:6c52d61eb59e42a2294fe4379bbd39c3e9c1e59b6dab02acfe66b08861d988e1", [
      "formal-neighborhood:6c52d61eb59e42a2294fe4379bbd39c3e9c1e59b6dab02acfe66b08861d988e1"
  ]),
  ("formal-neighborhood:b36264c0ed6bae4d6e16b3cf04f4c6e5a07b6246180314b5f1b09bba05efec90", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:b3774ab190994830a93163d578d2119dbd89ddd36725d67798f066e2a2af594a", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L136409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
