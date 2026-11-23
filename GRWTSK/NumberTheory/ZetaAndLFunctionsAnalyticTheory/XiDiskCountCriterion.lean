import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CanonicalZeroDivisor
import Mathlib.Tactic

/-! Count comparisons for the disk centered at the symmetry point and the
enclosing height strip. Each count uses the actual analytic multiplicity. -/

namespace GRWTSK.XiDiskCountCriterion

open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
noncomputable section

def radius (z : ZeroPoint) := Real.sqrt (z.1.im ^ 2 + (z.1.re - 1/2)^2)

theorem radius_sq (z : ZeroPoint) : radius z ^ 2 = z.1.im ^ 2 + (z.1.re-1/2)^2 :=
  Real.sq_sqrt (by positivity)

theorem height_le_radius (z : ZeroPoint) : height z ≤ radius z := by
  have hp : 0 ≤ radius z := Real.sqrt_nonneg _
  unfold height
  nlinarith [radius_sq z, sq_abs z.1.im, sq_nonneg (z.1.re-1/2)]

theorem radius_eq_height_iff (z : ZeroPoint) : radius z = height z ↔ z.1.re = 1/2 := by
  have hp := radius_sq z
  unfold height
  constructor
  · intro h
    rw [h, sq_abs] at hp
    nlinarith [sq_nonneg (z.1.re-1/2)]
  · intro h
    simp [radius, h, Real.sqrt_sq_eq_abs]

def diskCount (r : ℝ) : ℕ := ∑ z ∈ heightHead r, if radius z ≤ r then multiplicity z else 0

def excess (r : ℝ) : ℕ := ∑ z ∈ heightHead r, if r < radius z then multiplicity z else 0

theorem count_split (r : ℝ) : diskCount r + excess r = heightCount r := by
  unfold diskCount excess heightCount
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro z _
  by_cases h : radius z ≤ r
  · simp [h, not_lt.mpr h]
  · simp [h, lt_of_not_ge h]

theorem excess_pos_iff (r : ℝ) :
    0 < excess r ↔ ∃ z : ZeroPoint, height z ≤ r ∧ r < radius z := by
  unfold excess
  rw [Finset.sum_pos_iff_of_nonneg (fun _ _ => Nat.zero_le _)]
  simp only [mem_heightHead]
  constructor
  · rintro ⟨z,h,hz⟩
    exact ⟨z,h,by by_contra hn; simp [hn] at hz⟩
  · rintro ⟨z,h,hz⟩
    exact ⟨z,h,by simpa [hz] using multiplicity_pos z⟩

theorem rational_disk_counts_iff_RH :
    (∀ r : ℚ, diskCount r = heightCount r) ↔ _root_.RiemannHypothesis := by
  constructor
  · intro h s hs ht hp
    let z : ZeroPoint := ⟨s,hs,ht,hp⟩
    change z.1.re = 1/2
    by_contra hn
    have hlt := lt_of_le_of_ne (height_le_radius z)
      (fun he => hn ((radius_eq_height_iff z).mp he.symm))
    obtain ⟨r,hl,hu⟩ := exists_rat_btwn hlt
    have hx := (excess_pos_iff r).mpr ⟨z,hl.le,hu⟩
    have hc := count_split r
    rw [h r] at hc
    omega
  · intro h r
    have hzero : excess r = 0 := by
      by_contra hn
      obtain ⟨z,hl,hu⟩ := (excess_pos_iff r).mp (Nat.pos_of_ne_zero hn)
      rw [(radius_eq_height_iff z).mpr (h z.1 z.2.1 z.2.2.1 z.2.2.2)] at hu
      exact (not_lt_of_ge hl) hu
    simpa [hzero] using count_split r

end
end GRWTSK.XiDiskCountCriterion
