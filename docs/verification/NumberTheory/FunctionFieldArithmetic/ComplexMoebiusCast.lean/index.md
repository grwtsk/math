# Verification target: GRWTSK.NumberTheory.FunctionFieldArithmetic.ComplexMoebiusCast

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4780398faab58ef71ceffc158166d9915d5f76a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/ComplexMoebiusCast.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/ComplexMoebiusCast.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/ComplexMoebiusCast.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4780398faab58ef71ceffc158166d9915d5f76a`.

Source path: `GRWTSK/NumberTheory/FunctionFieldArithmetic/ComplexMoebiusCast.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/FunctionFieldArithmetic/ComplexMoebiusCast.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.FunctionFieldArithmetic.TruncatedMoebiusCoefficients`](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/TruncatedMoebiusCoefficients.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Complex.Basic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integer_cutoff_complex](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/ComplexMoebiusCast.lean/declarations/integer-cutoff-complex--406ceaf324b56322539a4c53.md) | 18 | `result-track:406ceaf324b56322539a4c5332b4626c5c8f15bd6db93b1775626b0e4e61113c` |
| 2 | `theorem` | [integer_sub_complex](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/ComplexMoebiusCast.lean/declarations/integer-sub-complex--36ce1b3b241151b19400e345.md) | 27 | `result-track:36ce1b3b241151b19400e345e6c34388cd55197a9e10899a0d3552e1165e08d0` |
| 3 | `theorem` | [high_moebius_complex_function](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/ComplexMoebiusCast.lean/declarations/high-moebius-complex-function--85f8f01329b33f32f860b30e.md) | 35 | `result-track:85f8f01329b33f32f860b30eb3e484268801760976b1b9589ddecdd23db3a095` |
| 4 | `theorem` | [moebius_convolution_not_pointwise_at_two](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/ComplexMoebiusCast.lean/declarations/moebius-convolution-not-pointwise-at-two--98774e67dab06d53ffd8b37b.md) | 55 | `result-track:98774e67dab06d53ffd8b37b6cdd17183fd35f37aaa6d7e8ab25b7d64ca747fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
