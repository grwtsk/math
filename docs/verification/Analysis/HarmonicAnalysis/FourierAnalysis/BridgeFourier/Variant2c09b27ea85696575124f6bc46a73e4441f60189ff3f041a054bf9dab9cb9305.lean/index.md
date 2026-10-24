# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.BridgeFourier.Variant2c09b27ea85696575124f6bc46a73e4441f60189ff3f041a054bf9dab9cb9305

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "486910df31274bad97a4645ee92da7de89891a41",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant2c09b27ea85696575124f6bc46a73e4441f60189ff3f041a054bf9dab9cb9305.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant2c09b27ea85696575124f6bc46a73e4441f60189ff3f041a054bf9dab9cb9305.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant2c09b27ea85696575124f6bc46a73e4441f60189ff3f041a054bf9dab9cb9305.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `486910df31274bad97a4645ee92da7de89891a41`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant2c09b27ea85696575124f6bc46a73e4441f60189ff3f041a054bf9dab9cb9305.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant2c09b27ea85696575124f6bc46a73e4441f60189ff3f041a054bf9dab9cb9305.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SUCAS.CorrelationRegularity` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransformDeriv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceFourier_eq_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant2c09b27ea85696575124f6bc46a73e4441f60189ff3f041a054bf9dab9cb9305.lean/declarations/sourcefourier-eq-fourier--83ee3d005a36a860629ac20d.md) | 27 | `result-track:83ee3d005a36a860629ac20de1f9ce64e4b3cce3382c88ce571f4acacbea4baf` |
| 2 | `theorem` | [deriv_complexification](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant2c09b27ea85696575124f6bc46a73e4441f60189ff3f041a054bf9dab9cb9305.lean/declarations/deriv-complexification--68e7b0b56b188568552c67cd.md) | 41 | `result-track:68e7b0b56b188568552c67cd185bf919f71f334a25e366c19b7d85c4cee20fc5` |
| 3 | `theorem` | [sourceFourier_norm_le](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant2c09b27ea85696575124f6bc46a73e4441f60189ff3f041a054bf9dab9cb9305.lean/declarations/sourcefourier-norm-le--4e4ba155cb39060deda3e657.md) | 47 | `result-track:4e4ba155cb39060deda3e657f73d7e6db1d16b4401cefec050b6138416435336` |
| 4 | `theorem` | [sourceFourier_deriv](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant2c09b27ea85696575124f6bc46a73e4441f60189ff3f041a054bf9dab9cb9305.lean/declarations/sourcefourier-deriv--404888d61b6dff17e95bb3e8.md) | 57 | `result-track:404888d61b6dff17e95bb3e8fe3fd6370ec7a5eee9ed97c2463a563b5852c9b0` |
| 5 | `theorem` | [sourceFourier_frequency_bound](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant2c09b27ea85696575124f6bc46a73e4441f60189ff3f041a054bf9dab9cb9305.lean/declarations/sourcefourier-frequency-bound--1f501c6d9f5fcd0dfae67218.md) | 76 | `result-track:1f501c6d9f5fcd0dfae67218fb4cb80e471c9b87979dbec733926bbcc8f40d56` |
| 6 | `theorem` | [sourceFourier_continuous](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant2c09b27ea85696575124f6bc46a73e4441f60189ff3f041a054bf9dab9cb9305.lean/declarations/sourcefourier-continuous--310d45f8a1e666dc96d1231b.md) | 84 | `result-track:310d45f8a1e666dc96d1231b45c1ddf045d5dc54e04aa4a190e291443c252ad3` |
| 7 | `theorem` | [log_fourier_majorant](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant2c09b27ea85696575124f6bc46a73e4441f60189ff3f041a054bf9dab9cb9305.lean/declarations/log-fourier-majorant--011f27b6f5a6117381c4f5a8.md) | 96 | `result-track:011f27b6f5a6117381c4f5a8cbcb803302dce2406ee543ac1c6e1f92fb62cb79` |
| 8 | `theorem` | [logarithmic_fourier_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant2c09b27ea85696575124f6bc46a73e4441f60189ff3f041a054bf9dab9cb9305.lean/declarations/logarithmic-fourier-integrable--50d00bbc62ab1d38961e2374.md) | 133 | `result-track:50d00bbc62ab1d38961e23746fe241a5d6f5cf90e5bab6c1407a93050fb09810` |
| 9 | `theorem` | [fourier_normSq_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant2c09b27ea85696575124f6bc46a73e4441f60189ff3f041a054bf9dab9cb9305.lean/declarations/fourier-normsq-integrable--341a4b6a3d424c7aac68a6d8.md) | 158 | `result-track:341a4b6a3d424c7aac68a6d8cf5852d61db1823efdb3ef10ccc3c94913231b26` |
| 10 | `theorem` | [actual_derivative_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant2c09b27ea85696575124f6bc46a73e4441f60189ff3f041a054bf9dab9cb9305.lean/declarations/actual-derivative-integrable--c0981dfef7844e15bad6da35.md) | 180 | `result-track:c0981dfef7844e15bad6da355a36dabd9ee87759a6f0142ef1250eabc08815e2` |
| 11 | `theorem` | [actual_fourier_frequency_bound](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant2c09b27ea85696575124f6bc46a73e4441f60189ff3f041a054bf9dab9cb9305.lean/declarations/actual-fourier-frequency-bound--297c3aac7ab9c1689d3214ac.md) | 187 | `result-track:297c3aac7ab9c1689d3214acb4c7fbf1c518452c8734a86349ae8a95cfc029d4` |
| 12 | `theorem` | [actual_logarithmic_fourier_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant2c09b27ea85696575124f6bc46a73e4441f60189ff3f041a054bf9dab9cb9305.lean/declarations/actual-logarithmic-fourier-integrable--578704e1adad6f3767222fb1.md) | 196 | `result-track:578704e1adad6f3767222fb1e06076e1c27719a1d87c0126b26fe495102424c2` |
| 13 | `theorem` | [actual_fourier_square_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant2c09b27ea85696575124f6bc46a73e4441f60189ff3f041a054bf9dab9cb9305.lean/declarations/actual-fourier-square-integrable--d331f974c85ee6fd5fe8bff8.md) | 205 | `result-track:d331f974c85ee6fd5fe8bff84e2a9ec1ece9741950f35a4d3ff51b7a19ce857c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
