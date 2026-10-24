# Verification target: GRWTSK.Algebra.LinearAlgebra.Grading.Variantbb6523a1c72c72a18b8a6827c7c2858c746fb08e7efee39dc4999586b206edfb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd828d25515e0bb866615e1c613ce24feff669cc",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Grading/Variantbb6523a1c72c72a18b8a6827c7c2858c746fb08e7efee39dc4999586b206edfb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantbb6523a1c72c72a18b8a6827c7c2858c746fb08e7efee39dc4999586b206edfb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantbb6523a1c72c72a18b8a6827c7c2858c746fb08e7efee39dc4999586b206edfb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd828d25515e0bb866615e1c613ce24feff669cc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Grading/Variantbb6523a1c72c72a18b8a6827c7c2858c746fb08e7efee39dc4999586b206edfb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Grading/Variantbb6523a1c72c72a18b8a6827c7c2858c746fb08e7efee39dc4999586b206edfb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.ExteriorAlgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GradedAlgebra.ι](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantbb6523a1c72c72a18b8a6827c7c2858c746fb08e7efee39dc4999586b206edfb.lean/declarations/gradedalgebra--b626a313d57553227c92f084.md) | 32 | `declaration-track:b626a313d57553227c92f0843ee41a50e6442c9d9fc0f34c37410f1af29cd22e` |
| 2 | `theorem` | [GradedAlgebra.ι_apply](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantbb6523a1c72c72a18b8a6827c7c2858c746fb08e7efee39dc4999586b206edfb.lean/declarations/gradedalgebra-apply--d9dda06be6e961f7b7d3a5ca.md) | 39 | `result-track:d9dda06be6e961f7b7d3a5ca9ad7e8afbba954faa26a412051792d6fa809ed93` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantbb6523a1c72c72a18b8a6827c7c2858c746fb08e7efee39dc4999586b206edfb.lean/declarations/instance--8c016d6dfad0a645d6715685.md) | 48 | `declaration-track:8c016d6dfad0a645d67156850c075b466049fabd9bb3b613723c0690e472b518` |
| 4 | `theorem` | [GradedAlgebra.ι_sq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantbb6523a1c72c72a18b8a6827c7c2858c746fb08e7efee39dc4999586b206edfb.lean/declarations/gradedalgebra-sq-zero--21e71e56c85e33d79743dc61.md) | 50 | `result-track:21e71e56c85e33d79743dc617234addcd46334006ad2ab3de6770160fa8213b1` |
| 5 | `def` | [GradedAlgebra.liftι](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantbb6523a1c72c72a18b8a6827c7c2858c746fb08e7efee39dc4999586b206edfb.lean/declarations/gradedalgebra-lift--0aef4037f28998a9f829dd88.md) | 58 | `declaration-track:0aef4037f28998a9f829dd88eddaab5c7931840edd83fc0c3186816e2bcb2860` |
| 6 | `theorem` | [GradedAlgebra.liftι_eq](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantbb6523a1c72c72a18b8a6827c7c2858c746fb08e7efee39dc4999586b206edfb.lean/declarations/gradedalgebra-lift-eq--a2e36e9c105cea0ee08c2acc.md) | 65 | `result-track:a2e36e9c105cea0ee08c2acc3f5eaefbeee5293c72609213797e8927d2bea5e3` |
| 7 | `instance` | [gradedAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantbb6523a1c72c72a18b8a6827c7c2858c746fb08e7efee39dc4999586b206edfb.lean/declarations/gradedalgebra--ad86e4b3c8bf2dcecbd1976f.md) | 90 | `declaration-track:ad86e4b3c8bf2dcecbd1976f98be3221ca73c8813091f7ed1b1998da66c2e0a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
