/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK mathematics and Mathlib retain upstream attribution/licenses. -/
import GRWTSK.MeasureAndIntegration.UniformBinProjection
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupEndpointQuadrature

/-!
# Actual signed pickup bin projection and endpoint certificate

No source is replaced: wholePickup, pickupVelocity, pickupDiagonal and
endpointSum are imported unchanged. The uniform bins cross birth events;
the actual causal response vanishes at birth, so no event jump is deleted.
Both residual estimates apply to the same defined centered-square integral.
The all-positive-rate arithmetic bound is NOT proved by choosing more bins.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupBinProjection
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.Analysis.Integration.IntervalMeanVariance
open GRWTSK.Analysis.Integration.UniformBinProjection
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

/-- The original step velocity, squared only after its signed prefix is formed. -/
def velocityEnergy (T : ℝ) : ℝ := ∫ u in (0 : ℝ)..T, pickupVelocity u ^ 2

def signedBinEnergy (T : ℝ) (m : ℕ) : ℝ := featureEnergy wholePickup T m
def signedBinResidual (T : ℝ) (m : ℕ) : ℝ := residualEnergy wholePickup T m

def coefficientMass (T : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, moebiusReal n ^ 2

def harmonicMass (T : ℝ) : ℝ := ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, (n : ℝ)⁻¹

def traceAllowance (T : ℝ) (m : ℕ) : ℝ :=
  coefficientMass T * (T ^ 3 / (12 * (m : ℝ) ^ 2) * harmonicMass T)

def signedAllowance (T : ℝ) (m : ℕ) : ℝ :=
  T ^ 2 / (8 * (m : ℝ) ^ 2) * velocityEnergy T

/-- This is the derivative energy already present in the maintained source. -/
theorem velocityEnergy_eq_mertens (T : ℝ) :
    velocityEnergy T = ∫ u in (0 : ℝ)..T,
      Real.exp (-u) * mertensPrefix (Real.exp u) ^ 2 := by
  apply intervalIntegral.integral_congr
  intro u _
  unfold pickupVelocity
  rw [mul_pow, pow_two (Real.exp _), ← Real.exp_add]
  congr 1
  congr 1
  ring

theorem velocity_sq_le_exp (u : ℝ) : pickupVelocity u ^ 2 ≤ Real.exp u := by
  have h := (sq_le_sq₀ (abs_nonneg _) (Real.exp_pos _).le).mpr (pickupVelocity_abs_le u)
  rw [sq_abs, pow_two (Real.exp _), ← Real.exp_add] at h
  convert h using 1 <;> congr 1 <;> ring

theorem velocity_sq_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable (fun u => pickupVelocity u ^ 2) volume a b := by
  apply (Real.continuous_exp.intervalIntegrable a b).mono_fun'
    (pickupVelocity_measurable.pow_const 2).aestronglyMeasurable
  exact ae_of_all _ (fun u => by
    simpa only [Real.norm_eq_abs, abs_of_nonneg (sq_nonneg _),
      abs_of_pos (Real.exp_pos _)] using velocity_sq_le_exp u)

theorem velocityEnergy_nonnegative {T : ℝ} (hT : 0 ≤ T) : 0 ≤ velocityEnergy T :=
  intervalIntegral.integral_nonneg_of_forall hT (fun _ => sq_nonneg _)

theorem velocityEnergy_le_exponential {T : ℝ} (hT : 0 ≤ T) :
    velocityEnergy T ≤ Real.exp T - 1 := by
  calc
    _ ≤ ∫ u in (0 : ℝ)..T, Real.exp u :=
      intervalIntegral.integral_mono_on hT (velocity_sq_intervalIntegrable 0 T)
        (Real.continuous_exp.intervalIntegrable 0 T) (fun u _ => velocity_sq_le_exp u)
    _ = _ := by
      rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
        (fun u _ => Real.hasDerivAt_exp u) (Real.continuous_exp.intervalIntegrable 0 T), Real.exp_zero]

theorem pickup_primitive_difference (x y : ℝ) :
    wholePickup y - wholePickup x = ∫ z in x..y, pickupVelocity z := by
  have h := intervalIntegral.integral_add_adjacent_intervals
    (pickupVelocity_intervalIntegrable 0 x) (pickupVelocity_intervalIntegrable x y)
  change wholePickup x + (∫ z in x..y, pickupVelocity z) = wholePickup y at h
  linarith

/-- First quantitative bound: it preserves the complete signed derivative. -/
theorem signedBinResidual_le_signed {T : ℝ} {m : ℕ} (hT : 0 < T) (hm : 0 < m) :
    signedBinResidual T m ≤ signedAllowance T m :=
  residualEnergy_le_derivative wholePickup_continuous pickupVelocity_intervalIntegrable
    velocity_sq_intervalIntegrable pickup_primitive_difference hT hm

