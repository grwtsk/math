/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.PickupOptimizationGap

/-!
# Finite weighted pickup circuits with an exact Born return

Use the existing mixer and Born carriers, but define the diagonal cost from
the ACTUAL complete weighted pickup, not an unweighted graph surrogate.
Construct the uniform input and prove its normalization. Every finite word
preserves normalization. Its expected optimization excess plus its signed
source-return defect is exactly the fixed Mobius optimization gap.

The source's Born probability is retained in the moment bound. Neither
normalization nor increasing depth proves that probability is large, that
the signed return is small, or that the deterministic source has SK disorder.
No p-to-infinity convergence or arithmetic growth witness is asserted.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupWeightedQAOA

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupSpinCutComparison
open GRWTSK.NumberTheory.Moebius.PickupOptimizationGap
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QuantumMaxCut
  (bornWeight bornWeight_nonneg IsNormalized)
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAFiniteLocality
  (mixerLayer)
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAGateFactorization
  (mixerLayer_normalized)

abbrev Amplitude (T : ℝ) := Configuration T → ℂ

/-- Uniform superposition on the complete finite carrier, including inactive labels. -/
def uniformState (T : ℝ) : Amplitude T := fun _ =>
  ((Real.sqrt (Fintype.card (Configuration T) : ℝ))⁻¹ : ℝ)

theorem uniformState_bornWeight (T : ℝ) (s : Configuration T) :
    bornWeight (uniformState T) s = (Fintype.card (Configuration T) : ℝ)⁻¹ := by
  change Complex.normSq (((Real.sqrt (Fintype.card (Configuration T) : ℝ))⁻¹ : ℝ) : ℂ) = _
  have hr (x : ℝ) : Complex.normSq (x : ℂ) = x ^ 2 := by
    simp [Complex.normSq_apply, pow_two]
  rw [hr, inv_pow, Real.sq_sqrt (Nat.cast_nonneg _)]

theorem uniformState_normalized (T : ℝ) : IsNormalized (uniformState T) := by
  have hp : (0 : ℝ) < Fintype.card (Configuration T) := by
    exact_mod_cast (Fintype.card_pos : 0 < Fintype.card (Configuration T))
  unfold IsNormalized
  simp only [uniformState_bornWeight, Finset.sum_const, Finset.card_univ, nsmul_eq_mul]
  exact mul_inv_cancel₀ hp.ne'

def costLayer (T γ : ℝ) (ψ : Amplitude T) : Amplitude T := fun s =>
  Complex.exp (-Complex.I * ((γ * finiteTrial T s : ℝ) : ℂ)) * ψ s

theorem real_cost_phase_normSq_one (x : ℝ) :
    Complex.normSq (Complex.exp (-Complex.I * (x : ℂ))) = 1 := by
  have he : -Complex.I * (x : ℂ) = ((-x : ℝ) : ℂ) * Complex.I := by
    push_cast
    ring
  rw [he, Complex.normSq_eq_norm_sq, Complex.norm_exp_ofReal_mul_I]
  norm_num

theorem costLayer_bornWeight (T γ : ℝ) (ψ : Amplitude T) (s : Configuration T) :
    bornWeight (costLayer T γ ψ) s = bornWeight ψ s := by
  simp only [costLayer, bornWeight, Complex.normSq_mul, real_cost_phase_normSq_one, one_mul]

theorem costLayer_normalized (T γ : ℝ) (ψ : Amplitude T) (hψ : IsNormalized ψ) :
    IsNormalized (costLayer T γ ψ) := by
  unfold IsNormalized at *
  simp_rw [costLayer_bornWeight]
  exact hψ

def round (T γ β : ℝ) (ψ : Amplitude T) : Amplitude T :=
  mixerLayer β (costLayer T γ ψ)

theorem round_normalized (T γ β : ℝ) (ψ : Amplitude T) (hψ : IsNormalized ψ) :
    IsNormalized (round T γ β ψ) :=
  mixerLayer_normalized β _ (costLayer_normalized T γ ψ hψ)

/-- Order is literal: the first angle pair acts first. -/
def circuit (T : ℝ) (angles : List (ℝ × ℝ)) (ψ : Amplitude T) : Amplitude T :=
  angles.foldl (fun current pair => round T pair.1 pair.2 current) ψ

theorem circuit_normalized (T : ℝ) (angles : List (ℝ × ℝ))
    (ψ : Amplitude T) (hψ : IsNormalized ψ) : IsNormalized (circuit T angles ψ) := by
  induction angles generalizing ψ with
  | nil => simpa [circuit] using hψ
  | cons pair rest ih =>
      change IsNormalized (circuit T rest (round T pair.1 pair.2 ψ))
      exact ih _ (round_normalized T pair.1 pair.2 ψ hψ)

def expectedTrial (T : ℝ) (ψ : Amplitude T) : ℝ :=
  ∑ s : Configuration T, bornWeight ψ s * finiteTrial T s

def expectedGap (T : ℝ) (ψ : Amplitude T) : ℝ :=
  ∑ s : Configuration T, bornWeight ψ s * trialGap T (extend T s)

def expectedReturn (T : ℝ) (ψ : Amplitude T) : ℝ :=
  ∑ s : Configuration T, bornWeight ψ s * returnDefect T (extend T s)

