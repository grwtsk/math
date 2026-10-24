# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.RasterCubicalComplex.Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "635013682e0d3798970979af4fb14e45f50cf95f",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `635013682e0d3798970979af4fb14e45f50cf95f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Geometry.GridCell` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Vertex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/declarations/vertex--c9176a99b2d6d5671ffeceb5.md) | 26 | `declaration-track:c9176a99b2d6d5671ffeceb57cba67dd5323538f4f7030df2180751db0540737` |
| 2 | `structure` | [HorizontalEdge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/declarations/horizontaledge--ce2122517b6773bc73120b84.md) | 32 | `declaration-track:ce2122517b6773bc73120b845fa99718c19bd7220dc008ff31726b74a032ed16` |
| 3 | `structure` | [VerticalEdge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/declarations/verticaledge--a19c13cf1bf30bf33763c1e0.md) | 38 | `declaration-track:a19c13cf1bf30bf33763c1e032e087c40477b9542e2006ea40cc5aeda80442e4` |
| 4 | `def` | [horizontalEndpoints](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/declarations/horizontalendpoints--8dc35d2aa3a3f2f33ebf7a8a.md) | 44 | `declaration-track:8dc35d2aa3a3f2f33ebf7a8a38e97c8020e7b671ef473e7bfd3174f58e527534` |
| 5 | `def` | [verticalEndpoints](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/declarations/verticalendpoints--a621f07defa934a6c9ca5545.md) | 51 | `declaration-track:a621f07defa934a6c9ca5545f2059135f0a68a6df108728296e3569425d3f1f3` |
| 6 | `structure` | [SquareBoundary](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/declarations/squareboundary--910d7d7af418a943f77f7d83.md) | 58 | `declaration-track:910d7d7af418a943f77f7d8300a486a8cb36cd918c7a39bc9cdfe8dafc6bde5b` |
| 7 | `def` | [squareBoundary](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/declarations/squareboundary--0a0aa1e9d85fc07f68e20428.md) | 66 | `declaration-track:0a0aa1e9d85fc07f68e2042871be3e9fb732b041a9b1e133b760c660c7b05255` |
| 8 | `inductive` | [Cell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/declarations/cell--9547c331fc73b11bdd787b4d.md) | 77 | `declaration-track:9547c331fc73b11bdd787b4de4fdd376816d435b1eef85d3a313662302f15840` |
| 9 | `def` | [Cell.dimension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/declarations/cell-dimension--adc16edd4ee78ec2011cc416.md) | 85 | `declaration-track:adc16edd4ee78ec2011cc4166accd6f71b8cc66be4c397239e5bffc2f3df2e43` |
| 10 | `instance` | [vertexFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/declarations/vertexfintype--bb1c9b048c64d20d54aedf4b.md) | 90 | `declaration-track:bb1c9b048c64d20d54aedf4be752adc4d00c2ee8c118634120623a1fa351926a` |
| 11 | `instance` | [horizontalEdgeFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/declarations/horizontaledgefintype--4cbf2aa8d854e1e0aee325b2.md) | 97 | `declaration-track:4cbf2aa8d854e1e0aee325b2038ec83e9f4745cd6ffbe31e1ce01d8b0ad1e8c2` |
| 12 | `instance` | [verticalEdgeFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/declarations/verticaledgefintype--dbaab8736e73a1f90207cea4.md) | 105 | `declaration-track:dbaab8736e73a1f90207cea40a53a7fd07b5eda98201c84c9568f6f1efcc1909` |
| 13 | `instance` | [cellFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/declarations/cellfintype--544cc9bc0da87ee6c65dc178.md) | 113 | `declaration-track:544cc9bc0da87ee6c65dc178c4f99f59da1d8321a942e50293cd6d8d2a8c1cda` |
| 14 | `structure` | [Complex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/declarations/complex--46612fca46b1b4ffb0f7d0f3.md) | 134 | `declaration-track:46612fca46b1b4ffb0f7d0f3460cfe9f0399c785e2c813b1c9fcac55f24ceb1f` |
| 15 | `def` | [rectangularComplex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/declarations/rectangularcomplex--d1aa8c4c7ab129fb70d974ba.md) | 139 | `declaration-track:d1aa8c4c7ab129fb70d974ba72d779e46ca84a2ccc1c8356a4ab05a46f961795` |
| 16 | `theorem` | [mem_rectangularComplex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/declarations/mem-rectangularcomplex--8ce46af75e604c3768d052ad.md) | 144 | `result-track:8ce46af75e604c3768d052ad1d72419ad04f8dae7772b8d4c44923730a4a4a6f` |
| 17 | `def` | [EdgeAdjacent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/declarations/edgeadjacent--2152e88d499ef4394f5c9008.md) | 150 | `declaration-track:2152e88d499ef4394f5c9008edc89ad28c68e1dd93f3ddb96a97dbebb6876bc6` |
| 18 | `instance` | [edgeAdjacentDecidable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/declarations/edgeadjacentdecidable--5cee53e6c1ba0eefcfd685ae.md) | 159 | `declaration-track:5cee53e6c1ba0eefcfd685ae86aa0aeb81aa8710e0d3cd7bb2603f8e60e14167` |
| 19 | `theorem` | [edgeAdjacent_symmetric](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/declarations/edgeadjacent-symmetric--dcf07747c6fb525008a8f76d.md) | 165 | `result-track:dcf07747c6fb525008a8f76dd5aea23205aad3b9267349fafed5f22380cdced0` |
| 20 | `theorem` | [not_edgeAdjacent_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/declarations/not-edgeadjacent-self--997b691c0762b48504eae035.md) | 174 | `result-track:997b691c0762b48504eae03501314a0503686f38336daf95f8ad8e02bda2a197` |
| 21 | `def` | [NeighboringCoordinate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/declarations/neighboringcoordinate--67f367201cbd2c4b9aa3d2bd.md) | 180 | `declaration-track:67f367201cbd2c4b9aa3d2bd1685f1919eb900c50cebda495983879db37b8412` |
| 22 | `instance` | [neighboringCoordinateDecidable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/declarations/neighboringcoordinatedecidable--f3560c771c77af1ef6cdc643.md) | 183 | `declaration-track:f3560c771c77af1ef6cdc6437aebf7d80475cbed332196c47f29ac280aa30992` |
| 23 | `theorem` | [neighboringCoordinate_symmetric](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/declarations/neighboringcoordinate-symmetric--2362f111d9a95c84e9481148.md) | 188 | `result-track:2362f111d9a95c84e94811481fc666b681d2fd9d2e6e060eaec58db49658f3b5` |
| 24 | `def` | [VertexAdjacent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/declarations/vertexadjacent--f8d373442a5e691cf28d6f05.md) | 202 | `declaration-track:f8d373442a5e691cf28d6f0540468e1a3276918b3bb49bf9bacfb10b94b6f6b3` |
| 25 | `instance` | [vertexAdjacentDecidable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/declarations/vertexadjacentdecidable--0a250a0cd2687669696af0e5.md) | 208 | `declaration-track:0a250a0cd2687669696af0e5b23a22312c6f7fefc740319732d17af4f61ebf62` |
| 26 | `theorem` | [vertexAdjacent_symmetric](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/declarations/vertexadjacent-symmetric--9452e0b847bd6aa27b2303ad.md) | 214 | `result-track:9452e0b847bd6aa27b2303ad9e152521bf1d800f9341d8cbaf0b0d99b8fcb899` |
| 27 | `theorem` | [not_vertexAdjacent_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/declarations/not-vertexadjacent-self--862f10c03254a62b5be88016.md) | 225 | `result-track:862f10c03254a62b5be880163d58c20da734401d2777215c48e23fe489222586` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