/-- The actual causal response is the bounded primitive starting at its own birth. -/
theorem response_eq_atom_primitive {n : ℕ} (hn : 1 ≤ n) (u : ℝ) :
    pickupResponse n u = ∫ z in Real.log (n : ℝ)..u, pickupAtomVelocity n z := by
  by_cases h : Real.log (n : ℝ) ≤ u
  · have hi : (∫ z in Real.log (n : ℝ)..u, pickupAtomVelocity n z) =
        ∫ z in Real.log (n : ℝ)..u, Real.exp (-z / 2) := by
      apply intervalIntegral.integral_congr
      intro z hz
      rw [uIcc_of_le h] at hz
      simp only [pickupAtomVelocity, if_pos hz.1]
    rw [hi, pickup_negative_half_integral, pickup_exp_negative_log_half hn]
    simp only [pickupResponse, if_pos h]
  · have hu := (not_le.mp h).le
    have hz : (∫ z in u..Real.log (n : ℝ), pickupAtomVelocity n z) = 0 := by
      calc
        _ = ∫ z in u..Real.log (n : ℝ), (0 : ℝ) := by
          apply intervalIntegral.integral_congr_Ioo_of_le hu
          intro z hz
          simp only [pickupAtomVelocity, if_neg (not_le.mpr hz.2)]
        _ = 0 := intervalIntegral.integral_zero
    rw [intervalIntegral.integral_symm, hz]
    simp [pickupResponse, h]

theorem atom_bounds {n : ℕ} (hn : 1 ≤ n) (u : ℝ) :
    0 ≤ pickupAtomVelocity n u ∧ pickupAtomVelocity n u ≤ (Real.sqrt n)⁻¹ := by
  by_cases h : Real.log (n : ℝ) ≤ u
  · rw [pickupAtomVelocity, if_pos h]
    constructor
    · exact (Real.exp_pos _).le
    · rw [← pickup_exp_negative_log_half hn]
      exact Real.exp_le_exp.mpr (by linarith)
  · simp [pickupAtomVelocity, h, inv_nonneg.mpr (Real.sqrt_nonneg (n : ℝ))]

theorem response_lipschitz {n : ℕ} (hn : 1 ≤ n) (x y : ℝ) :
    |pickupResponse n x - pickupResponse n y| ≤ (Real.sqrt n)⁻¹ * |x - y| := by
  have ordered (a b : ℝ) (hab : a ≤ b) :
      |pickupResponse n b - pickupResponse n a| ≤ (Real.sqrt n)⁻¹ * (b - a) := by
    have he : pickupResponse n b - pickupResponse n a =
        ∫ z in a..b, pickupAtomVelocity n z := by
      rw [response_eq_atom_primitive hn a, response_eq_atom_primitive hn b]
      have hi := intervalIntegral.integral_add_adjacent_intervals
        (pickupAtomVelocity_intervalIntegrable n (Real.log n) a)
        (pickupAtomVelocity_intervalIntegrable n a b)
      linarith
    rw [he, abs_of_nonneg
      (intervalIntegral.integral_nonneg_of_forall hab (fun z => (atom_bounds hn z).1))]
    calc
      _ ≤ ∫ _z in a..b, (Real.sqrt n)⁻¹ :=
        intervalIntegral.integral_mono_on hab (pickupAtomVelocity_intervalIntegrable n a b)
          (intervalIntegrable_const _) (fun z _ => (atom_bounds hn z).2)
      _ = _ := by rw [intervalIntegral.integral_const]; simp only [smul_eq_mul]; ring
  rcases le_total x y with h | h
  · rw [abs_sub_comm (pickupResponse n x), abs_sub_comm x, abs_of_nonneg (sub_nonneg.mpr h)]
    exact ordered x y h
  · rw [abs_of_nonneg (sub_nonneg.mpr h)]
    exact ordered y x h

/-- A single original atom pays its explicit reciprocal-index trace cost. -/
theorem responseResidual_le {n : ℕ} (hn : 1 ≤ n) {T : ℝ} {m : ℕ}
    (hT : 0 < T) (hm : 0 < m) :
    residualEnergy (pickupResponse n) T m ≤ T ^ 3 / (12 * (m : ℝ) ^ 2) * (n : ℝ)⁻¹ := by
  have h := residualEnergy_le_lipschitz (pickupResponse_continuous hn) hT hm
    (inv_nonneg.mpr (Real.sqrt_nonneg _)) (fun x _ y _ => response_lipschitz hn x y)
  rw [inv_pow, Real.sq_sqrt (Nat.cast_nonneg n)] at h
  convert h using 1 <;> ring

