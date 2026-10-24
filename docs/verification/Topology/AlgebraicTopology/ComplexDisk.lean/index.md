# Verification target: GRWTSK.Topology.AlgebraicTopology.ComplexDisk

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e8c2a6df19541ae9aed01107f8cb323af835dec",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/ComplexDisk.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/ComplexDisk.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/ComplexDisk.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e8c2a6df19541ae9aed01107f8cb323af835dec`.

Source path: `GRWTSK/Topology/AlgebraicTopology/ComplexDisk.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/ComplexDisk.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.TopCat.Sphere` — import line 4; external provider; requires a separately pinned dependency.
- [`GRWTSK.Topology.AlgebraicTopology.CircleCone`](../../../../mathematics/Topology/AlgebraicTopology/CircleCone.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [EuclideanPlane](../../../../mathematics/Topology/AlgebraicTopology/ComplexDisk.lean/declarations/euclideanplane--a9b1c8ed6c1932e450fcbe2d.md) | 24 | `declaration-track:a9b1c8ed6c1932e450fcbe2d8ece3fe1515aec4867927b899a70f253807f7577` |
| 2 | `def` | [coordinateIsometry](../../../../mathematics/Topology/AlgebraicTopology/ComplexDisk.lean/declarations/coordinateisometry--799d657d753c9b341d8c5bab.md) | 27 | `declaration-track:799d657d753c9b341d8c5bab276f55b7aba860c2b410540f024028b92ab58d86` |
| 3 | `theorem` | [coordinateIsometry_zero](../../../../mathematics/Topology/AlgebraicTopology/ComplexDisk.lean/declarations/coordinateisometry-zero--f6adbf36118fc909dd80ea80.md) | 30 | `result-track:f6adbf36118fc909dd80ea8017b01a119927e3a52551740e11986f2c4bd2148f` |
| 4 | `theorem` | [coordinateIsometry_one](../../../../mathematics/Topology/AlgebraicTopology/ComplexDisk.lean/declarations/coordinateisometry-one--be408520a2f7bd9c6198fad6.md) | 33 | `result-track:be408520a2f7bd9c6198fad62d1f97bb9f3f1e1b4265a7099d9a4583a4f2bd85` |
| 5 | `def` | [closedBallHomeomorph](../../../../mathematics/Topology/AlgebraicTopology/ComplexDisk.lean/declarations/closedballhomeomorph--939f5b35952e1e55ec5fcb41.md) | 37 | `declaration-track:939f5b35952e1e55ec5fcb41f1a3491b3741393b8898ac3fde45530df3eaf6c6` |
| 6 | `def` | [sphereHomeomorph](../../../../mathematics/Topology/AlgebraicTopology/ComplexDisk.lean/declarations/spherehomeomorph--07e8a101734c40447959a005.md) | 45 | `declaration-track:07e8a101734c40447959a0053e32bc0f71288fd51f4b0bd9f2acde662cc32baa` |
| 7 | `def` | [topCatDiskHomeomorph](../../../../mathematics/Topology/AlgebraicTopology/ComplexDisk.lean/declarations/topcatdiskhomeomorph--f14351b7813e5c7bb28181b9.md) | 52 | `declaration-track:f14351b7813e5c7bb28181b9bc03253af022afe5f2ec310c8a4cd9186f0ca0b1` |
| 8 | `def` | [topCatBoundaryHomeomorph](../../../../mathematics/Topology/AlgebraicTopology/ComplexDisk.lean/declarations/topcatboundaryhomeomorph--36936849e2edb28884354ca5.md) | 56 | `declaration-track:36936849e2edb28884354ca56293f44c8ddafbfc83db787490451a12137d8d5c` |
| 9 | `def` | [boundaryInclusion](../../../../mathematics/Topology/AlgebraicTopology/ComplexDisk.lean/declarations/boundaryinclusion--e55dfe3906db995ea7322342.md) | 60 | `declaration-track:e55dfe3906db995ea7322342254d66e8d5d65d3ec142119cffd2e7b6e585e6a7` |
| 10 | `theorem` | [topCatDiskHomeomorph_zero](../../../../mathematics/Topology/AlgebraicTopology/ComplexDisk.lean/declarations/topcatdiskhomeomorph-zero--d21b65b1a065e793f7ba6f8e.md) | 63 | `result-track:d21b65b1a065e793f7ba6f8e656e0294e5173e0be46951310bdf24d28b5426cb` |
| 11 | `theorem` | [topCatDiskHomeomorph_one](../../../../mathematics/Topology/AlgebraicTopology/ComplexDisk.lean/declarations/topcatdiskhomeomorph-one--d5def99cb54360255b0e44a2.md) | 66 | `result-track:d5def99cb54360255b0e44a2e8df5b0e40dff1c8d46045917c768ae1b81ea112` |
| 12 | `theorem` | [topCatBoundaryHomeomorph_zero](../../../../mathematics/Topology/AlgebraicTopology/ComplexDisk.lean/declarations/topcatboundaryhomeomorph-zero--cd6e4cad6301ef9689ae0869.md) | 69 | `result-track:cd6e4cad6301ef9689ae0869ad4b2086aa9c39d10549bd2630dec7270f23c540` |
| 13 | `theorem` | [topCatBoundaryHomeomorph_one](../../../../mathematics/Topology/AlgebraicTopology/ComplexDisk.lean/declarations/topcatboundaryhomeomorph-one--6980d5d223e7f043d9264dd4.md) | 72 | `result-track:6980d5d223e7f043d9264dd433b61da4c53749ba35b96c40d729d02189981510` |
| 14 | `theorem` | [topCatDiskHomeomorph_symm_coe](../../../../mathematics/Topology/AlgebraicTopology/ComplexDisk.lean/declarations/topcatdiskhomeomorph-symm-coe--cfbf5bdf8afd6f49304d9bfa.md) | 75 | `result-track:cfbf5bdf8afd6f49304d9bfabc001174b529839bfab4c17b90859585ba170dba` |
| 15 | `theorem` | [topCatBoundaryHomeomorph_symm_coe](../../../../mathematics/Topology/AlgebraicTopology/ComplexDisk.lean/declarations/topcatboundaryhomeomorph-symm-coe--63ca90df7ee0c2e545bd78d3.md) | 80 | `result-track:63ca90df7ee0c2e545bd78d347a468e90ed6939dec0a6c654ca9fa18e2f32766` |
| 16 | `theorem` | [boundary_commutes](../../../../mathematics/Topology/AlgebraicTopology/ComplexDisk.lean/declarations/boundary-commutes--dd98b31d91e615b39482626d.md) | 86 | `result-track:dd98b31d91e615b39482626d386df07e1d8f4ab384e416187994f59efe662508` |
| 17 | `def` | [coneHomeomorph](../../../../mathematics/Topology/AlgebraicTopology/ComplexDisk.lean/declarations/conehomeomorph--0928f6f2116c48a5a53fcaf3.md) | 91 | `declaration-track:0928f6f2116c48a5a53fcaf38f2ff6333f35188df92aff1fcbe2e766bc0e5ba3` |
| 18 | `theorem` | [coneHomeomorph_boundary](../../../../mathematics/Topology/AlgebraicTopology/ComplexDisk.lean/declarations/conehomeomorph-boundary--cc540d373ea6f9efa19d684a.md) | 95 | `result-track:cc540d373ea6f9efa19d684aed79ff2be906cf6196ab901608b8614bc9cd9e29` |
| 19 | `theorem` | [coneHomeomorph_coneMk_zero](../../../../mathematics/Topology/AlgebraicTopology/ComplexDisk.lean/declarations/conehomeomorph-conemk-zero--082b426d047a05db65a770a4.md) | 103 | `result-track:082b426d047a05db65a770a4b70f93fa3b35d345ae592c7db900f16433f6e95d` |
| 20 | `theorem` | [coneHomeomorph_coneMk_one](../../../../mathematics/Topology/AlgebraicTopology/ComplexDisk.lean/declarations/conehomeomorph-conemk-one--1f3ae1164b57ecb945be1428.md) | 110 | `result-track:1f3ae1164b57ecb945be14288c412a231b735d15e04a9102476aca5182b8516b` |
| 21 | `theorem` | [coneHomeomorph_apex](../../../../mathematics/Topology/AlgebraicTopology/ComplexDisk.lean/declarations/conehomeomorph-apex--9635534395b74813d8358787.md) | 117 | `result-track:9635534395b74813d8358787699c93d06aa4ceaed7c81a37276ae852130599ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
