# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sum.Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "892d2afebab874869572cb8af55e2431a20672d2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `892d2afebab874869572cb8af55e2431a20672d2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Intervals` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Order` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.NatAntidiagonal` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean/declarations/add-pow--2ce76bdfecf7a2d56f76d562.md) | 46 | `result-track:2ce76bdfecf7a2d56f76d56295283940101b0c2da815a8f078ef66cd8581e898` |
| 2 | `theorem` | [add_pow'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean/declarations/add-pow--22c12584edfa2e4293924d25.md) | 81 | `result-track:22c12584edfa2e4293924d25e37b611e329c6e96e13078cd71c7149443d5009d` |
| 3 | `theorem` | [add_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean/declarations/add-pow--8797a33a846d814d0d446bb2.md) | 90 | `result-track:8797a33a846d814d0d446bb2238f48ed61bf91bf31a35c55ca9f485ddca32c5a` |
| 4 | `theorem` | [sum_range_choose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean/declarations/sum-range-choose--87bfb1b564dfa6d9289b81cf.md) | 98 | `result-track:87bfb1b564dfa6d9289b81cf2bde29594555f0595f51d0824388753cbe1c69c9` |
| 5 | `theorem` | [sum_range_choose_halfway](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean/declarations/sum-range-choose-halfway--b9e83d506640feb47ce5db6f.md) | 103 | `result-track:b9e83d506640feb47ce5db6fde57f67c92fc86600fab044d78c01a0ddfa1eb5f` |
| 6 | `theorem` | [choose_middle_le_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean/declarations/choose-middle-le-pow--636dd3174ac1b8c61f58a9fb.md) | 127 | `result-track:636dd3174ac1b8c61f58a9fb3c65ae3fef4fb705bafcdea841b8a02761ea37f9` |
| 7 | `theorem` | [four_pow_le_two_mul_add_one_mul_central_binom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean/declarations/four-pow-le-two-mul-add-one-mul-central-binom--ce36f6e217ff755e40231df3.md) | 133 | `result-track:ce36f6e217ff755e40231df3fa72ecffb7c27f3113792bd3211f31e91db4a006` |
| 8 | `theorem` | [Int.alternating_sum_range_choose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean/declarations/int-alternating-sum-range-choose--1a59222884f5ea05ac5c60f5.md) | 144 | `result-track:1a59222884f5ea05ac5c60f54bc9466051e74bbfa1f212a99690e166aaf6c5d3` |
| 9 | `theorem` | [Int.alternating_sum_range_choose_of_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean/declarations/int-alternating-sum-range-choose-of-ne--8b6abfc4cc3cde7fe4e57358.md) | 153 | `result-track:8b6abfc4cc3cde7fe4e57358643a504973e3d168808c4621bfbba0ddc8477b99` |
| 10 | `theorem` | [sum_powerset_apply_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean/declarations/sum-powerset-apply-card--2946b1eb28d4cc61b85e6dfe.md) | 160 | `result-track:2946b1eb28d4cc61b85e6dfe7ef0803adb566e84bd6a38d153a515f6eb62bd00` |
| 11 | `theorem` | [sum_powerset_neg_one_pow_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean/declarations/sum-powerset-neg-one-pow-card--58aba0b7cfe4c36602080efd.md) | 174 | `result-track:58aba0b7cfe4c36602080efd6a5f96a408508aa891cd129f5ddfa3db47414e7d` |
| 12 | `theorem` | [sum_powerset_neg_one_pow_card_of_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean/declarations/sum-powerset-neg-one-pow-card-of-nonempty--37e4e01f5d9ebd7ad2f78628.md) | 180 | `result-track:37e4e01f5d9ebd7ad2f78628ab016112e6091873b99571ee4bc5b6eba895d758` |
| 13 | `theorem` | [prod_pow_choose_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean/declarations/prod-pow-choose-succ--d8b06d75143890098cb4c568.md) | 192 | `result-track:d8b06d75143890098cb4c5688bf7a5397adec2140c93afe00320e8528965f950` |
| 14 | `theorem` | [prod_antidiagonal_pow_choose_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean/declarations/prod-antidiagonal-pow-choose-succ--d3515adeaaec9885def2e639.md) | 205 | `result-track:d3515adeaaec9885def2e63981405aacf6b85f83e7b0d8e0c93d69ed03fb51d7` |
| 15 | `theorem` | [sum_choose_succ_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean/declarations/sum-choose-succ-mul--ab987a5c017e3d2ed111ba71.md) | 220 | `result-track:ab987a5c017e3d2ed111ba7193d29545b5cb07ae4f17445017c6669f4aed2759` |
| 16 | `theorem` | [sum_antidiagonal_choose_succ_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean/declarations/sum-antidiagonal-choose-succ-mul--a7d4398237c8f70b2f5ed4b2.md) | 229 | `result-track:a7d4398237c8f70b2f5ed4b2740948cc0f6aeac3b285f97d1f71b0c67ea31b88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
