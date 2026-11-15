/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTrig
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineKernelOverlap
import Mathlib.Data.Nat.Dist

/-!
# Sinc prices for the original conductor-three radius-one checker

The lookup at zero is exact. At a positive index `j`, the sine call
at `j*S/128` is exact in its input units because `128 ∣ S`. The signed
quotient for the sinc sample retains the outward error of one unit.
The midpoint difference and sum use respectively the distance of the
indices and their sum plus one. The joint variation estimate extends the
midpoint comparison over each half-open pair of cells.

The formulas match `scripts/verify_odd_three_sine_hs.py`, blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`, lines 142–152. The result
needs only the corresponding lookup indices, which can be supplied from
the allocated prefix on any retained pair.
Independent analytical review: NOT_RUN.
-/

set_option autoImplicit false

open Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt
namespace CheckerRounding

private theorem real_scale_pos : (0 : ℝ) < (scale : ℝ) := by norm_num [scale]

private theorem sinc_arg_integer_eq (j : ℕ) :
    (j : ℤ) * scale / 128 = (j : ℤ) * 7812500000 := by
  have hs : scale = 7812500000 * 128 := by decide
  rw [hs, ← mul_assoc, Int.mul_ediv_cancel _ (by decide : (128 : ℤ) ≠ 0)]

/-- The exact signed lookup error, in the checker's integer scale. The
formula at zero agrees exactly with `Real.sinc 0`. -/
theorem abs_sincEntry_sub_scaled_sinc_lt (table : ℕ → ℤ) (j : ℕ) (hj : j ≤ 65535)
    (hentry : table j = if j = 0 then scale else
      integerTrig true ((j : ℤ) * scale / 128) * 128 / (j : ℤ)) :
    |(table j : ℝ) - (scale : ℝ) * Real.sinc ((j : ℝ) / 128)| < 212 * 128 + 1 := by
  by_cases hzero : j = 0
  · subst j
    simp at hentry
    norm_num [hentry]
  · let x := (j : ℤ) * scale / 128
    let t := integerTrig true x
    have hx' : x = (j : ℤ) * 7812500000 := sinc_arg_integer_eq j
    have hjInt : (0 : ℤ) < (j : ℤ) := by exact_mod_cast Nat.pos_of_ne_zero hzero
    have hjR : (0 : ℝ) < (j : ℝ) := by exact_mod_cast Nat.pos_of_ne_zero hzero
    have hArg : |x| ≤ 512 * scale := by
      rw [hx', abs_of_nonneg (by positivity : 0 ≤ (j : ℤ) * 7812500000)]
      have hmax : (j : ℤ) ≤ 65535 := by exact_mod_cast hj
      norm_num [scale]
      omega
    have hAngle : (x : ℝ) / (scale : ℝ) = (j : ℝ) / 128 := by
      rw [hx']
      push_cast
      norm_num [scale]
      ring
    have ht : |(t : ℝ) - (scale : ℝ) * Real.sin ((j : ℝ) / 128)| < 212 := by
      have h := abs_integerTrig_sub_scaled_trigValue_lt true x hArg
      change |(t : ℝ) - (scale : ℝ) * Real.sin ((x : ℝ) / (scale : ℝ))| < 212 at h
      rwa [hAngle] at h
    have hfloor := cast_ediv_remainder_lt_one (t * 128) (j : ℤ) hjInt
    push_cast [Int.cast_mul] at hfloor
    have hsample : table j = t * 128 / (j : ℤ) := by simpa [hzero, t, x] using hentry
    rw [← hsample] at hfloor
    let q := (128 : ℝ) / (j : ℝ)
    have hq : 0 ≤ q := by dsimp [q]; positivity
    have hqmax : q ≤ 128 := by
      have h1 : (1 : ℝ) ≤ (j : ℝ) := by exact_mod_cast Nat.pos_of_ne_zero hzero
      exact (div_le_iff₀ hjR).2 (by linarith)
    have hround : |(table j : ℝ) - (t : ℝ) * q| < 1 := by
      rw [show (t : ℝ) * q = (t : ℝ) * 128 / (j : ℝ) by dsimp [q]; ring,
        abs_sub_comm, abs_of_nonneg hfloor.1]
      exact hfloor.2
    have htrue : (scale : ℝ) * Real.sinc ((j : ℝ) / 128) =
        ((scale : ℝ) * Real.sin ((j : ℝ) / 128)) * q := by
      rw [Real.sinc_of_ne_zero (by positivity : (0 : ℝ) < (j : ℝ) / 128).ne']
      dsimp [q]
      field_simp [hjR.ne']
    have hphase : |(t : ℝ) * q - (scale : ℝ) * Real.sinc ((j : ℝ) / 128)| ≤ 212 * 128 := by
      rw [htrue, ← sub_mul, abs_mul, abs_of_nonneg hq]
      exact mul_le_mul ht.le hqmax hq (by norm_num)
    exact (abs_sub_le _ ((t : ℝ) * q) _).trans_lt (by linarith [hround, hphase])

private theorem cell_midpoint_distance (i : Fin 32768) {x : ℝ}
    (hx : x ∈ Ioc ((i.val : ℝ) * (1 / 128)) (((i.val : ℝ) + 1) * (1 / 128))) :
    |x - (2 * (i.val : ℝ) + 1) / 256| ≤ 1 / 256 := by
  exact abs_le.2 ⟨by linarith [hx.1], by linarith [hx.2]⟩

/-- The literal sinc price bounds the unsquared sinc difference on the
whole pair-cell. The two lookups are in the checker's retained orientation. -/
theorem abs_sincDifference_le_checker_pairMajor (table : ℕ → ℤ) (i j : Fin 32768)
    (hji : j ≤ i) (x y : ℝ)
    (hx : x ∈ Ioc ((i.val : ℝ) * (1 / 128)) (((i.val : ℝ) + 1) * (1 / 128)))
    (hy : y ∈ Ioc ((j.val : ℝ) * (1 / 128)) (((j.val : ℝ) + 1) * (1 / 128)))
    (hentry : ∀ n, n = Nat.dist i.val j.val ∨ n = i.val + j.val + 1 →
      table n = if n = 0 then scale else
        integerTrig true ((n : ℤ) * scale / 128) * 128 / (n : ℤ)) :
    |Real.sinc (x - y) - Real.sinc (x + y)| ≤
      ((table (Nat.dist i.val j.val) - table (i.val + j.val + 1)).natAbs +
        (2 * (500 * 128 + 1) + scale.toNat / 128) : ℕ) / (scale : ℝ) := by
  let d := Nat.dist i.val j.val
  let s := i.val + j.val + 1
  let u := (2 * (i.val : ℝ) + 1) / 256
  let v := (2 * (j.val : ℝ) + 1) / 256
  let F := Real.sinc (x - y) - Real.sinc (x + y)
  let M := Real.sinc (u - v) - Real.sinc (u + v)
  let t := (table d : ℝ) - (table s : ℝ)
  have hle : j.val ≤ i.val := hji
  have hdist : d = i.val - j.val := Nat.dist_eq_sub_of_le_right hle
  have hd : d ≤ s := by dsimp [s]; rw [hdist]; omega
  have hs : s ≤ 65535 := by dsimp [s]; omega
  have hdval : u - v = (d : ℝ) / 128 := by
    rw [hdist, Nat.cast_sub hle]
    dsimp [u, v]
    ring
  have hsval : u + v = (s : ℝ) / 128 := by
    dsimp [u, v, s]
    push_cast
    ring
  have hdError := abs_sincEntry_sub_scaled_sinc_lt table d (hd.trans hs) (hentry d (.inl rfl))
  have hsError := abs_sincEntry_sub_scaled_sinc_lt table s hs (hentry s (.inr rfl))
  have hMid : |(scale : ℝ) * M - t| ≤ 2 * (212 * 128 + 1) := by
    dsimp [M, t]
    rw [hdval, hsval]
    let a := (table d : ℝ) - (scale : ℝ) * Real.sinc ((d : ℝ) / 128)
    let b := (table s : ℝ) - (scale : ℝ) * Real.sinc ((s : ℝ) / 128)
    rw [show (scale : ℝ) * (Real.sinc ((d : ℝ) / 128) - Real.sinc ((s : ℝ) / 128)) -
      ((table d : ℝ) - (table s : ℝ)) = b - a by dsimp [a, b]; ring]
    rw [two_mul]
    exact (abs_sub b a).trans (add_le_add hsError.le hdError.le)
  have hGeom : |(scale : ℝ) * F - (scale : ℝ) * M| ≤ (scale : ℝ) * (1 / 256) := by
    rw [← mul_sub, abs_mul, abs_of_pos real_scale_pos]
    exact mul_le_mul_of_nonneg_left
      ((OddSineKernelOverlap.abs_sinc_difference_perturbation_le x y u v).trans
        (max_le (cell_midpoint_distance i hx) (cell_midpoint_distance j hy)))
      real_scale_pos.le
  have ht : |t| = ((table d - table s).natAbs : ℝ) := by
    dsimp [t]
    rw [← Int.cast_sub, ← Int.cast_abs, Int.abs_eq_natAbs, Int.cast_natCast]
  change |F| ≤ (((table d - table s).natAbs +
    (2 * (500 * 128 + 1) + scale.toNat / 128) : ℕ) : ℝ) / (scale : ℝ)
  apply (le_div_iff₀ real_scale_pos).2
  have htri₁ := abs_sub_le ((scale : ℝ) * F) ((scale : ℝ) * M) 0
  have htri₂ := abs_sub_le ((scale : ℝ) * M) t 0
  simp only [sub_zero] at htri₁ htri₂
  calc
    |F| * (scale : ℝ) = |(scale : ℝ) * F| := by rw [abs_mul, abs_of_pos real_scale_pos, mul_comm]
    _ ≤ (scale : ℝ) * (1 / 256) + 2 * (212 * 128 + 1) + |t| := by
      linarith only [htri₁, htri₂, hGeom, hMid]
    _ ≤ _ := by
      rw [ht, Nat.cast_add]
      have hbudget : (scale : ℝ) * (1 / 256) + 2 * (212 * 128 + 1) ≤
          ((2 * (500 * 128 + 1) + scale.toNat / 128 : ℕ) : ℝ) := by norm_num [scale]
      linarith only [hbudget]

end CheckerRounding
end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt
