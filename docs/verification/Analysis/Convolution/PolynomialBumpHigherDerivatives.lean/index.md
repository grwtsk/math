# Verification target: GRWTSK.Analysis.Convolution.PolynomialBumpHigherDerivatives

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcca4fcb8056a094690ebd5632fc2f2ac635db8a",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/index.md) · [Full source](../../../../mathematics/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcca4fcb8056a094690ebd5632fc2f2ac635db8a`.

Source path: `GRWTSK/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.TestFunctions.PolynomialBumpSecondEnergy`](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.AutocorrelationSecondDerivative`](../../../../mathematics/Analysis/Convolution/AutocorrelationSecondDerivative.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.QuadraticDiscriminant` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.AbsolutelyContinuousFun` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actual_first_derivative_lipschitz](../../../../mathematics/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/declarations/actual-first-derivative-lipschitz--c3f75b438e8b4633295fd5ae.md) | 35 | `result-track:c3f75b438e8b4633295fd5ae5cc021942400bf0300cdd6b655fb56d5a3ea95eb` |
| 2 | `theorem` | [actual_first_derivative_hasDerivAt_off_endpoints](../../../../mathematics/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/declarations/actual-first-derivative-hasderivat-off-endpoints--5913cbad804ca391c3bafe94.md) | 76 | `result-track:5913cbad804ca391c3bafe94240c3d7805a32979dcfb3555c9ad7f92573f61ee` |
| 3 | `theorem` | [secondRepresentative_integrable](../../../../mathematics/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/declarations/secondrepresentative-integrable--a3d76fa0b5d013b87b141fec.md) | 101 | `result-track:a3d76fa0b5d013b87b141fec4632f8c7fbe641482560b3d6c80317ed163ec211` |
| 4 | `theorem` | [translated_first_derivative_integral_hasDerivAt](../../../../mathematics/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/declarations/translated-first-derivative-integral-hasderivat--49f303b47f605b6f7cf91e53.md) | 109 | `result-track:49f303b47f605b6f7cf91e53e00c0ab467cba08dfa1bc3f098927d4ce29db960` |
| 5 | `theorem` | [translated_product_integral](../../../../mathematics/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/declarations/translated-product-integral--a03129d5203dafaa92251a47.md) | 149 | `result-track:a03129d5203dafaa92251a4793c18dbaf46433bd6ed380e8d11712cc906f3de8` |
| 6 | `theorem` | [sourceCorrelation_third_deriv_eq_integral](../../../../mathematics/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/declarations/sourcecorrelation-third-deriv-eq-integral--9e2cf172919866dd3830bdb9.md) | 155 | `result-track:9e2cf172919866dd3830bdb980fac97f73de1600f676be97266eaadbe425e7e6` |
| 7 | `theorem` | [sourceCorrelation_third_deriv_integrand_integrable](../../../../mathematics/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/declarations/sourcecorrelation-third-deriv-integrand-integrable--0aa8de2ad377000c104fb1a3.md) | 175 | `result-track:0aa8de2ad377000c104fb1a3ece9f3547314c296c234f42b87a1edcda54860b0` |
| 8 | `theorem` | [sourceCorrelation_third_deriv_continuous](../../../../mathematics/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/declarations/sourcecorrelation-third-deriv-continuous--2af994ddf7678789174e6c06.md) | 195 | `result-track:2af994ddf7678789174e6c06b64b42182b9870855882403525b32b3c7df5abc3` |
| 9 | `theorem` | [sourceCorrelation_contDiff_three](../../../../mathematics/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/declarations/sourcecorrelation-contdiff-three--56b5d406390b7854fde2bd94.md) | 211 | `result-track:56b5d406390b7854fde2bd947a1196fc5a368725a3e4cf255614e4d134206633` |
| 10 | `theorem` | [integral_mul_square_le](../../../../mathematics/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/declarations/integral-mul-square-le--456aab8ebed87f767145b372.md) | 238 | `result-track:456aab8ebed87f767145b3727380d482cce5b5268ee96304bba139a1a4d4464e` |
| 11 | `theorem` | [sourceCorrelation_third_deriv_square_le_energy_product](../../../../mathematics/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/declarations/sourcecorrelation-third-deriv-square-le-energy-product--27bef8cad8b5674cb92ad1da.md) | 262 | `result-track:27bef8cad8b5674cb92ad1da103853d981d320fcf299347ab84b6b645b23f3b8` |
| 12 | `theorem` | [sourceCorrelation_third_deriv_abs_le](../../../../mathematics/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/declarations/sourcecorrelation-third-deriv-abs-le--16a5349e8007f749812c253e.md) | 280 | `result-track:16a5349e8007f749812c253e9ef983844bca2e4cb537df0385e9deb5acd44065` |
| 13 | `theorem` | [sourceCorrelation_third_deriv_hasDerivAt_integral](../../../../mathematics/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/declarations/sourcecorrelation-third-deriv-hasderivat-integral--c6a663607a21812b3826595d.md) | 298 | `result-track:c6a663607a21812b3826595d337c14f4be324dd1ec79fda8a1c715c526e6d2f1` |
| 14 | `theorem` | [sourceCorrelation_fourth_deriv_eq_integral](../../../../mathematics/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/declarations/sourcecorrelation-fourth-deriv-eq-integral--2f3a2ff652ec65439cc0d8f7.md) | 321 | `result-track:2f3a2ff652ec65439cc0d8f7251cf1abdb49d8319edea9f8bc2e086b72b724d4` |
| 15 | `theorem` | [secondRepresentative_bounded](../../../../mathematics/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/declarations/secondrepresentative-bounded--2f82cbe9ff1657b526407cea.md) | 327 | `result-track:2f82cbe9ff1657b526407ceaa2bc5b34ef51bcd61077173931440ea9c59afaed` |
| 16 | `theorem` | [secondRepresentative_continuousAt_off_endpoints](../../../../mathematics/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/declarations/secondrepresentative-continuousat-off-endpoints--e92cbf89588713f76921624b.md) | 343 | `result-track:e92cbf89588713f76921624b50265d96a4b9407631fc7af03d190a4d37dc474f` |
| 17 | `theorem` | [sourceCorrelation_fourth_deriv_continuous](../../../../mathematics/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/declarations/sourcecorrelation-fourth-deriv-continuous--3505b310debbbde8f063a91c.md) | 365 | `result-track:3505b310debbbde8f063a91c3483b7f503529773867d803a7a6f8d6a4b7edd61` |
| 18 | `theorem` | [sourceCorrelation_contDiff_four](../../../../mathematics/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/declarations/sourcecorrelation-contdiff-four--8c4ccfb2ed983f30abb92a2b.md) | 393 | `result-track:8c4ccfb2ed983f30abb92a2be8457bb33dd00e7ee88fbe0aede22f1e30dc7160` |
| 19 | `theorem` | [sourceCorrelation_fourth_deriv_abs_le_energy](../../../../mathematics/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/declarations/sourcecorrelation-fourth-deriv-abs-le-energy--454ae283b79b1f080141fe55.md) | 412 | `result-track:454ae283b79b1f080141fe55e2a30ffe1ddfcf1fb79dfd1d8d1f952bd14c3ca5` |
| 20 | `theorem` | [sourceCorrelation_fourth_deriv_abs_le](../../../../mathematics/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/declarations/sourcecorrelation-fourth-deriv-abs-le--de54dd55b9b8cc8fe26cc177.md) | 441 | `result-track:de54dd55b9b8cc8fe26cc1773b3b7933ab68df7705d4bb4afea3b1b77d34a30c` |
| 21 | `theorem` | [actual_first_derivative_absolutelyContinuous](../../../../mathematics/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/declarations/actual-first-derivative-absolutelycontinuous--f965b4b074a9df42620cb986.md) | 451 | `result-track:f965b4b074a9df42620cb9864abf6ada3fd03c98da1ea8bcc5099068ea12200c` |
| 22 | `theorem` | [secondRepresentative_integral_eq_sub](../../../../mathematics/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/declarations/secondrepresentative-integral-eq-sub--49a8c5f678dc350f44b8ca29.md) | 457 | `result-track:49a8c5f678dc350f44b8ca2983e493f8e4f3bbe0a2810460807bf333efc672e6` |
| 23 | `theorem` | [secondRepresentative_integration_by_parts](../../../../mathematics/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/declarations/secondrepresentative-integration-by-parts--fe4d365f05e77087806f0647.md) | 467 | `result-track:fe4d365f05e77087806f06470d6c8689a50d16fa7fbfc462021225dd7e096699` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
