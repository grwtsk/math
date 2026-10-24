# primitiveElementKeysChunk0084

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:acfbfc9309403b24a3f1824a3be220e5c347599d82beb31c1824c114d3c7e3ad",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0084",
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
  "slug": "primitiveelementkeyschunk0084--905d19c6f4351547f6febf83",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5812,
    "line": 5745,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:905d19c6f4351547f6febf8379f1b393abf4dc36f34c08666b3065836bca2c79",
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

Occurrence: `declaration:acfbfc9309403b24a3f1824a3be220e5c347599d82beb31c1824c114d3c7e3ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5745–5812.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0084 : List String :=
[
  "source-element:a9d96b8088def6b24375fc0efeda198227e03b5fa7c5cdee1db9465965067a45",
  "source-element:aa2a72ce7ec5c199e46508acf2fb5adf3fa06f7eb37d56d92e0db205736fb64f",
  "source-element:aa6e0ec0574b89acbf926d60ed59f56c281b417cf8ad8b4153b714448351ee1c",
  "source-element:aa71467bd341b1b71573f4d9d1fcc2c7fa21a2498accde81e7f78d08f3a8bc7a",
  "source-element:aa756d949100747bc48e114292f95bc5cc921c569c06931f600b3a358c453458",
  "source-element:aaa34fac24b00fe6cc19820bf05d8b234bca4de926f0b58d409394d1d6623e4f",
  "source-element:aabfd8a951d674ef8090a82865ce60a3f148d7a57b19f4573820a093d6d04f67",
  "source-element:aaf05657e322befd149f576cd093d4a10d2a5471c9c43b863ee15961c9fb69c7",
  "source-element:aaf58d0c2ad6324a8998ed60f917dd828c384f267f271b7c83b76a24dbf4eab5",
  "source-element:ab2e44b5579fbff4bdffc4a196ca8fedaae5962f1028a28bafeb1a914c540234",
  "source-element:ab83c25598c91e485867e19cadfbe4fda8ad28b8c689968d17757a61ff3bf82a",
  "source-element:abb87b7f79132486b128f72c310d3367a20fa310d87e67ba5e2381e3530637d5",
  "source-element:abd31c56805cf141b0fc8def6f4aecea9824666101f03b184be90a00b7544316",
  "source-element:ac1d00e6735cae4f0a2b41013ce3165af549aa997157adc1db1c3d3a88792422",
  "source-element:ac396ea8d098326633f6c07d70ba73d0dccdcba2de39f00e8bc9b1df9881ba00",
  "source-element:ac3fc2279173e50be3edecb304f3b7956d1b5a1494b8011d25b22c46983823fc",
  "source-element:ac56faf90bcfb2e4396ee8427b1518f41fd3cd775535de7513712d18c227e615",
  "source-element:ac7fdb868197dc6b9a51e2c3534c1484fe87f87729cae0992712da30739a7b65",
  "source-element:acaa75e9db9b6213b5f4f12e04531baea53b59ef151d8cbe5567321cad2b5312",
  "source-element:acc80ce14b7453d47854b1608c2409b9e542793a906bdcd39a5e7c8713e70c87",
  "source-element:ad03ae1b8134ae604e0f0abe83cb7d58a9eea12bae83fe68f17fb8ded1e4f7b3",
  "source-element:ad744f81459fe054f989e83d03255c9e7529b90663e3465d2185ca361ec9516b",
  "source-element:ad85a531ea5cbedd0b785f3865493b4962e9ca27bc501e7a375ce4ab8e76fa36",
  "source-element:ad89ed7a4ccda03aab7a42b7a99c5ce2589d5ad58932e60b58b663d468bc729d",
  "source-element:adee6f6942e07aa9fe5dbe495f39feff228240132b68cbcc6baf77685a4afc97",
  "source-element:adfb4ff878906afeae167b246acc8be1404f93707afa1b53a48eab4ea244c17d",
  "source-element:ae29e53535582108c8049cdcf53587f255c14932bed1a35e91c8ee62f0893a05",
  "source-element:ae34367e791bf782bdaaed1242778158f3dff4bf31c96eb21a65f5f76c7ee59c",
  "source-element:ae35382363cc2d76349e6ab03fe143877cb94c74656d3588683bb95476635d6e",
  "source-element:ae432ce77dc2a76e3d0b31212e132637c7fd2ff6bcb34252a6ded4704005c2d2",
  "source-element:ae7e5afc7ea42c4fdf5e49bdf8bb261209c3d5e64a3c62ea0672bd7c214c4418",
  "source-element:ae7f27b9fd77ef92f9fbe4150d9466d1ae1cfde392a2fda9412332ad3a209261",
  "source-element:aeaddb61b618148d33250d2ad0c1c1a24e17e7452b5dcfc1453ec699d9e28cd7",
  "source-element:af284649c5a0fccb72968d2bba2ce845958070181f594eeef92327ac85bb9fd2",
  "source-element:af676ff407954f7637d22ade72fe0e671faf03f2f95dded2ba6028570545d4af",
  "source-element:af7e428b12f05e428fc694fa0c1008a2fba8f665decccd6605f7430326a69156",
  "source-element:afaafab6bcc099edba1f74a12655a077b98864dd5c4331d98bd03b1bac376435",
  "source-element:afc3344e6e7bf8b5ddfcb480b03c765fd95a2f1424babe13e26e09ee25460101",
  "source-element:aff3df11afd8a7ce72bc8d2f2499246bd30ca210496351fd4c625b4ba870ea79",
  "source-element:b0ddfdad045e4d742d18680dc971f28cc375b9ee36016520b672628d06a6d427",
  "source-element:b1169c2385005e2c240e19a403e33e8bb584ae19bc4d8966541e60e64d7b9d41",
  "source-element:b117e0c5756217d889f31fc82993084f0f408b81854dfb12995ec7dac2fedc20",
  "source-element:b18b56e0567ffc9eddc11652de0ebea6e686b41029c8157282fb1cd3810c83ee",
  "source-element:b19e708fd40c0aa4aeb4828b8c3292dadd851c151ee01d401071b1bebcc030ec",
  "source-element:b1ac03ac3567d198ae28a302b4d615b79b37f8becdcd0723c1eb7c02fe36dd46",
  "source-element:b1c470450590a6c885839a21ab0e6018b061168a36c08838c6b2e29890f77720",
  "source-element:b24069325e67c8dd4eb539b6f40bd6e4667985165b0e60210db4570ee850aa2b",
  "source-element:b2c7ac314c76ca34c0f927e9eedf0fdb2993e9a5785c248943f7a8a7d8c3339e",
  "source-element:b302d357a95aa206c195d4bc320ce6084147cbd6f6eb15835ac9138be1f4577d",
  "source-element:b304a7dc579d6afe0b8204ceef5608d61f78caf9ba73460b148f7d330836adbf",
  "source-element:b31e8adf302f0faee74a57edab220fa8f91b8c05ce8735f713b9030ccac67e6f",
  "source-element:b31f1efe87886a8590bd360d053474007d91b800cc3d8703d79a6f430d4c4edf",
  "source-element:b325dee94b33529a3f7790a52441aca14bcced3be7ab35486e94569e45b9f72f",
  "source-element:b33365ec47a9b7baa26994e49079535904499dc2e74940b4d0c28f06d415caef",
  "source-element:b34240393d35018b175c0cb848a33f05ca46543d60c05ef90e68a2d8729cacf4",
  "source-element:b344b103fdecd8a520b9df6b9a16e42f944f70c8e74f488bf785b4093a74ee8a",
  "source-element:b34a303f720cd2736eb5401360bc179ae56423c404e7142f10e9587c9cbff127",
  "source-element:b37e5c44b11b374c041b59e4b408c5c1e453aee74f83ea192d076a0ab768d3b8",
  "source-element:b3dcb780859c3cec943881668e18a692994d4ec2b3f2748d31fe23dcfb82c850",
  "source-element:b48e77fe2fa6d94781355a97d21d4f057a40f3a1ad58fcf3234e0683f091899b",
  "source-element:b49c26d2ce5f05d21cd33dcf5d2733c251b11c620ae327401a45feb08a591c43",
  "source-element:b4a2310e6c99b6dfe16cab54e51babb8ef466472e68ce19c44293e8c7f452b8d",
  "source-element:b4d4ad141c5f6c88c0ee4d2666fee60587c38c733d1094011aafa77570a24586",
  "source-element:b4f1ce961324d017f2f13783335b65c4a2525788b90d9ca76871b8e6a971ea95"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L5745).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
