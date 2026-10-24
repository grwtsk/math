# Verification target: GRWTSK.Algebra.GroupTheory.NoZeroDivisors.Variant4370f86d5fca75e948e7a0eddda504eef4f3477a39cbb6ace8cfbb22244ac52a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb8a6accbafb9d12a529d525473fc2a0d36813eb",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/NoZeroDivisors/Variant4370f86d5fca75e948e7a0eddda504eef4f3477a39cbb6ace8cfbb22244ac52a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variant4370f86d5fca75e948e7a0eddda504eef4f3477a39cbb6ace8cfbb22244ac52a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variant4370f86d5fca75e948e7a0eddda504eef4f3477a39cbb6ace8cfbb22244ac52a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb8a6accbafb9d12a529d525473fc2a0d36813eb`.

Source path: `GRWTSK/Algebra/GroupTheory/NoZeroDivisors/Variant4370f86d5fca75e948e7a0eddda504eef4f3477a39cbb6ace8cfbb22244ac52a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/NoZeroDivisors/Variant4370f86d5fca75e948e7a0eddda504eef4f3477a39cbb6ace8cfbb22244ac52a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MonoidAlgebra.Support` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_apply_add_eq_mul_of_forall_ne](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variant4370f86d5fca75e948e7a0eddda504eef4f3477a39cbb6ace8cfbb22244ac52a.lean/declarations/mul-apply-add-eq-mul-of-forall-ne--83b5ced91f66fb1c3a11bf33.md) | 61 | `result-track:83b5ced91f66fb1c3a11bf33bf7eeea4029b03e2bb099eea54e22b42d105f279` |
| 2 | `theorem` | [Left.exists_add_of_mem_support_single_mul](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variant4370f86d5fca75e948e7a0eddda504eef4f3477a39cbb6ace8cfbb22244ac52a.lean/declarations/left-exists-add-of-mem-support-single-mul--fc0163021bafdcd2784470e7.md) | 78 | `result-track:fc0163021bafdcd2784470e77c92e6898a1b29d144635073c95c91ef61a0a21b` |
| 3 | `theorem` | [Right.exists_add_of_mem_support_single_mul](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variant4370f86d5fca75e948e7a0eddda504eef4f3477a39cbb6ace8cfbb22244ac52a.lean/declarations/right-exists-add-of-mem-support-single-mul--a538814ef9741bb166bd77ac.md) | 85 | `result-track:a538814ef9741bb166bd77acd347f711c0f0bdc5a635587f766843124c29f99f` |
| 4 | `theorem` | [NoZeroDivisors.of_left_ordered](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variant4370f86d5fca75e948e7a0eddda504eef4f3477a39cbb6ace8cfbb22244ac52a.lean/declarations/nozerodivisors-of-left-ordered--9b37f6a81d667f9e6f345118.md) | 94 | `result-track:9b37f6a81d667f9e6f3451185ceb2be202ff1a7bd2996a2ca91ed38b135375ba` |
| 5 | `theorem` | [NoZeroDivisors.of_right_ordered](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variant4370f86d5fca75e948e7a0eddda504eef4f3477a39cbb6ace8cfbb22244ac52a.lean/declarations/nozerodivisors-of-right-ordered--62d45025f96e8d18f73b3718.md) | 132 | `result-track:62d45025f96e8d18f73b37183794fcce57550ca616756bdf7df937d99269234f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
