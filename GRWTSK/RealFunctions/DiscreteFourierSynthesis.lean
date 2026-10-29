/- Copyright (c) 2026 grwtsk. MIT.
Mathlib's Fourier and circle-character results retain David Loeffler's
upstream authorship and Apache-2.0 license. Other imports retain their notices. -/
import Mathlib.Analysis.Fourier.ZMod
import Mathlib.Algebra.Order.BigOperators.Ring.Finset
import GRWTSK.RealFunctions.BilinearWindowSynthesis

/-!
# Canonical finite synthesis from Mathlib's actual DFT

Pinned Mathlib: db584cd6d46c92f209a44c0f1c829460d327499d.
The normalized coefficients are D^{-1} dft F, NOT a second Fourier transform.
The positive phases are matched to ZMod.stdAddChar with all signs and casts.
Inversion is imported through ZMod.dft.symm_apply_apply and invDFT_apply.
Frequency omission retains the exact complementary sum and its coefficient mass.
No analytic cancellation, Parseval estimate, or small Fourier mass is assumed.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.FiniteSums.DiscreteFourierSynthesis
open scoped BigOperators
open GRWTSK.Analysis.FiniteSums.BilinearWindowSynthesis
variable {D : ℕ} [NeZero D]

/-- Normalization appropriate to Mathlib's unnormalized negative-sign DFT. -/
def coefficient (F : ZMod D → ℂ) (k : ZMod D) : ℂ :=
  (D : ℂ)⁻¹ * ZMod.dft F k

/-- The canonical rational frequency, with its complete residue representative. -/
def frequency (k : ZMod D) : ℝ := (k.val : ℝ) / (D : ℝ)

/-- Sample the input on residues 0,...,D-1; no assertion of global periodicity. -/
def sample (f : ℕ → ℂ) (x : ZMod D) : ℂ := f x.val

/-- Match the actual circle character to the existing local exponential convention. -/
theorem character_eq_phase (k : ZMod D) (n : ℕ) :
    ZMod.stdAddChar (k * (n : ZMod D)) = phase (frequency k) n := by
  calc
    _ = ZMod.stdAddChar ((k.val * n : ℕ) : ZMod D) := by
      rw [Nat.cast_mul, ZMod.natCast_zmod_val]
    _ = Complex.exp (2 * (Real.pi : ℂ) * Complex.I *
        ((k.val * n : ℕ) : ℂ) / (D : ℂ)) := by
      simpa only [Int.cast_natCast] using
        (ZMod.stdAddChar_coe (N := D) ((k.val * n : ℕ) : ℤ))
    _ = phase (frequency k) n := by
      unfold phase frequency
      congr 1
      push_cast
      ring

/-- Exact finite reconstruction, including the zero mode and every residue. -/
theorem synthesis_univ (F : ZMod D → ℂ) (n : ℕ) :
    phaseSynthesis Finset.univ (coefficient F) frequency n = F (n : ZMod D) := by
  have hi := congrFun ((ZMod.dft (N := D) (E := ℂ)).symm_apply_apply F)
    (n : ZMod D)
  rw [ZMod.invDFT_apply] at hi
  calc
    _ = (D : ℂ)⁻¹ * ∑ k : ZMod D,
        ZMod.stdAddChar (k * (n : ZMod D)) * ZMod.dft F k := by
      unfold phaseSynthesis coefficient
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro k _
      rw [character_eq_phase]
      ring
    _ = _ := by simpa only [smul_eq_mul] using hi

/-- Sampling is faithful only below the period; wraparound is not suppressed. -/
theorem sample_natCast (f : ℕ → ℂ) {n : ℕ} (hn : n < D) :
    sample f (n : ZMod D) = f n := by
  simp [sample, ZMod.val_natCast, Nat.mod_eq_of_lt hn]

theorem synthesis_sample (f : ℕ → ℂ) {n : ℕ} (hn : n < D) :
    phaseSynthesis Finset.univ (coefficient (sample (D := D) f)) frequency n = f n := by
  rw [synthesis_univ, sample_natCast f hn]

/-- The zero coefficient is the normalized source mean; it cannot be discarded. -/
theorem coefficient_zero (F : ZMod D → ℂ) :
    coefficient F 0 = (D : ℂ)⁻¹ * ∑ x : ZMod D, F x := by
  rw [coefficient, ZMod.dft_apply_zero]

