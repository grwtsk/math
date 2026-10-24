# modelSelectedCandidateIdsChunk0005

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:635091d992378346bb520fd9cacfe3feecdde8b70ab09cd87ed13592845efa1a",
  "kind": "def",
  "lexical_name": "modelSelectedCandidateIdsChunk0005",
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
  "slug": "modelselectedcandidateidschunk0005--c60a6a3e45479e4f09c330c2",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42342,
    "line": 42275,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c60a6a3e45479e4f09c330c26216eed3ed81ace9a493c69c00d355e8453c2985",
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

Occurrence: `declaration:635091d992378346bb520fd9cacfe3feecdde8b70ab09cd87ed13592845efa1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42275–42342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def modelSelectedCandidateIdsChunk0005 : List String :=
[
  "name-candidate:fa47a36fcc028dfa7e68f9e8ac6447ecc1a92017e4f704bdaf2761f7693d8258",
  "name-candidate:bb5cec6cd5eacd45f7c6aabca19136c8310664eb21309bf5c33f15399819d68f",
  "name-candidate:20ecebe3e16dbb254060bbbcee5a771c54184b452a194cc0642013dc70abcc3a",
  "name-candidate:f10980a3c1c2af72d5e8d8985d3d3edac3d3ae0817e70a313a5329cc50b6569d",
  "name-candidate:bc49621e0970d4b535052f71ca01b1fe15ae69b276cfa17383c8203ee71dcb72",
  "name-candidate:4de537bb9a8d33d4f7a59cacdc1cc9122df3a85853a6334eb430bdbe5b80b79b",
  "name-candidate:d7f4f3132cefb1ef8ef98b49b125310a7cc3d694cae9b863ff6c659149317d64",
  "name-candidate:b484058633246fc1acb76e3c339cd96f30ec903ae63b05074894c6fba048bc23",
  "name-candidate:239df824986b14dd0a95324d011d84a5c3322d1b816a5d5fc4dbb97091503999",
  "name-candidate:20b88c2f17d3cd4c7d3dd5bb3705ad8a37ce2db76abfc570a1f66481c9499e5d",
  "name-candidate:1c26b3c4bae50f2726251723ad7e623e7668711e57086d22260e5033d3988f5f",
  "name-candidate:05e8263f58236386c8e1fb4f3db3820556e5a111d12221bb9fd3ed6974c14beb",
  "name-candidate:9569ca9492fbfcd21a4b492421b6925241b247efcfb8c568a00615826d7b0652",
  "name-candidate:418f6d7dd39a0bd0a12b6d6e3bac244ecbe9fe09e48738577f6a7dfb81d281a0",
  "name-candidate:5d91f965f95c652e6388f4afb4b6b4f3c6d9e5978cb84c39bc3c27e1c928bf9e",
  "name-candidate:0a2f0355575900370dd3a9bbf7987926bb979eca430ebd5606b498a6d4e17548",
  "name-candidate:da528112f55fd9569dcfb299d617660407b267fe9fdc2089f353c3a94afdc696",
  "name-candidate:6ca3bd0c5a4a08d1c8da6c7a320d236efb217fce813344fda440fdf2c564f943",
  "name-candidate:43462702fcae61fdb55307769485763856abc772764bf5810725005ea26356c9",
  "name-candidate:0b04e7746d363eb26ca03d423f2009fd20acba7702c446e395646c4d9cace872",
  "name-candidate:8a6a3e7e950f3824267290cbce8b940e1b647f2ee054eaacf092b590fa8fe342",
  "name-candidate:cab8f157ad36d323ef99d9ed8d56c163eed531b004726e47efcdd533aebcc055",
  "name-candidate:cba95277bf130bd840c823510227f01ca56f425c56899e6f6aa85966a43d472e",
  "name-candidate:0ee3a57895d592b33518e53a7e9602b1e7515c0a7d5f2eeb629556e655412db0",
  "name-candidate:18b6944f989c1cb31cd7cd24a063e597b002ceb2fa14bbbd48bf5c85da5f9800",
  "name-candidate:1e2f3ac90bfaa2187363abb4e4d73841c4ce2473b5c8049b29a3a131705268e7",
  "name-candidate:0ce11cf3045d8f31d92d54afffc6e400e95090c1ec28005d58d5606e88260cd7",
  "name-candidate:86ca4e915a3679c48573e302b002a71cbd00797dc51d8df633ec905bf065fd0f",
  "name-candidate:f38cc4bf30993e411acf97a8456094143c81f039e283c807a49c4d89f2c3dc9a",
  "name-candidate:c1a27697a70dd2bf8b0240b8db123d892d7429b9b21375c5e57e390bc05b9935",
  "name-candidate:5df90910e426592032ec6022ff5dc7398cdc39b0a90c52c035fec42e87404665",
  "name-candidate:2d9a7e13291bbdb015d1535ac3013f1e6105aa7c026588458dcd0d4fd4021138",
  "name-candidate:1a12a759aa8d714c75764424faf6177273a20f48386977c1d2179e8e1c153523",
  "name-candidate:b0be2d8c010cd11becd395a3d51ba837504043b2aa6d4c21ca7da92871a86ad4",
  "name-candidate:4cd281be9f6494c2146919bd5a107faf49646a394c7ba8d9bb42c64cc4f48fde",
  "name-candidate:1d3f294f2c326e93f6c2fdf9f9565b50ab4d4350c10d8cd805a97fd4614545f7",
  "name-candidate:ffbe50ce82e079ff6ff9981dcd3b11d55a6051349a121150746363edf4d42945",
  "name-candidate:d41ce23e8d76b115042b883b85dc0180fe91920ccb96d9cd0a5e159bccae3a97",
  "name-candidate:cfe35f5347c0584c000e1c08ed1853a32b10af3a963ab592500049c61d37978f",
  "name-candidate:01be7515f5a97478fd9e7d558bee74296da075f08496d2b00317d4347c806ce6",
  "name-candidate:cb9f33d61b4070381c8f3199f673db051a045862f09580ad18efb03472e08df1",
  "name-candidate:ced35c1b2799956163144669dc927339caf13a5f5395b305b83405ef6bb21b73",
  "name-candidate:9630d4f95beabb586df8aaa9678ece7c834c294f02814eb610b6ecd100a1e059",
  "name-candidate:680692ed891eac512fc731a4c5f33ee89367e1ff4015efed28e3dc04fc831b17",
  "name-candidate:f1b45ed73108a92e4089870ea5686c576b9e3220bf55f173423ae93c7f4d789d",
  "name-candidate:1d7f8ee1a839cb59a9256db4286f594e2267461702f8e3a57864f1ab12ad1f41",
  "name-candidate:e6893a988cc9f4580e08e6be05a4a6a741e3a914b91ee7ea974d03babfc7be36",
  "name-candidate:505a06d3f48029c65347d2eed17ff1e79371b4e4fe52e54b0fed9937b4b2dc47",
  "name-candidate:a8e07cf728faa4bca25f788a386153f8ebfa7f0b3ca55b50e30e31bc081dea67",
  "name-candidate:b985cacc0b58852f6254de0e05ad94a7bc857b92292275c195b1152e98084a54",
  "name-candidate:4cbea9e5cc0ce6a0d86b76b41c787fd8709bd3222ffe3032c5d112020e0d2a06",
  "name-candidate:e30a1fa0ed0559fc45ea58533b8aacfc4e0f0e7d34eed482c445b1a09d33266c",
  "name-candidate:9615e247a21309d9af756efc4452654218028000743ca349237e56256db3257f",
  "name-candidate:a001273d83deac5de0317407617bf115180dee3ef2cc07294888c3f919629182",
  "name-candidate:a6a6b3a54a51a5efb083860ab7361a9e53b6d8e989b10b05084e2fc944a0ee42",
  "name-candidate:40286aa5330b5757e1e02564894b596021ceed0fc96a9653fd00389e7306ca77",
  "name-candidate:19123c94b48727e732fabd0ff55613449cbd66c4d25232c5336338d1f7a7a05b",
  "name-candidate:592ff308f55035bf902c07951d12913d3fd88f5fb2e236e033adbcc8a51eea8a",
  "name-candidate:5340fe835e64fd58f5d1f1b7f69db4a0d036cb1ef334aad19166458dbfb5379a",
  "name-candidate:b73aa2e6107575170a608b18752c3cb9dd8fb78271a04a7f329dd15f9a530166",
  "name-candidate:0e808d2a14e72807921a50836803a2725e1fc670fe701d2145b069b5361926f1",
  "name-candidate:30bea09ff0146a92cb5f1d921b7c7d6323da3dabdf7fb7ec961072933237a266",
  "name-candidate:b79dc13006d249dfdaccbff59cfb3cefd492a48a1166730aa8d485caea9ae91e",
  "name-candidate:cf70a1c6cdca1eae4fb54af473abe394f59bf12f0ba545e935403da035bbc06d"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L42275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
