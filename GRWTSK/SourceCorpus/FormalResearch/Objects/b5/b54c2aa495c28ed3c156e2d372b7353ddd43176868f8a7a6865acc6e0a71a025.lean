import FormalResearch.RiemannHypothesis.GevreyPolynomial
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
import FormalResearch.RiemannHypothesis.Conversation.SmallDivisorBound
import Mathlib.MeasureTheory.Function.EssSup
import Mathlib.Data.EReal.Basic
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.Tactic

/-!
# The original signed supplier on the fixed arithmetic lattice

These definitions retain the prescribed bump, ordinary second derivative,
integral normalization, closed integer cutoff, both strict polarity sectors,
the moving reset, and all real scales. The supplier is an open proposition,
not an axiom or an admitted theorem. Extended-real essential suprema implement
the stipulated value `−∞` for an empty sector without totalizing an infinite
meter to zero.

Research direction: grwtsk contributors. Formal implementation: OpenAI Codex.
Source history: audited conversation Batches 32, 37 and 38 in formal-research.
-/

set_option autoImplicit false

noncomputable section
namespace FormalResearch.RiemannHypothesis.Conversation.OriginalSignedSupplier

open MeasureTheory Set Filter
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.GevreyPolynomial
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensAbel

/-- The actual integral normalization of the ordinary prescribed source. -/
def sourceZ (A : ℝ) : ℝ :=
  ∫ x : ℝ, |deriv (deriv (scaledBump A)) x - scaledBump A x / 4| ^ 2

/-- No source parameter or normalization is chosen by the argument. -/
def prescribedSource (A x : ℝ) : ℝ :=
  (deriv (deriv (scaledBump A)) x - scaledBump A x / 4) / Real.sqrt (sourceZ A)

/-- The prescribed correlation in this module, with the following exact parameterization.

def prescribedCorrelation (A t : ℝ) : ℝ := ∫ x : ℝ, prescribedSource A x * prescribedSource A
(x - t)
-/
def prescribedCorrelation (A t : ℝ) : ℝ :=
  ∫ x : ℝ, prescribedSource A x * prescribedSource A (x - t)

/-- The genuine Gram matrix, with its correlations retained. -/
def prescribedGram (A : ℝ) (m n : ℕ) : ℝ :=
  prescribedCorrelation A (Real.log ((m : ℝ) / (n : ℝ)))

/-- The integer cutoff in this module, with the following exact parameterization.

def integerCutoff (A : ℝ) : ℕ := ⌊Real.exp (2 * A)⌋₊
-/
def integerCutoff (A : ℝ) : ℕ := ⌊Real.exp (2 * A)⌋₊

/-- Every integer from 2 through the closed cutoff is included. -/
def literalKernel (A t : ℝ) : ℝ :=
  ∑ k ∈ Finset.Icc 2 (integerCutoff A),
    Real.log (k : ℝ) / Real.sqrt (k : ℝ) *
      (deriv (deriv (prescribedCorrelation A)) (t + Real.log (k : ℝ)) -
        deriv (prescribedCorrelation A) (t + Real.log (k : ℝ)) / 2)

/-- The reading window in this module, with the following exact parameterization.

def readingWindow (A : ℝ) : Set ℝ := Icc (2 * Real.log A) (2 * A)
-/
def readingWindow (A : ℝ) : Set ℝ := Icc (2 * Real.log A) (2 * A)

/-- The closed-right Möbius recording, including the silent zero coefficient. -/
def arithmeticRecording (x : ℝ) : ℝ := mertens x

/-- The pickup density in this module, with the following exact parameterization.

def pickupDensity (u : ℝ) : ℝ := Real.exp (-u / 2) * arithmeticRecording (Real.exp u)
-/
def pickupDensity (u : ℝ) : ℝ := Real.exp (-u / 2) * arithmeticRecording (Real.exp u)

/-- Clipping the upper integral endpoint gives exactly the prescribed zero
extension on negative times. -/
def pickup (t : ℝ) : ℝ := ∫ u in (0 : ℝ)..max 0 t, pickupDensity u

