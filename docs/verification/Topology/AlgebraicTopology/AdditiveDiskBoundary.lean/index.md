# Verification target: GRWTSK.Topology.AlgebraicTopology.AdditiveDiskBoundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "016d6baff7aeebf89acdd60ed3c32d1a89e91ab5",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/AdditiveDiskBoundary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/AdditiveDiskBoundary.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/AdditiveDiskBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `016d6baff7aeebf89acdd60ed3c32d1a89e91ab5`.

Source path: `GRWTSK/Topology/AlgebraicTopology/AdditiveDiskBoundary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/AdditiveDiskBoundary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.ComplexDisk`](../../../../mathematics/Topology/AlgebraicTopology/ComplexDisk.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.Topology.AlgebraicTopology.CircleBoundaryAdapters`](../../../../mathematics/Topology/AlgebraicTopology/CircleBoundaryAdapters.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [additiveBoundaryHomeomorph](../../../../mathematics/Topology/AlgebraicTopology/AdditiveDiskBoundary.lean/declarations/additiveboundaryhomeomorph--10c21585c230a4690fbe7a28.md) | 34 | `declaration-track:10c21585c230a4690fbe7a28dbc84c82298e555277fb2813dec14452bb8646cd` |
| 2 | `theorem` | [additiveBoundaryHomeomorph_apply](../../../../mathematics/Topology/AlgebraicTopology/AdditiveDiskBoundary.lean/declarations/additiveboundaryhomeomorph-apply--513e7e545bbd9951622f9f14.md) | 38 | `result-track:513e7e545bbd9951622f9f14d05c2e3e1a2f05c83c22afcc62cc52e059427a0e` |
| 3 | `def` | [additiveBoundaryDiskPoint](../../../../mathematics/Topology/AlgebraicTopology/AdditiveDiskBoundary.lean/declarations/additiveboundarydiskpoint--08c702dfb228547524bb3579.md) | 46 | `declaration-track:08c702dfb228547524bb3579ff2f1aca7b472402f7ce6720589610dba6040fb2` |
| 4 | `theorem` | [cone_boundary_exact](../../../../mathematics/Topology/AlgebraicTopology/AdditiveDiskBoundary.lean/declarations/cone-boundary-exact--011196c54cd7677ee6e13581.md) | 52 | `result-track:011196c54cd7677ee6e13581bdb9e8cfc2425ce27ccf06b8e105bd580cfbe3c1` |
| 5 | `theorem` | [additiveBoundaryHomeomorph_bijective](../../../../mathematics/Topology/AlgebraicTopology/AdditiveDiskBoundary.lean/declarations/additiveboundaryhomeomorph-bijective--c23f392b63d01b20ef055c45.md) | 60 | `result-track:c23f392b63d01b20ef055c450114bda4259e4fece9fd985c22807b3a7b4aafc9` |
| 6 | `theorem` | [additiveBoundaryHomeomorph_continuous](../../../../mathematics/Topology/AlgebraicTopology/AdditiveDiskBoundary.lean/declarations/additiveboundaryhomeomorph-continuous--2a16774eeb81e0de821e1276.md) | 66 | `result-track:2a16774eeb81e0de821e127626a7811d69d4ca7338ffafb1d986dc4bea82f444` |
| 7 | `def` | [transportBoundaryMap](../../../../mathematics/Topology/AlgebraicTopology/AdditiveDiskBoundary.lean/declarations/transportboundarymap--11b126cdd2530da1d667d826.md) | 72 | `declaration-track:11b126cdd2530da1d667d826c6ac4aebd4a89d829577506b7ddab879b804e8b2` |
| 8 | `theorem` | [transportBoundaryMap_apply](../../../../mathematics/Topology/AlgebraicTopology/AdditiveDiskBoundary.lean/declarations/transportboundarymap-apply--3bb18baa85c3fb1605d7864b.md) | 79 | `result-track:3bb18baa85c3fb1605d7864bc9d1dd71570eda441b17527e96c6d41c2e5f7d64` |
| 9 | `theorem` | [transportBoundaryMap_kernel](../../../../mathematics/Topology/AlgebraicTopology/AdditiveDiskBoundary.lean/declarations/transportboundarymap-kernel--74cfdb9d06753e9300ef8a6d.md) | 85 | `result-track:74cfdb9d06753e9300ef8a6d5b0970ef75da2c85698c3bceba66cf4d7c54f832` |
| 10 | `theorem` | [transportBoundaryMap_surjective](../../../../mathematics/Topology/AlgebraicTopology/AdditiveDiskBoundary.lean/declarations/transportboundarymap-surjective--f759ce98054a15c11b740b89.md) | 94 | `result-track:f759ce98054a15c11b740b89fe02da02ff352d7aaa1f8943cc4c9f306875f4de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
