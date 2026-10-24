# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.PolynomialEnergyHolomorphy.Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0833d66da06bc96a11e965debccacf6306db5cb8",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0833d66da06bc96a11e965debccacf6306db5cb8`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Moments.ComplexMGF` — import line 1; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.ComplexAnalysis.PositiveHalfPlane`](../../../../mathematics/Analysis/ComplexAnalysis/PositiveHalfPlane__SourceOccurrence73f77e5e7b823c6de95c2244.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [L2Growth](../../../../mathematics/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean/declarations/l2growth--ec0020bc4c1350e0a1773bea.md) | 11 | `declaration-track:ec0020bc4c1350e0a1773bea3e7e309d39392a230b8fa0946f02f034cc0798cb` |
| 2 | `theorem` | [abs_le_one_add_square](../../../../mathematics/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean/declarations/abs-le-one-add-square--86264594dbce88ac8afcd5df.md) | 14 | `result-track:86264594dbce88ac8afcd5df39e06d8328c4f780a3a2e6c411908d290ec82eab` |
| 3 | `theorem` | [summable_successor_power_exp](../../../../mathematics/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean/declarations/summable-successor-power-exp--6202f3572595874d85f4b32b.md) | 18 | `result-track:6202f3572595874d85f4b32baec3c3f3dc57060c588253d8fb723f6b8e65813f` |
| 4 | `theorem` | [summable_unit_majorant](../../../../mathematics/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean/declarations/summable-unit-majorant--d6df338c380a771821d68f3e.md) | 32 | `result-track:d6df338c380a771821d68f3e2460f1c17537b1425ec0eed90837ed422846ba26` |
| 5 | `theorem` | [weighted_unit_integral_bound](../../../../mathematics/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean/declarations/weighted-unit-integral-bound--750d17bf75de426282578d28.md) | 60 | `result-track:750d17bf75de426282578d2835da164f4f37c16b8dfc1a3fe0e7b7d774cbd345` |
| 6 | `theorem` | [weighted_majorant_integrable](../../../../mathematics/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean/declarations/weighted-majorant-integrable--cf4a593bc32a02a526533888.md) | 111 | `result-track:cf4a593bc32a02a526533888f2590f46e33bc6b7704838dd9be0403e89fe0b1c` |
| 7 | `def` | [positiveDensity](../../../../mathematics/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean/declarations/positivedensity--b791ce1f5071a3cecd2f4e92.md) | 130 | `declaration-track:b791ce1f5071a3cecd2f4e926cacbe0effd5841408a9a4cda6db930bdd0bb7ea` |
| 8 | `def` | [sourcePositiveMeasure](../../../../mathematics/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean/declarations/sourcepositivemeasure--f22cc6657ec7329e83b6ba3c.md) | 131 | `declaration-track:f22cc6657ec7329e83b6ba3cb88e280c61cf0df7a01694c2f788548341c497fb` |
| 9 | `def` | [signedLaplace](../../../../mathematics/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean/declarations/signedlaplace--5b08f2200edfafd628424f4a.md) | 134 | `declaration-track:5b08f2200edfafd628424f4ab1705b3cccf65b258916f786e247391ca8c1aa37` |
| 10 | `theorem` | [positiveDensity_measurable](../../../../mathematics/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean/declarations/positivedensity-measurable--e810b2a2ab8dd38e94e9abe0.md) | 137 | `result-track:e810b2a2ab8dd38e94e9abe06505e9f4a13e7c80ceeb54a43125943df36cdbda` |
| 11 | `theorem` | [weighted_positive_integrable](../../../../mathematics/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean/declarations/weighted-positive-integrable--8ae25c0a0c8b1c49a62fce3e.md) | 141 | `result-track:8ae25c0a0c8b1c49a62fce3e08e616ca7e7f652aa9d3372c52089621f791e050` |
| 12 | `theorem` | [positiveMeasure_exp_integrable](../../../../mathematics/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean/declarations/positivemeasure-exp-integrable--1904c6fdcaabf7e8011975ff.md) | 158 | `result-track:1904c6fdcaabf7e8011975fff2e511696aab1b58e306796386dfdca39ac1a561` |
| 13 | `theorem` | [positiveMeasure_negative_expSet](../../../../mathematics/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean/declarations/positivemeasure-negative-expset--4615dad1554cba1663e40022.md) | 171 | `result-track:4615dad1554cba1663e40022c5a527a37b244bc26c0de9d8f549bf771cbe640a` |
| 14 | `theorem` | [positiveLaplace_analytic](../../../../mathematics/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean/declarations/positivelaplace-analytic--79b088801a66812a80037a35.md) | 180 | `result-track:79b088801a66812a80037a35ad098a73a922b838a1b297469c79475265d935f1` |
| 15 | `theorem` | [positiveLaplace_eq](../../../../mathematics/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean/declarations/positivelaplace-eq--40656f18a9b17cd34f453131.md) | 195 | `result-track:40656f18a9b17cd34f4531315edfe30b14dee04dee21888aa57046b76df81923` |
| 16 | `theorem` | [complex_weighted_positive_integrable](../../../../mathematics/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean/declarations/complex-weighted-positive-integrable--44a678a585cbf2ae53b58462.md) | 208 | `result-track:44a678a585cbf2ae53b5846260edb3ab2246740b10d39a0b5606b6a03f3f9007` |
| 17 | `theorem` | [neg_L2Growth](../../../../mathematics/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean/declarations/neg-l2growth--94254d29ff69851d9001d165.md) | 224 | `result-track:94254d29ff69851d9001d165a697e600e0c3285b6bf3e0ee6a181b69c1dc4d34` |
| 18 | `theorem` | [signedLaplace_eq_difference](../../../../mathematics/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean/declarations/signedlaplace-eq-difference--58ff5f157bee7929b50ba607.md) | 228 | `result-track:58ff5f157bee7929b50ba607ab8c6c0005d6874810d988b13f4eaaff2196bc21` |
| 19 | `theorem` | [signedLaplace_analytic](../../../../mathematics/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean/declarations/signedlaplace-analytic--426c1c0e0ffd17d3216addf6.md) | 250 | `result-track:426c1c0e0ffd17d3216addf6f82c295ecdc10afb038ec6a12faa4b5f2f72a775` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
