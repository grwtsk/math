# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Path.Variantb8b93509741ba53825c53a29a6239f03d6c1df84588426a17a358e27132fb68b

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 9 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Path/Variantb8b93509741ba53825c53a29a6239f03d6c1df84588426a17a358e27132fb68b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec6a826d973bc68c2b2e92c59c4fd95a67205307`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Path/Variantb8b93509741ba53825c53a29a6239f03d6c1df84588426a17a358e27132fb68b.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ProjectRelativePath](declarations/projectrelativepath--6a1393f9d856dd067e665444.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [LeanModulePath](declarations/leanmodulepath--8c3482e9d0cac94c14f03bfe.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [Utf8ByteOffset](declarations/utf8byteoffset--5163cd8f8bf82846edc4ed96.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [SourceByteRange](declarations/sourcebyterange--79cdb546fd5b5505c535b1d3.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [AllowedRoot](declarations/allowedroot--8ae5b33fabc9d6884b33b7ad.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [ProjectRelativePath.components](declarations/projectrelativepath-components--38316c942fd9dece96001675.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [ProjectRelativePath.Valid](declarations/projectrelativepath-valid--db94010656e9eaa4bb676509.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance--aab863c96882ff89ab3ae968.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [verifyProjectRelativePath](declarations/verifyprojectrelativepath--29e9787a32aa2aa144686b59.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [verifyProjectRelativePath_sound](declarations/verifyprojectrelativepath-sound--206ba7dcf0d7e6669995ed9e.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [valid_relative_path_has_no_parent_escape](declarations/valid-relative-path-has-no-parent-escape--7567e565ae3d245e5b907776.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [valid_lean_source_path_has_lean_extension](declarations/valid-lean-source-path-has-lean-extension--7d8a1b8a9d3252a6c9b131d9.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [SourceByteRange.Valid](declarations/sourcebyterange-valid--a0775f1cfecf9efcc29e75e8.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance--991c8e1776b660c61ee09ec3.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [verifySourceByteRange](declarations/verifysourcebyterange--f1ad090e3b46dacc52318574.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [verifySourceByteRange_sound](declarations/verifysourcebyterange-sound--6f609ea7405f8e8028cc17a7.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [valid_source_range_start_le_end](declarations/valid-source-range-start-le-end--b3f43d27695c1f29daa72350.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [LeanModulePath.Valid](declarations/leanmodulepath-valid--a7dc087b4c5732d988d53f71.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance--8765a600f6747e583a9498d1.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [modulePathAsSource](declarations/modulepathassource--57eb7c1ac3c57893d27d12ad.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [LeanSourceIdentity](declarations/leansourceidentity--b76327fe4aff13510e5d3f10.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [LeanSourceIdentity.Valid](declarations/leansourceidentity-valid--f3f29b4da9abe6a12daf4a56.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance--a227a9a379bc9f8f81bf7879.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [verifyLeanSourceIdentity](declarations/verifyleansourceidentity--56ae01dd770444e31a486bf0.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [verifyLeanSourceIdentity_sound](declarations/verifyleansourceidentity-sound--8e0189619b964d8950fc0a46.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [modulePathRoundTrip](declarations/modulepathroundtrip--c683dfcf3864877fc4579645.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [module_path_round_trip_for_valid_components](declarations/module-path-round-trip-for-valid-components--815b3b36def7b01814b81e1b.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [ProjectRelativePath.Within](declarations/projectrelativepath-within--5c4affb213f02fc9e495af15.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [CandidatePath](declarations/candidatepath--9bfe04bd1e215a7ba943cdd9.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [CanonicalPath](declarations/canonicalpath--dc3e2d6ee0a0c6471ab25cbb.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [candidate_path_is_generated](declarations/candidate-path-is-generated--08676ed20f6a185e2daea201.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [canonical_path_is_not_generated_or_legacy](declarations/canonical-path-is-not-generated-or-legacy--b5fe2c80cb4551f35d49fe9a.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [PathResolutionReceipt](declarations/pathresolutionreceipt--ede7206f259b365135012223.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
