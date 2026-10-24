# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Path.Variant909c88bea4f17c4f24951517e148ae06b56c16a790efbb8160f53383b002f413

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 9 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Path/Variant909c88bea4f17c4f24951517e148ae06b56c16a790efbb8160f53383b002f413.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bdbcf6db8472793a0c988bbdda71476aca38221f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Path/Variant909c88bea4f17c4f24951517e148ae06b56c16a790efbb8160f53383b002f413.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ProjectRelativePath](declarations/projectrelativepath--dbf15f312d21542906859c4a.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [LeanModulePath](declarations/leanmodulepath--1b800aa026c6985137df9e43.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [Utf8ByteOffset](declarations/utf8byteoffset--7ee5cff99f7e390e458d6874.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [SourceByteRange](declarations/sourcebyterange--593b46abc296eaa8f57e4105.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [AllowedRoot](declarations/allowedroot--cc18188c566b0c46852e6ae4.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [ProjectRelativePath.components](declarations/projectrelativepath-components--b14cd2fa7cafdab226907d22.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [ProjectRelativePath.Valid](declarations/projectrelativepath-valid--26761670ab664cbde48149a3.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance--62455821c4dcfaf6732f4c24.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [verifyProjectRelativePath](declarations/verifyprojectrelativepath--f3cfdc99dd01b5d3ce27cb20.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [verifyProjectRelativePath_sound](declarations/verifyprojectrelativepath-sound--c8f8ab70cfafca6cf0a8a401.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [valid_relative_path_has_no_parent_escape](declarations/valid-relative-path-has-no-parent-escape--24a3cd87ee2ebf73b4dff5b3.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [valid_lean_source_path_has_lean_extension](declarations/valid-lean-source-path-has-lean-extension--0d61aae4a7ef48cc12eb6c8e.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [SourceByteRange.Valid](declarations/sourcebyterange-valid--484ba6137d453362ea0efc19.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance--abbb0c37b429443d84cb79f3.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [verifySourceByteRange](declarations/verifysourcebyterange--db1abb8f7b5f92c7b9049a6d.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [verifySourceByteRange_sound](declarations/verifysourcebyterange-sound--2cdee0ce10a0fc6b393e0c1a.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [valid_source_range_start_le_end](declarations/valid-source-range-start-le-end--1f36213073b4157a111691e0.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [LeanModulePath.Valid](declarations/leanmodulepath-valid--7c3210b4c306730fbc3236be.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance--6e12f07223318f3f73dff812.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [modulePathAsSource](declarations/modulepathassource--464e15aad0aa6050bca9d1ff.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [LeanSourceIdentity](declarations/leansourceidentity--989a4c670045ebab3cb798e7.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [LeanSourceIdentity.Valid](declarations/leansourceidentity-valid--477275cf57345f12ece0f939.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance--5af930750f4a8713c159fc39.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [verifyLeanSourceIdentity](declarations/verifyleansourceidentity--854f8bb4956e77247656cd24.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [verifyLeanSourceIdentity_sound](declarations/verifyleansourceidentity-sound--1b6d037fcf14a6fa696a411f.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [modulePathRoundTrip](declarations/modulepathroundtrip--a79f4e508500105dba123394.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [module_path_round_trip_for_valid_components](declarations/module-path-round-trip-for-valid-components--1082c3165b198e037bbb06fa.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [ProjectRelativePath.Within](declarations/projectrelativepath-within--44a187ab6e6d49e7f07b6ffb.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [CandidatePath](declarations/candidatepath--874ccf742a4d33b43b3b9cbe.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [CanonicalPath](declarations/canonicalpath--7737a25ab408da6255f09e20.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [candidate_path_is_generated](declarations/candidate-path-is-generated--5ea276bb47ce235e0e2a589f.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [canonical_path_is_not_generated_or_legacy](declarations/canonical-path-is-not-generated-or-legacy--026291f3470f596e5889b365.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [PathResolutionReceipt](declarations/pathresolutionreceipt--4657f574642b97be7fe5bad1.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