/-- The centered pickup in this module, with the following exact parameterization.

def centeredPickup (A t : ℝ) : ℝ := pickup t - pickup (2 * Real.log A)
-/
def centeredPickup (A t : ℝ) : ℝ := pickup t - pickup (2 * Real.log A)

/-- Zero is included before taking the supremum of the closed reading interval. -/
def positiveEnvelope (T : ℝ) : ℝ := sSup (insert 0 (pickup '' Icc 0 T))

/-- The sector is silent at every scalar kernel zero. -/
def polaritySector (A σ : ℝ) : Set ℝ :=
  {t | t ∈ readingWindow A ∧ 0 < σ * literalKernel A t}

/-- The sector readout in this module, with the following exact parameterization.

def sectorReadout (A σ t : ℝ) : EReal  (implemented by the following proof).
-/
def sectorReadout (A σ t : ℝ) : EReal := by
  classical
  exact if t ∈ polaritySector A σ then (σ * centeredPickup A t : ℝ) else ⊥

/-- The signed meter in this module, with the following exact parameterization.

def signedMeter (A : ℝ) : EReal := max 0 (max (essSup (sectorReadout A 1) volume) (essSup
(sectorReadout A (-1)) volume))
-/
def signedMeter (A : ℝ) : EReal :=
  max 0 (max (essSup (sectorReadout A 1) volume)
    (essSup (sectorReadout A (-1)) volume))

/-- The supplier allowance in this module, with the following exact parameterization.

def supplierAllowance (K₀ D p A : ℝ) : ℝ := (1 + K₀ / A) / Real.sqrt 2 * positiveEnvelope (2 *
A) + D * A ^ p
-/
def supplierAllowance (K₀ D p A : ℝ) : ℝ :=
  (1 + K₀ / A) / Real.sqrt 2 * positiveEnvelope (2 * A) + D * A ^ p

/-- The exact open supplier assertion, including every real scale and the
original two-sector essential-supremum meter. -/
def SupplierEstimate : Prop :=
  ∃ K₀ D p R : ℝ, 0 ≤ K₀ ∧ 0 ≤ D ∧ 0 ≤ p ∧ max 1 (4 * K₀) ≤ R ∧
    ∀ A : ℝ, R ≤ A → signedMeter A ≤ (supplierAllowance K₀ D p A : EReal)

theorem sourceZ_eq (A : ℝ) (hA : 1 ≤ A) : sourceZ A = sourceNormalization A := by
  have hp : 0 < A := by linarith
  unfold sourceZ
  rw [second_scaledBump hp]
  simp_rw [sq_abs]
  exact BridgeNormalization.explicit_normalization A hA

theorem sourceZ_pos (A : ℝ) (hA : 1 ≤ A) : 0 < sourceZ A := by
  rw [sourceZ_eq A hA]
  exact source_normalization_pos A hA

theorem prescribedSource_eq (A : ℝ) (hA : 1 ≤ A) :
    prescribedSource A = normalizedTest explicitSecondDerivative A := by
  have hp : 0 < A := by linarith
  funext x
  simp only [prescribedSource, second_scaledBump hp, sourceZ_eq A hA,
    normalizedTest, dilationTest]

theorem prescribedCorrelation_eq (A : ℝ) (hA : 1 ≤ A) :
    prescribedCorrelation A = sourceCorrelation explicitSecondDerivative A := by
  funext t
  simp only [prescribedCorrelation, prescribedSource_eq A hA, sourceCorrelation]

theorem arithmeticRecording_measurable : Measurable arithmeticRecording := by
  exact (measurable_of_countable mertensNat).comp (Nat.measurable_floor (R := ℝ))

theorem pickupDensity_measurable : Measurable pickupDensity := by
  exact (Real.continuous_exp.comp ((continuous_id.neg).div_const 2)).measurable.mul
    (arithmeticRecording_measurable.comp Real.continuous_exp.measurable)

