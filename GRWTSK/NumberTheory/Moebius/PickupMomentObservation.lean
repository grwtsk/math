/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.PickupWeightedQAOA

/-!
# Observation-mass costs for finite pickup moments

Moment order q, circuit depth, Euclidean dimension and dyadic index are distinct.
The moment may be taken after any finite circuit. Normalization does not supply
source mass. A quantified entropy/radius allowance transfers to the EXISTING
DyadicBirthBound only after its actual moment and mass estimates are supplied.
No SK, Kakeya or exact-SAT theorem is imported as an axiom.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupMomentObservation

open GRWTSK.NumberTheory.Moebius.PickupOptimizationGap
open GRWTSK.NumberTheory.Moebius.PickupWeightedQAOA
open GRWTSK.NumberTheory.Moebius.PickupSpinCutComparison
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.PickupScaleTransport
open GRWTSK.Analysis.AsymptoticAnalysis.ArithmeticGridSubexponential
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QuantumMaxCut
  (bornWeight)

/-- Complete finite moment with the actual source magnitudes and Gram. -/
def gapMoment (T : ℝ) (ψ : Amplitude T) (q : ℕ) : ℝ :=
  ∑ s : Configuration T, bornWeight ψ s * trialGap T (extend T s) ^ q

/-- Any positive integral moment, not only the existing second-moment case. -/
theorem source_gap_of_moment {T : ℝ} (hT : 0 ≤ T)
    (ψ : Amplitude T) (q : ℕ) (hq : 0 < q)
    (m B : ℝ) (hm : 0 < m) (hB : 0 ≤ B)
    (hmass : m ≤ bornWeight ψ (fun i => sourceSpin i))
    (hbudget : gapMoment T ψ q ≤ m * B ^ q) : optimalityGap T ≤ B := by
  have hs := born_source_gap_power_le hT ψ q
  have hl := mul_le_mul_of_nonneg_right hmass
    (pow_nonneg (optimalityGap_nonnegative hT) q)
  have hp : m * optimalityGap T ^ q ≤ m * B ^ q := hl.trans (hs.trans hbudget)
  exact le_of_pow_le_pow_left₀ (Nat.ne_of_gt hq) hB ((mul_le_mul_left hm).mp hp)

/-- Exponential natural powers, proved here without a limiting operation. -/
theorem exp_power (x : ℝ) (q : ℕ) : Real.exp x ^ q = Real.exp ((q : ℝ) * x) := by
  induction q with
  | zero => simp
  | succ q ih =>
      rw [pow_succ, ih, ← Real.exp_add]
      congr 1
      push_cast
      ring

/-- Entropy is divided by MOMENT ORDER, not by circuit depth or dimension. -/
theorem entropy_balance (C r κ T : ℝ) (q : ℕ) :
    Real.exp (-((q : ℝ) * κ * T)) *
        (C * Real.exp ((r + κ) * T)) ^ q =
      (C * Real.exp (r * T)) ^ q := by
  simp only [mul_pow, exp_power]
  rw [mul_left_comm, ← Real.exp_add]
  congr 2
  ring

/-- Source mass and moment are separate, inspectable suppliers. -/
theorem source_gap_of_entropy_moment {T : ℝ} (hT : 0 ≤ T)
    (ψ : Amplitude T) (q : ℕ) (hq : 0 < q) (C r κ : ℝ) (hC : 0 ≤ C)
    (hmass : Real.exp (-((q : ℝ) * κ * T)) ≤
      bornWeight ψ (fun i => sourceSpin i))
    (hmoment : gapMoment T ψ q ≤ (C * Real.exp (r * T)) ^ q) :
    optimalityGap T ≤ C * Real.exp ((r + κ) * T) := by
  apply source_gap_of_moment hT ψ q hq
    (Real.exp (-((q : ℝ) * κ * T))) _ (Real.exp_pos _) (by positivity) hmass
  rw [entropy_balance]
  exact hmoment

/-- The complete carrier has N+1 Boolean labels, even when some are inactive. -/
theorem configuration_card (T : ℝ) :
    Fintype.card (Configuration T) = 2 ^ (⌊Real.exp T⌋₊ + 1) := by
  simp [Configuration, Fintype.card_fun]

