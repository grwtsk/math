# Verification target: GRWTSK.Algebra.LinearAlgebra.PositiveLift.Variant3142db9523c87d015647a1c6c7e5c5b5de5a79fdf16f902ec4b0b750cd562478

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3eeb8b01ddd00b99dbe2ff9b8e746bf942b83fd",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PositiveLift/Variant3142db9523c87d015647a1c6c7e5c5b5de5a79fdf16f902ec4b0b750cd562478.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PositiveLift/Variant3142db9523c87d015647a1c6c7e5c5b5de5a79fdf16f902ec4b0b750cd562478.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PositiveLift/Variant3142db9523c87d015647a1c6c7e5c5b5de5a79fdf16f902ec4b0b750cd562478.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3eeb8b01ddd00b99dbe2ff9b8e746bf942b83fd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PositiveLift/Variant3142db9523c87d015647a1c6c7e5c5b5de5a79fdf16f902ec4b0b750cd562478.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PositiveLift/Variant3142db9523c87d015647a1c6c7e5c5b5de5a79fdf16f902ec4b0b750cd562478.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.FiniteCauchyBinet` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LeftOrderedNonnegative](../../../../../mathematics/Algebra/LinearAlgebra/PositiveLift/Variant3142db9523c87d015647a1c6c7e5c5b5de5a79fdf16f902ec4b0b750cd562478.lean/declarations/leftorderednonnegative--44e21420ecf7351a0bfbbc9a.md) | 29 | `declaration-track:44e21420ecf7351a0bfbbc9a3127c44042b3e1478940f16849c66307de02c5e0` |
| 2 | `def` | [RightOrderedNonnegative](../../../../../mathematics/Algebra/LinearAlgebra/PositiveLift/Variant3142db9523c87d015647a1c6c7e5c5b5de5a79fdf16f902ec4b0b750cd562478.lean/declarations/rightorderednonnegative--87de26afcda46e1ef75688d7.md) | 34 | `declaration-track:87de26afcda46e1ef75688d742f7e741a6385973b946d821b817cbdbf8d34de6` |
| 3 | `theorem` | [det_mul_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/PositiveLift/Variant3142db9523c87d015647a1c6c7e5c5b5de5a79fdf16f902ec4b0b750cd562478.lean/declarations/det-mul-nonnegative--a39c618d391225088c31c2ee.md) | 40 | `result-track:a39c618d391225088c31c2ee346f3bea91f2a80bbd23f8ac3f7a896d17851620` |
| 4 | `def` | [matrix](../../../../../mathematics/Algebra/LinearAlgebra/PositiveLift/Variant3142db9523c87d015647a1c6c7e5c5b5de5a79fdf16f902ec4b0b750cd562478.lean/declarations/matrix--c23f20408b4454c354907547.md) | 59 | `declaration-track:c23f20408b4454c354907547c81822f5710aab1bc61239e7a9653e3a26c72b0a` |
| 5 | `theorem` | [matrix_det_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/PositiveLift/Variant3142db9523c87d015647a1c6c7e5c5b5de5a79fdf16f902ec4b0b750cd562478.lean/declarations/matrix-det-nonnegative--71bc17b983cbb7691db9eab8.md) | 66 | `result-track:71bc17b983cbb7691db9eab8299ee17e428d4fbd07241183065cfbff31b65058` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
