/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTrig
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddThreeNativeLedger
import Mathlib.Algebra.BigOperators.Fin

/-!
# Signed prime prices at the radius-one checker midpoints

The four stored rows and the quotient in this file match
`scripts/verify_odd_three_sine_hs.py`, blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`, lines 20–27 and 132–135.
Certified shift and coefficient errors of at most 100 scaled units imply the
signed prime midpoint error. The sum uses the original radius-one prime-power
inventory, including the zero rows at 3 and 6. The input error bounds are
hypotheses for the logarithm and weight enclosures to supply.
Independent analytical review: NOT_RUN.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt
namespace CheckerRounding

open LowSchur OddRootProjection OddThreeFullSignedShift

/-- The four nonzero rows in their original checker order. -/
def primeIndex : Fin 4 → ℕ := ![2, 4, 5, 7]

/-- The checker numerators of the log shifts. -/
def logNumerator : Fin 4 → ℤ := ![693147180600, 1386294361100, 1609437912400, 1945910149100]

/-- The checker numerators for the negatives of the native paired weights. -/
def weightNumerator : Fin 4 → ℤ :=
  ![490129071700, -346573590300, 719762515600, -735484904000]

private noncomputable def weightCap : Fin 4 → ℝ := ![1 / 2, 7 / 20, 73 / 100, 74 / 100]

/-- Center of a radius-one checker frequency cell. -/
noncomputable def checkerMidpoint (k : Fin 32768) : ℝ := (2 * (k.val : ℝ) + 1) / 256

/-- The actual rounded cosine argument in scaled units. -/
def midpointArgument (r : ℤ) (k : Fin 32768) : ℤ :=
  r * (2 * (k.val : ℤ) + 1) / 256

/-- The signed floor contribution of a single checker row. -/
def roundedPrimeRow (r w : ℤ) (k : Fin 32768) : ℤ :=
  2 * w * integerTrig false (midpointArgument r k) / scale

/-- The four exact signed contributions added by the checker at a midpoint. -/
def roundedPrimeMidpoint (k : Fin 32768) : ℤ :=
  ∑ i : Fin 4, roundedPrimeRow (logNumerator i) (weightNumerator i) k

private theorem scale_pos : (0 : ℤ) < scale := by norm_num [scale]
private theorem real_scale_pos : (0 : ℝ) < (scale : ℝ) := by norm_num [scale]

private theorem midpoint_range (k : Fin 32768) :
    0 ≤ checkerMidpoint k ∧ checkerMidpoint k ≤ 256 := by
  have hkNat : k.val ≤ 32767 := Nat.le_of_lt_succ k.isLt
  have hk : (k.val : ℝ) ≤ 32767 := by exact_mod_cast hkNat
  exact ⟨by unfold checkerMidpoint; positivity, by unfold checkerMidpoint; linarith⟩

/-- The literal signed cosine argument is in range. The shift uncertainty,
argument floor and trigonometric approximation contribute fewer than 25813 units. -/
theorem abs_integerCosMidpoint_sub_scaled_cos_lt (r : ℤ) (ell : ℝ) (k : Fin 32768)
    (hr0 : 0 ≤ r) (hr : r ≤ 2 * scale)
    (hshift : |(r : ℝ) - (scale : ℝ) * ell| ≤ 100) :
    |(integerTrig false (midpointArgument r k) : ℝ) -
      (scale : ℝ) * Real.cos (ell * checkerMidpoint k)| < 25813 := by
  let m := checkerMidpoint k
  let q := midpointArgument r k
  let a := r * (2 * (k.val : ℤ) + 1)
  have hm : 0 ≤ m ∧ m ≤ 256 := midpoint_range k
  have hfloor := cast_ediv_remainder_lt_one a 256 (by norm_num)
  have hfrom : (a : ℝ) / 256 = (r : ℝ) * m := by
    dsimp [a, m, checkerMidpoint]
    push_cast
    ring
  norm_num only [Int.cast_ofNat] at hfloor
  rw [hfrom] at hfloor
  change 0 ≤ (r : ℝ) * m - (q : ℝ) ∧ (r : ℝ) * m - (q : ℝ) < 1 at hfloor
  have hq0 : 0 ≤ q := Int.ediv_nonneg (mul_nonneg hr0 (by positivity)) (by norm_num)
  have hqhi : q ≤ 512 * scale := by
    have hr' : (r : ℝ) ≤ 2 * (scale : ℝ) := by exact_mod_cast hr
    have hprod : (r : ℝ) * m ≤ (2 * (scale : ℝ)) * 256 :=
      mul_le_mul hr' hm.2 hm.1 (by linarith [real_scale_pos])
    have hupper : (q : ℝ) ≤ 512 * (scale : ℝ) := by linarith only [hfloor.1, hprod]
    exact_mod_cast hupper
  have htrig := abs_integerTrig_sub_scaled_trigValue_lt false q (by rwa [abs_of_nonneg hq0])
  change |(integerTrig false q : ℝ) - (scale : ℝ) * Real.cos ((q : ℝ) / (scale : ℝ))| <
    212 at htrig
  have hround : |(q : ℝ) - (r : ℝ) * m| < 1 := by
    rw [abs_sub_comm, abs_of_nonneg hfloor.1]
    exact hfloor.2
  have hmul : |(r : ℝ) * m - (scale : ℝ) * (ell * m)| ≤ 100 * 256 := by
    rw [show (r : ℝ) * m - (scale : ℝ) * (ell * m) =
      ((r : ℝ) - (scale : ℝ) * ell) * m by ring, abs_mul, abs_of_nonneg hm.1]
    exact mul_le_mul hshift hm.2 hm.1 (by norm_num)
  have hphase : |(q : ℝ) - (scale : ℝ) * (ell * m)| < 25601 :=
    (abs_sub_le _ ((r : ℝ) * m) _).trans_lt (by linarith only [hround, hmul])
  have hcos : |(scale : ℝ) * Real.cos ((q : ℝ) / (scale : ℝ)) -
      (scale : ℝ) * Real.cos (ell * m)| < 25601 := by
    rw [← mul_sub, abs_mul, abs_of_pos real_scale_pos]
    refine (mul_le_mul_of_nonneg_left (Real.abs_cos_sub_cos_le _ _) real_scale_pos.le).trans_lt ?_
    have hcancel : (scale : ℝ) * ((q : ℝ) / (scale : ℝ) - ell * m) =
        (q : ℝ) - (scale : ℝ) * (ell * m) := by
      rw [mul_sub, mul_comm (scale : ℝ), div_mul_cancel₀ _ real_scale_pos.ne']
    calc
      _ = |(q : ℝ) - (scale : ℝ) * (ell * m)| := by
        simpa only [abs_mul, abs_of_pos real_scale_pos] using congrArg abs hcancel
      _ < _ := hphase
  exact (abs_sub_le _ ((scale : ℝ) * Real.cos ((q : ℝ) / (scale : ℝ))) _).trans_lt
    (by linarith only [htrig, hcos])

private theorem abs_roundedPrimeRow_sub_lt (r w : ℤ) (ell a cap : ℝ) (k : Fin 32768)
    (hr0 : 0 ≤ r) (hr : r ≤ 2 * scale)
    (hshift : |(r : ℝ) - (scale : ℝ) * ell| ≤ 100)
    (hweight : |(w : ℝ) - (scale : ℝ) * a| ≤ 100)
    (hcap : |(w : ℝ)| ≤ (scale : ℝ) * cap) :
    |(roundedPrimeRow r w k : ℝ) - 2 * (scale : ℝ) * a * Real.cos (ell * checkerMidpoint k)| <
      2 * (100 + cap * 25813) + 1 := by
  let t := integerTrig false (midpointArgument r k)
  let c := Real.cos (ell * checkerMidpoint k)
  let v := 2 * (w : ℝ) * (t : ℝ) / (scale : ℝ)
  let n := 2 * w * t
  have hf := cast_ediv_remainder_lt_one n scale scale_pos
  have hv : (n : ℝ) / (scale : ℝ) = v := by dsimp [n, v]; push_cast; ring
  rw [hv] at hf
  have hfloor : |(roundedPrimeRow r w k : ℝ) - v| < 1 := by
    change |((n / scale : ℤ) : ℝ) - v| < 1
    rw [abs_sub_comm, abs_of_nonneg hf.1]
    exact hf.2
  have hcap' : |(w : ℝ) / (scale : ℝ)| ≤ cap := by
    rw [abs_div, abs_of_pos real_scale_pos]
    exact (div_le_iff₀ real_scale_pos).2 (by rwa [mul_comm])
  have hcap0 : 0 ≤ cap := (abs_nonneg _).trans hcap'
  have hcos : |(t : ℝ) - (scale : ℝ) * c| < 25813 :=
    abs_integerCosMidpoint_sub_scaled_cos_lt r ell k hr0 hr hshift
  have hprod₁ : |((w : ℝ) / (scale : ℝ)) * ((t : ℝ) - (scale : ℝ) * c)| ≤ cap * 25813 := by
    rw [abs_mul]
    exact mul_le_mul hcap' hcos.le (abs_nonneg _) hcap0
  have hprod₂ : |((w : ℝ) - (scale : ℝ) * a) * c| ≤ 100 := by
    rw [abs_mul]
    exact (mul_le_mul hweight (Real.abs_cos_le_one _) (abs_nonneg _) (by norm_num)).trans_eq
      (mul_one _)
  have hsplit : v - 2 * (scale : ℝ) * a * c =
      2 * (((w : ℝ) / (scale : ℝ)) * ((t : ℝ) - (scale : ℝ) * c) +
        ((w : ℝ) - (scale : ℝ) * a) * c) := by
    dsimp [v]
    field_simp [real_scale_pos.ne']
    ring
  have hrow : |v - 2 * (scale : ℝ) * a * c| ≤ 2 * (100 + cap * 25813) := by
    rw [hsplit, abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
    apply mul_le_mul_of_nonneg_left _ (by norm_num)
    exact (abs_add_le _ _).trans (by linarith only [hprod₁, hprod₂])
  exact (abs_sub_le _ v _).trans_lt (by linarith only [hfloor, hrow])

private theorem primeRows_eq (χ : DirichletCharacter ℂ 3) (hodd : gammaParity χ = 1) (x : ℝ) :
    (∑ i : Fin 4, 2 * (scale : ℝ) * (-pairedPrimeWeight χ (primeIndex i)) *
      Real.cos (Real.log (primeIndex i : ℝ) * x)) =
      -2 * (scale : ℝ) * ∑ n ∈ activePrimePowers 1,
        pairedPrimeWeight χ n * Real.cos (Real.log (n : ℝ) * x) := by
  obtain ⟨_, h3, _, _, h6, _⟩ := odd_three_native_signed_weights χ hodd
  rw [Fin.sum_univ_four, activePrimePowers_one_eq_Icc,
    show Finset.Icc (2 : ℕ) 7 = {2, 3, 4, 5, 6, 7} by decide]
  norm_num [primeIndex, Finset.sum_insert, h3, h6]
  ring

/-- The signed scaled error for all four checker rows, compared to the
literal original radius-one prime-power response. -/
theorem abs_roundedPrimeMidpoint_sub_native_lt
    (χ : DirichletCharacter ℂ 3) (hodd : gammaParity χ = 1) (k : Fin 32768)
    (hshift : ∀ i : Fin 4, |(logNumerator i : ℝ) -
      (scale : ℝ) * Real.log (primeIndex i : ℝ)| ≤ 100)
    (hweight : ∀ i : Fin 4, |(weightNumerator i : ℝ) +
      (scale : ℝ) * pairedPrimeWeight χ (primeIndex i)| ≤ 100) :
    |(roundedPrimeMidpoint k : ℝ) - (-2 * (scale : ℝ) *
      ∑ n ∈ activePrimePowers 1, pairedPrimeWeight χ n *
        Real.cos (Real.log (n : ℝ) * checkerMidpoint k))| < 3014408 / 25 := by
  unfold roundedPrimeMidpoint
  rw [Int.cast_sum, ← primeRows_eq χ hodd, ← Finset.sum_sub_distrib]
  refine (Finset.abs_sum_le_sum_abs _ _).trans_lt ?_
  calc
    _ < ∑ i : Fin 4, (2 * (100 + weightCap i * 25813) + 1) := by
      apply Finset.sum_lt_sum_of_nonempty (by simp)
      intro i _
      have hr0 : 0 ≤ logNumerator i := by fin_cases i <;> norm_num [logNumerator]
      have hr : logNumerator i ≤ 2 * scale := by fin_cases i <;> norm_num [logNumerator, scale]
      have hcap : |(weightNumerator i : ℝ)| ≤ (scale : ℝ) * weightCap i := by
        fin_cases i <;> norm_num [weightNumerator, weightCap, scale]
      apply abs_roundedPrimeRow_sub_lt _ _ _ _ _ _ hr0 hr (hshift i) _ hcap
      simpa only [mul_neg, sub_neg_eq_add] using hweight i
    _ = 3014408 / 25 := by rw [Fin.sum_univ_four]; norm_num [weightCap]

/-- The checker reserves one million scaled units. Subtracting that
reserve gives a lower bound on the original scaled signed midpoint response. -/
theorem roundedPrimeMidpoint_with_reserve_le_native
    (χ : DirichletCharacter ℂ 3) (hodd : gammaParity χ = 1) (k : Fin 32768)
    (hshift : ∀ i : Fin 4, |(logNumerator i : ℝ) -
      (scale : ℝ) * Real.log (primeIndex i : ℝ)| ≤ 100)
    (hweight : ∀ i : Fin 4, |(weightNumerator i : ℝ) +
      (scale : ℝ) * pairedPrimeWeight χ (primeIndex i)| ≤ 100) :
    ((roundedPrimeMidpoint k - scale / 10 ^ (6 : ℕ) : ℤ) : ℝ) ≤
      -2 * (scale : ℝ) * ∑ n ∈ activePrimePowers 1, pairedPrimeWeight χ n *
        Real.cos (Real.log (n : ℝ) * checkerMidpoint k) := by
  have h := (abs_lt.mp (abs_roundedPrimeMidpoint_sub_native_lt χ hodd k hshift hweight)).2
  have hreserve : scale / 10 ^ (6 : ℕ) = 1000000 := by decide
  rw [hreserve, Int.cast_sub]
  norm_num
  linarith only [h]

end CheckerRounding
end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt
