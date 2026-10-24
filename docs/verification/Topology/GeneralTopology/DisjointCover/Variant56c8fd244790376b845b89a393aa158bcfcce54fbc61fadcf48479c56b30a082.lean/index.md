# Verification target: GRWTSK.Topology.GeneralTopology.DisjointCover.Variant56c8fd244790376b845b89a393aa158bcfcce54fbc61fadcf48479c56b30a082

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0249b1f29e80cd35378db4149d89b86606dac3a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DisjointCover/Variant56c8fd244790376b845b89a393aa158bcfcce54fbc61fadcf48479c56b30a082.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DisjointCover/Variant56c8fd244790376b845b89a393aa158bcfcce54fbc61fadcf48479c56b30a082.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DisjointCover/Variant56c8fd244790376b845b89a393aa158bcfcce54fbc61fadcf48479c56b30a082.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0249b1f29e80cd35378db4149d89b86606dac3a`.

Source path: `GRWTSK/Topology/GeneralTopology/DisjointCover/Variant56c8fd244790376b845b89a393aa158bcfcce54fbc61fadcf48479c56b30a082.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DisjointCover/Variant56c8fd244790376b845b89a393aa158bcfcce54fbc61fadcf48479c56b30a082.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Indicator` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Disjointed` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Profinite` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Closeds` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.OpenCover` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exists_finite_clopen_cover](../../../../../mathematics/Topology/GeneralTopology/DisjointCover/Variant56c8fd244790376b845b89a393aa158bcfcce54fbc61fadcf48479c56b30a082.lean/declarations/exists-finite-clopen-cover--b447ac8dbf9bc14e45ce9363.md) | 44 | `result-track:b447ac8dbf9bc14e45ce936344e5e5b267c158743f2c5921e25388cfa73415be` |
| 2 | `lemma` | [exists_finite_nonempty_disjoint_clopen_cover](../../../../../mathematics/Topology/GeneralTopology/DisjointCover/Variant56c8fd244790376b845b89a393aa158bcfcce54fbc61fadcf48479c56b30a082.lean/declarations/exists-finite-nonempty-disjoint-clopen-cover--d4b2eae8fbe73a11d01cba21.md) | 60 | `result-track:d4b2eae8fbe73a11d01cba217b57c11f7591e4028b241bc30722f5655ba4f1d1` |
| 3 | `lemma` | [exists_open_prod_subset_of_mem_nhds_diagonal](../../../../../mathematics/Topology/GeneralTopology/DisjointCover/Variant56c8fd244790376b845b89a393aa158bcfcce54fbc61fadcf48479c56b30a082.lean/declarations/exists-open-prod-subset-of-mem-nhds-diagonal--8b4fed772feae10e6f5dfd81.md) | 83 | `result-track:8b4fed772feae10e6f5dfd816486a6933b0b3811901619d71228c189a7a44535` |
| 4 | `lemma` | [exists_finite_open_cover_prod_subset_of_mem_nhds_diagonal_of_compact](../../../../../mathematics/Topology/GeneralTopology/DisjointCover/Variant56c8fd244790376b845b89a393aa158bcfcce54fbc61fadcf48479c56b30a082.lean/declarations/exists-finite-open-cover-prod-subset-of-mem-nhds-diagonal-of-compact--c41c91cf0d7193140b09ce15.md) | 96 | `result-track:c41c91cf0d7193140b09ce154b9de6d12b9a0c713be4b902f31fe01951aa22bb` |
| 5 | `lemma` | [exists_finite_disjoint_nonempty_clopen_cover_of_mem_nhds_diagonal_of_profinite](../../../../../mathematics/Topology/GeneralTopology/DisjointCover/Variant56c8fd244790376b845b89a393aa158bcfcce54fbc61fadcf48479c56b30a082.lean/declarations/exists-finite-disjoint-nonempty-clopen-cover-of-mem-nhds-diagonal-of-pro--052e85ec3cc53eae82650f81.md) | 109 | `result-track:052e85ec3cc53eae82650f814430f33d858a471f1dd44709fdb3d03a8be95dba` |
| 6 | `lemma` | [exists_disjoint_nonempty_clopen_cover_of_mem_nhds_diagonal](../../../../../mathematics/Topology/GeneralTopology/DisjointCover/Variant56c8fd244790376b845b89a393aa158bcfcce54fbc61fadcf48479c56b30a082.lean/declarations/exists-disjoint-nonempty-clopen-cover-of-mem-nhds-diagonal--80e7b2ffc0163049d8184a60.md) | 131 | `result-track:80e7b2ffc0163049d8184a60f729d15f71594cdb3fc810e98038dbc694cfcfa3` |
| 7 | `lemma` | [exists_finite_approximation_of_mem_nhds_diagonal](../../../../../mathematics/Topology/GeneralTopology/DisjointCover/Variant56c8fd244790376b845b89a393aa158bcfcce54fbc61fadcf48479c56b30a082.lean/declarations/exists-finite-approximation-of-mem-nhds-diagonal--e4a35cdc765f16ad116f5fcf.md) | 144 | `result-track:e4a35cdc765f16ad116f5fcf0e09d2aae8118c6198927a86f796535221e58a4b` |
| 8 | `lemma` | [exists_finite_sum_const_mulIndicator_approximation_of_mem_nhds_diagonal](../../../../../mathematics/Topology/GeneralTopology/DisjointCover/Variant56c8fd244790376b845b89a393aa158bcfcce54fbc61fadcf48479c56b30a082.lean/declarations/exists-finite-sum-const-mulindicator-approximation-of-mem-nhds-diagonal--2ebc0c4fa0afad1aab006874.md) | 171 | `result-track:2ebc0c4fa0afad1aab006874d2f2de8a09040a4a4d8beb6b8c98d79b649ce5bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
