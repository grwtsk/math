# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ZeroSmoothingLogarithmic.Variant4c993e746e10632e22c9b3ac079c5e0c492a4f92e345c6cef70af62f7551a186

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0eba596fa99caed8888b176fe27f8acb9457ec0f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant4c993e746e10632e22c9b3ac079c5e0c492a4f92e345c6cef70af62f7551a186.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant4c993e746e10632e22c9b3ac079c5e0c492a4f92e345c6cef70af62f7551a186.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant4c993e746e10632e22c9b3ac079c5e0c492a4f92e345c6cef70af62f7551a186.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0eba596fa99caed8888b176fe27f8acb9457ec0f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant4c993e746e10632e22c9b3ac079c5e0c492a4f92e345c6cef70af62f7551a186.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant4c993e746e10632e22c9b3ac079c5e0c492a4f92e345c6cef70af62f7551a186.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingTransform` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logarithmicWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant4c993e746e10632e22c9b3ac079c5e0c492a4f92e345c6cef70af62f7551a186.lean/declarations/logarithmicweight--c5be13794d6a56c63340a9f6.md) | 31 | `declaration-track:c5be13794d6a56c63340a9f65d52cc3e30f39a4637f843a777b518b004a56937` |
| 2 | `theorem` | [logarithmicWeight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant4c993e746e10632e22c9b3ac079c5e0c492a4f92e345c6cef70af62f7551a186.lean/declarations/logarithmicweight-nonneg--fc8823a85cc2df229942937f.md) | 34 | `result-track:fc8823a85cc2df229942937f2d8c10071585c9d1fd10adbe0db81dc9c9db39d2` |
| 3 | `theorem` | [source_fourier_smoothing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant4c993e746e10632e22c9b3ac079c5e0c492a4f92e345c6cef70af62f7551a186.lean/declarations/source-fourier-smoothing--c45ae8c460ef1812101751c7.md) | 41 | `result-track:c45ae8c460ef1812101751c70289fda5c9b70d463496ceac5089f42ac50b845a` |
| 4 | `theorem` | [fourier_multiplier_norm_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant4c993e746e10632e22c9b3ac079c5e0c492a4f92e345c6cef70af62f7551a186.lean/declarations/fourier-multiplier-norm-le-one--054cd029289a5de9d6fe7af9.md) | 48 | `result-track:054cd029289a5de9d6fe7af95381372e673ec1b01c6e87c517c2c7afaf3e9339` |
| 5 | `theorem` | [smoothed_fourier_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant4c993e746e10632e22c9b3ac079c5e0c492a4f92e345c6cef70af62f7551a186.lean/declarations/smoothed-fourier-tendsto--2dbd5be09a45a1f48e411852.md) | 52 | `result-track:2dbd5be09a45a1f48e411852e9d4e3c43332e2bfa845e55fa0cbc2688407f16d` |
| 6 | `theorem` | [weighted_error_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant4c993e746e10632e22c9b3ac079c5e0c492a4f92e345c6cef70af62f7551a186.lean/declarations/weighted-error-le--65afb44a82d14cf5ef1abfc7.md) | 62 | `result-track:65afb44a82d14cf5ef1abfc787647e75993c23632b9d4fe1a23798476b2097b8` |
| 7 | `theorem` | [actual_weighted_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant4c993e746e10632e22c9b3ac079c5e0c492a4f92e345c6cef70af62f7551a186.lean/declarations/actual-weighted-integrable--7b7d44538ff49e1923acc1a4.md) | 101 | `result-track:7b7d44538ff49e1923acc1a4e44ed7b224d46089624458713113c78ab0fcfd5e` |
| 8 | `theorem` | [weighted_error_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant4c993e746e10632e22c9b3ac079c5e0c492a4f92e345c6cef70af62f7551a186.lean/declarations/weighted-error-continuous--9f25cb645b5adc0ba7f4a7db.md) | 116 | `result-track:9f25cb645b5adc0ba7f4a7db9a537d28997059a78af617213fe980ce7fbf63b1` |
| 9 | `theorem` | [weighted_error_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant4c993e746e10632e22c9b3ac079c5e0c492a4f92e345c6cef70af62f7551a186.lean/declarations/weighted-error-integrable--8f64564a839d0be87b9174d9.md) | 130 | `result-track:8f64564a839d0be87b9174d9bcebf835f74dfceb0134d170c331f814ffc0c7e6` |
| 10 | `theorem` | [weighted_error_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant4c993e746e10632e22c9b3ac079c5e0c492a4f92e345c6cef70af62f7551a186.lean/declarations/weighted-error-tendsto--3f80eaf9b6b27293408ef2cd.md) | 141 | `result-track:3f80eaf9b6b27293408ef2cd0c69ef4e0ca9d00b593e2c54bce84d144dfa0914` |
| 11 | `theorem` | [source_logarithmic_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant4c993e746e10632e22c9b3ac079c5e0c492a4f92e345c6cef70af62f7551a186.lean/declarations/source-logarithmic-convergence--0efb132d7868c86831beb93f.md) | 158 | `result-track:0efb132d7868c86831beb93fa180ed84ccd9d8ee577b9cc13245146c02833614` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
