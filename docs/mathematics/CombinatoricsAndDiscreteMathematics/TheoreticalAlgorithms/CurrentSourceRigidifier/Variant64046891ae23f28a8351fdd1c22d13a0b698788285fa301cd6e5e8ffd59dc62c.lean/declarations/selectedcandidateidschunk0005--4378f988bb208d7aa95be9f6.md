# selectedCandidateIdsChunk0005

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aea48999e780ea75589c1903d6544d08fbd265ae6a98d3e9271bad89a5c19cd2",
  "kind": "def",
  "lexical_name": "selectedCandidateIdsChunk0005",
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
  "slug": "selectedcandidateidschunk0005--4378f988bb208d7aa95be9f6",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40212,
    "line": 40145,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4378f988bb208d7aa95be9f60c8db94b4ec273ad627393d4008df7b3a1f7e32f",
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

Occurrence: `declaration:aea48999e780ea75589c1903d6544d08fbd265ae6a98d3e9271bad89a5c19cd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40145–40212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedCandidateIdsChunk0005 : List String :=
[
  "name-candidate:fa47a36fcc028dfa7e68f9e8ac6447ecc1a92017e4f704bdaf2761f7693d8258",
  "name-candidate:bb5cec6cd5eacd45f7c6aabca19136c8310664eb21309bf5c33f15399819d68f",
  "name-candidate:20ecebe3e16dbb254060bbbcee5a771c54184b452a194cc0642013dc70abcc3a",
  "name-candidate:03648bbf2eb3d4e0435bb7a24a00ac7434cfcf7dede5dd62c5a99646d8ef982a",
  "name-candidate:e47e9e79fa9873c8d4d01576aa66e710df7bcb782772db032811e616e8838904",
  "name-candidate:cc2fdb5d0149660ffa73277f2400bea65d807448a26185a1b3a6e372ce5ad5e5",
  "name-candidate:d7f4f3132cefb1ef8ef98b49b125310a7cc3d694cae9b863ff6c659149317d64",
  "name-candidate:f3998b1df1473565362940721b22d07f615ed25b895efcc506bb2bb5608a1991",
  "name-candidate:42d06bbc2aadecc81a85253cbfca88a7996327e8c75f66823dfd644ba692bc87",
  "name-candidate:ee612bf85da035f987278a32f10761dc07432b1a15925c6e61df08ccf5457010",
  "name-candidate:53ab9c8ae604536b8bdc45b625fb848ed2780598cc6bb78ca5ddcb0c6dd49837",
  "name-candidate:05e8263f58236386c8e1fb4f3db3820556e5a111d12221bb9fd3ed6974c14beb",
  "name-candidate:2d96850ca80607252846502350f12eb2be7a6707c9a56d356b5ee0b7437c6821",
  "name-candidate:418f6d7dd39a0bd0a12b6d6e3bac244ecbe9fe09e48738577f6a7dfb81d281a0",
  "name-candidate:5d91f965f95c652e6388f4afb4b6b4f3c6d9e5978cb84c39bc3c27e1c928bf9e",
  "name-candidate:937b5acf8ba617043e39e4b3650f72a88a688db0a3b0f2e1a12066701121455b",
  "name-candidate:da528112f55fd9569dcfb299d617660407b267fe9fdc2089f353c3a94afdc696",
  "name-candidate:6ca3bd0c5a4a08d1c8da6c7a320d236efb217fce813344fda440fdf2c564f943",
  "name-candidate:43462702fcae61fdb55307769485763856abc772764bf5810725005ea26356c9",
  "name-candidate:0b04e7746d363eb26ca03d423f2009fd20acba7702c446e395646c4d9cace872",
  "name-candidate:8a6a3e7e950f3824267290cbce8b940e1b647f2ee054eaacf092b590fa8fe342",
  "name-candidate:dd0e9ae89cefb4f5094584dd01554b5f14762b46601ec02625821456c4330afe",
  "name-candidate:cba95277bf130bd840c823510227f01ca56f425c56899e6f6aa85966a43d472e",
  "name-candidate:0ee3a57895d592b33518e53a7e9602b1e7515c0a7d5f2eeb629556e655412db0",
  "name-candidate:4bf9d5aedbf45fc7f29c030d4db7a721e1076ee66effec6fc309bfd08ad45cb1",
  "name-candidate:1e2f3ac90bfaa2187363abb4e4d73841c4ce2473b5c8049b29a3a131705268e7",
  "name-candidate:0ce11cf3045d8f31d92d54afffc6e400e95090c1ec28005d58d5606e88260cd7",
  "name-candidate:ed23c55c8320f476d20fdbebd24df23d5456f5586a8ce53d32ed8fdd6a4be674",
  "name-candidate:f38cc4bf30993e411acf97a8456094143c81f039e283c807a49c4d89f2c3dc9a",
  "name-candidate:07ade4a56fef81da1d1083f8e37de0a0e26b0ca3261d2f95333ff0fac7d3dd52",
  "name-candidate:c51c8dbed240ccdf3eccebcd10e244b417c39b789bf3fef8d347a7f9293cc44a",
  "name-candidate:2d9a7e13291bbdb015d1535ac3013f1e6105aa7c026588458dcd0d4fd4021138",
  "name-candidate:1a12a759aa8d714c75764424faf6177273a20f48386977c1d2179e8e1c153523",
  "name-candidate:b0be2d8c010cd11becd395a3d51ba837504043b2aa6d4c21ca7da92871a86ad4",
  "name-candidate:4cd281be9f6494c2146919bd5a107faf49646a394c7ba8d9bb42c64cc4f48fde",
  "name-candidate:1d3f294f2c326e93f6c2fdf9f9565b50ab4d4350c10d8cd805a97fd4614545f7",
  "name-candidate:36d3d4321714e7f7cd1480ba02b275c6accd54f68045296eb7b3b416ff258936",
  "name-candidate:39777cd79846a85b2440715ee7ef2f055e65056258ddf1338987e09b5496c56a",
  "name-candidate:cfe35f5347c0584c000e1c08ed1853a32b10af3a963ab592500049c61d37978f",
  "name-candidate:747bd666879e8a29f2b4be84608136178e3ab5cf1990ce396e8d05d12de16f3f",
  "name-candidate:cb9f33d61b4070381c8f3199f673db051a045862f09580ad18efb03472e08df1",
  "name-candidate:c59c6dd3f929b5c0fe7efeb9d84838e6632ec21c0a6d5ffece825bf4b0cddff4",
  "name-candidate:9630d4f95beabb586df8aaa9678ece7c834c294f02814eb610b6ecd100a1e059",
  "name-candidate:8a1ccb3fe9251094ad3c0da0bdda09f43d6f77b32d0e77f6dbdd3c425e10de6d",
  "name-candidate:beb24b4bf45319ac70fe2bbcab367a37a15872fa59ba40ef48d5f19df3e354f0",
  "name-candidate:7ec7978fcb03a5a363cbe35baa7e49040b4d26e60d5e36aa6f755188fcdbf34c",
  "name-candidate:e6893a988cc9f4580e08e6be05a4a6a741e3a914b91ee7ea974d03babfc7be36",
  "name-candidate:2767e5aac7a9a0370ba050d9deaa212eb16864d7dd210faff3cfb1b82fdc334e",
  "name-candidate:536af46367705a4e9389194ec4fe1d42688c12c0c056942a59875c1540ec2642",
  "name-candidate:b985cacc0b58852f6254de0e05ad94a7bc857b92292275c195b1152e98084a54",
  "name-candidate:c07f5481575af7020cc9d212c92cf80bdc1e4ae8684e6e0872e4c402877d79ea",
  "name-candidate:49fe19e0dfca9bcba3a1510b4bfa07aa411932ccb3822f9960b331eb51d65c6c",
  "name-candidate:9615e247a21309d9af756efc4452654218028000743ca349237e56256db3257f",
  "name-candidate:aadfc14f89b2603d812383bcc1f9ad5f7b9b54841162707fb9877197f39c3d81",
  "name-candidate:a6a6b3a54a51a5efb083860ab7361a9e53b6d8e989b10b05084e2fc944a0ee42",
  "name-candidate:40286aa5330b5757e1e02564894b596021ceed0fc96a9653fd00389e7306ca77",
  "name-candidate:ed5fdb3211d81bc6d7a1a07792a530f943674fb303ec9e180c74ff1446407d10",
  "name-candidate:0f1ab92c480e3136a7d589724f1da7c69ed743f683a79e43bbf6b736479bb961",
  "name-candidate:ee9b0dd4530321b1fff0b1fa95fbaeb6447ec24d26bee1cf1df1e18276ded0a1",
  "name-candidate:b73aa2e6107575170a608b18752c3cb9dd8fb78271a04a7f329dd15f9a530166",
  "name-candidate:0e808d2a14e72807921a50836803a2725e1fc670fe701d2145b069b5361926f1",
  "name-candidate:3cc937f9128c606d121977895fa5185b51deda173da29b087ac0cb2f0d89d147",
  "name-candidate:b79dc13006d249dfdaccbff59cfb3cefd492a48a1166730aa8d485caea9ae91e",
  "name-candidate:002d488d1fbad2266d5def9383ec1c4f5ff958e4ced2e5c7898cadfbd7684a13"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L40145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
