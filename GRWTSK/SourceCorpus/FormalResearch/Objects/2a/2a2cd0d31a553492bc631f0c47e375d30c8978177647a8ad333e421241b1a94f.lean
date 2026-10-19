import SourceColumnEnvelopeMass
import Mathlib.Analysis.SpecialFunctions.Sqrt

/-!
Positive column mass for the literal strict centered cells. This bounds an
absolute envelope only; it does not discard the compensation in the signed target.
Research direction: grwtsk contributors. Construction: OpenAI Codex.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceSharpColumnEnvelopeMass

open MeasureTheory SourceColumnEnvelopeMass
open scoped BigOperators Interval
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateBetaCentering

noncomputable section

private theorem inverse_sqrt_antiderivative (x : ℝ) (hx : 0 < x) :
    HasDerivAt (fun x : ℝ => -2 / Real.sqrt x)
      (1 / (x * Real.sqrt x)) x := by
  have hs : Real.sqrt x ≠ 0 := (Real.sqrt_pos.2 hx).ne'
  have hd := ((Real.hasDerivAt_sqrt hx.ne').inv hs).const_mul (-2)
  have he : -2 * (-(1 / (2 * Real.sqrt x)) / Real.sqrt x ^ 2) =
      1 / (x * Real.sqrt x) := by
    field_simp [hs, hx.ne']
    nlinarith [Real.sq_sqrt hx.le]
  convert hd.congr_deriv he using 1 <;> rfl

private theorem inverse_sqrt_cell_integrable (a b : ℝ) (ha : 0 < a) (hab : a ≤ b) :
    IntervalIntegrable (fun u : ℝ => 1 / (u * Real.sqrt u)) volume a b := by
  apply ContinuousOn.intervalIntegrable
  apply continuousOn_const.div
  · exact continuousOn_id.mul Real.continuous_sqrt.continuousOn
  · intro u hu
    have hu0 : 0 < u := ha.trans_le (by simpa only [min_eq_left hab] using hu.1)
    exact mul_ne_zero hu0.ne' (Real.sqrt_pos.2 hu0).ne'

private theorem inverse_sqrt_integral (a b : ℝ) (ha : 0 < a) (hab : a ≤ b) :
    (∫ u in a..b, 1 / (u * Real.sqrt u)) =
      2 / Real.sqrt a - 2 / Real.sqrt b := by
  have hi := inverse_sqrt_cell_integrable a b ha hab
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun u hu => inverse_sqrt_antiderivative u
      (ha.trans_le (by simpa only [min_eq_left hab] using hu.1))) hi
  convert h using 1
  ring

/-- The original strict column mass retains its sharper actual cutoff ratio. -/
theorem columnEnvelopeMass_le_cutoff_ratio (A : ℝ) (hA : 1 ≤ A) :
    columnEnvelopeMass A ≤
      2 * (vaughanCutoff A : ℝ) / Real.sqrt ((vaughanCutoff A : ℝ) + 1) := by
  classical
  let U := vaughanCutoff A
  let K := sourceKernelCutoff A / (U + 1)
  let s := Finset.Ico (U + 1) K
  let f : ℝ → ℝ := fun u => 1 / (u * Real.sqrt u)
  have hU : 1 ≤ U := vaughanCutoff_pos A hA
  have hcell (k : ℕ) (hk : k ∈ s) : 0 < (k : ℝ) := by
    have hn := (Finset.mem_Ico.mp hk).1
    exact_mod_cast (by omega : 0 < k)
  have hi (k : ℕ) (hk : k ∈ s) :
      IntervalIntegrable f volume (k : ℝ) ((k : ℝ) + 1) :=
    inverse_sqrt_cell_integrable _ _ (hcell k hk) (by linarith)
  have hb (k : ℕ) (hk : k ∈ s) :
      |∑ n ∈ Finset.Ioc U k, centeredBeta U n| ≤ (U : ℝ) := by
    apply (centeredBeta_interval_abs_le _ _ _ hU le_rfl
      (by have := (Finset.mem_Ico.mp hk).1; omega)).trans
    calc
      _ ≤ ∑ d ∈ Finset.Icc 1 U, (1 : ℝ) := by
        apply Finset.sum_le_sum
        intro d _
        exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))
      _ = (U : ℝ) := by simp
  by_cases hK : U + 1 ≤ K
  · have hpos : 0 < ((U + 1 : ℕ) : ℝ) := by positivity
    have hsum : (∑ k ∈ s, ∫ u in (k : ℝ)..((k : ℝ) + 1), f u) =
        ∫ u in ((U + 1 : ℕ) : ℝ)..(K : ℝ), f u := by
      simpa only [s, Nat.cast_add, Nat.cast_one] using
        intervalIntegral.sum_integral_adjacent_intervals_Ico
          (a := fun k : ℕ => (k : ℝ)) hK
          (fun k hk => by
            have hks : k ∈ s := by simpa only [s, Finset.mem_Ico, Set.mem_Ico] using hk
            simpa only [Nat.cast_add, Nat.cast_one] using hi k hks)
    have hmass : columnEnvelopeMass A ≤ (U : ℝ) *
        (2 / Real.sqrt ((U + 1 : ℕ) : ℝ) - 2 / Real.sqrt (K : ℝ)) := by
      calc
        _ ≤ ∑ k ∈ s, (U : ℝ) *
            (∫ u in (k : ℝ)..((k : ℝ) + 1), f u) := by
          apply Finset.sum_le_sum
          intro k hk
          apply mul_le_mul_of_nonneg_right (hb k hk)
          apply intervalIntegral.integral_nonneg (by linarith)
          intro u hu
          have hu0 : 0 < u := (hcell k hk).trans_le hu.1
          positivity
        _ = _ := by
          rw [← Finset.mul_sum, hsum,
            inverse_sqrt_integral _ _ hpos (by exact_mod_cast hK)]
    have hdrop : (U : ℝ) *
        (2 / Real.sqrt ((U + 1 : ℕ) : ℝ) - 2 / Real.sqrt (K : ℝ)) ≤
        2 * ((U : ℝ) / Real.sqrt ((U + 1 : ℕ) : ℝ)) := by
      have hn : 0 ≤ (U : ℝ) * (2 / Real.sqrt (K : ℝ)) := by positivity
      have he : (U : ℝ) *
          (2 / Real.sqrt ((U + 1 : ℕ) : ℝ) - 2 / Real.sqrt (K : ℝ)) =
          2 * ((U : ℝ) / Real.sqrt ((U + 1 : ℕ) : ℝ)) -
            (U : ℝ) * (2 / Real.sqrt (K : ℝ)) := by ring
      rw [he]
      linarith
    calc
      _ ≤ 2 * ((U : ℝ) / Real.sqrt ((U + 1 : ℕ) : ℝ)) := hmass.trans hdrop
      _ = _ := by
        dsimp only [U]
        rw [Nat.cast_add, Nat.cast_one]
        ring
  · have hs : s = ∅ := Finset.Ico_eq_empty_of_le (by omega)
    change (∑ k ∈ s, |∑ n ∈ Finset.Ioc U k, centeredBeta U n| *
      (∫ u in (k : ℝ)..((k : ℝ) + 1), f u)) ≤
        2 * (U : ℝ) / Real.sqrt ((U : ℝ) + 1)
    rw [hs, Finset.sum_empty]
    positivity

end
end FormalResearch.RiemannHypothesis.SourceSharpColumnEnvelopeMass
