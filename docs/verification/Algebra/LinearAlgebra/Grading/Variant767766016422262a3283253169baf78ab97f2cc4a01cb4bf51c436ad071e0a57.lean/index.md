# Verification target: GRWTSK.Algebra.LinearAlgebra.Grading.Variant767766016422262a3283253169baf78ab97f2cc4a01cb4bf51c436ad071e0a57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bacb6d1d414589e4e57a2fcc90eb80c376e9f7d8",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Grading/Variant767766016422262a3283253169baf78ab97f2cc4a01cb4bf51c436ad071e0a57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variant767766016422262a3283253169baf78ab97f2cc4a01cb4bf51c436ad071e0a57.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variant767766016422262a3283253169baf78ab97f2cc4a01cb4bf51c436ad071e0a57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bacb6d1d414589e4e57a2fcc90eb80c376e9f7d8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Grading/Variant767766016422262a3283253169baf78ab97f2cc4a01cb4bf51c436ad071e0a57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Grading/Variant767766016422262a3283253169baf78ab97f2cc4a01cb4bf51c436ad071e0a57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.ExteriorAlgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GradedAlgebra.ι](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variant767766016422262a3283253169baf78ab97f2cc4a01cb4bf51c436ad071e0a57.lean/declarations/gradedalgebra--a6d51a0ae8c5c6381d30c2e1.md) | 35 | `declaration-track:a6d51a0ae8c5c6381d30c2e15f1eb651f6c4cde5217850e683838181914df1c2` |
| 2 | `theorem` | [GradedAlgebra.ι_apply](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variant767766016422262a3283253169baf78ab97f2cc4a01cb4bf51c436ad071e0a57.lean/declarations/gradedalgebra-apply--a7c383a7a42e367ca4717d21.md) | 40 | `result-track:a7c383a7a42e367ca4717d21e6beb7a77a7cebea5a18505229d265ca9711d1a1` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variant767766016422262a3283253169baf78ab97f2cc4a01cb4bf51c436ad071e0a57.lean/declarations/instance--65d89dbdb3e22642a3e24801.md) | 49 | `declaration-track:65d89dbdb3e22642a3e24801d765542d692c9cc8d6915a9e5551d4555703afca` |
| 4 | `theorem` | [GradedAlgebra.ι_sq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variant767766016422262a3283253169baf78ab97f2cc4a01cb4bf51c436ad071e0a57.lean/declarations/gradedalgebra-sq-zero--0e46fa560587838f3c585f0b.md) | 52 | `result-track:0e46fa560587838f3c585f0b12997e4670808b6530cedcf8ce3ebf969e93893b` |
| 5 | `def` | [GradedAlgebra.liftι](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variant767766016422262a3283253169baf78ab97f2cc4a01cb4bf51c436ad071e0a57.lean/declarations/gradedalgebra-lift--a0ef31dc3a8440ae1d297c99.md) | 58 | `declaration-track:a0ef31dc3a8440ae1d297c9926b6967217bd9b9b692f34f557bfd079e58447ba` |
| 6 | `theorem` | [GradedAlgebra.liftι_eq](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variant767766016422262a3283253169baf78ab97f2cc4a01cb4bf51c436ad071e0a57.lean/declarations/gradedalgebra-lift-eq--38ce6347effcd7b5b5480569.md) | 62 | `result-track:38ce6347effcd7b5b54805692a8ff9ae04d8c8912af67b09c66732ba319276c5` |
| 7 | `instance` | [gradedAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variant767766016422262a3283253169baf78ab97f2cc4a01cb4bf51c436ad071e0a57.lean/declarations/gradedalgebra--5033291d4619d555aa03052c.md) | 76 | `declaration-track:5033291d4619d555aa03052c4ccb892fdebb365dc6e6235c0ea722154a80ce07` |
| 8 | `lemma` | [ιMulti_span](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variant767766016422262a3283253169baf78ab97f2cc4a01cb4bf51c436ad071e0a57.lean/declarations/multi-span--6072b48b6951e2d5f0629f6e.md) | 90 | `result-track:6072b48b6951e2d5f0629f6ebfc0ac426ff257217207a1fe4a9e106d7c9cafd2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
