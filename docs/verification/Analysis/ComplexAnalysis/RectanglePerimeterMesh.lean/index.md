# Verification target: GRWTSK.Analysis.Complex.RectanglePerimeterMesh

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92704720d1436269c03efc01a2a20e9be857cf5a",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/RectanglePerimeterMesh.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/RectanglePerimeterMesh.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/RectanglePerimeterMesh.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92704720d1436269c03efc01a2a20e9be857cf5a`.

Source path: `GRWTSK/Analysis/Complex/RectanglePerimeterMesh.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/RectanglePerimeterMesh.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RectangleFactorIndex`](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Topology.Homotopy.RealPolygonClock`](../../../../mathematics/Topology/Homotopy/RealPolygonClock.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ramp](../../../../mathematics/Analysis/ComplexAnalysis/RectanglePerimeterMesh.lean/declarations/ramp--6d958c8b788cf864e4ea533d.md) | 27 | `declaration-track:6d958c8b788cf864e4ea533da8317b8ba8a3bda6ebf6d6d6e43aa206efe333d0` |
| 2 | `theorem` | [ramp_of_nonpos](../../../../mathematics/Analysis/ComplexAnalysis/RectanglePerimeterMesh.lean/declarations/ramp-of-nonpos--5e488865db45658f3cfc3004.md) | 29 | `result-track:5e488865db45658f3cfc300489c47ac8bfe14e9ba14ae1571552aa69f6b0bfb9` |
| 3 | `theorem` | [ramp_of_mem](../../../../mathematics/Analysis/ComplexAnalysis/RectanglePerimeterMesh.lean/declarations/ramp-of-mem--c43e02122479ca82f8696ea1.md) | 32 | `result-track:c43e02122479ca82f8696ea114538595981371844a5bf4a5fea5918ca97f1b16` |
| 4 | `theorem` | [ramp_of_one_le](../../../../mathematics/Analysis/ComplexAnalysis/RectanglePerimeterMesh.lean/declarations/ramp-of-one-le--a39ef1b2145c959fcc78a9e8.md) | 35 | `result-track:a39ef1b2145c959fcc78a9e8b0b052c289279503dd517b202dc33b63bf84b494` |
| 5 | `def` | [point](../../../../mathematics/Analysis/ComplexAnalysis/RectanglePerimeterMesh.lean/declarations/point--ef37af5ce3f768e7cb4f657d.md) | 39 | `declaration-track:ef37af5ce3f768e7cb4f657d554452fa9ee77f69a07a3eed2a41c545d8798a36` |
| 6 | `theorem` | [point_continuous](../../../../mathematics/Analysis/ComplexAnalysis/RectanglePerimeterMesh.lean/declarations/point-continuous--1d661a62a8a649303c892dd5.md) | 43 | `result-track:1d661a62a8a649303c892dd510dd4427ba6f66fe4f99947cb7a2995682afbbb7` |
| 7 | `theorem` | [point_cell](../../../../mathematics/Analysis/ComplexAnalysis/RectanglePerimeterMesh.lean/declarations/point-cell--6650565d3134c330002d8d3e.md) | 48 | `result-track:6650565d3134c330002d8d3e5f02960949d58186050744137e1da233c443903d` |
| 8 | `theorem` | [point_corner](../../../../mathematics/Analysis/ComplexAnalysis/RectanglePerimeterMesh.lean/declarations/point-corner--e40498da05ff93279ca77744.md) | 80 | `result-track:e40498da05ff93279ca777443eba37d93b5096c915c4708c0e471aba534adc74` |
| 9 | `theorem` | [point_zero](../../../../mathematics/Analysis/ComplexAnalysis/RectanglePerimeterMesh.lean/declarations/point-zero--2f88e26dc2b53e9b560c6264.md) | 85 | `result-track:2f88e26dc2b53e9b560c62645628db1da16412707a4a3fd263da849ea960a93c` |
| 10 | `theorem` | [point_four](../../../../mathematics/Analysis/ComplexAnalysis/RectanglePerimeterMesh.lean/declarations/point-four--7b7aafbc3e6d0aef58aa8293.md) | 88 | `result-track:7b7aafbc3e6d0aef58aa829302d7ad92b2499f5a3fc0337dd2e53aecbd5445b1` |
| 11 | `theorem` | [point_affine](../../../../mathematics/Analysis/ComplexAnalysis/RectanglePerimeterMesh.lean/declarations/point-affine--cf9a3de53b785b0404d201d0.md) | 91 | `result-track:cf9a3de53b785b0404d201d081c77f778c36964d8acd856849652bb4898c5afe` |
| 12 | `theorem` | [point_boundary](../../../../mathematics/Analysis/ComplexAnalysis/RectanglePerimeterMesh.lean/declarations/point-boundary--d2557759a4a1c0746213944d.md) | 101 | `result-track:d2557759a4a1c0746213944d69b6c28befedb17371d97d03767b8b6724b11b25` |
| 13 | `theorem` | [boundary_point](../../../../mathematics/Analysis/ComplexAnalysis/RectanglePerimeterMesh.lean/declarations/boundary-point--5d8d0ecedf57f17236c3ab34.md) | 116 | `result-track:5d8d0ecedf57f17236c3ab34333c7d7dba8b6c0504bb626d3d8198ceea911d8b` |
| 14 | `def` | [Admissible](../../../../mathematics/Analysis/ComplexAnalysis/RectanglePerimeterMesh.lean/declarations/admissible--8863beb672c8ef563ae8322b.md) | 156 | `declaration-track:8863beb672c8ef563ae8322bbe34d35f061e03dc06344ad07eec15c5203ee124` |
| 15 | `theorem` | [node_mem](../../../../mathematics/Analysis/ComplexAnalysis/RectanglePerimeterMesh.lean/declarations/node-mem--53124185dfdee14fa0c9b7ed.md) | 160 | `result-track:53124185dfdee14fa0c9b7edfd466892d04a7cddedc43870c1ef98a495e2fb82` |
| 16 | `def` | [curve](../../../../mathematics/Analysis/ComplexAnalysis/RectanglePerimeterMesh.lean/declarations/curve--bc66a9ebbf6f49e39b58f1a1.md) | 169 | `declaration-track:bc66a9ebbf6f49e39b58f1a1e17afe1e01fe28154013a74cbb018bf2b87f194c` |
| 17 | `theorem` | [curve_clock](../../../../mathematics/Analysis/ComplexAnalysis/RectanglePerimeterMesh.lean/declarations/curve-clock--8a21f681305f054745b48f76.md) | 173 | `result-track:8a21f681305f054745b48f765c4c9032aa3d107ab86557ce5e8206f082b270fd` |
| 18 | `theorem` | [curve_closed](../../../../mathematics/Analysis/ComplexAnalysis/RectanglePerimeterMesh.lean/declarations/curve-closed--8de08611c2f71ee34421883b.md) | 182 | `result-track:8de08611c2f71ee34421883b0e0dab036e06902a65fa9db9c22ea1ad3ec88518` |
| 19 | `theorem` | [curve_range](../../../../mathematics/Analysis/ComplexAnalysis/RectanglePerimeterMesh.lean/declarations/curve-range--7ac55ecd1da7118ee657a4ed.md) | 187 | `result-track:7ac55ecd1da7118ee657a4ed5c991d36043029703dea6bfa572275ee8e363f7d` |
| 20 | `theorem` | [reference_admissible](../../../../mathematics/Analysis/ComplexAnalysis/RectanglePerimeterMesh.lean/declarations/reference-admissible--46b4ccbbad248bebe1b77ba6.md) | 199 | `result-track:46b4ccbbad248bebe1b77ba67c7d3b785dad6b78e74ae683e679dc8a0c1e75e9` |
| 21 | `theorem` | [reference_curve](../../../../mathematics/Analysis/ComplexAnalysis/RectanglePerimeterMesh.lean/declarations/reference-curve--6f4523ab9881b5390f9b0e59.md) | 204 | `result-track:6f4523ab9881b5390f9b0e5973b94117e38e8edcb55d51ff16420ddf097eb474` |
| 22 | `def` | [boundaryHomotopy](../../../../mathematics/Analysis/ComplexAnalysis/RectanglePerimeterMesh.lean/declarations/boundaryhomotopy--18e88fca93f527036956f081.md) | 211 | `declaration-track:18e88fca93f527036956f0812740c403c66f4aebc4c6668add1bfed320381eae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
