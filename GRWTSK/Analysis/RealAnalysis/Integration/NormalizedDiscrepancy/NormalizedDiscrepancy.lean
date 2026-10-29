import Mathlib

/-!
Conditional discrepancy transport for the exact #314 boundary split.
grwtsk contributors's source construction is not redefined here.
OpenAI Codex scratch proof; actual kernel and arithmetic premises remain explicit.
-/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.NormalizedDiscrepancy
open MeasureTheory Set

theorem discrepancy_on_main_window {A c γ : ℝ} {E : ℝ → ℝ}
    (hA : 1 ≤ A) (hc : 0 ≤ c)
    (hE : ∀ t : ℝ, 0 < t → |E t + γ| ≤ c / t ^ 2)
    {y : ℝ} (hy : y ∈ Icc 0 A) :
    |E (2 * A - y) + γ| ≤ c / A ^ 2 := by
  have hAp : 0 < A := by linarith
  have ht : A ≤ 2 * A - y := by linarith [hy.2]
  have htp : 0 < 2 * A - y := lt_of_lt_of_le hAp ht
  have hs : A ^ 2 ≤ (2 * A - y) ^ 2 := by nlinarith
  exact (hE _ htp).trans ((div_le_div_iff₀ (sq_pos_of_pos htp)
    (sq_pos_of_pos hAp)).mpr (mul_le_mul_of_nonneg_left hs hc))

/-- The negative-axis term is retained through the positive-part discrepancy majorant. -/
theorem discrepancy_on_tail_window {A B γ : ℝ} {E : ℝ → ℝ}
    (hA : 1 ≤ A)
    (hE : ∀ t : ℝ, |E t + γ| ≤ B + max 0 (-t))
    {y : ℝ} (hy : y ∈ Icc A (4 * A)) :
    |E (2 * A - y) + γ| ≤ B + y := by
  apply (hE _).trans
  gcongr
  exact max_le (by linarith [hy.1]) (by linarith)

/-- A single finite-A estimate; no asymptotic exchange and no arithmetic axiom is used. -/
theorem boundary_discrepancy_bound {A B C c γ : ℝ} {E w H : ℝ → ℝ}
    (hA : 1 ≤ A) (hc : 0 ≤ c)
    (hMain : ∀ t : ℝ, 0 < t → |E t + γ| ≤ c / t ^ 2)
    (hGlobal : ∀ t : ℝ, |E t + γ| ≤ B + max 0 (-t))
    (hEnvelope : ∀ y ∈ Icc 0 (4 * A), |w y| ≤ H y)
    (hLeft : IntervalIntegrable (fun y => w y * (E (2 * A - y) + γ)) volume 0 A)
    (hRight : IntervalIntegrable (fun y => w y * (E (2 * A - y) + γ)) volume A (4 * A))
    (hHLeft : IntervalIntegrable H volume 0 A)
    (hHTail : IntervalIntegrable (fun y => H y * (B + y)) volume A (4 * A))
    (hMass : (∫ y in 0..A, H y) ≤ C) :
    |∫ y in 0..4 * A, w y * (E (2 * A - y) + γ)| ≤
      c * C / A ^ 2 + ∫ y in A..4 * A, H y * (B + y) := by
  have h0A : 0 ≤ A := by linarith
  have hAA : A ≤ 4 * A := by linarith
  have hscale : 0 ≤ c / A ^ 2 := div_nonneg hc (sq_nonneg A)
  have hmain : |∫ y in 0..A, w y * (E (2 * A - y) + γ)| ≤ c * C / A ^ 2 := by
    calc
      _ ≤ ∫ y in 0..A, |w y * (E (2 * A - y) + γ)| :=
        intervalIntegral.abs_integral_le_integral_abs h0A
      _ ≤ ∫ y in 0..A, H y * (c / A ^ 2) := by
        apply intervalIntegral.integral_mono_on h0A hLeft.abs (hHLeft.mul_const _)
        intro y hy
        have hyall : y ∈ Icc 0 (4 * A) := ⟨hy.1, hy.2.trans hAA⟩
        rw [abs_mul]
        exact (mul_le_mul_of_nonneg_left (discrepancy_on_main_window hA hc hMain hy)
          (abs_nonneg (w y))).trans
          (mul_le_mul_of_nonneg_right (hEnvelope y hyall) hscale)
      _ = (∫ y in 0..A, H y) * (c / A ^ 2) := intervalIntegral.integral_mul_const _ _
      _ ≤ C * (c / A ^ 2) := mul_le_mul_of_nonneg_right hMass hscale
      _ = c * C / A ^ 2 := by ring
  have htail : |∫ y in A..4 * A, w y * (E (2 * A - y) + γ)| ≤
      ∫ y in A..4 * A, H y * (B + y) := by
    calc
      _ ≤ ∫ y in A..4 * A, |w y * (E (2 * A - y) + γ)| :=
        intervalIntegral.abs_integral_le_integral_abs hAA
      _ ≤ _ := by
        apply intervalIntegral.integral_mono_on hAA hRight.abs hHTail
        intro y hy
        have hyall : y ∈ Icc 0 (4 * A) := ⟨h0A.trans hy.1, hy.2⟩
        rw [abs_mul]
        have he := discrepancy_on_tail_window hA hGlobal hy
        have hBy : 0 ≤ B + y := (abs_nonneg _).trans he
        exact (mul_le_mul_of_nonneg_left he (abs_nonneg (w y))).trans
          (mul_le_mul_of_nonneg_right (hEnvelope y hyall) hBy)
  rw [← intervalIntegral.integral_add_adjacent_intervals hLeft hRight]
  exact (abs_add_le _ _).trans (add_le_add hmain htail)

