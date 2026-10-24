# Verification target: GRWTSK.Algebra.GroupTheory.NoZeroDivisors.Variant6447e41075477280212f572f2f8c452795191128c13e033d185f5b69d27caab8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68b4820e19751c749049815f5b8878eebf5b8981",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/NoZeroDivisors/Variant6447e41075477280212f572f2f8c452795191128c13e033d185f5b69d27caab8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variant6447e41075477280212f572f2f8c452795191128c13e033d185f5b69d27caab8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variant6447e41075477280212f572f2f8c452795191128c13e033d185f5b69d27caab8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68b4820e19751c749049815f5b8878eebf5b8981`.

Source path: `GRWTSK/Algebra/GroupTheory/NoZeroDivisors/Variant6447e41075477280212f572f2f8c452795191128c13e033d185f5b69d27caab8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/NoZeroDivisors/Variant6447e41075477280212f572f2f8c452795191128c13e033d185f5b69d27caab8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MonoidAlgebra.Support` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_apply_add_eq_mul_of_forall_ne](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variant6447e41075477280212f572f2f8c452795191128c13e033d185f5b69d27caab8.lean/declarations/mul-apply-add-eq-mul-of-forall-ne--5795f6785c676eb94cc1fff0.md) | 53 | `result-track:5795f6785c676eb94cc1fff0b010d3ab8a4d9fe0dacdc8446ed35257f45c548d` |
| 2 | `theorem` | [Left.exists_add_of_mem_support_single_mul](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variant6447e41075477280212f572f2f8c452795191128c13e033d185f5b69d27caab8.lean/declarations/left-exists-add-of-mem-support-single-mul--3598c164e8cc3df60501c203.md) | 70 | `result-track:3598c164e8cc3df60501c203c62dee3df2edc0f138498bcf276888e5adba9f54` |
| 3 | `theorem` | [Right.exists_add_of_mem_support_single_mul](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variant6447e41075477280212f572f2f8c452795191128c13e033d185f5b69d27caab8.lean/declarations/right-exists-add-of-mem-support-single-mul--b022562999af52e7bf1b9d28.md) | 77 | `result-track:b022562999af52e7bf1b9d282fb7bfdcbeb6ca2c380d7f85ab3787a531f0d5db` |
| 4 | `theorem` | [NoZeroDivisors.of_left_ordered](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variant6447e41075477280212f572f2f8c452795191128c13e033d185f5b69d27caab8.lean/declarations/nozerodivisors-of-left-ordered--d062aba5e8a53cbe9e894568.md) | 86 | `result-track:d062aba5e8a53cbe9e8945682b78ecd04bcf531e78d90a157a17e3142588ee46` |
| 5 | `theorem` | [NoZeroDivisors.of_right_ordered](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variant6447e41075477280212f572f2f8c452795191128c13e033d185f5b69d27caab8.lean/declarations/nozerodivisors-of-right-ordered--6146208e91de6b8468973eef.md) | 124 | `result-track:6146208e91de6b8468973eef7b6e3363f0234be914a4c66e9ab4466f00519524` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