/-- Second quantitative bound: coefficient mass and residual trace are both retained. -/
theorem signedBinResidual_le_trace {T : ℝ} {m : ℕ} (hT : 0 < T) (hm : 0 < m) :
    signedBinResidual T m ≤ traceAllowance T m := by
  let s := Finset.Icc 1 ⌊Real.exp T⌋₊
  have hf : ∀ n ∈ s, Continuous (pickupResponse n) :=
    fun n hn => pickupResponse_continuous (Finset.mem_Icc.mp hn).1
  have he : signedBinResidual T m =
      residualEnergy (fun u => ∑ n ∈ s, moebiusReal n * pickupResponse n u) T m :=
    residualEnergy_congr_on hT hm (fun u hu => wholePickup_fixed_inventory hu.1 hu.2)
  rw [he]
  calc
    _ ≤ coefficientMass T * ∑ n ∈ s, residualEnergy (pickupResponse n) T m :=
      residualEnergy_sum_le s moebiusReal pickupResponse hf hT hm
    _ ≤ coefficientMass T * ∑ n ∈ s,
        T ^ 3 / (12 * (m : ℝ) ^ 2) * (n : ℝ)⁻¹ := by
      apply mul_le_mul_of_nonneg_left _ (by unfold coefficientMass; positivity)
      exact Finset.sum_le_sum (fun n hn => responseResidual_le (Finset.mem_Icc.mp hn).1 hT hm)
    _ = traceAllowance T m := by rw [← Finset.mul_sum]; rfl

/-- The two estimates concern exactly the same residual, not independently fitted errors. -/
theorem signedBinResidual_le_min {T : ℝ} {m : ℕ} (hT : 0 < T) (hm : 0 < m) :
    signedBinResidual T m ≤ min (traceAllowance T m) (signedAllowance T m) :=
  le_min (signedBinResidual_le_trace hT hm) (signedBinResidual_le_signed hT hm)

theorem pickupEnergy_bin_split {T : ℝ} {m : ℕ} (hT : 0 < T) (hm : 0 < m) :
    pickupEnergy T = signedBinEnergy T m + signedBinResidual T m :=
  energy_split wholePickup_continuous hT hm

def endpointUpper (T : ℝ) (m : ℕ) : ℝ :=
  signedBinEnergy T m - pickupDiagonal T + 1 / 4 +
    min (traceAllowance T m) (signedAllowance T m)

/-- Unconditional source-bound endpoint upper certificate, with no arithmetic supplier. -/
theorem endpointSum_le_bin_upper {T : ℝ} {m : ℕ} (hT : 0 < T) (hm : 0 < m) :
    endpointSum T ≤ endpointUpper T m := by
  have he := (abs_le.mp (endpointSum_error hT.le)).2
  have hs := pickupEnergy_eq_diagonal_add_cross hT.le
  have hp := pickupEnergy_bin_split hT hm
  have hr := signedBinResidual_le_min hT hm
  unfold endpointUpper
  linarith

/-- More bins pay approximation accuracy, not cancellation of the feature energy. -/
theorem signedAllowance_le_one {T : ℝ} {m : ℕ} (hT : 0 < T) (hm : 0 < m)
    (hcount : T ^ 2 * (Real.exp T - 1) ≤ 8 * (m : ℝ) ^ 2) :
    signedAllowance T m ≤ 1 := by
  have hmreal : (0 : ℝ) < m := by exact_mod_cast hm
  have hc : 0 ≤ T ^ 2 / (8 * (m : ℝ) ^ 2) := by positivity
  have h := mul_le_mul_of_nonneg_left (velocityEnergy_le_exponential hT.le) hc
  unfold signedAllowance
  apply h.trans
  have hd : (0 : ℝ) < 8 * (m : ℝ) ^ 2 := by positivity
  calc
    T ^ 2 / (8 * (m : ℝ) ^ 2) * (Real.exp T - 1) =
        (T ^ 2 * (Real.exp T - 1)) / (8 * (m : ℝ) ^ 2) := by ring
    _ ≤ 1 := (div_le_iff₀ hd).mpr (by simpa only [one_mul] using hcount)

/-- The existing canonical RH return consumes the proved source comparison.
The arithmetic all-positive-rate witness is the sole premise here, not a new claim. -/
theorem riemannHypothesis_of_bin_upper_good_scales {G : Set ℝ}
    (bins : ℝ → ℕ) (hbins : ∀ T, 0 < bins T)
    (hcover : AffineFrequent G)
    (hbudget : SubexponentialOn (fun T => endpointUpper T (bins T)) G) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_endpoint_good_scales hcover
  intro ε hε
  obtain ⟨C, R, hC, hR, hb⟩ := hbudget ε hε
  refine ⟨C, max R 1, hC, le_trans hR (le_max_left _ _), ?_⟩
  intro T hG hT
  have hpos : 0 < T := lt_of_lt_of_le (by norm_num : (0 : ℝ) < 1)
    ((le_max_right R 1).trans hT)
  exact (endpointSum_le_bin_upper hpos (hbins T)).trans
    (hb T hG ((le_max_left R 1).trans hT))

end GRWTSK.NumberTheory.Moebius.PickupBinProjection