theorem uniform_expectedTrial_zero (T : ℝ) : expectedTrial T (uniformState T) = 0 := by
  unfold expectedTrial
  simp_rw [uniformState_bornWeight]
  rw [← Finset.mul_sum, sum_finiteTrial_zero, mul_zero]

theorem expectedGap_nonnegative (T : ℝ) (ψ : Amplitude T) : 0 ≤ expectedGap T ψ :=
  Finset.sum_nonneg (fun s _ => mul_nonneg (bornWeight_nonneg ψ s)
    (trialGap_nonnegative T (extend T s)))

theorem expectedGap_eq (T : ℝ) (ψ : Amplitude T) (hψ : IsNormalized ψ) :
    expectedGap T ψ = expectedTrial T ψ - optimum T := by
  unfold expectedGap trialGap expectedTrial finiteTrial
  simp_rw [mul_sub]
  rw [Finset.sum_sub_distrib, ← Finset.sum_mul,
    show (∑ s : Configuration T, bornWeight ψ s) = 1 from hψ, one_mul]

/-- Depth zero already has a polynomial average optimization gap. The remaining
arithmetic information cannot be replaced by this average alone. -/
theorem uniform_expectedGap_eq (T : ℝ) :
    expectedGap T (uniformState T) = -optimum T := by
  rw [expectedGap_eq T _ (uniformState_normalized T), uniform_expectedTrial_zero]
  ring

theorem uniform_expectedGap_bounds {T : ℝ} (hT : 0 ≤ T) :
    0 ≤ expectedGap T (uniformState T) ∧
      expectedGap T (uniformState T) ≤ pickupDiagonal T := by
  rw [uniform_expectedGap_eq]
  have ho := optimum_bounds hT
  constructor <;> linarith [ho.1, ho.2]

/-- The actual normalized law is substituted into the existing signed return. -/
theorem born_gap_return {T : ℝ} (hT : 0 ≤ T) (ψ : Amplitude T)
    (hψ : IsNormalized ψ) :
    optimalityGap T = expectedGap T ψ + expectedReturn T ψ := by
  have hs := averaged_source_return (Finset.univ : Finset (Configuration T))
    (bornWeight ψ) (extend T) hψ hT
  change pickupCross T = expectedTrial T ψ + expectedReturn T ψ at hs
  have he := expectedGap_eq T ψ hψ
  unfold optimalityGap
  linarith

/-- For the uniform input, the unpaid return is exactly the original cross sum. -/
theorem uniform_expectedReturn_eq {T : ℝ} (hT : 0 ≤ T) :
    expectedReturn T (uniformState T) = pickupCross T := by
  have he := born_gap_return hT (uniformState T) (uniformState_normalized T)
  rw [uniform_expectedGap_eq] at he
  unfold optimalityGap at he
  linarith

/-- No free normalization or source-return hypothesis remains for this finite circuit. -/
theorem circuit_gap_return {T : ℝ} (hT : 0 ≤ T) (angles : List (ℝ × ℝ)) :
    optimalityGap T = expectedGap T (circuit T angles (uniformState T)) +
      expectedReturn T (circuit T angles (uniformState T)) :=
  born_gap_return hT _ (circuit_normalized T angles _ (uniformState_normalized T))

/-- A distinguished arithmetic outcome is not free to extract from an average. -/
theorem born_source_gap_power_le {T : ℝ} (hT : 0 ≤ T) (ψ : Amplitude T) (q : ℕ) :
    bornWeight ψ (fun i => sourceSpin i) * optimalityGap T ^ q ≤
      ∑ s : Configuration T, bornWeight ψ s * trialGap T (extend T s) ^ q := by
  have h := weighted_trialGap_power_le (Finset.univ : Finset (Configuration T))
    (bornWeight ψ) (extend T) T q (fun s _ => bornWeight_nonneg ψ s)
    (Finset.mem_univ (fun i => sourceSpin i))
  have he : trialGap T (extend T (fun i => sourceSpin i)) = optimalityGap T := by
    change finiteTrial T (fun i => sourceSpin i) - optimum T = pickupCross T - optimum T
    rw [finiteTrial_restrict, trial_source_eq_cross hT]
  rw [he] at h
  exact h

/-- A concrete average-to-source second-moment transfer. Positive source mass
must be proved; dropping it would replace the deterministic observation by an
unrelated average. This finite bridge can consume a source-exact L2 estimate. -/
theorem source_gap_le_of_born_second_moment {T : ℝ} (hT : 0 ≤ T)
    (ψ : Amplitude T) (m B : ℝ) (hm : 0 < m) (hB : 0 ≤ B)
    (hmass : m ≤ bornWeight ψ (fun i => sourceSpin i))
    (hmoment : (∑ s : Configuration T,
      bornWeight ψ s * trialGap T (extend T s) ^ 2) ≤ m * B ^ 2) :
    optimalityGap T ≤ B := by
  have hs := born_source_gap_power_le hT ψ 2
  have hl := mul_le_mul_of_nonneg_right hmass (sq_nonneg (optimalityGap T))
  have hp : m * optimalityGap T ^ 2 ≤ m * B ^ 2 := hl.trans (hs.trans hmoment)
  have hsq : optimalityGap T ^ 2 ≤ B ^ 2 := (mul_le_mul_left hm).mp hp
  nlinarith [optimalityGap_nonnegative hT]

end GRWTSK.NumberTheory.Moebius.PickupWeightedQAOA
