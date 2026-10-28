/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib sources retain their upstream licenses. -/
import GRWTSK.NumberTheory.Moebius.PickupDiffusionCriterion

/-!
# Finite phase laws on the actual causal source

The arithmetic coefficients, birth inventory and diagonal are unchanged.
A law is given explicitly by a finite set of phases and nonnegative weights
summing to one. Its support, cardinality and weights may change with the outer
scale. No uniform bound on the cardinality and no source-atom probability are
required. The factor-nine comparison is inherited from the proved causal
Volterra source comparison, not introduced as an arithmetic assumption.

This file treats finite laws. It does not assert a general-measure Fubini
identity, a Gaussian Fourier transform, a triangular-law integral, an active
Hilbert/Jacobi realization, or the all-positive-rate arithmetic witness.
SOURCE_PROOF_CANDIDATE / compilation, fresh kernel replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupFinitePhaseLaw

open MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open PickupOptimizationGap PickupSpinCutComparison MertensSignedPairDescent
open PickupPhaseQuadratic PickupPhaseTransport PickupDiffusionCriterion
open PickupDyadicEndpoint PickupEndpointQuadrature GoodScaleEnergyCriterion
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
open GRWTSK.NumberTheory.Chebyshev.RHThroughpoint

variable {ι : Type*}

/-- Literal finite convex observation of the fixed arithmetic waveform. -/
def energy (S : Finset ι) (w τ : ι → ℝ) (T : ℝ) : ℝ :=
  ∑ i ∈ S, w i * phaseEnergy T (τ i)

/-- The actual cosine kernel of this finite phase law. -/
def kernel (S : Finset ι) (w τ : ι → ℝ) (T : ℝ) (m n : ℕ) : ℝ :=
  pickupResponseGram T m n *
    ∑ i ∈ S, w i * Real.cos (τ i * separation T m n)

