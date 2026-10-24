# Verification target: GRWTSK.Topology.AlgebraicTopology.Degenerate.Variantf0f9d36b9af28d7c78bdb15ba797067bf31c8c20270c81af9e5277fa1d70e7d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66ef84ab563612250a8ddbfef67312c75b0fa49f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Degenerate/Variantf0f9d36b9af28d7c78bdb15ba797067bf31c8c20270c81af9e5277fa1d70e7d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/Degenerate/Variantf0f9d36b9af28d7c78bdb15ba797067bf31c8c20270c81af9e5277fa1d70e7d0.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/Degenerate/Variantf0f9d36b9af28d7c78bdb15ba797067bf31c8c20270c81af9e5277fa1d70e7d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66ef84ab563612250a8ddbfef67312c75b0fa49f`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Degenerate/Variantf0f9d36b9af28d7c78bdb15ba797067bf31c8c20270c81af9e5277fa1d70e7d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Degenerate/Variantf0f9d36b9af28d7c78bdb15ba797067bf31c8c20270c81af9e5277fa1d70e7d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialSet.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [degenerate](../../../../../mathematics/Topology/AlgebraicTopology/Degenerate/Variantf0f9d36b9af28d7c78bdb15ba797067bf31c8c20270c81af9e5277fa1d70e7d0.lean/declarations/degenerate--825b2ebf6ad9f3682cd0ebde.md) | 40 | `declaration-track:825b2ebf6ad9f3682cd0ebde453abf8616511454b322fa08fdb76477d66c72aa` |
| 2 | `def` | [nonDegenerate](../../../../../mathematics/Topology/AlgebraicTopology/Degenerate/Variantf0f9d36b9af28d7c78bdb15ba797067bf31c8c20270c81af9e5277fa1d70e7d0.lean/declarations/nondegenerate--b7e933bcfc9a88b4764c046e.md) | 46 | `declaration-track:b7e933bcfc9a88b4764c046e60f5342b96fa3f790bad076a86d4df771e2d525e` |
| 3 | `lemma` | [degenerate_zero](../../../../../mathematics/Topology/AlgebraicTopology/Degenerate/Variantf0f9d36b9af28d7c78bdb15ba797067bf31c8c20270c81af9e5277fa1d70e7d0.lean/declarations/degenerate-zero--d5aee8dae24082654b570fa5.md) | 49 | `result-track:d5aee8dae24082654b570fa55d66914c46646c16fd50627b1a1b1dabcc119bf2` |
| 4 | `lemma` | [nondegenerate_zero](../../../../../mathematics/Topology/AlgebraicTopology/Degenerate/Variantf0f9d36b9af28d7c78bdb15ba797067bf31c8c20270c81af9e5277fa1d70e7d0.lean/declarations/nondegenerate-zero--7abaa16be78e5211ddc231b4.md) | 56 | `result-track:7abaa16be78e5211ddc231b4363ff494aac18faa6d45912edb2739ed621b0561` |
| 5 | `lemma` | [mem_nonDegenerate_iff_notMem_degenerate](../../../../../mathematics/Topology/AlgebraicTopology/Degenerate/Variantf0f9d36b9af28d7c78bdb15ba797067bf31c8c20270c81af9e5277fa1d70e7d0.lean/declarations/mem-nondegenerate-iff-notmem-degenerate--8e14d56e34d5d2c0b7082f8f.md) | 61 | `result-track:8e14d56e34d5d2c0b7082f8f2f394965fefb8aad130a3e8960bf434264752da1` |
| 6 | `lemma` | [mem_degenerate_iff_notMem_nonDegenerate](../../../../../mathematics/Topology/AlgebraicTopology/Degenerate/Variantf0f9d36b9af28d7c78bdb15ba797067bf31c8c20270c81af9e5277fa1d70e7d0.lean/declarations/mem-degenerate-iff-notmem-nondegenerate--02873882b8770d4b7f970578.md) | 67 | `result-track:02873882b8770d4b7f9705781be73bcbc70e2d7baf290f4fcb86afc393d326bc` |
| 7 | `lemma` | [σ_mem_degenerate](../../../../../mathematics/Topology/AlgebraicTopology/Degenerate/Variantf0f9d36b9af28d7c78bdb15ba797067bf31c8c20270c81af9e5277fa1d70e7d0.lean/declarations/mem-degenerate--2792c1b1a87f709f3d655c9e.md) | 74 | `result-track:2792c1b1a87f709f3d655c9e31ad951cf897eca30d0ec82f19b0184d6bd54417` |
| 8 | `lemma` | [mem_degenerate_iff](../../../../../mathematics/Topology/AlgebraicTopology/Degenerate/Variantf0f9d36b9af28d7c78bdb15ba797067bf31c8c20270c81af9e5277fa1d70e7d0.lean/declarations/mem-degenerate-iff--13ebd98beca73478213d61f8.md) | 78 | `result-track:13ebd98beca73478213d61f83bbc658e9dddd0f1f8abd43f6d719dc131aba5a6` |
| 9 | `lemma` | [degenerate_eq_iUnion_range_σ](../../../../../mathematics/Topology/AlgebraicTopology/Degenerate/Variantf0f9d36b9af28d7c78bdb15ba797067bf31c8c20270c81af9e5277fa1d70e7d0.lean/declarations/degenerate-eq-iunion-range--0e4f944de1f63b9bfa62e2e5.md) | 89 | `result-track:0e4f944de1f63b9bfa62e2e5afb09f67c92d83a5a7b43874c127ef69a5715cf3` |
| 10 | `lemma` | [exists_nonDegenerate](../../../../../mathematics/Topology/AlgebraicTopology/Degenerate/Variantf0f9d36b9af28d7c78bdb15ba797067bf31c8c20270c81af9e5277fa1d70e7d0.lean/declarations/exists-nondegenerate--a2990c889ef56b2c347eabfc.md) | 106 | `result-track:a2990c889ef56b2c347eabfc1566fe6d86c2f643200eddf0d2623196999913db` |
| 11 | `lemma` | [isIso_of_nonDegenerate](../../../../../mathematics/Topology/AlgebraicTopology/Degenerate/Variantf0f9d36b9af28d7c78bdb15ba797067bf31c8c20270c81af9e5277fa1d70e7d0.lean/declarations/isiso-of-nondegenerate--a383039e612c2bd4c6c9a111.md) | 121 | `result-track:a383039e612c2bd4c6c9a1110bcc700941ce56c874e10bbf9c6daadb988a99d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