theorem pickupDensity_abs_le (u : ℝ) : |pickupDensity u| ≤ Real.exp (u / 2) := by
  have hm := GRWTSK.RiemannHypothesis.Conversation.SmallDivisorBound.mertens_abs_le
    (Real.exp_pos u).le
  calc
    |pickupDensity u| = Real.exp (-u / 2) * |mertens (Real.exp u)| := by
      simp [pickupDensity, arithmeticRecording, abs_mul]
    _ ≤ Real.exp (-u / 2) * Real.exp u :=
      mul_le_mul_of_nonneg_left hm (Real.exp_pos _).le
    _ = Real.exp (u / 2) := by rw [← Real.exp_add]; congr 1; ring

theorem pickupDensity_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable pickupDensity volume a b := by
  apply ((Real.continuous_exp.comp (continuous_id.div_const 2)).intervalIntegrable a b).mono_fun'
    pickupDensity_measurable.aestronglyMeasurable
  exact ae_of_all _ fun u => by
    simpa only [Real.norm_eq_abs, Function.comp_apply, id_eq] using pickupDensity_abs_le u

theorem pickup_continuous : Continuous pickup := by
  exact (intervalIntegral.continuous_primitive pickupDensity_intervalIntegrable 0).comp
    (continuous_const.max continuous_id)

theorem pickup_eq_integral {t : ℝ} (ht : 0 ≤ t) :
    pickup t = ∫ u in (0 : ℝ)..t, pickupDensity u := by
  simp only [pickup, max_eq_right ht]

theorem pickup_eq_zero {t : ℝ} (ht : t ≤ 0) : pickup t = 0 := by
  simp [pickup, max_eq_left ht]

theorem centeredPickup_continuous (A : ℝ) : Continuous (centeredPickup A) :=
  pickup_continuous.sub continuous_const

theorem sectorReadout_bot_of_not_mem {A σ t : ℝ} (ht : t ∉ polaritySector A σ) :
    sectorReadout A σ t = ⊥ := by simp [sectorReadout, ht]

theorem sectorReadout_le_iff (A σ L : ℝ) :
    (∀ᵐ t ∂volume, sectorReadout A σ t ≤ (L : EReal)) ↔
      ∀ᵐ t ∂volume, t ∈ polaritySector A σ → σ * centeredPickup A t ≤ L := by
  constructor
  · intro h
    filter_upwards [h] with t ht hmem
    have he : (σ * centeredPickup A t : ℝ) ≤ (L : EReal) := by
      simpa only [sectorReadout, if_pos hmem] using ht
    exact EReal.coe_le_coe_iff.mp he
  · intro h
    filter_upwards [h] with t ht
    by_cases hm : t ∈ polaritySector A σ
    · simpa only [sectorReadout, if_pos hm] using EReal.coe_le_coe_iff.mpr (ht hm)
    · simp [sectorReadout, hm]

/-- The original essential-supremum meter is exactly equivalent to the two
almost-everywhere signed inequalities for every nonnegative real budget. -/
theorem signedMeter_le_iff (A L : ℝ) (hL : 0 ≤ L) :
    signedMeter A ≤ (L : EReal) ↔
      (∀ᵐ t ∂volume, t ∈ polaritySector A 1 → centeredPickup A t ≤ L) ∧
      (∀ᵐ t ∂volume, t ∈ polaritySector A (-1) → -centeredPickup A t ≤ L) := by
  have hsector (σ : ℝ) :
      essSup (sectorReadout A σ) volume ≤ (L : EReal) ↔
        ∀ᵐ t ∂volume, t ∈ polaritySector A σ → σ * centeredPickup A t ≤ L := by
    rw [← sectorReadout_le_iff]
    constructor
    · intro h
      exact (ae_le_essSup (f := sectorReadout A σ)).mono fun _ ht => ht.trans h
    · exact essSup_le_of_ae_le _
  simp only [signedMeter, max_le_iff, hsector, one_mul, neg_one_mul]
  have hz : (0 : EReal) ≤ (L : EReal) := by exact_mod_cast hL
  simp only [hz, true_and]

end FormalResearch.RiemannHypothesis.Conversation.OriginalSignedSupplier
