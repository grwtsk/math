# Verification target: GRWTSK.Topology.GeneralTopology.PartitionOfUnity.Variant1936ff789b38c910d56436a11258809c72c8f3b33041a4e3d7ae18d9d360438a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7350021d85fdc20b4edd9566da2ed2ec888fdef",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant1936ff789b38c910d56436a11258809c72c8f3b33041a4e3d7ae18d9d360438a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant1936ff789b38c910d56436a11258809c72c8f3b33041a4e3d7ae18d9d360438a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant1936ff789b38c910d56436a11258809c72c8f3b33041a4e3d7ae18d9d360438a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7350021d85fdc20b4edd9566da2ed2ec888fdef`.

Source path: `GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant1936ff789b38c910d56436a11258809c72c8f3b33041a4e3d7ae18d9d360438a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PartitionOfUnity/Variant1936ff789b38c910d56436a11258809c72c8f3b33041a4e3d7ae18d9d360438a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.EMetricSpace.Paracompact` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.ENNReal.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.PartitionOfUnity` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eventually_nhds_zero_forall_closedBall_subset](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant1936ff789b38c910d56436a11258809c72c8f3b33041a4e3d7ae18d9d360438a.lean/declarations/eventually-nhds-zero-forall-closedball-subset--710b4648bf2da1d98048e597.md) | 40 | `result-track:710b4648bf2da1d98048e597b93252b8a18924ffbc2a19befc4f20d24f7daedb` |
| 2 | `theorem` | [exists_forall_closedBall_subset_aux₁](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant1936ff789b38c910d56436a11258809c72c8f3b33041a4e3d7ae18d9d360438a.lean/declarations/exists-forall-closedball-subset-aux--e4fdb6dd0c1063211dd68259.md) | 61 | `result-track:e4fdb6dd0c1063211dd68259f0855f2821ecba2ea14f41cc7713ba195e326299` |
| 3 | `theorem` | [exists_forall_closedBall_subset_aux₂](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant1936ff789b38c910d56436a11258809c72c8f3b33041a4e3d7ae18d9d360438a.lean/declarations/exists-forall-closedball-subset-aux--f2315c600394dd39f95ccdaf.md) | 71 | `result-track:f2315c600394dd39f95ccdafbacdb0eb4287d83d095f59e63677313e925b9f95` |
| 4 | `theorem` | [exists_continuous_real_forall_closedBall_subset](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant1936ff789b38c910d56436a11258809c72c8f3b33041a4e3d7ae18d9d360438a.lean/declarations/exists-continuous-real-forall-closedball-subset--c518eb2905a3c0cc6e0ff54f.md) | 82 | `result-track:c518eb2905a3c0cc6e0ff54face75a265416295214aec38fea1ac44fcac428dd` |
| 5 | `theorem` | [exists_continuous_nnreal_forall_closedBall_subset](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant1936ff789b38c910d56436a11258809c72c8f3b33041a4e3d7ae18d9d360438a.lean/declarations/exists-continuous-nnreal-forall-closedball-subset--c501317c26ae3d9ee8984b7e.md) | 94 | `result-track:c501317c26ae3d9ee8984b7ec7060646ece9149c44d557b021a5751ec2764184` |
| 6 | `theorem` | [exists_continuous_eNNReal_forall_closedBall_subset](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant1936ff789b38c910d56436a11258809c72c8f3b33041a4e3d7ae18d9d360438a.lean/declarations/exists-continuous-ennreal-forall-closedball-subset--c1445d2cd73533b5ed8bd05c.md) | 106 | `result-track:c1445d2cd73533b5ed8bd05c549078192372ee5d4c802554f6ee2fc980307c45` |
| 7 | `theorem` | [exists_continuous_nnreal_forall_closedBall_subset](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant1936ff789b38c910d56436a11258809c72c8f3b33041a4e3d7ae18d9d360438a.lean/declarations/exists-continuous-nnreal-forall-closedball-subset--919dcc1758429d39bfaffe9a.md) | 122 | `result-track:919dcc1758429d39bfaffe9a4b7b1f707417e3648cf487ce2e92d1fb3d14dca5` |
| 8 | `theorem` | [exists_continuous_real_forall_closedBall_subset](../../../../../mathematics/Topology/GeneralTopology/PartitionOfUnity/Variant1936ff789b38c910d56436a11258809c72c8f3b33041a4e3d7ae18d9d360438a.lean/declarations/exists-continuous-real-forall-closedball-subset--3be1df6b7c0c7386ce16efd1.md) | 134 | `result-track:3be1df6b7c0c7386ce16efd1d6ea958b76b30fcfe7f75899cf459d207435d6f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
