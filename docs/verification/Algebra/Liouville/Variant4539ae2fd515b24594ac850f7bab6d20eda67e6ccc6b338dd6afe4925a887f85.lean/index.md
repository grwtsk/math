# Verification target: GRWTSK.Algebra.Liouville.Variant4539ae2fd515b24594ac850f7bab6d20eda67e6ccc6b338dd6afe4925a887f85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d20412d9376b82ae79ee6ceae6d97ba24c1dc2f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Liouville/Variant4539ae2fd515b24594ac850f7bab6d20eda67e6ccc6b338dd6afe4925a887f85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Liouville/Variant4539ae2fd515b24594ac850f7bab6d20eda67e6ccc6b338dd6afe4925a887f85.lean/index.md) · [Full source](../../../../mathematics/Algebra/Liouville/Variant4539ae2fd515b24594ac850f7bab6d20eda67e6ccc6b338dd6afe4925a887f85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d20412d9376b82ae79ee6ceae6d97ba24c1dc2f`.

Source path: `GRWTSK/Algebra/Liouville/Variant4539ae2fd515b24594ac850f7bab6d20eda67e6ccc6b338dd6afe4925a887f85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Liouville/Variant4539ae2fd515b24594ac850f7bab6d20eda67e6ccc6b338dd6afe4925a887f85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Field` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Differential.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Galois.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsLiouville](../../../../mathematics/Algebra/Liouville/Variant4539ae2fd515b24594ac850f7bab6d20eda67e6ccc6b338dd6afe4925a887f85.lean/declarations/isliouville--e24ee4cd7002b821c357be17.md) | 41 | `declaration-track:e24ee4cd7002b821c357be17dfe53bf311c262cc6784f081f9cf4df94c85ed6f` |
| 2 | `instance` | [IsLiouville.rfl](../../../../mathematics/Algebra/Liouville/Variant4539ae2fd515b24594ac850f7bab6d20eda67e6ccc6b338dd6afe4925a887f85.lean/declarations/isliouville-rfl--2dd6eb761cbcb9808519ee4f.md) | 47 | `declaration-track:2dd6eb761cbcb9808519ee4f1ce5d0c35c1a65ce0bde1e35ca5275c98d8bb131` |
| 3 | `lemma` | [IsLiouville.trans](../../../../mathematics/Algebra/Liouville/Variant4539ae2fd515b24594ac850f7bab6d20eda67e6ccc6b338dd6afe4925a887f85.lean/declarations/isliouville-trans--80b32f3f1e171b8e4e9aebb0.md) | 52 | `result-track:80b32f3f1e171b8e4e9aebb0abf1aa620bbf84b3a956bd6da90afdb09fe11bb9` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Liouville/Variant4539ae2fd515b24594ac850f7bab6d20eda67e6ccc6b338dd6afe4925a887f85.lean/declarations/instance--68c9bd1b4b8e92d64366a3c2.md) | 83 | `declaration-track:68c9bd1b4b8e92d64366a3c2d29cae42459132fa454cb3e76b098c417a36d5eb` |
| 5 | `lemma` | [IsLiouville.equiv](../../../../mathematics/Algebra/Liouville/Variant4539ae2fd515b24594ac850f7bab6d20eda67e6ccc6b338dd6afe4925a887f85.lean/declarations/isliouville-equiv--2bc0750e4a49bd65115a30a6.md) | 106 | `result-track:2bc0750e4a49bd65115a30a66ce0a8b991b65adf7929c8bd5a95569d8ef24f8a` |
| 6 | `instance` | [isLiouville_of_finiteDimensional_galois](../../../../mathematics/Algebra/Liouville/Variant4539ae2fd515b24594ac850f7bab6d20eda67e6ccc6b338dd6afe4925a887f85.lean/declarations/isliouville-of-finitedimensional-galois--ceabb5e7327d7451c9bdb91d.md) | 119 | `declaration-track:ceabb5e7327d7451c9bdb91da0514a298f7155b8c5e28d9d6c6ef210e7abb247` |
| 7 | `instance` | [isLiouville_of_finiteDimensional](../../../../mathematics/Algebra/Liouville/Variant4539ae2fd515b24594ac850f7bab6d20eda67e6ccc6b338dd6afe4925a887f85.lean/declarations/isliouville-of-finitedimensional--3e3e12faa66b246848dd5402.md) | 195 | `declaration-track:3e3e12faa66b246848dd5402142182ef02ce31d69f179d1c278999e4fb7e76a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
