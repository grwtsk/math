# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourcePlusProfileBudgetObstruction.Variant7cf7d72bf1333df4950a543d31073fd2a80c517a6e41e79be3ec2ab9e82f4f4b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `daaca9066dc8ece389401b79c30e4f0cbec35ae5` · SHA-256 `7cf7d72bf1333df4950a543d31073fd2a80c517a6e41e79be3ec2ab9e82f4f4b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceMangoldtNorm

/-!
The actual PLUS Mangoldt transport kernel has an unbounded absolute envelope.
Its signed full derivative mass is separately a fixed boundary term. These
facts obstruct a deduction based only on the actual error's uniform L-infinity
budget; they do not assert divergence of the actual signed arithmetic pairing.
Direction: grwtsk contributors. Local construction: OpenAI Codex assistance.
Proof structure adapted from the exact current MINUS source leaf, retaining
the unchanged explicitSecondDerivative correlation and all real scales.
-/

set_option autoImplicit false
noncomputable section
namespace RH16PlusProfileObstruction

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceMangoldtNorm
open FormalResearch.RiemannHypothesis.SourceCorrelationEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- Actual plus derivative factor in the Mangoldt transport readout. -/
def plusCorrelationKernel (A t : ℝ) : ℝ :=
  deriv (sourceCorrelation explicitSecondDerivative A) t +
    sourceCorrelation explicitSecondDerivative A t / 2

/-- A positive unsigned sub-envelope in the transformed physical tail. -/
def plusProfileEnvelope (A : ℝ) : ℝ :=
  ∫ t in A / 16..A / 8, Real.exp (t / 2) * |plusCorrelationKernel A t|

/-- The actual unit normalization prevents uniform smallness of the plus kernel. -/
theorem plus_kernel_ge_sixteenth (A t : ℝ) (hA : 40 ≤ A)
    (ht0 : 0 ≤ t) (ht : t ≤ A / 8) :
    (1 / 16 : ℝ) ≤ plusCorrelationKernel A t := by
  have hp : 0 < A := by linarith
  have hc := sourceCorrelation_sub_one_abs_le (by linarith : 1 ≤ A) t
  rw [abs_of_nonneg ht0] at hc
  have hb : 5 * t / A ≤ (5 / 8 : ℝ) :=
    (div_le_iff₀ hp).mpr (by linarith)
  have hl : (3 / 8 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A t := by
    linarith [(abs_le.mp hc).1]
  have hd := sourceCorrelation_deriv_abs_le_five_div (by linarith : 1 ≤ A) t
  have hdb : 5 / A ≤ (1 / 8 : ℝ) := (div_le_iff₀ hp).mpr (by linarith)
  unfold plusCorrelationKernel
  linarith [(abs_le.mp hd).1]

/-- Exact exponentially growing envelope, without an arithmetic sign inference. -/
theorem plus_profile_envelope_lower (A : ℝ) (hA : 40 ≤ A) :
    (1 / 8 : ℝ) * (Real.exp (A / 16) - Real.exp (A / 32)) ≤ plusProfileEnvelope A := by
  have hp : 0 < A := by linarith
  have horder : A / 16 ≤ A / 8 := by linarith
  have hc := (sourceCorrelation_contDiff A hp).continuous
  have hd := (sourceCorrelation_contDiff A hp).continuous_deriv_one
  have hkernel : Continuous (plusCorrelationKernel A) := hd.add (hc.div_const 2)
  have hf : Continuous (fun t : ℝ => Real.exp (t / 2) / 16) := by fun_prop
  have hg : Continuous (fun t : ℝ => Real.exp (t / 2) * |plusCorrelationKernel A t|) := by
    exact (by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).mul hkernel.abs
  have hfi : IntervalIntegrable (fun t : ℝ => Real.exp (t / 2) / 16)
      volume (A / 16) (A / 8) := hf.intervalIntegrable _ _
  have hgi : IntervalIntegrable
      (fun t : ℝ => Real.exp (t / 2) * |plusCorrelationKernel A t|)
      volume (A / 16) (A / 8) := hg.intervalIntegrable _ _
  have hmono := intervalIntegral.integral_mono_on horder hfi
    hgi (fun t ht => by
      have hm := plus_kernel_ge_sixteenth A t hA (by linarith [ht.1]) ht.2
      have ha : (1 / 16 : ℝ) ≤ |plusCorrelationKernel A t| := by
        linarith [(le_abs_self (plusCorrelationKernel A t))]
      have he := mul_le_mul_of_nonneg_left ha (Real.exp_pos (t / 2)).le
      simpa only [div_eq_mul_inv, one_mul] using he)
  have hder (t : ℝ) : HasDerivAt (fun s : ℝ => Real.exp (s / 2) / 8)
      (Real.exp (t / 2) / 16) t := by
    apply ((((hasDerivAt_id t).div_const 2).exp).div_const 8).congr_deriv
    simp only [id_eq]
    ring
  have hint := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => hder t) hfi
  unfold plusProfileEnvelope
  calc
    _ = ∫ t in A / 16..A / 8, Real.exp (t / 2) / 16 := by
      rw [hint]
      rw [show A / 8 / 2 = A / 16 by ring,
        show A / 16 / 2 = A / 32 by ring]
      ring
    _ ≤ _ := hmono

/-- A simple unbounded linear readout also follows from the exact exponential margin. -/
theorem plus_profile_envelope_ge_linear (A : ℝ) (hA : 40 ≤ A) :
    A / 256 ≤ plusProfileEnvelope A := by
  have hx : 0 ≤ A / 32 := by linarith
  have hz : 1 ≤ Real.exp (A / 32) := Real.one_le_exp hx
  have he := Real.add_one_le_exp (A / 32)
  have hs : Real.exp (A / 16) = (Real.exp (A / 32)) ^ 2 := by
    rw [show A / 16 = A / 32 + A / 32 by ring, Real.exp_add]
    ring
  have hprod := mul_nonneg (by linarith : 0 ≤ Real.exp (A / 32) - 1)
    (by linarith : 0 ≤ Real.exp (A / 32) - 1)
  have hlow := plus_profile_envelope_lower A hA
  rw [hs] at hlow
  nlinarith

/-- The probe interval lies strictly after seven for every sufficiently large real scale. -/
theorem probe_interval_inside_complete_tail (A t : ℝ) (hA : 96 ≤ A)
    (ht0 : A / 16 ≤ t) (ht1 : t ≤ A / 8) :
    Real.log (7 : ℝ) ≤ t ∧ t ≤ 2 * A := by
  have hl := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)
  constructor <;> linarith

/-- No scale-independent constant budgets even this unsigned sub-envelope. -/
theorem plus_profile_envelope_not_eventually_bounded :
    ¬ ∃ B R : ℝ, ∀ A : ℝ, R ≤ A → plusProfileEnvelope A ≤ B := by
  rintro ⟨B, R, h⟩
  let A := max 40 (max R (256 * (B + 1)))
  have hA : (40 : ℝ) ≤ A := le_max_left _ _
  have hR : R ≤ A := (le_max_left R _).trans (le_max_right _ _)
  have hB : 256 * (B + 1) ≤ A := (le_max_right R _).trans (le_max_right _ _)
  have hlo := plus_profile_envelope_ge_linear A hA
  have hup := h A hR
  linarith

end RH16PlusProfileObstruction
```
