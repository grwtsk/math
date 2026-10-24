# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.A9057b9b59cd6f4f4ad3SourceCompleteCorrectedAbelPairing.Variantb1962122e69e20a1e26815f3d740199c2ff71310a0ba1585cba6eab1928c86c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e64d3b1a4438ca112a8b573b7796640487bd4019` · SHA-256 `b1962122e69e20a1e26815f3d740199c2ff71310a0ba1585cba6eab1928c86c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceCorrectedOmegaPeanoTaylor
import SourceStrictComplementaryAbel

/-!
One actual complete signed source after Peano compensation and closed Abel.
The arithmetic cumulative source is the true strict complement minus the full
plain baseline, including the negative unit. Genuine integrability and all
four short jets are retained. The analytic row bound and uniform upper
arithmetic estimate are explicit, separate premises until proved.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceCompleteCorrectedAbelPairing

open MeasureTheory Set
open scoped BigOperators
open SourcePairing SourceCorrectedOmegaPeanoTaylor SourceStrictComplementaryAbel
open SourceCompleteOmegaReconstruction SourceFullDivisorLogInventory
open ContinuousResearch.ActualIntegerInventory
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateMertensAbel EstimateMertensResidual

noncomputable section

/-- Independent complete short jets plus actual strict-complement cumulative integral. -/
def completeCorrectedAbelPairing (A : ℝ) : ℝ :=
  (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d / Real.sqrt (d : ℝ) *
    correctedFourKappaJet A (Real.log (d : ℝ))) +
      ∫ t in Ioi (0 : ℝ), complementaryCriticalKernel A t

/-- All-real exact identification keeps the genuine full L-B integral. -/
theorem correctedCompleteOmega_eq_complete_pairing (A : ℝ) (hA : 1 ≤ A) :
    correctedCompleteOmega A = completeCorrectedAbelPairing A := by
  unfold correctedCompleteOmega completeCorrectedAbelPairing
  rw [show ∀ s L B : ℝ, s + L - B = s + (L - B) by intros; ring]
  rw [literal_L_sub_plain_eq_critical_pairing hA]

/-- The complete original literal Omega retains the actual signed Peano remainder. -/
theorem completeOmega_eq_complete_pairing_add_actualPeanoError (A : ℝ) (hA : 1 ≤ A) :
    completeOmega A = completeCorrectedAbelPairing A + actualPeanoCubicError A := by
  rw [completeOmega_eq_corrected_add_actualPeanoError A hA,
    correctedCompleteOmega_eq_complete_pairing A hA]

/-- The genuine original integer source keeps both independent signed error inventories. -/
theorem integerJ_eq_complete_pairing_add_actual_errors (A : ℝ) (hA : 91 ≤ A) :
    integerJ A = completeCorrectedAbelPairing A + actualPeanoCubicError A +
      completeOmegaError A := by
  rw [integerJ_eq_completeOmega_add_error A hA,
    completeOmega_eq_complete_pairing_add_actualPeanoError A (by linarith)]

/-- The source residual retains the original independent discrete baseline. -/
theorem mertensResidual_eq_complete_pairing_add_plain_add_actual_errors
    (A : ℝ) (hA : 91 ≤ A) :
    mertensResidual A = completeCorrectedAbelPairing A + plainInventory A +
      actualPeanoCubicError A + completeOmegaError A := by
  rw [mertensResidual_eq_completeOmega_add_baseline_add_error A hA,
    completeOmega_eq_complete_pairing_add_actualPeanoError A (by linarith)]
  ring

/-- The complete integral expression has the proved conditional combined error budget. -/
theorem integerJ_sub_complete_pairing_abs_le_of_actual_row_bound
    (A : ℝ) (hA : 91 ≤ A)
    (hrow : ∀ d ∈ Finset.Icc 1 (vaughanCutoff A),
      |actualPeanoCubicRemainder A (Real.log (d : ℝ))| ≤ 320 * 67 / A ^ 4) :
    |integerJ A - completeCorrectedAbelPairing A| ≤ 960 * 67 / A ^ 3 := by
  rw [← correctedCompleteOmega_eq_complete_pairing A (by linarith)]
  exact integerJ_sub_corrected_abs_le_of_actual_row_bound A hA hrow

/-- Conditional complete actual-source calibration at the new real-scale radius. -/
theorem residual_sub_complete_pairing_sub_zeta_abs_lt_of_actual_row_bound
    (A : ℝ) (hA : 117 ≤ A)
    (hrow : ∀ d ∈ Finset.Icc 1 (vaughanCutoff A),
      |actualPeanoCubicRemainder A (Real.log (d : ℝ))| ≤ 320 * 67 / A ^ 4) :
    |mertensResidual A - completeCorrectedAbelPairing A -
      (riemannZeta (1 / 2)).re| < 3 / 50 := by
  rw [← correctedCompleteOmega_eq_complete_pairing A (by linarith)]
  exact residual_sub_corrected_sub_zeta_abs_lt_of_actual_row_bound A hA hrow

/-- Original all-real estimate consumer; neither required witness is hidden. -/
theorem estimate_of_complete_corrected_Abel_tail_at_radius {K R : ℝ} (hR : 117 ≤ R)
    (hrow : ∀ A : ℝ, R ≤ A → ∀ d ∈ Finset.Icc 1 (vaughanCutoff A),
      |actualPeanoCubicRemainder A (Real.log (d : ℝ))| ≤ 320 * 67 / A ^ 4)
    (hpair : ∀ A : ℝ, R ≤ A → completeCorrectedAbelPairing A ≤ K) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_corrected_completeOmega_tail_at_radius (K := K) hR hrow
  intro A hRA
  rw [correctedCompleteOmega_eq_complete_pairing A (by linarith)]
  exact hpair A hRA

end
end FormalResearch.RiemannHypothesis.SourceCompleteCorrectedAbelPairing
```
