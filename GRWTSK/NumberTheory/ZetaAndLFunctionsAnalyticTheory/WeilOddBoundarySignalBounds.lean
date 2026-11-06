import Mathlib.Analysis.PSeries
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Analysis.SumIntegralComparisons

/-!
# Bounds for the odd Weil boundary signal

Local attribution is to grwtsk contributors.

The signal is the series from Sections 3 and 4 of
`documentation/mathematics/_support/reviews/weil-odd-output-trace.md`,
with its exponential weight and actual sine frequency. A shifted inverse-square
majorant proves summability. Positive weights give positivity and the
denominator gives antitonicity in the frequency index.

For positive frequency `u`, compare the shifted sample of
`f(x) = 1 / ((2*x)^2 + u^2)` at `j+1/4` with the adjacent samples at `j`
and `j+1`. The decreasing integral test bounds the shifted sum within
`f(0) = 1/u^2` of the half-line integral `π/(4*u)`. The omitted exponential
terms are positive and bounded in sum by their exact geometric weight sum
times `1/u^2`. This accounts for the entire series, including every omitted
exponential term. The positive-frequency assumption is essential for this
integral comparison. The summability proof also covers zero frequency.

These estimates are inputs to the signed odd residual rows. The analytic
comparison between those rows and the full source operator is a separate
obligation. Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddBoundarySignalBounds

private def kernel (u x : ℝ) : ℝ := 1 / ((2 * x) ^ 2 + u ^ 2)

private def shiftedKernel (u : ℝ) (j : ℕ) : ℝ := kernel u ((j : ℝ) + 1 / 4)

private def exponentialWeight (T : ℝ) (j : ℕ) : ℝ :=
  Real.exp (-2 * (2 * (j : ℝ) + 1 / 2) * T)

/-- One summand of the odd boundary signal at the actual sine frequency. -/
def boundarySignalTerm (T : ℝ) (n j : ℕ) : ℝ :=
  (1 - exponentialWeight T j) / ((2 * (j : ℝ) + 1 / 2) ^ 2 +
    (Real.pi * (n : ℝ) / T) ^ 2)

/-- The complete odd boundary signal, including every exponential image. -/
def boundarySignal (T : ℝ) (n : ℕ) : ℝ :=
  ∑' j : ℕ, boundarySignalTerm T n j

theorem boundarySignal_eq_tsum (T : ℝ) (n : ℕ) :
    boundarySignal T n = ∑' j : ℕ,
      (1 - Real.exp (-2 * (2 * (j : ℝ) + 1 / 2) * T)) /
        ((2 * (j : ℝ) + 1 / 2) ^ 2 + (Real.pi * (n : ℝ) / T) ^ 2) :=
  rfl

private theorem boundarySignalTerm_eq (T : ℝ) (n j : ℕ) :
    boundarySignalTerm T n j =
      (1 - exponentialWeight T j) * shiftedKernel (Real.pi * (n : ℝ) / T) j := by
  unfold boundarySignalTerm shiftedKernel kernel
  rw [show 2 * ((j : ℝ) + 1 / 4) = 2 * (j : ℝ) + 1 / 2 by ring]
  ring

private theorem kernel_nonneg (u x : ℝ) : 0 ≤ kernel u x := by unfold kernel; positivity

private theorem kernel_antitone {u : ℝ} (hu : 0 < u) : AntitoneOn (kernel u) (Ici 0) := by
  intro x hx y hy hxy
  have hx' : 0 ≤ x := hx
  have hy' : 0 ≤ y := hy
  unfold kernel
  apply div_le_div_of_nonneg_left (by norm_num) (by positivity)
  nlinarith

private theorem shiftedKernel_nonneg (u : ℝ) (j : ℕ) : 0 ≤ shiftedKernel u j :=
  kernel_nonneg _ _

private theorem shiftedKernel_summable (u : ℝ) : Summable (shiftedKernel u) := by
  have hp := (Real.summable_one_div_nat_pow (p := 2)).2 (by decide)
  have hshift := (summable_nat_add_iff (f := fun j : ℕ ↦ 1 / (j : ℝ) ^ 2) 1).2 hp
  refine Summable.of_nonneg_of_le (shiftedKernel_nonneg u) (fun j ↦ ?_) (hshift.mul_left 4)
  have hj : 0 ≤ (j : ℝ) := Nat.cast_nonneg _
  have hden : ((j : ℝ) + 1) ^ 2 / 4 ≤ (2 * ((j : ℝ) + 1 / 4)) ^ 2 + u ^ 2 := by
    nlinarith [sq_nonneg (j : ℝ), sq_nonneg u]
  calc
    shiftedKernel u j ≤ 1 / (((j : ℝ) + 1) ^ 2 / 4) :=
      one_div_le_one_div_of_le (by positivity) hden
    _ = 4 * (1 / ((j + 1 : ℕ) : ℝ) ^ 2) := by
      push_cast
      field_simp