/-- This is the actual uniform source probability, not an assumed sampling rate. -/
theorem uniform_source_mass (T : ℝ) :
    bornWeight (uniformState T) (fun i => sourceSpin i) =
      Real.exp (-((⌊Real.exp T⌋₊ + 1 : ℕ) : ℝ) * Real.log 2) := by
  rw [uniformState_bornWeight, configuration_card]
  have he := exp_power (Real.log 2) (⌊Real.exp T⌋₊ + 1)
  rw [Real.exp_log (by norm_num : (0 : ℝ) < 2)] at he
  rw [Nat.cast_pow, Nat.cast_ofNat, he, ← Real.exp_neg]
  congr 1
  ring

/-- At the dyadic clock the probability is exp(-(2^j+1)*log 2). -/
theorem uniform_source_mass_dyadic (j : ℕ) :
    bornWeight (uniformState (dyadicTime j)) (fun i => sourceSpin i) =
      Real.exp (-((2 ^ j + 1 : ℕ) : ℝ) * Real.log 2) := by
  rw [uniform_source_mass, dyadic_cutoff]

/-- Exact threshold for a proposed uniform-law entropy allowance. No hidden
q-to-infinity interchange or replacement of 2^j by j is permitted. -/
theorem uniform_mass_allowance_iff (q : ℕ) (κ : ℝ) (j : ℕ) :
    Real.exp (-((q : ℝ) * κ * dyadicTime j)) ≤
        bornWeight (uniformState (dyadicTime j)) (fun i => sourceSpin i) ↔
      ((2 ^ j + 1 : ℕ) : ℝ) * Real.log 2 ≤ (q : ℝ) * κ * dyadicTime j := by
  rw [uniform_source_mass_dyadic, Real.exp_le_exp]
  constructor <;> intro h <;> linarith

/-- A radius-loss norm estimate also pays b/q for observing a region of mass
rho^b. This cost does not disappear when the Kakeya loss eta tends to zero. -/
theorem source_gap_of_radius_moment (a b η C : ℝ) (j q : ℕ) (hq : 0 < q)
    (ψ : Amplitude (dyadicTime j)) (hC : 0 ≤ C)
    (hmass : radius a j ^ b ≤ bornWeight ψ (fun i => sourceSpin i))
    (hmoment : gapMoment (dyadicTime j) ψ q ≤ (C * radius a j ^ (-η)) ^ q) :
    optimalityGap (dyadicTime j) ≤ C * radius a j ^ (-(η + b / (q : ℝ))) := by
  have hqR : (q : ℝ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hq)
  have he : Real.exp (-((q : ℝ) * (a * b / (q : ℝ)) * dyadicTime j)) =
      radius a j ^ b := by
    rw [Real.rpow_def_of_pos (Real.exp_pos _)]
    simp only [radius, Real.log_exp]
    congr 1
    field_simp [hqR]
    <;> ring
  have hm : Real.exp (-((q : ℝ) * (a * b / (q : ℝ)) * dyadicTime j)) ≤
      bornWeight ψ (fun i => sourceSpin i) := by rw [he]; exact hmass
  have hmoment' : gapMoment (dyadicTime j) ψ q ≤
      (C * Real.exp ((a * η) * dyadicTime j)) ^ q := by
    simpa only [radius_loss] using hmoment
  have hs := source_gap_of_entropy_moment (dyadicTime_nonnegative j) ψ q hq
    C (a * η) (a * b / (q : ℝ)) hC hm hmoment'
  have hrate : a * η + a * b / (q : ℝ) = a * (η + b / (q : ℝ)) := by ring
  rw [hrate] at hs
  simpa only [radius_loss] using hs

