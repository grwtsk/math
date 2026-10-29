/- Copyright (c) 2026 grwtsk. MIT.
Imported Mathlib and GRWTSK results retain their upstream notices and licenses. -/
import GRWTSK.RealFunctions.DiscreteFourierSynthesis

/-!
# Fourier transport of a finite scalar observation

The coefficient row is combined before transformation or absolute values.
The dual frequency response is computed from that actual row, not fitted to the input.
The exact omitted readout can be smaller than a pointwise reconstruction bound.
All complements and coefficient norms remain explicit.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.FiniteSums.DiscreteFourierReadout
open scoped BigOperators
open GRWTSK.Analysis.FiniteSums.BilinearWindowSynthesis
open GRWTSK.Analysis.FiniteSums.DiscreteFourierSynthesis
variable {D : ℕ} [NeZero D]

/-- The actual finite observation applied to one canonical positive phase. -/
def modeReadout (A : Finset ℕ) (w : ℕ → ℂ) (k : ZMod D) : ℂ :=
  ∑ n ∈ A, w n * phase (frequency k) n

/-- Exact finite transposition; no bound on w or F and no positivity premise. -/
theorem pairing_synthesis (A : Finset ℕ) (w : ℕ → ℂ)
    (S : Finset (ZMod D)) (F : ZMod D → ℂ) :
    (∑ n ∈ A, w n * phaseSynthesis S (coefficient F) frequency n) =
      ∑ k ∈ S, coefficient F k * modeReadout A w k := by
  unfold phaseSynthesis modeReadout
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro k _
  apply Finset.sum_congr rfl
  intro n _
  ring

/-- Direct Mathlib inversion applied to the scalar, not to a surrogate input. -/
theorem pairing_eq_modes (A : Finset ℕ) (w : ℕ → ℂ) (F : ZMod D → ℂ) :
    (∑ n ∈ A, w n * F (n : ZMod D)) =
      ∑ k : ZMod D, coefficient F k * modeReadout A w k := by
  have h := pairing_synthesis A w Finset.univ F
  simpa only [synthesis_univ] using h

/-- Observation error equals the omitted spectral pairing, with no triangle loss. -/
theorem pairing_residual_eq (A : Finset ℕ) (w : ℕ → ℂ)
    (S : Finset (ZMod D)) (F : ZMod D → ℂ) :
    (∑ n ∈ A, w n * F (n : ZMod D)) -
      (∑ n ∈ A, w n * phaseSynthesis S (coefficient F) frequency n) =
        ∑ k ∈ Sᶜ, coefficient F k * modeReadout A w k := by
  rw [pairing_eq_modes, pairing_synthesis]
  have h := Finset.sum_add_sum_compl S
    (fun k => coefficient F k * modeReadout A w k)
  linear_combination -h

/-- Frequency-specific response estimates are paid with the actual DFT coefficients. -/
theorem norm_pairing_residual_le (A : Finset ℕ) (w : ℕ → ℂ)
    (S : Finset (ZMod D)) (F : ZMod D → ℂ) (E : ZMod D → ℝ)
    (hE : ∀ k ∈ Sᶜ, ‖modeReadout A w k‖ ≤ E k) :
    ‖(∑ n ∈ A, w n * F (n : ZMod D)) -
      (∑ n ∈ A, w n * phaseSynthesis S (coefficient F) frequency n)‖ ≤
        ∑ k ∈ Sᶜ, ‖coefficient F k‖ * E k := by
  rw [pairing_residual_eq]
  apply (norm_sum_le _ _).trans
  apply Finset.sum_le_sum
  intro k hk
  rw [norm_mul]
  exact mul_le_mul_of_nonneg_left (hE k hk) (norm_nonneg _)

/-- L2 dual comparison retains both spectral energies; neither is assumed small. -/
theorem pairing_residual_sq_le (A : Finset ℕ) (w : ℕ → ℂ)
    (S : Finset (ZMod D)) (F : ZMod D → ℂ) :
    ‖(∑ n ∈ A, w n * F (n : ZMod D)) -
      (∑ n ∈ A, w n * phaseSynthesis S (coefficient F) frequency n)‖ ^ 2 ≤
        (∑ k ∈ Sᶜ, ‖coefficient F k‖ ^ 2) *
          ∑ k ∈ Sᶜ, ‖modeReadout A w k‖ ^ 2 := by
  rw [pairing_residual_eq]
  exact norm_pairing_sq_le Sᶜ (coefficient F) (modeReadout A w)

end GRWTSK.Analysis.FiniteSums.DiscreteFourierReadout