/-- Selected modes plus their literal complement recover the full synthesis. -/
theorem synthesis_partition (S : Finset (ZMod D)) (F : ZMod D → ℂ) (n : ℕ) :
    phaseSynthesis S (coefficient F) frequency n +
      phaseSynthesis Sᶜ (coefficient F) frequency n = F (n : ZMod D) := by
  rw [← synthesis_univ F n]
  exact Finset.sum_add_sum_compl S _

/-- Exact omitted contribution, before any norm or absolute value. -/
theorem residual_eq_complement (S : Finset (ZMod D)) (F : ZMod D → ℂ) (n : ℕ) :
    F (n : ZMod D) - phaseSynthesis S (coefficient F) frequency n =
      phaseSynthesis Sᶜ (coefficient F) frequency n := by
  have h := synthesis_partition S F n
  linear_combination -h

/-- Absolute mass of the omitted canonical coefficients, not a count of modes. -/
def tailMass (S : Finset (ZMod D)) (F : ZMod D → ℂ) : ℝ :=
  ∑ k ∈ Sᶜ, ‖coefficient F k‖

theorem tailMass_nonneg (S : Finset (ZMod D)) (F : ZMod D → ℂ) :
    0 ≤ tailMass S F := Finset.sum_nonneg (fun _ _ => norm_nonneg _)

theorem norm_partial_le_mass (S : Finset (ZMod D)) (F : ZMod D → ℂ) (n : ℕ) :
    ‖phaseSynthesis S (coefficient F) frequency n‖ ≤
      ∑ k ∈ S, ‖coefficient F k‖ := by
  unfold phaseSynthesis
  exact (norm_sum_le _ _).trans_eq (by simp only [norm_mul, norm_phase, mul_one])

theorem norm_residual_le_tailMass (S : Finset (ZMod D)) (F : ZMod D → ℂ) (n : ℕ) :
    ‖F (n : ZMod D) - phaseSynthesis S (coefficient F) frequency n‖ ≤ tailMass S F := by
  rw [residual_eq_complement]
  exact norm_partial_le_mass Sᶜ F n

/-- A nonzero input forces nonzero total coefficient mass; inversion is not smallness. -/
theorem norm_value_le_totalMass (F : ZMod D → ℂ) (n : ℕ) :
    ‖F (n : ZMod D)‖ ≤ ∑ k : ZMod D, ‖coefficient F k‖ := by
  rw [← synthesis_univ F n]
  exact norm_partial_le_mass Finset.univ F n

/-- Finite complex Cauchy estimate using the pinned Mathlib real finite-sum theorem. -/
theorem norm_pairing_sq_le {ι : Type*} (S : Finset ι) (a b : ι → ℂ) :
    ‖∑ k ∈ S, a k * b k‖ ^ 2 ≤
      (∑ k ∈ S, ‖a k‖ ^ 2) * ∑ k ∈ S, ‖b k‖ ^ 2 := by
  have hnorm : ‖∑ k ∈ S, a k * b k‖ ≤ ∑ k ∈ S, ‖a k‖ * ‖b k‖ := by
    simpa only [norm_mul] using (norm_sum_le S (fun k => a k * b k))
  have hpos : 0 ≤ ∑ k ∈ S, ‖a k‖ * ‖b k‖ :=
    Finset.sum_nonneg (fun _ _ => mul_nonneg (norm_nonneg _) (norm_nonneg _))
  exact ((sq_le_sq₀ (norm_nonneg _) hpos).2 hnorm).trans
    (Finset.sum_mul_sq_le_sq_mul_sq S (fun k => ‖a k‖) (fun k => ‖b k‖))

/-- Cardinality is charged explicitly when L2 information is converted to a uniform tail. -/
theorem tailMass_sq_le (S : Finset (ZMod D)) (F : ZMod D → ℂ) :
    tailMass S F ^ 2 ≤ ((Sᶜ).card : ℝ) * ∑ k ∈ Sᶜ, ‖coefficient F k‖ ^ 2 := by
  have h := Finset.sum_mul_sq_le_sq_mul_sq Sᶜ (fun _ => (1 : ℝ))
    (fun k => ‖coefficient F k‖)
  simpa [tailMass] using h

end GRWTSK.Analysis.FiniteSums.DiscreteFourierSynthesis
