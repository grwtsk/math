# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ZeroSmoothingLogarithmic.Variantc30d487bd3b7d104fd5523717bf48424e5d5f02d179b1ce3424fadea3d075dc2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e594d37ab329630c1b9c47ec3660cc2b4730c82",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantc30d487bd3b7d104fd5523717bf48424e5d5f02d179b1ce3424fadea3d075dc2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantc30d487bd3b7d104fd5523717bf48424e5d5f02d179b1ce3424fadea3d075dc2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantc30d487bd3b7d104fd5523717bf48424e5d5f02d179b1ce3424fadea3d075dc2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e594d37ab329630c1b9c47ec3660cc2b4730c82`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantc30d487bd3b7d104fd5523717bf48424e5d5f02d179b1ce3424fadea3d075dc2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantc30d487bd3b7d104fd5523717bf48424e5d5f02d179b1ce3424fadea3d075dc2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingTransform` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logarithmicWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantc30d487bd3b7d104fd5523717bf48424e5d5f02d179b1ce3424fadea3d075dc2.lean/declarations/logarithmicweight--2008a9fcf0aa99dceb7b759b.md) | 39 | `declaration-track:2008a9fcf0aa99dceb7b759be133b2d0ccd03eafb279b94049d20279971ada63` |
| 2 | `theorem` | [logarithmicWeight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantc30d487bd3b7d104fd5523717bf48424e5d5f02d179b1ce3424fadea3d075dc2.lean/declarations/logarithmicweight-nonneg--c13a290e7458b87a8e2c908e.md) | 42 | `result-track:c13a290e7458b87a8e2c908e5adc8bbc75a05bdfae11ac4e14fb6f80a154d382` |
| 3 | `theorem` | [source_fourier_smoothing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantc30d487bd3b7d104fd5523717bf48424e5d5f02d179b1ce3424fadea3d075dc2.lean/declarations/source-fourier-smoothing--9956dc80c8a67da130078456.md) | 49 | `result-track:9956dc80c8a67da130078456932c555fc52de270cc80231bb04b7d49d5315d73` |
| 4 | `theorem` | [fourier_multiplier_norm_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantc30d487bd3b7d104fd5523717bf48424e5d5f02d179b1ce3424fadea3d075dc2.lean/declarations/fourier-multiplier-norm-le-one--ccbf111acaf7dfe9bd7679ec.md) | 56 | `result-track:ccbf111acaf7dfe9bd7679ec24e5216a64c39a5b71ef6a20135f3b719723d312` |
| 5 | `theorem` | [smoothed_fourier_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantc30d487bd3b7d104fd5523717bf48424e5d5f02d179b1ce3424fadea3d075dc2.lean/declarations/smoothed-fourier-tendsto--0f26235728381e8a950c7340.md) | 60 | `result-track:0f26235728381e8a950c7340b37d051e64dbe29c7ef15cd874e899c883d45396` |
| 6 | `theorem` | [weighted_error_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantc30d487bd3b7d104fd5523717bf48424e5d5f02d179b1ce3424fadea3d075dc2.lean/declarations/weighted-error-le--fca49a67aaab061b25fcddd2.md) | 70 | `result-track:fca49a67aaab061b25fcddd2091a875c21a3bf89203a8663cbf9d7ff27d6d467` |
| 7 | `theorem` | [actual_weighted_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantc30d487bd3b7d104fd5523717bf48424e5d5f02d179b1ce3424fadea3d075dc2.lean/declarations/actual-weighted-integrable--b9aafa8d13f8a4d9427fb0e8.md) | 109 | `result-track:b9aafa8d13f8a4d9427fb0e88d15faefacd71a2309e58d3e63f06edf233568d6` |
| 8 | `theorem` | [weighted_error_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantc30d487bd3b7d104fd5523717bf48424e5d5f02d179b1ce3424fadea3d075dc2.lean/declarations/weighted-error-continuous--4fdc28d04463740d57f67d02.md) | 124 | `result-track:4fdc28d04463740d57f67d023e70df51f19175bc12672eaf62b7c598065d303e` |
| 9 | `theorem` | [weighted_error_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantc30d487bd3b7d104fd5523717bf48424e5d5f02d179b1ce3424fadea3d075dc2.lean/declarations/weighted-error-integrable--27c2782f972a6a822d2059fe.md) | 138 | `result-track:27c2782f972a6a822d2059fe57cd9e9b1bcb046816bb48bcbaf9698afb6e5586` |
| 10 | `theorem` | [weighted_error_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantc30d487bd3b7d104fd5523717bf48424e5d5f02d179b1ce3424fadea3d075dc2.lean/declarations/weighted-error-tendsto--ec1cd78f6bdd7aee713510fe.md) | 149 | `result-track:ec1cd78f6bdd7aee713510feaac5f344a6493efa1448cb5ef094f14afd3f1c6b` |
| 11 | `theorem` | [source_logarithmic_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantc30d487bd3b7d104fd5523717bf48424e5d5f02d179b1ce3424fadea3d075dc2.lean/declarations/source-logarithmic-convergence--b4863da1c8dd0bacdf577db3.md) | 166 | `result-track:b4863da1c8dd0bacdf577db3c1890a8d4e394e16ee1ec7ad07f15d9583130b74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
