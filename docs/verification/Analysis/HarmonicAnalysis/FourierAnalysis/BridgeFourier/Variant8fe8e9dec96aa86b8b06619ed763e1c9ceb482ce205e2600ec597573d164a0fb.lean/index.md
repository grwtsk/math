# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.BridgeFourier.Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2d61f9436742e686f967b23ce7686daf323e416",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2d61f9436742e686f967b23ce7686daf323e416`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SUCAS.CorrelationRegularity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransformDeriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceFourier_eq_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean/declarations/sourcefourier-eq-fourier--aa3e62b9f971ea1f8fcbcb5c.md) | 35 | `result-track:aa3e62b9f971ea1f8fcbcb5c324c3f3efd0d2caf0ece55c244f32afbdc5a1b13` |
| 2 | `theorem` | [deriv_complexification](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean/declarations/deriv-complexification--d79a6dafe38f9343b860a301.md) | 49 | `result-track:d79a6dafe38f9343b860a301dce173eed20680010307315e421428e2d256d294` |
| 3 | `theorem` | [sourceFourier_norm_le](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean/declarations/sourcefourier-norm-le--ebf427557aba62bf1b43e73e.md) | 55 | `result-track:ebf427557aba62bf1b43e73ea160b607e8af0558f07d6e80aaf76083223a1725` |
| 4 | `theorem` | [sourceFourier_deriv](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean/declarations/sourcefourier-deriv--0b06cb0bac988d97b0216a55.md) | 65 | `result-track:0b06cb0bac988d97b0216a559efc6b74c0b7b48d3d5448c4267d1dd531a32cc2` |
| 5 | `theorem` | [sourceFourier_frequency_bound](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean/declarations/sourcefourier-frequency-bound--526e3fb2cfbca3144245a236.md) | 84 | `result-track:526e3fb2cfbca3144245a2360adf81d7a81578883e2ef10d14e51f372f64f018` |
| 6 | `theorem` | [sourceFourier_continuous](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean/declarations/sourcefourier-continuous--3840c2ef45170bd77b9d6b5a.md) | 92 | `result-track:3840c2ef45170bd77b9d6b5a8002febde8d65a30b0960475a7545cb72d5656f3` |
| 7 | `theorem` | [log_fourier_majorant](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean/declarations/log-fourier-majorant--4bdb22ecdd0a84a242e481a0.md) | 104 | `result-track:4bdb22ecdd0a84a242e481a0874289703066c412c2e3a4dc10e6baac2a139647` |
| 8 | `theorem` | [logarithmic_fourier_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean/declarations/logarithmic-fourier-integrable--a4d20f1fef4c536b7bb5585b.md) | 141 | `result-track:a4d20f1fef4c536b7bb5585b1f2df9dd2aa7d4ba6f8d1fb4650c0e4051bbc88c` |
| 9 | `theorem` | [fourier_normSq_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean/declarations/fourier-normsq-integrable--4911d45ac0675db73e2fc249.md) | 166 | `result-track:4911d45ac0675db73e2fc249e873471ab0ced084a8025a2245ce57a9ef194b78` |
| 10 | `theorem` | [actual_derivative_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean/declarations/actual-derivative-integrable--3106e1641846f036abff7a73.md) | 188 | `result-track:3106e1641846f036abff7a73cf2771b0e5dfbc4cf5a0b74e1da8ca0282dcd362` |
| 11 | `theorem` | [actual_fourier_frequency_bound](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean/declarations/actual-fourier-frequency-bound--2ae747cba3a85b476767a8f8.md) | 195 | `result-track:2ae747cba3a85b476767a8f81c4cb4f2097c7e20ca1427c5b1a05682a2a62604` |
| 12 | `theorem` | [actual_logarithmic_fourier_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean/declarations/actual-logarithmic-fourier-integrable--0353f6fa4265de0e076cbd79.md) | 204 | `result-track:0353f6fa4265de0e076cbd7947d74a34f5626658abf5cca65937e3d86d058f57` |
| 13 | `theorem` | [actual_fourier_square_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean/declarations/actual-fourier-square-integrable--f953ed4a9d9308595ce12e46.md) | 213 | `result-track:f953ed4a9d9308595ce12e467b415cbf741ce6ea6ccb02d3bb66b377a32bf614` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
