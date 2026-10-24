# Verification target: GRWTSK.Analysis.Fourier.PolynomialBumpEstimates

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1ebc2f9da5a1eb31e534eb2776c9ce3e096fc93",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/PolynomialBumpEstimates.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PolynomialBumpEstimates.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PolynomialBumpEstimates.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1ebc2f9da5a1eb31e534eb2776c9ce3e096fc93`.

Source path: `GRWTSK/Analysis/Fourier/PolynomialBumpEstimates.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/PolynomialBumpEstimates.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Convolution.PolynomialBumpRegularity`](../../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Fourier.FourierTransformDeriv` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceFourier_eq_fourier](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PolynomialBumpEstimates.lean/declarations/sourcefourier-eq-fourier--36cef2188e9121fb8121a7ca.md) | 30 | `result-track:36cef2188e9121fb8121a7ca9f0fa0f25743f64e780d65bdb4f6750decd05c16` |
| 2 | `theorem` | [deriv_complexification](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PolynomialBumpEstimates.lean/declarations/deriv-complexification--ba43e160aaf55fb570321570.md) | 44 | `result-track:ba43e160aaf55fb570321570cdb65cfed425337b0a936ba0ad8245ce5a4ee4dd` |
| 3 | `theorem` | [sourceFourier_norm_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PolynomialBumpEstimates.lean/declarations/sourcefourier-norm-le--85b6f2707a70e244431ab8ee.md) | 50 | `result-track:85b6f2707a70e244431ab8ee0ec7a8733e11dfc6396ca1c3464d94a05055ad0b` |
| 4 | `theorem` | [sourceFourier_deriv](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PolynomialBumpEstimates.lean/declarations/sourcefourier-deriv--bd622607a819d35234aa6d83.md) | 60 | `result-track:bd622607a819d35234aa6d83321a5b705d40d7a5e5e649384f00a32edc621336` |
| 5 | `theorem` | [sourceFourier_frequency_bound](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PolynomialBumpEstimates.lean/declarations/sourcefourier-frequency-bound--55afd4d350831ed8c91effcc.md) | 79 | `result-track:55afd4d350831ed8c91effccc5f1b3a212db9f70d5b48a67de45054b8c74f8be` |
| 6 | `theorem` | [sourceFourier_continuous](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PolynomialBumpEstimates.lean/declarations/sourcefourier-continuous--f071c9af59692aafdd5c8422.md) | 87 | `result-track:f071c9af59692aafdd5c8422fe71d9bc79b4d695a3042d2ca8c775512635228c` |
| 7 | `theorem` | [log_fourier_majorant](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PolynomialBumpEstimates.lean/declarations/log-fourier-majorant--4d22e430def0501307aa10e4.md) | 99 | `result-track:4d22e430def0501307aa10e43f179e9fc20451c531d392d224e4577b06d72708` |
| 8 | `theorem` | [logarithmic_fourier_integrable](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PolynomialBumpEstimates.lean/declarations/logarithmic-fourier-integrable--6156e682b81e01c1be135cef.md) | 136 | `result-track:6156e682b81e01c1be135cef4da229c08249204d83b0d193f895d7e9d4e9f30c` |
| 9 | `theorem` | [fourier_normSq_integrable](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PolynomialBumpEstimates.lean/declarations/fourier-normsq-integrable--c7b6d65d0b32105254de930b.md) | 161 | `result-track:c7b6d65d0b32105254de930bdd629fea38786626e91b37b6b1cb97889472fc87` |
| 10 | `theorem` | [actual_derivative_integrable](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PolynomialBumpEstimates.lean/declarations/actual-derivative-integrable--72f42766663fa9acf4f1797f.md) | 183 | `result-track:72f42766663fa9acf4f1797faba8ea338179942c49fa4d44d392302fa22d68ec` |
| 11 | `theorem` | [actual_fourier_frequency_bound](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PolynomialBumpEstimates.lean/declarations/actual-fourier-frequency-bound--58d7eae19f1707664ef44c94.md) | 190 | `result-track:58d7eae19f1707664ef44c9412ed25ccc7ceea4c5974255e23a2e252ed7acdda` |
| 12 | `theorem` | [actual_logarithmic_fourier_integrable](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PolynomialBumpEstimates.lean/declarations/actual-logarithmic-fourier-integrable--ed00bd57eeeda2afcbf19e04.md) | 199 | `result-track:ed00bd57eeeda2afcbf19e049842d08f88af5ba68d129b829b1cc45f7fdb532c` |
| 13 | `theorem` | [actual_fourier_square_integrable](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PolynomialBumpEstimates.lean/declarations/actual-fourier-square-integrable--bed0582df3bf10fdcc4b0684.md) | 208 | `result-track:bed0582df3bf10fdcc4b0684e09752e3d96890c04c12f517359d77a12e133b67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
