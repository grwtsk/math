# Verification target: GRWTSK.Topology.AlgebraicTopology.AddCircleConeDisk

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "418a859dc26d5408558de36edcf7e710c1e2924a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/AddCircleConeDisk.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/AddCircleConeDisk.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/AddCircleConeDisk.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `418a859dc26d5408558de36edcf7e710c1e2924a`.

Source path: `GRWTSK/Topology/AlgebraicTopology/AddCircleConeDisk.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/AddCircleConeDisk.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.CircleBoundaryAdapters`](../../../../mathematics/Topology/AlgebraicTopology/CircleBoundaryAdapters.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Topology.AlgebraicTopology.ConeCongruence`](../../../../mathematics/Topology/AlgebraicTopology/ConeCongruence.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Topology.AlgebraicTopology.ComplexDisk`](../../../../mathematics/Topology/AlgebraicTopology/ComplexDisk.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundaryHomeomorph](../../../../mathematics/Topology/AlgebraicTopology/AddCircleConeDisk.lean/declarations/boundaryhomeomorph--5205c650b8905062662ce99f.md) | 25 | `declaration-track:5205c650b8905062662ce99f7217b4d83ff9f9457f72e7da7f7f21ad91a7b681` |
| 2 | `def` | [homeomorph](../../../../mathematics/Topology/AlgebraicTopology/AddCircleConeDisk.lean/declarations/homeomorph--74b95cc89adec59bc144fbd6.md) | 30 | `declaration-track:74b95cc89adec59bc144fbd6704359ac761039412a9a3c4f9541f20539d335a8` |
| 3 | `theorem` | [boundaryHomeomorph_zero](../../../../mathematics/Topology/AlgebraicTopology/AddCircleConeDisk.lean/declarations/boundaryhomeomorph-zero--ffb5d1a40e66b15e5ae7527e.md) | 34 | `result-track:ffb5d1a40e66b15e5ae7527ee91b35a8934084cfcb576c40e0ddf1c937bbfb20` |
| 4 | `theorem` | [boundaryHomeomorph_one](../../../../mathematics/Topology/AlgebraicTopology/AddCircleConeDisk.lean/declarations/boundaryhomeomorph-one--05cec53e7f8a573faa01a4ce.md) | 41 | `result-track:05cec53e7f8a573faa01a4ce9c6842719bdc769e6d58d7e95dc4871302710c80` |
| 5 | `theorem` | [boundaryHomeomorph_coe_zero](../../../../mathematics/Topology/AlgebraicTopology/AddCircleConeDisk.lean/declarations/boundaryhomeomorph-coe-zero--7b0f1d3be4d2fcbb61f29fda.md) | 49 | `result-track:7b0f1d3be4d2fcbb61f29fda930229129e0014097bff952fd0649ab1ab5cb280` |
| 6 | `theorem` | [boundaryHomeomorph_coe_one](../../../../mathematics/Topology/AlgebraicTopology/AddCircleConeDisk.lean/declarations/boundaryhomeomorph-coe-one--3352b38aab3e30783aff7d9d.md) | 56 | `result-track:3352b38aab3e30783aff7d9daceac4d51008f66413a8d807d723eea38a48fbed` |
| 7 | `theorem` | [homeomorph_boundary](../../../../mathematics/Topology/AlgebraicTopology/AddCircleConeDisk.lean/declarations/homeomorph-boundary--48d2f1498010b6106a781e0d.md) | 63 | `result-track:48d2f1498010b6106a781e0d4de6eb09b8b12e649615ad2f293d9c4268b57bd2` |
| 8 | `theorem` | [homeomorph_coneMk_zero](../../../../mathematics/Topology/AlgebraicTopology/AddCircleConeDisk.lean/declarations/homeomorph-conemk-zero--fa4b9e113637d3dcb655b150.md) | 70 | `result-track:fa4b9e113637d3dcb655b1508de5a18292030b9401f42ce8ff1d825e7b5b2427` |
| 9 | `theorem` | [homeomorph_coneMk_one](../../../../mathematics/Topology/AlgebraicTopology/AddCircleConeDisk.lean/declarations/homeomorph-conemk-one--4089ee13b0cb870149d72e14.md) | 77 | `result-track:4089ee13b0cb870149d72e1421a03d9c4f05b3d762cfabb041dd246bfe0789dd` |
| 10 | `theorem` | [norm_homeomorph](../../../../mathematics/Topology/AlgebraicTopology/AddCircleConeDisk.lean/declarations/norm-homeomorph--18ab3ffc50d13a71237e63dd.md) | 85 | `result-track:18ab3ffc50d13a71237e63dd289a61746c7e21ed048860591b7415d86b868f6c` |
| 11 | `theorem` | [homeomorph_apex](../../../../mathematics/Topology/AlgebraicTopology/AddCircleConeDisk.lean/declarations/homeomorph-apex--2165a478c4dcb63937df165b.md) | 98 | `result-track:2165a478c4dcb63937df165b8ed3b082cce932d14c590b13d52c3ab9c807a751` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
