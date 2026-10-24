# Verification target: GRWTSK.Algebra.LinearAlgebra.Grading.Variantea2188e113ad4a8f0ad0545bd681a8c1999d43747842d882995e7c621e60132e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4043ddc186a74e232580dcf7da8ca547c4870e37",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Grading/Variantea2188e113ad4a8f0ad0545bd681a8c1999d43747842d882995e7c621e60132e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantea2188e113ad4a8f0ad0545bd681a8c1999d43747842d882995e7c621e60132e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantea2188e113ad4a8f0ad0545bd681a8c1999d43747842d882995e7c621e60132e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4043ddc186a74e232580dcf7da8ca547c4870e37`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Grading/Variantea2188e113ad4a8f0ad0545bd681a8c1999d43747842d882995e7c621e60132e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Grading/Variantea2188e113ad4a8f0ad0545bd681a8c1999d43747842d882995e7c621e60132e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorAlgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GradedAlgebra.ι](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantea2188e113ad4a8f0ad0545bd681a8c1999d43747842d882995e7c621e60132e.lean/declarations/gradedalgebra--8f36f9166f8690070417bfff.md) | 28 | `declaration-track:8f36f9166f8690070417bfff08165f65203decbfeec3f8f02ae6a3c9d83639e6` |
| 2 | `theorem` | [GradedAlgebra.ι_apply](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantea2188e113ad4a8f0ad0545bd681a8c1999d43747842d882995e7c621e60132e.lean/declarations/gradedalgebra-apply--6afb0794c691099372f41202.md) | 32 | `result-track:6afb0794c691099372f41202f0460b7ace3549290206e36afccee971a80718d4` |
| 3 | `instance` | [gradedAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantea2188e113ad4a8f0ad0545bd681a8c1999d43747842d882995e7c621e60132e.lean/declarations/gradedalgebra--e4df5a004dd6f2c898c929b4.md) | 41 | `declaration-track:e4df5a004dd6f2c898c929b4c85ec9e37f11534f2c0bc6ac4fc21d231251d843` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
