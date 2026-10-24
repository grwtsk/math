# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finsupp.Variant4794c1066907280616ca2df1c6b201db904d7f0763f8b345cf1610bb870ca3d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b1be5a13c39ba3ebcf68a5eab2816d442c11ae5",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finsupp/Variant4794c1066907280616ca2df1c6b201db904d7f0763f8b345cf1610bb870ca3d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant4794c1066907280616ca2df1c6b201db904d7f0763f8b345cf1610bb870ca3d2.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant4794c1066907280616ca2df1c6b201db904d7f0763f8b345cf1610bb870ca3d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b1be5a13c39ba3ebcf68a5eab2816d442c11ae5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finsupp/Variant4794c1066907280616ca2df1c6b201db904d7f0763f8b345cf1610bb870ca3d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finsupp/Variant4794c1066907280616ca2df1c6b201db904d7f0763f8b345cf1610bb870ca3d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Finsupp.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_finsupp_of_mem_closure_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant4794c1066907280616ca2df1c6b201db904d7f0763f8b345cf1610bb870ca3d2.lean/declarations/exists-finsupp-of-mem-closure-range--68113b70f6a84139f196dc1c.md) | 25 | `result-track:68113b70f6a84139f196dc1ca4b1ce9653bc25a0bd92ee9d2f54b8d03c0602a0` |
| 2 | `theorem` | [mem_closure_range_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant4794c1066907280616ca2df1c6b201db904d7f0763f8b345cf1610bb870ca3d2.lean/declarations/mem-closure-range-iff--7cf7f3b91dca524b4b02b4eb.md) | 40 | `result-track:7cf7f3b91dca524b4b02b4eb3a7ced56e54e802b1b50c9cfd9289401d5c02d96` |
| 3 | `theorem` | [exists_of_mem_closure_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant4794c1066907280616ca2df1c6b201db904d7f0763f8b345cf1610bb870ca3d2.lean/declarations/exists-of-mem-closure-range--880e55f996be56c535531a03.md) | 47 | `result-track:880e55f996be56c535531a03fdda3f8b32de355121883d4e50cead15505c30bd` |
| 4 | `theorem` | [mem_closure_range_iff_of_fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant4794c1066907280616ca2df1c6b201db904d7f0763f8b345cf1610bb870ca3d2.lean/declarations/mem-closure-range-iff-of-fintype--bb6dce81f40a50a784698050.md) | 54 | `result-track:bb6dce81f40a50a7846980509acb3ceea97c5e8befa0337e06d5e10a31f1d01d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
