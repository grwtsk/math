# Verification target: GRWTSK.NumberTheory.FunctionFieldArithmetic.TruncatedMoebiusCoefficients

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "236252d146e430f352d2ceb3593a322f947ac84c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/TruncatedMoebiusCoefficients.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/TruncatedMoebiusCoefficients.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/TruncatedMoebiusCoefficients.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `236252d146e430f352d2ceb3593a322f947ac84c`.

Source path: `GRWTSK/NumberTheory/FunctionFieldArithmetic/TruncatedMoebiusCoefficients.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/FunctionFieldArithmetic/TruncatedMoebiusCoefficients.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.FunctionFieldArithmetic.MoebiusTruncation`](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/MoebiusTruncation.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lowMoebiusCoefficient](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/TruncatedMoebiusCoefficients.lean/declarations/lowmoebiuscoefficient--9ee5c153ae79fa4c6f721123.md) | 19 | `declaration-track:9ee5c153ae79fa4c6f721123f661ab5ba174e190ae8f1fc5262909c03e7a81f0` |
| 2 | `def` | [highMoebiusCoefficient](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/TruncatedMoebiusCoefficients.lean/declarations/highmoebiuscoefficient--a4b34f99d89cb0952c762748.md) | 23 | `declaration-track:a4b34f99d89cb0952c76274866524a074c7d0b3b04753c19d8a43a2ffa7c4eab` |
| 3 | `theorem` | [moebius_low_high_coefficient_return](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/TruncatedMoebiusCoefficients.lean/declarations/moebius-low-high-coefficient-return--a8eb06d499847d4b155adbc9.md) | 27 | `result-track:a8eb06d499847d4b155adbc970671c9c2e9b42e57e79568b02be596a90518e9a` |
| 4 | `theorem` | [high_coefficient_three_thirty](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/TruncatedMoebiusCoefficients.lean/declarations/high-coefficient-three-thirty--7856dc6466a153839865ecde.md) | 42 | `result-track:7856dc6466a153839865ecde34b000da4f285b45db030b2ea60b7b1dc2b9ade1` |
| 5 | `theorem` | [high_coefficient_four_fortynine](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/TruncatedMoebiusCoefficients.lean/declarations/high-coefficient-four-fortynine--15694a67e7860f19fac110fb.md) | 46 | `result-track:15694a67e7860f19fac110fbc8d6399260485bbbef7e865cd82a325901ddd22d` |
| 6 | `theorem` | [low_coefficient_three_thirty](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/TruncatedMoebiusCoefficients.lean/declarations/low-coefficient-three-thirty--3944259b5863cf37840837bf.md) | 50 | `result-track:3944259b5863cf37840837bff149a76d94989e745a946a1abf0e88d27dbbfdda` |
| 7 | `theorem` | [low_coefficient_four_fortynine](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/TruncatedMoebiusCoefficients.lean/declarations/low-coefficient-four-fortynine--ca1a1df944c5e34bb27379e8.md) | 54 | `result-track:ca1a1df944c5e34bb27379e86e04d3337f1b3cbbfd09d6d83c668ad28fc7de10` |
| 8 | `theorem` | [high_moebius_coefficients_have_both_signs](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/TruncatedMoebiusCoefficients.lean/declarations/high-moebius-coefficients-have-both-signs--ce1ec2adbaba57df5f67a47b.md) | 57 | `result-track:ce1ec2adbaba57df5f67a47b8b06a8e3c51a0f40f6dc7ca432caaf8be3cc04d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
