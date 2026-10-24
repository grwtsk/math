# Complete source: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiveModeActualDictionary.Variant9dd1968cc073e8d6476b34d212edf6291745ef4b868d7a93266632c9217d2b2a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `445c9f1dd6f68e5cb6d97fd281b5e31afa15e9b1` · SHA-256 `9dd1968cc073e8d6476b34d212edf6291745ef4b868d7a93266632c9217d2b2a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import scratch.common_mean_20261004.FiveModeGammaAdmission
import scratch.common_mean_20261004.FiveModeTailTransport

/-!
The gamma admission premise is discharged for the actual five-mode source.
Every eventual estimate below still requires an independent arithmetic witness.
Originating direction: grwtsk contributors. Proof assistance: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace CommonMeanScratch
open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization

theorem actual_source_matrix_dictionary (A : ℝ) (hA : 1 ≤ A) :
    dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A)) =
      sourceQuadraticValue explicitSecondDerivative A := by
  rw [matrix_dot_eq_contraction]
  exact geometric_matrix_dictionary A hA (gamma_entry_integrability A (by linarith))

/-- Exact S_A=alpha^T H alpha, with the actual normalized ordinary-square sum. -/
theorem actual_spectral_matrix_dictionary (A : ℝ) (hA : 1 ≤ A) :
    spectralValue A = (dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A)) : ℝ) :=
  spectralValue_eq_matrix_dot A hA (gamma_entry_integrability A (by linarith))

/-- Original angular Parseval factor, using the independently proved source mass. -/
theorem actual_angular_parseval (A : ℝ) (hA : 1 ≤ A) :
    (∫ ω : ℝ, Complex.normSq
      (sourceFourier (normalizedTest explicitSecondDerivative A) ω)) / (2*Real.pi) = 1 := by
  rw [SourcePlancherel.actual_source_fourier_mass A hA]
  exact div_self (by positivity)

/-- Conditional consumer only: the universal arithmetic inequality remains an
explicit hypothesis. No finite certificate supplies this hypothesis. -/
theorem actual_estimate_of_matrix_tail (D R : ℝ) (hR : 1 ≤ R)
    (hbound : ∀ A : ℝ, R ≤ A →
      -D ≤ dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A))) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_matrix_tail D R hR
    (fun A hRA => gamma_entry_integrability A (by linarith)) hbound

theorem actual_residual_upper_of_matrix_lower (A D a0 : ℝ) (hA : 1 ≤ A)
    (hbound : -D ≤ dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A)))
    (hgamma : archimedeanValue explicitSecondDerivative A ≤ a0 + 390/A^2)
    (ha0 : a0 ≤ 0) :
    EstimateMertensResidual.mertensResidual A ≤ 195 + D/2 :=
  residual_upper_of_matrix_lower A D a0 hA
    (gamma_entry_integrability A (by linarith)) hbound hgamma ha0

end CommonMeanScratch
```