/-- Genuine integrability of the common tail justifies replacing [A,4A] by (A,∞). -/
theorem boundary_discrepancy_bound_with_tail {A B C c γ : ℝ} {E w H : ℝ → ℝ}
    (hA : 1 ≤ A) (hc : 0 ≤ c)
    (hMain : ∀ t : ℝ, 0 < t → |E t + γ| ≤ c / t ^ 2)
    (hGlobal : ∀ t : ℝ, |E t + γ| ≤ B + max 0 (-t))
    (hEnvelope : ∀ y ∈ Icc 0 (4 * A), |w y| ≤ H y)
    (hHnonneg : ∀ y ∈ Ioi A, 0 ≤ H y)
    (hLeft : IntervalIntegrable (fun y => w y * (E (2 * A - y) + γ)) volume 0 A)
    (hRight : IntervalIntegrable (fun y => w y * (E (2 * A - y) + γ)) volume A (4 * A))
    (hHLeft : IntervalIntegrable H volume 0 A)
    (hHTail : IntegrableOn (fun y => H y * (B + y)) (Ioi A))
    (hMass : (∫ y in 0..A, H y) ≤ C) :
    |∫ y in 0..4 * A, w y * (E (2 * A - y) + γ)| ≤
      c * C / A ^ 2 + ∫ y in Ioi A, H y * (B + y) := by
  have hAA : A ≤ 4 * A := by linarith
  have hsub : Ioc A (4 * A) ⊆ Ioi A := fun _ hy => hy.1
  have hi : IntervalIntegrable (fun y => H y * (B + y)) volume A (4 * A) :=
    (intervalIntegrable_iff_integrableOn_Ioc_of_le hAA).mpr (hHTail.mono_set hsub)
  have hB : 0 ≤ B := (abs_nonneg (E 0 + γ)).trans (by simpa using hGlobal 0)
  have hnonneg : 0 ≤ᵐ[volume.restrict (Ioi A)] (fun y => H y * (B + y)) := by
    apply (ae_restrict_iff' measurableSet_Ioi).mpr
    exact ae_of_all volume fun y hy => mul_nonneg (hHnonneg y hy)
      (by have hy' : A < y := hy; linarith)
  have htail : (∫ y in A..4 * A, H y * (B + y)) ≤
      ∫ y in Ioi A, H y * (B + y) := by
    rw [intervalIntegral.integral_of_le hAA]
    exact setIntegral_mono_set hHTail hnonneg hsub.eventuallyLE
  exact (boundary_discrepancy_bound hA hc hMain hGlobal hEnvelope
    hLeft hRight hHLeft hi hMass).trans (add_le_add le_rfl htail)

end ContinuousResearch.NormalizedDiscrepancy

#print axioms ContinuousResearch.NormalizedDiscrepancy.discrepancy_on_main_window
#print axioms ContinuousResearch.NormalizedDiscrepancy.discrepancy_on_tail_window
#print axioms ContinuousResearch.NormalizedDiscrepancy.boundary_discrepancy_bound
#print axioms ContinuousResearch.NormalizedDiscrepancy.boundary_discrepancy_bound_with_tail
