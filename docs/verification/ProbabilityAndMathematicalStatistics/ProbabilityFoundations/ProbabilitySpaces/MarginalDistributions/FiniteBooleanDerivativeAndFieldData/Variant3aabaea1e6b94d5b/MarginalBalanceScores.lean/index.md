# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.MarginalDistributions.FiniteBooleanDerivativeAndFieldData.Variant3aabaea1e6b94d5b.MarginalBalanceScores

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0b79b548a2012dbdf9497d3caa034411d533544",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean/index.md) · [Full source](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0b79b548a2012dbdf9497d3caa034411d533544`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Quantization.Core` — import line 19; external provider; requires a separately pinned dependency.
- `BitMatrix.Reduction.SAT` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Nat` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 29; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 30; external provider; requires a separately pinned dependency.
- [`GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.DoubleCounting.FiniteBooleanDerivativeAndFieldData.Variant3aabaea1e6b94d5b.DifferentialCountsAndParity`](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/DoubleCounting/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/DifferentialCountsAndParity.lean/index.md) — import line 32; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sacCount_le](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean/declarations/saccount-le--31b2636c8cf173711712cab5.md) | 74 | `result-track:31b2636c8cf173711712cab5a216c55473f752fd8f4ff9e236a2f940b95a4f13` |
| 2 | `theorem` | [sacEntry_nonneg](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean/declarations/sacentry-nonneg--80e25b9050008042272ba3c4.md) | 84 | `result-track:80e25b9050008042272ba3c420d2a14a726014198e988c8bea92d9d55deb1b79` |
| 3 | `theorem` | [sacEntry_le_one](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean/declarations/sacentry-le-one--8044c0c34a5b8ca9c91ecae2.md) | 89 | `result-track:8044c0c34a5b8ca9c91ecae225240b72e1209a662ac2933b25e66e2e9f6b36ff` |
| 4 | `theorem` | [strictSAC_iff_sacEntry_eq_half](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean/declarations/strictsac-iff-sacentry-eq-half--1be39f2bbce7b082ce389975.md) | 96 | `result-track:1be39f2bbce7b082ce38997578fc6e0c5c08635d4a5e5e9211910f7531dafd94` |
| 5 | `theorem` | [abs_two_mul_sub_one_le_one](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean/declarations/abs-two-mul-sub-one-le-one--b1ef5ba2d117b593ab1fe136.md) | 115 | `result-track:b1ef5ba2d117b593ab1fe136859b6c9072c8ac6126aac8a342cae487148f4836` |
| 6 | `theorem` | [four_mul_variance_nonneg](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean/declarations/four-mul-variance-nonneg--f7971bcca7b49104b9f61806.md) | 120 | `result-track:f7971bcca7b49104b9f61806b087c1f7f540971302c66bf92cb8279820b5b758` |
| 7 | `theorem` | [four_mul_variance_le_one](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean/declarations/four-mul-variance-le-one--b13c8efc573c7c624e4fe2d7.md) | 126 | `result-track:b13c8efc573c7c624e4fe2d7f73f7463b7c5e1794227f8c9995a940d5f4ef87e` |
| 8 | `theorem` | [four_mul_variance_eq_one_iff](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean/declarations/four-mul-variance-eq-one-iff--50db3bf36b3c2e05ea38ee28.md) | 130 | `result-track:50db3bf36b3c2e05ea38ee28d5d174f4d8d54ddc6ddd18ba65bf8028bfff2851` |
| 9 | `def` | [sacScore](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean/declarations/sacscore--2a564e5c7a52932378e69392.md) | 144 | `declaration-track:2a564e5c7a52932378e693926cd7d5c5f57b61034655a4f26c44c9a31cd2865d` |
| 10 | `def` | [varianceScore](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean/declarations/variancescore--e692419b4391c2e4eb080141.md) | 156 | `declaration-track:e692419b4391c2e4eb0801411dff5e9987738746e0c8958eb79a6fd5e8750082` |
| 11 | `theorem` | [bias_sum_nonneg](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean/declarations/bias-sum-nonneg--5b7aeb82535754e82909d603.md) | 164 | `result-track:5b7aeb82535754e82909d603538e9ac130d4c6b5013df6ced1f71429d8e56ac3` |
| 12 | `theorem` | [bias_sum_le](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean/declarations/bias-sum-le--9206fa9abe014cee91aef21c.md) | 169 | `result-track:9206fa9abe014cee91aef21c94aa098386a614666cc52aad033f5022e2613503` |
| 13 | `theorem` | [variance_sum_nonneg](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean/declarations/variance-sum-nonneg--9294bab92691d749bd84bd16.md) | 181 | `result-track:9294bab92691d749bd84bd161225c2465ac5104f8e3d06b55d255fe6c098cf4d` |
| 14 | `theorem` | [variance_sum_le](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean/declarations/variance-sum-le--114b40c7c73a2d932dd5aa57.md) | 187 | `result-track:114b40c7c73a2d932dd5aa57dc81972ab10ff06457b1c0585bd7e6a83e1034ef` |
| 15 | `theorem` | [sacScore_nonneg](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean/declarations/sacscore-nonneg--72dea380cbbde3207ca137b7.md) | 202 | `result-track:72dea380cbbde3207ca137b743c5dc76e2212c9dd461963abd2c87542fd7ddf9` |
| 16 | `theorem` | [sacScore_le_one](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean/declarations/sacscore-le-one--4cd77d0f311f705e13811cb1.md) | 215 | `result-track:4cd77d0f311f705e13811cb19dbeb50c9894fd38ab7d9440952a1ed1dfd11f3c` |
| 17 | `theorem` | [sacScore_eq_one_iff](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean/declarations/sacscore-eq-one-iff--8cf1e5b700286ee9da91d46e.md) | 228 | `result-track:8cf1e5b700286ee9da91d46eff5a80c0c13d03b01b8e881663a024dd7b280298` |
| 18 | `theorem` | [varianceScore_nonneg](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean/declarations/variancescore-nonneg--60d7d9cbd3e78d73adcb94ed.md) | 261 | `result-track:60d7d9cbd3e78d73adcb94ed9e08e10af6e810841a16447da4abbd8cab0c9396` |
| 19 | `theorem` | [varianceScore_le_one](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean/declarations/variancescore-le-one--7ae12b4c898c792ef2a03c90.md) | 269 | `result-track:7ae12b4c898c792ef2a03c90f400b656d685672818bbad038b1d86ac87bc0939` |
| 20 | `theorem` | [varianceScore_eq_one_iff](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean/declarations/variancescore-eq-one-iff--2c403d00f8b208bac8a00694.md) | 277 | `result-track:2c403d00f8b208bac8a00694f02e8ab8b6a93ad4a3d813c6417bc0f83c9b7c19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
