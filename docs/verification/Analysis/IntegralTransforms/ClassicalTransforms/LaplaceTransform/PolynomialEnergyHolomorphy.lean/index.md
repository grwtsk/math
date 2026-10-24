# Verification target: GRWTSK.Analysis.LaplaceTransform.PolynomialEnergyHolomorphy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b13f477235c1eaaf98659cadaab90ca581a499fc",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/LaplaceTransform/PolynomialEnergyHolomorphy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b13f477235c1eaaf98659cadaab90ca581a499fc`.

Source path: `GRWTSK/Analysis/LaplaceTransform/PolynomialEnergyHolomorphy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/LaplaceTransform/PolynomialEnergyHolomorphy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Moments.ComplexMGF` — import line 1; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.Complex.PositiveHalfPlane`](../../../../../../mathematics/Analysis/ComplexAnalysis/PositiveHalfPlane__SourceOccurrence18a48c0f553d6c46952c8ca8.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [L2Growth](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/declarations/l2growth--ad1ad67d314e3d4f6e58528a.md) | 11 | `declaration-track:ad1ad67d314e3d4f6e58528ad93c42fb0813e8a7117063ae2011d00b7b95da3e` |
| 2 | `theorem` | [abs_le_one_add_square](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/declarations/abs-le-one-add-square--53757a29a1dd0971aba9db48.md) | 14 | `result-track:53757a29a1dd0971aba9db486a72389ef1616f36545c7698a83fe25a7f59f55f` |
| 3 | `theorem` | [summable_successor_power_exp](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/declarations/summable-successor-power-exp--fa0073687bed7db1a0812c91.md) | 18 | `result-track:fa0073687bed7db1a0812c91cef61cafb696026832230eb8dcd5856f326d6be9` |
| 4 | `theorem` | [summable_unit_majorant](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/declarations/summable-unit-majorant--e4a0b44caad1afe45a9074c7.md) | 32 | `result-track:e4a0b44caad1afe45a9074c7e415345154a4903f80c3e860f3563c460cb1a983` |
| 5 | `theorem` | [weighted_unit_integral_bound](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/declarations/weighted-unit-integral-bound--0eb945c93d7aad6ff0c236b8.md) | 60 | `result-track:0eb945c93d7aad6ff0c236b89658dc1e36098fc94604d274cc7767bb189a12bf` |
| 6 | `theorem` | [weighted_majorant_integrable](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/declarations/weighted-majorant-integrable--95d97f54c5ee344208e9f07c.md) | 111 | `result-track:95d97f54c5ee344208e9f07ca88bc0e1b6109206a04886b045e3a09d0a893a27` |
| 7 | `def` | [positiveDensity](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/declarations/positivedensity--7bdd5aafa3f430409435ff29.md) | 130 | `declaration-track:7bdd5aafa3f430409435ff292957854b950a2c95eb38d6a30e3994ef551dd1c5` |
| 8 | `def` | [sourcePositiveMeasure](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/declarations/sourcepositivemeasure--592c153562777b3358111dbd.md) | 131 | `declaration-track:592c153562777b3358111dbdd6172a25dab1623a39007eef7e1e0e465af3f786` |
| 9 | `def` | [signedLaplace](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/declarations/signedlaplace--60d6cadd67b3f3347139f878.md) | 134 | `declaration-track:60d6cadd67b3f3347139f878b4977782c3d396b075b0d0716d7d2abbe6a67d4c` |
| 10 | `theorem` | [positiveDensity_measurable](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/declarations/positivedensity-measurable--44445b7e05d6ab344ede3e43.md) | 137 | `result-track:44445b7e05d6ab344ede3e43ffb359370778a7df7f8c83d1546e80b6584f0800` |
| 11 | `theorem` | [weighted_positive_integrable](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/declarations/weighted-positive-integrable--f598ea51bfd0871111c474d9.md) | 141 | `result-track:f598ea51bfd0871111c474d96a37168fd818bda00f068b20f12ad38bec183a51` |
| 12 | `theorem` | [positiveMeasure_exp_integrable](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/declarations/positivemeasure-exp-integrable--bd072975c0922e519797b357.md) | 158 | `result-track:bd072975c0922e519797b3577a2d3f2ef2a73f34e0afecafd2cbd38fefd3dd12` |
| 13 | `theorem` | [positiveMeasure_negative_expSet](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/declarations/positivemeasure-negative-expset--0e47a801c0655b1f762784cc.md) | 171 | `result-track:0e47a801c0655b1f762784cca0d5071b484f59d61a5500b268d32dd19890b572` |
| 14 | `theorem` | [positiveLaplace_analytic](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/declarations/positivelaplace-analytic--94aa58b8691af8f3f6042bd7.md) | 180 | `result-track:94aa58b8691af8f3f6042bd7997fca118c9abea2338690d70f6127ccebd48838` |
| 15 | `theorem` | [positiveLaplace_eq](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/declarations/positivelaplace-eq--b6215194f48ae827a98bc9f8.md) | 195 | `result-track:b6215194f48ae827a98bc9f850d4adc8d299f05aa4f94249fabce36ca2c21ab3` |
| 16 | `theorem` | [complex_weighted_positive_integrable](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/declarations/complex-weighted-positive-integrable--9470cb76acae8f71db7597b4.md) | 208 | `result-track:9470cb76acae8f71db7597b4a49b6f1d6528e9a202ebae4a9d04ad4e0119e3cb` |
| 17 | `theorem` | [neg_L2Growth](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/declarations/neg-l2growth--dee025884ff5820cbf495014.md) | 224 | `result-track:dee025884ff5820cbf4950145652739daa4b530e0e13b4ba22ace06c51c87cc2` |
| 18 | `theorem` | [signedLaplace_eq_difference](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/declarations/signedlaplace-eq-difference--24d7322dcac1af123edd9af3.md) | 228 | `result-track:24d7322dcac1af123edd9af3191883a3c77e43cf67d24f13ee430f329b8c6ee3` |
| 19 | `theorem` | [signedLaplace_analytic](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/declarations/signedlaplace-analytic--0399726c13ebec448d32eb46.md) | 250 | `result-track:0399726c13ebec448d32eb468486b6ae3aa2e502d665b4b66625df7d4d46592b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
