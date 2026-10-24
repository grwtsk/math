# modelSelectedCandidateIdsChunk0023

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9496acd5afc69b0ced77838f8093dead85029f84ea31e2b2b5f2228f20f09142",
  "kind": "def",
  "lexical_name": "modelSelectedCandidateIdsChunk0023",
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
  "slug": "modelselectedcandidateidschunk0023--758cbe558aafb761f4aec08b",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43574,
    "line": 43507,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:758cbe558aafb761f4aec08b46c175878f18c7059943f86089e75c96b71e2954",
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

Occurrence: `declaration:9496acd5afc69b0ced77838f8093dead85029f84ea31e2b2b5f2228f20f09142`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43507–43574.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def modelSelectedCandidateIdsChunk0023 : List String :=
[
  "name-candidate:91c9de9ad6fb4f47971947e55a95e47d9f89607a9fefd10ce64ccd992f1df8f9",
  "name-candidate:b33230dd786bf22651d8d0e441c81183c9d5b9ac468f5770ffa0298e452fdbc4",
  "name-candidate:01cc9bc0032beaaf891ae9ca4f0d0962448a2a5c80b26856242e7ce9607fa8c1",
  "name-candidate:338668d6b2ca229a7339bbe0eeb5dbb7b94b692b27746cab058a34e5664f81b7",
  "name-candidate:460b7db5cbf0caac29c19684526f64fa999f6e4560d3d55d66ffe1e3d94c9016",
  "name-candidate:5e5631f60e7aeb9d9565f153451c63c9ed221ae532da1a35ce23da4a17fc7e27",
  "name-candidate:b46853a09ad7ac9d5b25b841c54ad93244e21f39be709b3fd7e976f1260c4dfb",
  "name-candidate:87092d77139cd3ccf1e704488dc84b0a34e8cb92f6de27b7dad23c112d41595e",
  "name-candidate:c62bc8cd263c7629ad535d04d9b4ae8e17ba3bc9f1d919a8edbbdfc0225be313",
  "name-candidate:692f707179e8bf3cee02b61294d24558b6e3ec3828e5635144d3c1ca4793e54b",
  "name-candidate:1f9520f042f1814ae946f2ee94572b2df8c32b28e432ee89caec777a9afd509a",
  "name-candidate:544cb6c60a5a6dff13c3348f4800752fe250f65ea2f704fc47454999dc600336",
  "name-candidate:8b986e459adb7ced60592a9b6e4fee19f9a5c7d1284a99f3015d8c2420a482e6",
  "name-candidate:a04a2e98e1b042068af010d3fe333128214d08960d9ab52920220680906d54bf",
  "name-candidate:bb6438e68219f22fc6e451e37451f9cbad80f3aaeb1c5efce9064f2bf2f9c735",
  "name-candidate:ab5dffffcf09054453520fbab84dfa98cc75801ad7b10d21c105a98d8d2514c9",
  "name-candidate:f22ada1e8429780f62d99b7c08e07af222ca16255a9fe48ceed8d297bf800858",
  "name-candidate:77f27430f062c1314322665fc899eb03448fd5551e1a54debfc7c7409f2be7e1",
  "name-candidate:3706a49a55e48ed67d7c48b6953a7c64d9b546cf6bdba5c501c838780aa0b78e",
  "name-candidate:5b534a99f04c8bbe1ff937b1614bac8dc6eeb063069aedd147aef2d6d60bb219",
  "name-candidate:7198437f10a9ce9b13e97503e7f7da27de84032ff82e68b5c86946e0020805f1",
  "name-candidate:fcb1ce83b03a835159040cf28fd58c66ae0cf3292b28a3f976e4993ebc879922",
  "name-candidate:d594880dfbce52000edea18781a8a7081de9aba602bd4eebb674234e93485761",
  "name-candidate:5a803cfa4c37f17734356a6836a9cda40505c34ce7c020b96e00f4e5d7fd28d4",
  "name-candidate:6e0bb9c68d0f6a81f8a1ea7ce799e70d512fb7d6160102ebd867a8b3d318b81b",
  "name-candidate:425296457214be966d23c67dd4bbae0cf655087c0e94839f8785464f5e811d59",
  "name-candidate:77fde8fcbc8d75b9cf6fa70a985ad3f5dccadcc24bc08c8d604c46dd17fa567c",
  "name-candidate:3cd55c47f573759510a66d9afd4bb6f62edef81fd1d51eb12ff4ca27b59c2b5c",
  "name-candidate:53b4390038e7a17b72099f657704cbb4fb12efb5bcdc64ad6c7d45e6235895ba",
  "name-candidate:a4093659de6ada988b7b85d43b1e000093042e021d7b1b23a983bac52d31c602",
  "name-candidate:9bf2ddeaddd4335e8c43b32e162045fe1c71af87015ef3d52599b50700d761eb",
  "name-candidate:eb4c4392a680758bc32043bc0c84e1ca0765f4bc703f694126f61c79b3fe8c18",
  "name-candidate:c849bda995369e8dc7cd83b8ae34b6a67a1d308283a311acbfc0d4548883663d",
  "name-candidate:847932ac68a7113c64991419484c22f974e86f8343d06800029c496cace5cccd",
  "name-candidate:7d60babd5796cee84497750c6c3360fd2821471edf6bca4097978263ab3efc57",
  "name-candidate:8e4e307ce42936292795ba0de0997bdf7d2c26a44d87933fc95d818c12e9e106",
  "name-candidate:f92fca0d6387f59258a74bfa8464204a3629dcee6ba0293c980ea772ba1f4867",
  "name-candidate:20fdb549173a80fc73bbb085bc7bb9689504ed2f033f3a02b63fe0f38d313f6b",
  "name-candidate:5a8cfa5805063b18c8c68d7ac1f354940395aa9f840f23deef388ad2418f26fd",
  "name-candidate:fd888c7c21ac0e5cfc43d2c142b37fad30f70c162557283c861ae1c387eb6aed",
  "name-candidate:3b7cfb36d63fea759af2229c6384ad33c3c4bcee0145bf83d27aca2bce1e1b41",
  "name-candidate:c595a6a7c5668a2628b007d03086d93ca0ca91d1f02e7f460004f041565514fd",
  "name-candidate:f5b8258823871b81cd5fd3e5fe2e1675bc6ca547d34765c5379a1a34d46a0671",
  "name-candidate:ed3a8ea3ba160fd4c4a5fd969c692c17d581a184553f46a449bec6787638c5db",
  "name-candidate:2577af4e7ddf7d23c10186ee2d9c824d63388b35099ccc61cfb284a748f92ea8",
  "name-candidate:2d4cdb8590dcc643a20cb5da34c799d17666459763a3aa6a7fc0d44b4ce2897d",
  "name-candidate:c161352e2b82799645a959d1515520607f70c8ad75b0c43982be41493c79e8f0",
  "name-candidate:9b56410974f77110468b037c58072ceb5772ab6401ecc6a5d6277a7a4001db47",
  "name-candidate:a5e52dcf4a8f78887c9f00636d4277e1d76b6a91df243b7c198d6aab53e75621",
  "name-candidate:fe80e8ae0ac2500c3419fdd94ad254b935d9e3894f0a03adc54921750b6c6d25",
  "name-candidate:4fcffadaf6586f184a6b404e1607b3ff1665106d3724cf89bea211f8e862ba04",
  "name-candidate:a187cd0d460609e13e0cd57f4b52fc08909c85b8c6160e9f43d77e973455b806",
  "name-candidate:b1238ea0cc1e16dd2eea8cd40420375e830ca15ef2eee73f16984c703a198226",
  "name-candidate:313ded6bb13bb135a0fbac2d39383699a7c7d6425e8cb7442524befa4026304a",
  "name-candidate:8dd26b02e84187cde1ad35f65fa06eb647be77e81935360f06eea0ea5255d16a",
  "name-candidate:8e50b1df1a675652521cce21b47171e2541a6dff7a632869668d62e4df1cc2ee",
  "name-candidate:66931e5d282060b5eb01a2166ba3672be05e62bac68ff5dde8f515fa253a1fcd",
  "name-candidate:45066a8826584115161684fa1790200ca91c1139f94d6fd28c5e9581fedf577f",
  "name-candidate:aa988756307189013ff71050a16ebffe85fedcc4b84a2c4f625c2237eeccc7dc",
  "name-candidate:11067d3273d526517cbbaeb684aea52d756e6191aa072e7e6baef2b75076930e",
  "name-candidate:bf8f3b3d7bf71d4565c55d9c78b5bab20955ddd272ee046a0771ebe030eb3d61",
  "name-candidate:f7b9de3425e7de13d9ed413d5f01f7f9db5005259f5a0b4c44ba119820cc0283",
  "name-candidate:56a5c214bf9c4c5385dc691cd81fe443862e1253685b02b14f8cc6d63163e1c5",
  "name-candidate:ce70a44173fef55d67de733a15714a8d3adb00c7c96fcb4b2f1c4ce14422a182"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L43507).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
