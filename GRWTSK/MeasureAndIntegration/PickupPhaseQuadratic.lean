/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupOptimizationGap
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FinitePhaseDiffusion
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Sinc
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus

/-!
# Actual local-phase quadratic pickup and its complete signed graph

The phase average is an integral of the actual real/imaginary squared waveform.
Its full finite expansion, sinc kernel, unchanged diagonal, positivity and
source-spin cut identity are proved. No probabilistic Mobius coefficients are
introduced. The separate PickupPhaseTransport module supplies the causal
Volterra 1/9--9 comparison; it is not inferred from positivity of this kernel.
Source candidate; all native checks NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupPhaseQuadratic

open MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open PickupOptimizationGap PickupSpinCutComparison MertensSignedPairDescent
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy

def phase (T τ : ℝ) (n : ℕ) : ℝ := τ * (n : ℝ) * Real.exp (-T)
def separation (T : ℝ) (m n : ℕ) : ℝ := ((m : ℝ) - (n : ℝ)) * Real.exp (-T)

def realWave (T τ u : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    (moebiusReal n * Real.cos (phase T τ n)) * pickupResponse n u

def imagWave (T τ u : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    (moebiusReal n * Real.sin (phase T τ n)) * pickupResponse n u

def phaseEnergy (T τ : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T, realWave T τ u ^ 2 + imagWave T τ u ^ 2

theorem realWave_continuous (T τ : ℝ) : Continuous (realWave T τ) := by
  apply continuous_finsetSum
  intro n hn
  exact continuous_const.mul (pickupResponse_continuous (Finset.mem_Icc.mp hn).1)

theorem imagWave_continuous (T τ : ℝ) : Continuous (imagWave T τ) := by
  apply continuous_finsetSum
  intro n hn
  exact continuous_const.mul (pickupResponse_continuous (Finset.mem_Icc.mp hn).1)

/-- All ordered interactions, including the diagonal, are expanded before averaging. -/
theorem phaseEnergy_eq_gram (T τ : ℝ) :
    phaseEnergy T τ =
      ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        (moebiusReal m * moebiusReal n * pickupResponseGram T m n) *
          Real.cos (τ * separation T m n) := by
  unfold phaseEnergy
  rw [intervalIntegral.integral_add
    (((realWave_continuous T τ).pow 2).intervalIntegrable _ _)
    (((imagWave_continuous T τ).pow 2).intervalIntegrable _ _)]
  unfold realWave imagWave
  rw [response_gram_quadratic_identity, response_gram_quadratic_identity,
    ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m _
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n _
  have he : τ * separation T m n = phase T τ m - phase T τ n := by
    unfold phase separation
    ring
  rw [he, Real.cos_sub]
  ring

theorem phaseEnergy_nonnegative {T : ℝ} (hT : 0 ≤ T) (τ : ℝ) :
    0 ≤ phaseEnergy T τ := by
  unfold phaseEnergy
  rw [intervalIntegral.integral_of_le hT]
  exact integral_nonneg (fun u => add_nonneg (sq_nonneg _) (sq_nonneg _))

theorem phaseEnergy_continuous (T : ℝ) : Continuous (phaseEnergy T) := by
  have he : phaseEnergy T = (fun τ =>
      ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        (moebiusReal m * moebiusReal n * pickupResponseGram T m n) *
          Real.cos (τ * separation T m n)) := by
    funext τ
    exact phaseEnergy_eq_gram T τ
  rw [he]
  fun_prop

theorem phaseEnergy_zero {T : ℝ} (hT : 0 ≤ T) : phaseEnergy T 0 = pickupEnergy T := by
  rw [phaseEnergy_eq_gram]
  simp only [zero_mul, Real.cos_zero, mul_one]
  change pickupFullGram T = pickupEnergy T
  rw [pickup_full_gram_split, pickupEnergy_eq_diagonal_add_cross hT]

def average (f : ℝ → ℝ) : ℝ := (∫ τ in (-1 : ℝ)..1, f τ) / 2

theorem average_const_mul (a : ℝ) (f : ℝ → ℝ) :
    average (fun τ => a * f τ) = a * average f := by
  unfold average
  rw [intervalIntegral.integral_const_mul]
  ring

theorem average_sum {ι : Type*} (S : Finset ι) (f : ι → ℝ → ℝ)
    (hf : ∀ i ∈ S, Continuous (f i)) :
    average (fun τ => ∑ i ∈ S, f i τ) = ∑ i ∈ S, average (f i) := by
  unfold average
  rw [intervalIntegral.integral_finsetSum
    (fun i hi => (hf i hi).intervalIntegrable _ _), Finset.sum_div]

/-- The unnormalized-radian sinc convention is fixed by this actual integral. -/
theorem average_cos (x : ℝ) : average (fun τ => Real.cos (τ * x)) = Real.sinc x := by
  by_cases hx : x = 0
  · subst x
    norm_num [average]
  have hd : ∀ τ ∈ Set.uIcc (-1 : ℝ) 1,
      HasDerivAt (fun u : ℝ => Real.sin (u * x) / x) (Real.cos (τ * x)) τ := by
    intro τ _
    convert (((hasDerivAt_id τ).mul_const x).sin).div_const x using 1 <;>
      simp [hx]
  have hi : IntervalIntegrable (fun τ : ℝ => Real.cos (τ * x)) volume (-1) 1 :=
    (by fun_prop : Continuous (fun τ : ℝ => Real.cos (τ * x))).intervalIntegrable _ _
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt hd hi
  unfold average
  rw [he, Real.sinc_of_ne_zero hx]
  simp only [one_mul, neg_one_mul, Real.sin_neg]
  ring

def phaseAverage (T : ℝ) : ℝ := average (phaseEnergy T)

def phaseGram (T : ℝ) (m n : ℕ) : ℝ :=
  pickupResponseGram T m n * Real.sinc (separation T m n)

/-- Source-exact phase integration, not a fitted positive kernel. -/
theorem phaseAverage_eq_gram (T : ℝ) :
    phaseAverage T = ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, moebiusReal m * moebiusReal n * phaseGram T m n := by
  unfold phaseAverage
  simp_rw [phaseEnergy_eq_gram]
  rw [average_sum]
  · apply Finset.sum_congr rfl
    intro m _
    rw [average_sum]
    · apply Finset.sum_congr rfl
      intro n _
      rw [average_const_mul, average_cos]
      unfold phaseGram
      ring
    · intro n _
      fun_prop
  · intro m _
    fun_prop

theorem phaseAverage_nonnegative {T : ℝ} (hT : 0 ≤ T) : 0 ≤ phaseAverage T := by
  unfold phaseAverage average
  apply div_nonneg _ (by norm_num)
  rw [intervalIntegral.integral_of_le (by norm_num : (-1 : ℝ) ≤ 1)]
  exact integral_nonneg (fun τ => phaseEnergy_nonnegative hT τ)

@[simp] theorem phaseGram_diagonal (T : ℝ) (n : ℕ) :
    phaseGram T n n = pickupResponseGram T n n := by
  simp [phaseGram, separation]

def phaseCross (T : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    if m ≠ n then moebiusReal m * moebiusReal n * phaseGram T m n else 0

/-- The original diagonal is unchanged, not re-estimated or renamed. -/
theorem phaseAverage_split (T : ℝ) : phaseAverage T = pickupDiagonal T + phaseCross T := by
  rw [phaseAverage_eq_gram, complete_gram_split]
  simpa only [phaseGram_diagonal]

theorem separation_abs_le_one (T : ℝ) {m n : ℕ}
    (hm : m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊)
    (hn : n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊) : |separation T m n| ≤ 1 := by
  have hmR : (m : ℝ) ≤ Real.exp T :=
    (show (m : ℝ) ≤ (⌊Real.exp T⌋₊ : ℝ) from by exact_mod_cast (Finset.mem_Icc.mp hm).2).trans (Nat.floor_le (Real.exp_pos T).le)
  have hnR : (n : ℝ) ≤ Real.exp T :=
    (show (n : ℝ) ≤ (⌊Real.exp T⌋₊ : ℝ) from by exact_mod_cast (Finset.mem_Icc.mp hn).2).trans (Nat.floor_le (Real.exp_pos T).le)
  have hab : |(m : ℝ) - (n : ℝ)| ≤ Real.exp T := by
    rw [abs_le]
    constructor <;> linarith [Nat.cast_nonneg (α := ℝ) m, Nat.cast_nonneg (α := ℝ) n]
  unfold separation
  rw [abs_mul, abs_of_pos (Real.exp_pos _), Real.exp_neg, ← div_eq_mul_inv]
  exact (div_le_one (Real.exp_pos T)).mpr hab

theorem sinc_nonnegative_unit {x : ℝ} (hx : |x| ≤ 1) : 0 ≤ Real.sinc x := by
  have hpos (y : ℝ) (hy : 0 < y) (hy1 : y ≤ 1) : 0 ≤ Real.sinc y := by
    rw [Real.sinc_of_ne_zero hy.ne']
    exact (div_pos (Real.sin_pos_of_pos_of_lt_pi hy (by linarith [Real.pi_gt_three])) hy).le
  rcases lt_trichotomy x 0 with h | h | h
  · rw [← Real.sinc_neg x]
    exact hpos (-x) (by linarith) (by simpa [abs_of_neg h] using hx)
  · subst x; simp
  · exact hpos x h (by simpa [abs_of_pos h] using hx)

theorem phaseGram_nonnegative {T : ℝ} (hT : 0 ≤ T) {m n : ℕ}
    (hm : m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊)
    (hn : n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊) : 0 ≤ phaseGram T m n :=
  mul_nonneg
    (responseGram_nonneg (Finset.mem_Icc.mp hm).1 (Finset.mem_Icc.mp hn).1 hT)
    (sinc_nonnegative_unit (separation_abs_le_one T hm hn))

def phaseAtom (T : ℝ) (m n : ℕ) : ℝ :=
  if m ≠ n then moebiusReal m * moebiusReal n * phaseGram T m n else 0

def phaseAbsolute (T : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    |phaseAtom T m n|

def phaseOrderedCut (T : ℝ) (σ : ℕ → Bool) : ℝ :=
  ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    |phaseAtom T m n| * cutIndicator (σ m) (σ n)

/-- Complete ordered cut, including both orientations and zero symbols. -/
theorem phaseCross_eq_cut {T : ℝ} (hT : 0 ≤ T) :
    phaseCross T = phaseAbsolute T - 2 * phaseOrderedCut T sourceSpin := by
  unfold phaseCross phaseAbsolute phaseOrderedCut
  rw [Finset.mul_sum, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [Finset.mul_sum, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmn : m ≠ n
  · simp only [phaseAtom, if_pos hmn]
    have hs := scalar_signed_cut (moebiusReal m) (moebiusReal n)
      (phaseGram T m n) (phaseGram_nonnegative hT hm hn)
    dsimp only [sourceSpin]
    nlinarith [hs]
  · simp [phaseAtom, hmn]

/-- The source return is the actual difference of cuts, not a certificate field. -/
theorem phase_trial_return {T : ℝ} (hT : 0 ≤ T) (σ : ℕ → Bool) :
    phaseCross T = (phaseAbsolute T - 2 * phaseOrderedCut T σ) +
      2 * (phaseOrderedCut T σ - phaseOrderedCut T sourceSpin) := by
  rw [phaseCross_eq_cut hT]
  ring

/-- The actual phase generator in label coordinates. -/
def label (T : ℝ) (n : ℕ) : ℝ := (n : ℝ) * Real.exp (-T)

/-- Changing horizon rescales the SAME old labels, rather than re-randomizing them. -/
theorem horizon_label_transport (S T τ : ℝ) (n : ℕ) :
    τ * label S n = (τ * Real.exp (T - S)) * label T n := by
  unfold label
  have he : Real.exp (T - S) * Real.exp (-T) = Real.exp (-S) := by
    rw [← Real.exp_add]
    congr 1
    ring
  calc
    _ = τ * (n : ℝ) * (Real.exp (T - S) * Real.exp (-T)) := by rw [he]; ring
    _ = _ := by ring

/-- Scalar packet amplitudes are constructed from the original response Gram. -/
def packetCoefficient (T : ℝ) (n : ℕ) : ℝ :=
  3 * moebiusReal n * Real.sqrt (pickupResponseGram T n n)

theorem packet_coefficient_mass {T : ℝ} (hT : 0 ≤ T) :
    (∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, packetCoefficient T n ^ 2) =
      9 * pickupDiagonal T := by
  unfold pickupDiagonal
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  have hg := responseGram_nonneg (Finset.mem_Icc.mp hn).1 (Finset.mem_Icc.mp hn).1 hT
  unfold packetCoefficient
  rw [mul_pow, mul_pow, Real.sq_sqrt hg]
  ring

theorem packet_coefficient_mass_le {T : ℝ} (hT : 0 ≤ T) :
    (∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, packetCoefficient T n ^ 2) ≤ 18 * T ^ 2 := by
  rw [packet_coefficient_mass hT]
  have hd := (pickupDiagonal_quadratic_bound hT).2
  nlinarith

end GRWTSK.NumberTheory.Moebius.PickupPhaseQuadratic