/-- A fixed q is not silently uniform in j. The moment order and the state may
vary with p,j; C is uniform in j AFTER p and the positive radius loss are fixed.
The two unpaid rates are the norm/return rate r and observation rate κ. -/
theorem dyadicBirthBound_of_depth_entropy_moments
    (a : ℝ) (ha : 0 < a) (r κ : ℕ → ℝ)
    (ψ : (p j : ℕ) → Amplitude (dyadicTime j)) (q : ℕ → ℕ → ℕ)
    (hq : ∀ p j, 0 < q p j)
    (hsmall : ∀ ε : ℝ, 0 < ε → ∃ p : ℕ, r p + κ p ≤ ε)
    (hmass : ∀ p j, Real.exp (-((q p j : ℝ) * κ p * dyadicTime j)) ≤
      bornWeight (ψ p j) (fun i => sourceSpin i))
    (hmoment : ∀ p : ℕ, ∀ η : ℝ, 0 < η → ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
      gapMoment (dyadicTime j) (ψ p j) (q p j) ≤
        (C * Real.exp ((r p + a * η) * dyadicTime j)) ^ (q p j)) :
    DyadicBirthBound := by
  apply dyadicBirthBound_iff_optimalityGap.mpr
  apply (allGridUpper_iff_subexponentialOn log_two_positive).mp
  intro δ hδ
  obtain ⟨p, hp⟩ := hsmall (δ / 2) (by linarith)
  let η : ℝ := δ / (2 * a)
  have hη : 0 < η := div_pos hδ (mul_pos (by norm_num) ha)
  obtain ⟨C, hC, hb⟩ := hmoment p η hη
  refine ⟨C, hC, ?_⟩
  intro j
  have he : a * η = δ / 2 := by
    dsimp [η]
    field_simp [ha.ne']
    <;> ring
  have hr : r p + a * η + κ p ≤ δ := by rw [he]; linarith
  have hs := source_gap_of_entropy_moment (dyadicTime_nonnegative j)
    (ψ p j) (q p j) (hq p j) C (r p + a * η) (κ p) hC
    (hmass p j) (hb j)
  exact hs.trans (mul_le_mul_of_nonneg_left
    (Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_right hr (dyadicTime_nonnegative j))) hC)


/-! ## Fixed positive mass is a constant, not an exponent loss

The earlier unit-prefactor consumer is preserved. These refinements accept a
positive prefactor and an eventual starting index. Thus a verified mass floor
strictly below one need not be replaced by a positive entropy rate. The mass
must concern this exact source observation; a type-mass estimate for another
carrier is not silently used as the Born mass of a full spin assignment.
-/