private theorem exponentialWeight_pos (T : ℝ) (j : ℕ) :
    0 < exponentialWeight T j := Real.exp_pos _

private theorem exponentialWeight_le_one (T : ℝ) (hT : 0 ≤ T) (j : ℕ) :
    exponentialWeight T j ≤ 1 := by
  unfold exponentialWeight
  apply Real.exp_le_one_iff.mpr
  have hj : 0 ≤ (j : ℝ) := Nat.cast_nonneg _
  exact mul_nonpos_of_nonpos_of_nonneg (by linarith) hT

private theorem boundarySignalTerm_nonneg (T : ℝ) (hT : 0 ≤ T) (n j : ℕ) :
    0 ≤ boundarySignalTerm T n j := by
  rw [boundarySignalTerm_eq]
  exact mul_nonneg (sub_nonneg.mpr (exponentialWeight_le_one T hT j))
    (shiftedKernel_nonneg _ _)

private theorem boundarySignalTerm_le (T : ℝ) (n j : ℕ) :
    boundarySignalTerm T n j ≤ shiftedKernel (Real.pi * (n : ℝ) / T) j := by
  rw [boundarySignalTerm_eq]
  exact mul_le_of_le_one_left (shiftedKernel_nonneg _ _)
    (by linarith [exponentialWeight_pos T j])

theorem boundarySignal_summable (T : ℝ) (hT : 0 ≤ T) (n : ℕ) :
    Summable (boundarySignalTerm T n) :=
  Summable.of_nonneg_of_le (boundarySignalTerm_nonneg T hT n) (boundarySignalTerm_le T n)
    (shiftedKernel_summable _)

theorem boundarySignal_nonneg (T : ℝ) (hT : 0 ≤ T) (n : ℕ) :
    0 ≤ boundarySignal T n :=
  tsum_nonneg (boundarySignalTerm_nonneg T hT n)

theorem boundarySignal_pos (T : ℝ) (hT : 0 < T) (n : ℕ) : 0 < boundarySignal T n := by
  refine (boundarySignal_summable T hT.le n).tsum_pos (boundarySignalTerm_nonneg T hT.le n) 0 ?_
  unfold boundarySignalTerm exponentialWeight
  norm_num
  exact div_pos (sub_pos.mpr (Real.exp_lt_one_iff.mpr (by linarith))) (by positivity)

theorem boundarySignal_antitone (T : ℝ) (hT : 0 < T) : Antitone (boundarySignal T) := by
  intro n m hnm
  unfold boundarySignal
  refine (boundarySignal_summable T hT.le m).tsum_le_tsum (fun j ↦ ?_)
    (boundarySignal_summable T hT.le n)
  unfold boundarySignalTerm
  apply div_le_div_of_nonneg_left (sub_nonneg.mpr (exponentialWeight_le_one T hT.le j))
  · positivity
  · have hn : 0 ≤ Real.pi * (n : ℝ) / T := by positivity
    have hfreq : Real.pi * (n : ℝ) / T ≤ Real.pi * (m : ℝ) / T :=
      div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left (by exact_mod_cast hnm) Real.pi_pos.le)
        hT.le
    nlinarith

