# GRWTSK.CombinatoricsAndDiscreteMathematics.RasterCubicalComplex.Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 6 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `36e8775f3dfa24907508695278fa425a19345412`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Vertex](declarations/vertex--d5a0fad5652f1852b9711043.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [HorizontalEdge](declarations/horizontaledge--655cba764c15f7332a7460df.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [VerticalEdge](declarations/verticaledge--df8429db3b4044c925a45a1b.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [horizontalEndpoints](declarations/horizontalendpoints--bfba6845ddf5a5321900e4c6.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [verticalEndpoints](declarations/verticalendpoints--a324433c8062d29850542c92.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [SquareBoundary](declarations/squareboundary--5eeb12485a8b3e5e17c48fd3.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [squareBoundary](declarations/squareboundary--1e95d2611463a6c716620b41.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [Cell](declarations/cell--26636d512ca7ec1683d4e177.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Cell.dimension](declarations/cell-dimension--3a5da2e97bb1416a7a3aef36.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [vertexFintype](declarations/vertexfintype--2091d42e4769374f7017a387.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [horizontalEdgeFintype](declarations/horizontaledgefintype--26f947d9fd94cb3de9190463.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [verticalEdgeFintype](declarations/verticaledgefintype--792b33914e85818a59de03e1.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [cellFintype](declarations/cellfintype--3cf0a90b19fa3e25da6067ba.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [Complex](declarations/complex--4a4dfbcfc4eb5295a1b958db.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [rectangularComplex](declarations/rectangularcomplex--347143a0a50b180435641576.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mem_rectangularComplex](declarations/mem-rectangularcomplex--a70274b516e85e6483f8671c.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [EdgeAdjacent](declarations/edgeadjacent--fbafb24f23e9159482f3e688.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [edgeAdjacentDecidable](declarations/edgeadjacentdecidable--223f423149c216e1d05e00f7.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [edgeAdjacent_symmetric](declarations/edgeadjacent-symmetric--579ffd41b12504246416a7f4.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [not_edgeAdjacent_self](declarations/not-edgeadjacent-self--fa727ef452770f66773e30b8.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [NeighboringCoordinate](declarations/neighboringcoordinate--d5b7c25aacacfbd35150cd47.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [neighboringCoordinateDecidable](declarations/neighboringcoordinatedecidable--0d87aa42812a13961d0762c5.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [neighboringCoordinate_symmetric](declarations/neighboringcoordinate-symmetric--5340eefc940cb4ea6ce75e5d.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [VertexAdjacent](declarations/vertexadjacent--609754d82fa82bd81a36b14e.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [vertexAdjacentDecidable](declarations/vertexadjacentdecidable--231ad84349df51a1b3bbfe6e.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [vertexAdjacent_symmetric](declarations/vertexadjacent-symmetric--a2cd6f7b97a202cd2263da58.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [not_vertexAdjacent_self](declarations/not-vertexadjacent-self--ea2c4ae7c2aab4d0507073a4.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