/-- One constant works for every positive natural moment order. The sharper
factor m^(-1/q) is unnecessary for preserving all-positive growth rates. -/
theorem fixed_mass_power_allowance (m : ℝ) (hm : 0 < m)
    (q : ℕ) (hq : 0 < q) :
    1 ≤ m * (max 1 m⁻¹) ^ q := by
  let K : ℝ := max 1 m⁻¹
  have hK : 1 ≤ K := le_max_left _ _
  have hbase : 1 ≤ m * K := by
    calc
      1 = m * m⁻¹ := (mul_inv_cancel₀ hm.ne').symm
      _ ≤ m * K := mul_le_mul_of_nonneg_left (le_max_right _ _) hm.le
  have hp : ∀ n : ℕ, 1 ≤ K ^ n := by
    intro n
    induction n with
    | zero => simp
    | succ n ih =>
        rw [pow_succ]
        nlinarith
  cases q with
  | zero => omega
  | succ n =>
      change 1 ≤ m * K ^ (n + 1)
      calc
        1 ≤ m * K := hbase
        _ ≤ (m * K) * K ^ n :=
          le_mul_of_one_le_right (by positivity) (hp n)
        _ = m * K ^ (n + 1) := by rw [pow_succ]; ring

/-- A fixed positive observation prefactor only multiplies C. It is not an
extra entropy exponent, even when q varies with the dyadic scale. -/
theorem source_gap_of_prefactor_entropy_moment {T : ℝ} (hT : 0 ≤ T)
    (ψ : Amplitude T) (q : ℕ) (hq : 0 < q)
    (m C r κ : ℝ) (hm : 0 < m) (hC : 0 ≤ C)
    (hmass : m * Real.exp (-((q : ℝ) * κ * T)) ≤
      bornWeight ψ (fun i => sourceSpin i))
    (hmoment : gapMoment T ψ q ≤ (C * Real.exp (r * T)) ^ q) :
    optimalityGap T ≤ (max 1 m⁻¹ * C) * Real.exp ((r + κ) * T) := by
  let K : ℝ := max 1 m⁻¹
  have hK : 0 ≤ K := (by norm_num : (0 : ℝ) ≤ 1).trans (le_max_left _ _)
  have hfactor :
      (m * Real.exp (-((q : ℝ) * κ * T))) *
        ((K * C) * Real.exp ((r + κ) * T)) ^ q =
      (m * K ^ q) * (C * Real.exp (r * T)) ^ q := by
    calc
      _ = (m * K ^ q) *
          (Real.exp (-((q : ℝ) * κ * T)) *
            (C * Real.exp ((r + κ) * T)) ^ q) := by
        simp only [mul_pow]
        ring
      _ = _ := by rw [entropy_balance]
  apply source_gap_of_moment hT ψ q hq
    (m * Real.exp (-((q : ℝ) * κ * T)))
    ((K * C) * Real.exp ((r + κ) * T))
    (mul_pos hm (Real.exp_pos _))
    (mul_nonneg (mul_nonneg hK hC) (Real.exp_pos _).le) hmass
  rw [hfactor]
  have hscale := mul_le_mul_of_nonneg_right (fixed_mass_power_allowance m hm q hq)
    (pow_nonneg (mul_nonneg hC (Real.exp_pos _).le) q)
  exact hmoment.trans (by simpa only [one_mul] using hscale)

/-- Uniform positive mass removes the observation growth rate completely.
This uses the actual Born mass, not a mass from an unidentified type space. -/
theorem source_gap_of_uniform_mass_moment {T : ℝ} (hT : 0 ≤ T)
    (ψ : Amplitude T) (q : ℕ) (hq : 0 < q)
    (m C r : ℝ) (hm : 0 < m) (hC : 0 ≤ C)
    (hmass : m ≤ bornWeight ψ (fun i => sourceSpin i))
    (hmoment : gapMoment T ψ q ≤ (C * Real.exp (r * T)) ^ q) :
    optimalityGap T ≤ (max 1 m⁻¹ * C) * Real.exp (r * T) := by
  have hs := source_gap_of_prefactor_entropy_moment hT ψ q hq m C r 0 hm hC
    (by simpa using hmass) hmoment
  simpa only [add_zero] using hs

/-- Compose only the combined rate. The fixed positive mass and its onset may
vary with p, but not with the tested index j. The initial segment is absorbed
by the existing arithmetic-grid theorem. No separate vanishing of r and κ,
new arithmetic witness, or mass-identification assumption is concealed. -/
theorem dyadicBirthBound_of_prefactor_depth_entropy_moments
    (a : ℝ) (ha : 0 < a) (r κ mass : ℕ → ℝ) (start : ℕ → ℕ)
    (ψ : (p j : ℕ) → Amplitude (dyadicTime j)) (q : ℕ → ℕ → ℕ)
    (hq : ∀ p j, start p ≤ j → 0 < q p j)
    (hpositive : ∀ p, 0 < mass p)
    (hsmall : ∀ ε : ℝ, 0 < ε → ∃ p : ℕ, r p + κ p ≤ ε)
    (hmass : ∀ p j, start p ≤ j →
      mass p * Real.exp (-((q p j : ℝ) * κ p * dyadicTime j)) ≤
        bornWeight (ψ p j) (fun i => sourceSpin i))
    (hmoment : ∀ p : ℕ, ∀ η : ℝ, 0 < η → ∃ C : ℝ, 0 ≤ C ∧
      ∀ j : ℕ, start p ≤ j →
        gapMoment (dyadicTime j) (ψ p j) (q p j) ≤
          (C * Real.exp ((r p + a * η) * dyadicTime j)) ^ (q p j)) :
    DyadicBirthBound := by
  apply dyadicBirthBound_iff_optimalityGap.mpr
  apply (allGridUpper_iff_subexponentialOn log_two_positive).mp
  apply allGridUpper_of_eventual log_two_positive.le
  intro δ hδ
  obtain ⟨p, hp⟩ := hsmall (δ / 2) (by linarith)
  let η : ℝ := δ / (2 * a)
  have hη : 0 < η := div_pos hδ (mul_pos (by norm_num) ha)
  obtain ⟨C, hC, hb⟩ := hmoment p η hη
  have hK : 0 ≤ max (1 : ℝ) (mass p)⁻¹ :=
    (by norm_num : (0 : ℝ) ≤ 1).trans (le_max_left _ _)
  refine ⟨max 1 (mass p)⁻¹ * C, mul_nonneg hK hC, start p, ?_⟩
  intro j hj
  have he : a * η = δ / 2 := by
    dsimp [η]
    field_simp [ha.ne']
    <;> ring
  have hr : r p + a * η + κ p ≤ δ := by rw [he]; linarith
  have hs := source_gap_of_prefactor_entropy_moment (dyadicTime_nonnegative j)
    (ψ p j) (q p j) (hq p j hj) (mass p) C (r p + a * η) (κ p)
    (hpositive p) hC (hmass p j hj) (hb j hj)
  exact hs.trans (mul_le_mul_of_nonneg_left
    (Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_right hr (dyadicTime_nonnegative j)))
    (mul_nonneg hK hC))

end GRWTSK.NumberTheory.Moebius.PickupMomentObservation