private theorem kernel_eq_scaled {u : ℝ} (hu : 0 < u) :
    kernel u = fun x ↦ (u ^ 2)⁻¹ * (1 + ((2 / u) * x) ^ 2)⁻¹ := by
  funext x
  have h : (2 * x) ^ 2 + u ^ 2 = u ^ 2 * (1 + ((2 / u) * x) ^ 2) := by
    field_simp [hu.ne']
    ring
  unfold kernel
  rw [h, one_div, mul_inv_rev]
  exact mul_comm _ _

private theorem kernel_integrable {u : ℝ} (hu : 0 < u) : Integrable (kernel u) := by
  rw [kernel_eq_scaled hu]
  exact (integrable_inv_one_add_mul_sq (div_ne_zero (by norm_num) hu.ne')).const_mul _

private theorem integral_kernel {u : ℝ} (hu : 0 < u) :
    ∫ x in Ioi (0 : ℝ), kernel u x = Real.pi / (4 * u) := by
  rw [kernel_eq_scaled hu, integral_const_mul,
    integral_comp_mul_left_Ioi (fun x : ℝ ↦ (1 + x ^ 2)⁻¹) 0 (div_pos (by norm_num) hu)]
  simp only [mul_zero, integral_Ioi_inv_one_add_sq, Real.arctan_zero, sub_zero, smul_eq_mul]
  field_simp [hu.ne']
  ring

private theorem shiftedKernel_tsum_bounds {u : ℝ} (hu : 0 < u) :
    Real.pi / (4 * u) - 1 / u ^ 2 ≤ (∑' j, shiftedKernel u j) ∧
      (∑' j, shiftedKernel u j) ≤ Real.pi / (4 * u) + 1 / u ^ 2 := by
  have hanti := kernel_antitone hu
  have hint := (kernel_integrable hu).integrableOn (s := Ioi (0 : ℝ))
  have hnonneg : ∀ x ∈ Ioi (0 : ℝ), 0 ≤ kernel u x := fun x _ ↦ kernel_nonneg u x
  have hs := hanti.summable_of_integrableOn_Ioi_zero hint hnonneg
  have hnext := (summable_nat_add_iff (f := fun j : ℕ ↦ kernel u (j : ℝ)) 1).2 hs
  have hshift := shiftedKernel_summable u
  have h0 : kernel u 0 = 1 / u ^ 2 := by simp [kernel]
  have hleft := hanti.integral_le_tsum hs hnonneg
  have hright := hanti.tsum_le_integral hint hnonneg
  rw [integral_kernel hu] at hleft hright
  have hbefore : (∑' j : ℕ, kernel u ((j + 1 : ℕ) : ℝ)) ≤ ∑' j, shiftedKernel u j := by
    apply hnext.tsum_le_tsum _ hshift
    intro j
    have hj : 0 ≤ (j : ℝ) := Nat.cast_nonneg _
    unfold shiftedKernel
    apply hanti (by simp; linarith) (by simp; positivity)
    push_cast
    linarith
  have hafter : (∑' j, shiftedKernel u j) ≤ ∑' j : ℕ, kernel u (j : ℝ) := by
    apply hshift.tsum_le_tsum _ hs
    intro j
    unfold shiftedKernel
    exact hanti (by simp) (by simp; positivity) (by linarith)
  constructor
  · rw [hs.tsum_eq_zero_add, Nat.cast_zero, h0] at hleft
    linarith
  · rw [h0] at hright
    linarith

private theorem shiftedKernel_le_inv_sq {u : ℝ} (hu : 0 < u) (j : ℕ) :
    shiftedKernel u j ≤ 1 / u ^ 2 := by
  apply one_div_le_one_div_of_le (by positivity)
  exact le_add_of_nonneg_left (sq_nonneg _)

private theorem exponentialWeight_eq (T : ℝ) (j : ℕ) :
    exponentialWeight T j = Real.exp (-T) * Real.exp (-4 * T) ^ j := by
  rw [← Real.exp_nat_mul, ← Real.exp_add]
  unfold exponentialWeight
  congr 1
  ring

private theorem exponential_ratio_lt_one {T : ℝ} (hT : 0 < T) :
    Real.exp (-4 * T) < 1 :=
  Real.exp_lt_one_iff.mpr (by linarith)

private theorem exponentialWeight_summable {T : ℝ} (hT : 0 < T) :
    Summable (exponentialWeight T) :=
  ((summable_geometric_of_lt_one (Real.exp_nonneg _) (exponential_ratio_lt_one hT)).mul_left
    (Real.exp (-T))).congr (fun j ↦ (exponentialWeight_eq T j).symm)

private theorem exponentialWeight_tsum {T : ℝ} (hT : 0 < T) :
    ∑' j, exponentialWeight T j = Real.exp (-T) / (1 - Real.exp (-4 * T)) := by
  simp_rw [exponentialWeight_eq]
  rw [tsum_mul_left, tsum_geometric_of_lt_one (Real.exp_nonneg _) (exponential_ratio_lt_one hT),
    div_eq_mul_inv]

private theorem exponentialCorrection_summable {T : ℝ} (hT : 0 < T) (u : ℝ) :
    Summable (fun j ↦ exponentialWeight T j * shiftedKernel u j) :=
  Summable.of_nonneg_of_le
    (fun j ↦ mul_nonneg (exponentialWeight_pos T j).le (shiftedKernel_nonneg u j))
    (fun j ↦ mul_le_of_le_one_left (shiftedKernel_nonneg u j) (exponentialWeight_le_one T hT.le j))
    (shiftedKernel_summable u)

private theorem exponentialCorrection_le {T u : ℝ} (hT : 0 < T) (hu : 0 < u) :
    ∑' j, exponentialWeight T j * shiftedKernel u j ≤
      (Real.exp (-T) / (1 - Real.exp (-4 * T))) * (1 / u ^ 2) := by
  rw [← exponentialWeight_tsum hT, ← tsum_mul_right]
  refine (exponentialCorrection_summable hT u).tsum_le_tsum (fun j ↦ ?_)
    ((exponentialWeight_summable hT).mul_right _)
  exact mul_le_mul_of_nonneg_left (shiftedKernel_le_inv_sq hu j) (exponentialWeight_pos T j).le

private theorem boundarySignal_eq_sub (T : ℝ) (hT : 0 < T) (n : ℕ) :
    boundarySignal T n = (∑' j, shiftedKernel (Real.pi * (n : ℝ) / T) j) -
      (∑' j, exponentialWeight T j * shiftedKernel (Real.pi * (n : ℝ) / T) j) := by
  unfold boundarySignal
  simp_rw [boundarySignalTerm_eq, sub_mul, one_mul]
  exact (shiftedKernel_summable _).tsum_sub (exponentialCorrection_summable hT _)

private theorem frequency_pos (T : ℝ) (hT : 0 < T) {n : ℕ} (hn : 0 < n) :
    0 < Real.pi * (n : ℝ) / T := by
  exact div_pos (mul_pos Real.pi_pos (by exact_mod_cast hn)) hT

private theorem integral_frequency (T : ℝ) (hT : 0 < T) {n : ℕ} (hn : 0 < n) :
    Real.pi / (4 * (Real.pi * (n : ℝ) / T)) = T / (4 * (n : ℝ)) := by
  have hnR : (n : ℝ) ≠ 0 := by exact_mod_cast hn.ne'
  field_simp [Real.pi_ne_zero, hT.ne', hnR]

private theorem inv_frequency_sq (T : ℝ) (hT : 0 < T) {n : ℕ} (hn : 0 < n) :
    1 / (Real.pi * (n : ℝ) / T) ^ 2 = T ^ 2 / (Real.pi ^ 2 * (n : ℝ) ^ 2) := by
  have hnR : (n : ℝ) ≠ 0 := by exact_mod_cast hn.ne'
  field_simp [Real.pi_ne_zero, hT.ne', hnR]

/-- The half-line integral and the first unshifted term majorize the full signal. -/
theorem boundarySignal_le (T : ℝ) (hT : 0 < T) {n : ℕ} (hn : 0 < n) :
    boundarySignal T n ≤ T / (4 * (n : ℝ)) + T ^ 2 / (Real.pi ^ 2 * (n : ℝ) ^ 2) := by
  have h := (shiftedKernel_tsum_bounds (frequency_pos T hT hn)).2
  rw [integral_frequency T hT hn, inv_frequency_sq T hT hn] at h
  exact ((boundarySignal_summable T hT.le n).tsum_le_tsum (boundarySignalTerm_le T n)
    (shiftedKernel_summable _)).trans h

/-- The deviation from the leading signal charges both the integral-test error and the full
exponential correction. -/
theorem abs_boundarySignal_sub_le (T : ℝ) (hT : 0 < T) {n : ℕ} (hn : 0 < n) :
    |boundarySignal T n - T / (4 * (n : ℝ))| ≤
      (1 + Real.exp (-T) / (1 - Real.exp (-4 * T))) *
        (T ^ 2 / (Real.pi ^ 2 * (n : ℝ) ^ 2)) := by
  have hu := frequency_pos T hT hn
  have hlow := (shiftedKernel_tsum_bounds hu).1
  have hcorr := exponentialCorrection_le hT hu
  have hupper := boundarySignal_le T hT hn
  rw [integral_frequency T hT hn, inv_frequency_sq T hT hn] at hlow
  rw [inv_frequency_sq T hT hn] at hcorr
  have hn0 : 0 ≤ Real.exp (-T) / (1 - Real.exp (-4 * T)) :=
    div_nonneg (Real.exp_nonneg _) (sub_nonneg.mpr (exponential_ratio_lt_one hT).le)
  have hpos : 0 ≤ Real.exp (-T) / (1 - Real.exp (-4 * T)) *
      (T ^ 2 / (Real.pi ^ 2 * (n : ℝ) ^ 2)) := mul_nonneg hn0 (by positivity)
  rw [add_mul, one_mul, abs_le]
  constructor
  · rw [boundarySignal_eq_sub T hT]
    linarith
  · linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.OddBoundarySignalBounds
