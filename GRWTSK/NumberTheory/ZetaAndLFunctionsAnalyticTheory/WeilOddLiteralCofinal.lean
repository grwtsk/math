/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddLiteralWindow
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CofinalWindowLowerBound

/-!
# The same literal odd form across cofinal windows

A whole-line input supported on the smaller window has zero correlation
at every shift at or beyond its width. The overlap at equality is a
null singleton. Enlarging the prime inventory adds only these zero
terms. The gamma and both pole moments already use the same whole-line
input. The physical shift is an explicit squared-norm term.

The general cofinal limit can thus be applied to the actual literal
odd form, assuming every dyadic stage bound on its corresponding
domain. This theorem leaves stage coverage and the comparison with
the completed zeta source open. Independent analytical review is pending.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddLiteralCofinal

open LowSchur OddRootProjection OddSineForm OddHighComplement OddLiteralWindow OddWrapEnergy

theorem integral_mul_translate_eq_zero_of_cutoff {f : ℝ → ℝ} {T r : ℝ}
    (hf : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) (hr : 2*T ≤ r) :
    (∫ t : ℝ, f t * f (t+r)) = 0 := by
  have hshift := (measurePreserving_add_right volume r).quasiMeasurePreserving.ae hf
  have hzero : (fun t : ℝ => f t * f (t+r)) =ᵐ[volume] 0 := by
    filter_upwards [hf, hshift, volume.ae_ne (-T)] with t ht htr hne
    change t+r ∉ Icc (-T) T → f (t+r) = 0 at htr
    change f t * f (t+r) = 0
    by_cases hin : t ∈ Icc (-T) T
    · have hout : t+r ∉ Icc (-T) T := by
        intro hh
        exact hne (le_antisymm (by linarith [hh.2]) hin.1)
      rw [htr hout, mul_zero]
    · rw [ht hin, zero_mul]
  simpa only [Pi.zero_apply, integral_zero] using integral_congr_ae hzero

private theorem mem_active_iff {T : ℝ} {q : ℕ} :
    q ∈ activePrimePowers T ↔ 2 ≤ q ∧ (q : ℝ) < Real.exp (2*T) := by
  simp only [activePrimePowers, Finset.mem_filter, Finset.mem_range, Nat.lt_ceil]
  tauto

/-- The literal real prime term is independent of a covering window. -/
theorem primeEnergy_eq_of_le {f : ℝ → ℝ} {T U : ℝ}
    (hf : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) (hTU : T ≤ U) :
    primeEnergy T f = primeEnergy U f := by
  unfold primeEnergy
  congr 1
  refine Finset.sum_subset (fun q hq => ?_) (fun q hqU hqT => ?_)
  · obtain ⟨h₂, hq⟩ := mem_active_iff.mp hq
    exact mem_active_iff.mpr ⟨h₂, hq.trans_le (Real.exp_le_exp.mpr (by linarith))⟩
  · obtain ⟨h₂, _⟩ := mem_active_iff.mp hqU
    have hcut : Real.exp (2*T) ≤ (q : ℝ) :=
      le_of_not_gt (fun h => hqT (mem_active_iff.mpr ⟨h₂, h⟩))
    have hr : 2*T ≤ Real.log (q : ℝ) := by
      simpa only [Real.log_exp] using Real.log_le_log (Real.exp_pos _) hcut
    rw [integral_mul_translate_eq_zero_of_cutoff hf hr, mul_zero]

theorem shiftedOddWeilEnergy_eq_of_le {f : ℝ → ℝ} {T U : ℝ} (β : ℝ)
    (hf : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) (hTU : T ≤ U) :
    shiftedOddWeilEnergy T β f = shiftedOddWeilEnergy U β f := by
  simp only [shiftedOddWeilEnergy, shiftedOddCoreEnergy, primeEnergy_eq_of_le hf hTU]

/-- The shift acts only on the physical input. -/
theorem shiftedOddWeilEnergy_eq_unshifted_sub_mass (T β : ℝ) (f : ℝ → ℝ) :
    shiftedOddWeilEnergy T β f =
      shiftedOddWeilEnergy T 0 f - β * (∫ t : ℝ, ‖f t‖ ^ 2) := by
  unfold shiftedOddWeilEnergy shiftedOddCoreEnergy
  ring

/-- The concrete dyadic stage bound in the literal odd domain. -/
def StageLower (j : ℕ) : Prop :=
  ∀ ⦃f : ℝ → ℝ⦄, MemLp f 2 volume → Measurable f → Function.Odd f →
    (∀ᵐ t : ℝ, t ∉ Icc (-((j : ℝ)+1)) ((j : ℝ)+1) → f t = 0) →
    IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0) →
    0 ≤ shiftedOddWeilEnergy ((j : ℝ)+1) (-((1/2 : ℝ)^j)) f

/-- Every literal stage bound implies nonnegativity for each supported odd
test in the same literal form. -/
theorem nonnegative_of_stageLower (hstage : ∀ j : ℕ, StageLower j)
    {T : ℝ} {f : ℝ → ℝ} (hf : MemLp f 2 volume) (hm : Measurable f) (ho : Function.Odd f)
    (hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (he : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    0 ≤ shiftedOddWeilEnergy T 0 f := by
  apply GRWTSK.NumberTheory.Weil.nonnegative_of_cofinal_lower_bounds T
    (shiftedOddWeilEnergy T 0 f) (∫ t : ℝ, ‖f t‖ ^ 2)
  intro j hj
  have hs' : ∀ᵐ t : ℝ, t ∉ Icc (-((j : ℝ)+1)) ((j : ℝ)+1) → f t = 0 := by
    filter_upwards [hs] with t ht hnot
    exact ht (fun hin => hnot ⟨(neg_le_neg hj).trans hin.1, hin.2.trans hj⟩)
  have hl := hstage j hf hm ho hs' he
  rw [shiftedOddWeilEnergy_eq_unshifted_sub_mass, ← shiftedOddWeilEnergy_eq_of_le 0 hs hj] at hl
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.OddLiteralCofinal