/-- Both orientations of the full off-diagonal source are retained. -/
def cross (S : Finset ι) (w τ : ι → ℝ) (T : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    if m ≠ n then moebiusReal m * moebiusReal n * kernel S w τ T m n else 0

/-- A finite convex sum preserves both fixed-factor inequalities. -/
theorem weighted_comparison (S : Finset ι) (w f : ι → ℝ) (A : ℝ)
    (hw : ∀ i ∈ S, 0 ≤ w i) (hmass : (∑ i ∈ S, w i) = 1)
    (h : ∀ i ∈ S, A ≤ 9 * f i ∧ f i ≤ 9 * A) :
    A ≤ 9 * (∑ i ∈ S, w i * f i) ∧
      (∑ i ∈ S, w i * f i) ≤ 9 * A := by
  constructor
  · calc
      A = ∑ i ∈ S, w i * A := by rw [← Finset.sum_mul, hmass, one_mul]
      _ ≤ ∑ i ∈ S, w i * (9 * f i) := Finset.sum_le_sum
        (fun i hi => mul_le_mul_of_nonneg_left (h i hi).1 (hw i hi))
      _ = 9 * (∑ i ∈ S, w i * f i) := by
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro i _
        ring
  · calc
      (∑ i ∈ S, w i * f i) ≤ ∑ i ∈ S, w i * (9 * A) :=
        Finset.sum_le_sum
          (fun i hi => mul_le_mul_of_nonneg_left (h i hi).2 (hw i hi))
      _ = 9 * A := by rw [← Finset.sum_mul, hmass, one_mul]

theorem energy_nonnegative (S : Finset ι) (w τ : ι → ℝ)
    {T : ℝ} (hT : 0 ≤ T) (hw : ∀ i ∈ S, 0 ≤ w i) :
    0 ≤ energy S w τ T :=
  Finset.sum_nonneg (fun i hi =>
    mul_nonneg (hw i hi) (phaseEnergy_nonnegative hT (τ i)))

/-- The source comparison is applied to every actual phase before averaging. -/
theorem energy_comparison (S : Finset ι) (w τ : ι → ℝ)
    {T : ℝ} (hT : 0 ≤ T) (hw : ∀ i ∈ S, 0 ≤ w i)
    (hmass : (∑ i ∈ S, w i) = 1) (hτ : ∀ i ∈ S, |τ i| ≤ 1) :
    pickupEnergy T ≤ 9 * energy S w τ T ∧
      energy S w τ T ≤ 9 * pickupEnergy T :=
  weighted_comparison S w (fun i => phaseEnergy T (τ i)) (pickupEnergy T)
    hw hmass (fun i hi => phaseEnergy_comparison hT (τ i) (hτ i hi))

/-- Finite Fubini is exact; the arithmetic coefficients are not randomized. -/
theorem energy_eq_kernel (S : Finset ι) (w τ : ι → ℝ) (T : ℝ) :
    energy S w τ T =
      ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        moebiusReal m * moebiusReal n * kernel S w τ T m n := by
  unfold energy
  simp_rw [phaseEnergy_eq_gram, Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro m _
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro n _
  calc
    _ = (moebiusReal m * moebiusReal n * pickupResponseGram T m n) *
        ∑ i ∈ S, w i * Real.cos (τ i * separation T m n) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro i _
      ring
    _ = _ := by unfold kernel; ring

/-- Probability normalization preserves the original diagonal exactly. -/
theorem kernel_diagonal (S : Finset ι) (w τ : ι → ℝ) (T : ℝ)
    (hmass : (∑ i ∈ S, w i) = 1) (n : ℕ) :
    kernel S w τ T n n = pickupResponseGram T n n := by
  simp [kernel, separation, hmass]

theorem kernel_symmetric (S : Finset ι) (w τ : ι → ℝ) (T : ℝ) (m n : ℕ) :
    kernel S w τ T m n = kernel S w τ T n m := by
  have hg : pickupResponseGram T m n = pickupResponseGram T n m := by
    unfold pickupResponseGram
    apply intervalIntegral.integral_congr
    intro u _
    exact mul_comm _ _
  have hs : separation T m n = -separation T n m := by
    unfold separation
    ring
  simp only [kernel, hg, hs, mul_neg, Real.cos_neg]

/-- No new diagonal estimate is needed for changing phase laws. -/
theorem energy_split (S : Finset ι) (w τ : ι → ℝ) (T : ℝ)
    (hmass : (∑ i ∈ S, w i) = 1) :
    energy S w τ T = pickupDiagonal T + cross S w τ T := by
  rw [energy_eq_kernel, complete_gram_split]
  simpa only [kernel_diagonal S w τ T hmass]

/-- A signed comparison after, not before, the complete sum is formed. -/
theorem cross_bounds (S : Finset ι) (w τ : ι → ℝ)
    {T : ℝ} (hT : 0 ≤ T) (hw : ∀ i ∈ S, 0 ≤ w i)
    (hmass : (∑ i ∈ S, w i) = 1) (hτ : ∀ i ∈ S, |τ i| ≤ 1) :
    pickupCross T ≤ 9 * cross S w τ T + 8 * pickupDiagonal T ∧
      cross S w τ T ≤ 9 * pickupCross T + 8 * pickupDiagonal T := by
  have h := energy_comparison S w τ hT hw hmass hτ
  rw [energy_split S w τ T hmass, pickupEnergy_eq_diagonal_add_cross hT] at h
  constructor <;> linarith [h.1, h.2]

theorem endpoint_bounds (S : Finset ι) (w τ : ι → ℝ)
    {T : ℝ} (hT : 0 ≤ T) (hw : ∀ i ∈ S, 0 ≤ w i)
    (hmass : (∑ i ∈ S, w i) = 1) (hτ : ∀ i ∈ S, |τ i| ≤ 1) :
    endpointSum T ≤ 9 * cross S w τ T + 16 * T^2 + 1/4 ∧
      cross S w τ T ≤ 9 * endpointSum T + 16 * T^2 + 9/4 := by
  have hc := cross_bounds S w τ hT hw hmass hτ
  have he := abs_le.mp (endpointSum_error hT)
  have hd := (pickupDiagonal_quadratic_bound hT).2
  constructor <;> linarith [hc.1, hc.2, he.1, he.2]

/-- A real quadratic value for arbitrary complex source coefficients.
This is the actual finite mixture of squared waveform norms. -/
def quadraticEnergy (S : Finset ι) (w τ : ι → ℝ) (T : ℝ) (a : ℕ → ℂ) : ℝ :=
  ∑ i ∈ S, w i *
    (∫ u in (0 : ℝ)..T,
      ‖waveform (Finset.Icc 1 ⌊Real.exp T⌋₊) (twisted T (τ i) a) u‖^2)

theorem quadraticEnergy_nonnegative (S : Finset ι) (w τ : ι → ℝ)
    {T : ℝ} (hT : 0 ≤ T) (a : ℕ → ℂ) (hw : ∀ i ∈ S, 0 ≤ w i) :
    0 ≤ quadraticEnergy S w τ T a := by
  apply Finset.sum_nonneg
  intro i hi
  apply mul_nonneg (hw i hi)
  rw [intervalIntegral.integral_of_le hT]
  exact integral_nonneg (fun u => sq_nonneg _)

/-- Arbitrary coefficients give a quadratic-form comparison, not merely a
comparison tested on one Mobius vector. -/
theorem quadraticEnergy_comparison (S : Finset ι) (w τ : ι → ℝ)
    {T : ℝ} (hT : 0 ≤ T) (a : ℕ → ℂ) (hw : ∀ i ∈ S, 0 ≤ w i)
    (hmass : (∑ i ∈ S, w i) = 1) (hτ : ∀ i ∈ S, |τ i| ≤ 1) :
    (∫ u in (0 : ℝ)..T,
      ‖waveform (Finset.Icc 1 ⌊Real.exp T⌋₊) a u‖^2) ≤
        9 * quadraticEnergy S w τ T a ∧
    quadraticEnergy S w τ T a ≤ 9 *
      (∫ u in (0 : ℝ)..T, ‖waveform (Finset.Icc 1 ⌊Real.exp T⌋₊) a u‖^2) := by
  apply weighted_comparison S w _ _ hw hmass
  intro i hi
  exact waveform_energy_comparison (Finset.Icc 1 ⌊Real.exp T⌋₊)
    (fun n hn => (Finset.mem_Icc.mp hn).1) a T (τ i) hT (hτ i hi)

theorem quadraticEnergy_source (S : Finset ι) (w τ : ι → ℝ) (T : ℝ) :
    quadraticEnergy S w τ T (fun n => (moebiusReal n : ℂ)) = energy S w τ T := by
  unfold quadraticEnergy energy
  simp_rw [source_energy_complex]

/-- The mixture may change at every outer time, even in cardinality.
Only normalization and bounded phases, not arithmetic growth, are required here. -/
theorem cross_subexponential_iff
    (S : ℝ → Finset ι) (w τ : ℝ → ι → ℝ) {G : Set ℝ}
    (hw : ∀ T ∈ G, 0 ≤ T → ∀ i ∈ S T, 0 ≤ w T i)
    (hmass : ∀ T ∈ G, 0 ≤ T → (∑ i ∈ S T, w T i) = 1)
    (hτ : ∀ T ∈ G, 0 ≤ T → ∀ i ∈ S T, |τ T i| ≤ 1) :
    SubexponentialOn (fun T => cross (S T) (w T) (τ T) T) G ↔
      SubexponentialOn pickupCross G := by
  have hd := global_const_mul pickupDiagonal_subexponential 8 (by norm_num)
  constructor
  · intro h
    apply subexponentialOn_mono (add_global (on_const_mul h 9 (by norm_num)) hd)
    intro T hG hT
    exact (cross_bounds (S T) (w T) (τ T) hT
      (hw T hG hT) (hmass T hG hT) (hτ T hG hT)).1
  · intro h
    apply subexponentialOn_mono (add_global (on_const_mul h 9 (by norm_num)) hd)
    intro T hG hT
    exact (cross_bounds (S T) (w T) (τ T) hT
      (hw T hG hT) (hmass T hG hT) (hτ T hG hT)).2

/-- The all-positive-rate source statement is unchanged by a scheduled finite law. -/
theorem dyadic_bound_iff
    (S : ℝ → Finset ι) (w τ : ℝ → ι → ℝ)
    (hw : ∀ T ∈ dyadicScales, 0 ≤ T → ∀ i ∈ S T, 0 ≤ w T i)
    (hmass : ∀ T ∈ dyadicScales, 0 ≤ T → (∑ i ∈ S T, w T i) = 1)
    (hτ : ∀ T ∈ dyadicScales, 0 ≤ T → ∀ i ∈ S T, |τ T i| ≤ 1) :
    SubexponentialOn (fun T => cross (S T) (w T) (τ T) T) dyadicScales ↔
      DyadicBirthBound :=
  (cross_subexponential_iff S w τ hw hmass hτ).trans
    (phaseCross_subexponential_iff.symm.trans phase_bound_iff_dyadicBirthBound)

/-- The established RH-throughpoint consumer is reused without an independent RH argument. -/
theorem dyadic_throughpoint
    (S : ℝ → Finset ι) (w τ : ℝ → ι → ℝ)
    (hw : ∀ T ∈ dyadicScales, 0 ≤ T → ∀ i ∈ S T, 0 ≤ w T i)
    (hmass : ∀ T ∈ dyadicScales, 0 ≤ T → (∑ i ∈ S T, w T i) = 1)
    (hτ : ∀ T ∈ dyadicScales, 0 ≤ T → ∀ i ∈ S T, |τ T i| ≤ 1)
    (hbudget : SubexponentialOn
      (fun T => cross (S T) (w T) (τ T) T) dyadicScales) :
    _root_.RiemannHypothesis ∧
      (∃ K : ℝ, 0 ≤ K ∧
        GRWTSK.NumberTheory.Chebyshev.TentPrimeConsequences.LogWindowSignedBound K) ∧
      PrimeWindowConclusion :=
  dyadic_arithmetic_throughpoint ((dyadic_bound_iff S w τ hw hmass hτ).mp hbudget)

/-- Uniform laws are constructed for every nonempty finite set, with no lower
bound on one selected atom's mass. -/
def uniformWeight (S : Finset ι) : ι → ℝ := fun _ => (S.card : ℝ)⁻¹

theorem uniformWeight_nonnegative (S : Finset ι) (i : ι) :
    0 ≤ uniformWeight S i := by unfold uniformWeight; positivity

theorem uniformWeight_mass (S : Finset ι) (hS : S.Nonempty) :
    (∑ i ∈ S, uniformWeight S i) = 1 := by
  have hcard : (S.card : ℝ) ≠ 0 := by
    exact_mod_cast (Finset.card_ne_zero.mpr hS)
  simp only [uniformWeight, Finset.sum_const, nsmul_eq_mul]
  exact mul_inv_cancel₀ hcard

theorem uniformEnergy_comparison (S : Finset ι) (hS : S.Nonempty) (τ : ι → ℝ)
    {T : ℝ} (hT : 0 ≤ T) (hτ : ∀ i ∈ S, |τ i| ≤ 1) :
    pickupEnergy T ≤ 9 * energy S (uniformWeight S) τ T ∧
      energy S (uniformWeight S) τ T ≤ 9 * pickupEnergy T :=
  energy_comparison S (uniformWeight S) τ hT
    (fun i _ => uniformWeight_nonnegative S i) (uniformWeight_mass S hS) hτ

/-- The one-atom law at zero is literally the original source energy. -/
theorem singleton_zero_energy {T : ℝ} (hT : 0 ≤ T) :
    energy ({()} : Finset Unit) (fun _ => 1) (fun _ => 0) T = pickupEnergy T := by
  simp [energy, phaseEnergy_zero hT]

end GRWTSK.NumberTheory.Moebius.PickupFinitePhaseLaw
