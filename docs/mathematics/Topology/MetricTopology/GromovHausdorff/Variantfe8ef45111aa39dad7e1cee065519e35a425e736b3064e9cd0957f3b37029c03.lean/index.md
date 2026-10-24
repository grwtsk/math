# GRWTSK.Topology.MetricTopology.GromovHausdorff.Variantfe8ef45111aa39dad7e1cee065519e35a425e736b3064e9cd0957f3b37029c03

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/MetricTopology/GromovHausdorff/Variantfe8ef45111aa39dad7e1cee065519e35a425e736b3064e9cd0957f3b37029c03.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a323bb14830c522f7d8a6648634b1b5304b913ef`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/MetricTopology/GromovHausdorff/Variantfe8ef45111aa39dad7e1cee065519e35a425e736b3064e9cd0957f3b37029c03.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsometryRel](declarations/isometryrel--a45cbb48a0f7f4e3954e752a.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [equivalence_isometryRel](declarations/equivalence-isometryrel--8215aa6eada1fd002a9003ab.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [IsometryRel.setoid](declarations/isometryrel-setoid--1281a2b32ee91581f78ce713.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [GHSpace](declarations/ghspace--7acc3db49a2125845a7906fb.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [toGHSpace](declarations/toghspace--bbe3baea657b12012c1725c0.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance--2066da25ff6d5ad842106877.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [GHSpace.Rep](declarations/ghspace-rep--1412242ab118e84fd616cbcd.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [eq_toGHSpace_iff](declarations/eq-toghspace-iff--f5517b4edd5ec187936b8e38.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [eq_toGHSpace](declarations/eq-toghspace--472995e8e810bab9a7c4658e.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [repGHSpaceMetricSpace](declarations/repghspacemetricspace--aee404ef9d326f370444a038.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [rep_gHSpace_compactSpace](declarations/rep-ghspace-compactspace--c122b5999d380b83d132a0e8.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [rep_gHSpace_nonempty](declarations/rep-ghspace-nonempty--7bb3acaf16574df5b9ec89e6.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [GHSpace.toGHSpace_rep](declarations/ghspace-toghspace-rep--2ecef8e93d72d2540121f2c6.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toGHSpace_eq_toGHSpace_iff_isometryEquiv](declarations/toghspace-eq-toghspace-iff-isometryequiv--054926a65fa3c43cd64c3699.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance--37bb70b9c4a6062e6a7c4ca7.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [ghDist](declarations/ghdist--e9cfd53675e8ccc5457a8b73.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [dist_ghDist](declarations/dist-ghdist--6184804346a906323f54a465.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ghDist_le_hausdorffDist](declarations/ghdist-le-hausdorffdist--fd264b0de83b949bd74aa359.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [hausdorffDist_optimal](declarations/hausdorffdist-optimal--bae6d5822200135e5854947f.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ghDist_eq_hausdorffDist](declarations/ghdist-eq-hausdorffdist--23eb3183272699a56792c811.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance--2bbae00377b2c7f3f9c4182c.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [TopologicalSpace.NonemptyCompacts.toGHSpace](declarations/topologicalspace-nonemptycompacts-toghspace--0fc9725285167a91c585cac2.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [ghDist_le_nonemptyCompacts_dist](declarations/ghdist-le-nonemptycompacts-dist--c5eb64710e83352337cde536.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toGHSpace_lipschitz](declarations/toghspace-lipschitz--496d4092a1260333a910f218.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toGHSpace_continuous](declarations/toghspace-continuous--9f628eec8a18c54ba0359886.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ghDist_le_of_approx_subsets](declarations/ghdist-le-of-approx-subsets--ce08e9adb2b763b37c5618bd.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance--1406f92b72c3154ed82a7b4c.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [totallyBounded](declarations/totallybounded--dad4a5cb4d287340db1b801e.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [AuxGluingStruct](declarations/auxgluingstruct--417aeb8b09517994552747c0.md) | 977 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance--093ddbd658653a522487ddea.md) | 986 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [auxGluing](declarations/auxgluing--91c8430ab6578f7d6febe3d0.md) | 996 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `macro_rules` | [(anonymous)](declarations/macro-rules--10a3c9051d1fac5d7a21a6eb.md) | 1005 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance--9a1eba7f7aed487875378d5d.md) | 1008 | `BLOCKED_NATIVE_ADMISSION` |
