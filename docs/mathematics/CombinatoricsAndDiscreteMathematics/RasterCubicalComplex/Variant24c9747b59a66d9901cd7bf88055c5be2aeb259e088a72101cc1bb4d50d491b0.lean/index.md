# GRWTSK.CombinatoricsAndDiscreteMathematics.RasterCubicalComplex.Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 6 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `635013682e0d3798970979af4fb14e45f50cf95f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Vertex](declarations/vertex--c9176a99b2d6d5671ffeceb5.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [HorizontalEdge](declarations/horizontaledge--ce2122517b6773bc73120b84.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [VerticalEdge](declarations/verticaledge--a19c13cf1bf30bf33763c1e0.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [horizontalEndpoints](declarations/horizontalendpoints--8dc35d2aa3a3f2f33ebf7a8a.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [verticalEndpoints](declarations/verticalendpoints--a621f07defa934a6c9ca5545.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [SquareBoundary](declarations/squareboundary--910d7d7af418a943f77f7d83.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [squareBoundary](declarations/squareboundary--0a0aa1e9d85fc07f68e20428.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [Cell](declarations/cell--9547c331fc73b11bdd787b4d.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Cell.dimension](declarations/cell-dimension--adc16edd4ee78ec2011cc416.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [vertexFintype](declarations/vertexfintype--bb1c9b048c64d20d54aedf4b.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [horizontalEdgeFintype](declarations/horizontaledgefintype--4cbf2aa8d854e1e0aee325b2.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [verticalEdgeFintype](declarations/verticaledgefintype--dbaab8736e73a1f90207cea4.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [cellFintype](declarations/cellfintype--544cc9bc0da87ee6c65dc178.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [Complex](declarations/complex--46612fca46b1b4ffb0f7d0f3.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [rectangularComplex](declarations/rectangularcomplex--d1aa8c4c7ab129fb70d974ba.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mem_rectangularComplex](declarations/mem-rectangularcomplex--8ce46af75e604c3768d052ad.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [EdgeAdjacent](declarations/edgeadjacent--2152e88d499ef4394f5c9008.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [edgeAdjacentDecidable](declarations/edgeadjacentdecidable--5cee53e6c1ba0eefcfd685ae.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [edgeAdjacent_symmetric](declarations/edgeadjacent-symmetric--dcf07747c6fb525008a8f76d.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [not_edgeAdjacent_self](declarations/not-edgeadjacent-self--997b691c0762b48504eae035.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [NeighboringCoordinate](declarations/neighboringcoordinate--67f367201cbd2c4b9aa3d2bd.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [neighboringCoordinateDecidable](declarations/neighboringcoordinatedecidable--f3560c771c77af1ef6cdc643.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [neighboringCoordinate_symmetric](declarations/neighboringcoordinate-symmetric--2362f111d9a95c84e9481148.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [VertexAdjacent](declarations/vertexadjacent--f8d373442a5e691cf28d6f05.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [vertexAdjacentDecidable](declarations/vertexadjacentdecidable--0a250a0cd2687669696af0e5.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [vertexAdjacent_symmetric](declarations/vertexadjacent-symmetric--9452e0b847bd6aa27b2303ad.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [not_vertexAdjacent_self](declarations/not-vertexadjacent-self--862f10c03254a62b5be88016.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
