/- Copyright (c) 2026 grwtsk. MIT.
Imported results retain their upstream attribution and licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MertensSignedAbelReadoutGeometry
import Mathlib.Analysis.SpecialFunctions.Log.Basic

/-!
# Readout-preserving finite heat and its exact limitation

The source-visible rank-one component is fixed and the invisible component is
multiplied by exp(-t). This gives an explicit semigroup, inverse, and energy
contraction on the three response coordinates. Crucially, the signed arithmetic
readout is UNCHANGED. Contraction cannot manufacture an RH-strength estimate.
This is a finite response-space model, not the classical zeta/Newman heat flow.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.Moebius.MertensSignedAbelReadoutHeat

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBoundaryCore
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeExtraction
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeIncidences
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelTripleOperator
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelReadoutGeometry

/-- Heat acts only on the response directions invisible to the actual signed readout. -/
def readoutHeat (t : ℝ) (b : ℕ → ℝ) (v : ℕ) : ℝ :=
  readoutProjection b v + Real.exp (-t) * (b v - readoutProjection b v)

theorem readoutHeat_zero (b : ℕ → ℝ) : readoutHeat 0 b = b := by
  funext v
  simp [readoutHeat]

theorem readoutHeat_preserves (t : ℝ) (b : ℕ → ℝ) :
    signedReadout (readoutHeat t b) = signedReadout b := by
  simp [signedReadout, readoutHeat, readoutProjection]
  <;> ring

theorem projection_readoutHeat (t : ℝ) (b : ℕ → ℝ) :
    readoutProjection (readoutHeat t b) = readoutProjection b := by
  funext v
  change (if v = 1 then signedReadout (readoutHeat t b) / 3
    else if v = 2 ∨ v = 3 then -signedReadout (readoutHeat t b) / 3 else 0) = _
  rw [readoutHeat_preserves] <;> rfl

theorem readoutHeat_add (s t : ℝ) (b : ℕ → ℝ) :
    readoutHeat s (readoutHeat t b) = readoutHeat (s + t) b := by
  funext v
  change readoutProjection (readoutHeat t b) v +
    Real.exp (-s) * (readoutHeat t b v - readoutProjection (readoutHeat t b) v) = _
  rw [projection_readoutHeat]
  unfold readoutHeat
  rw [show -(s + t) = -s + -t by ring, Real.exp_add]
  ring

/-- Invertibility does not imply a scale-independent inverse stability constant. -/
theorem readoutHeat_inverse (t : ℝ) (b : ℕ → ℝ) :
    readoutHeat (-t) (readoutHeat t b) = b := by
  rw [readoutHeat_add, neg_add_cancel, readoutHeat_zero]

theorem readoutHeat_injective (t : ℝ) : Function.Injective (readoutHeat t) := by
  intro a b hab
  have h := congrArg (readoutHeat (-t)) hab
  simpa only [readoutHeat_inverse] using h

/-- Exact finite spectral split: stationary visible direction and damped invisible directions. -/
theorem heat_energy_split (t : ℝ) (b : ℕ → ℝ) :
    threeEnergy (readoutHeat t b) = threeEnergy (readoutProjection b) +
      Real.exp (-t) ^ 2 * threeEnergy (fun v => b v - readoutProjection b v) := by
  simp [threeEnergy, readoutHeat, readoutProjection, signedReadout]
  <;> ring

theorem projected_energy_le_heat (t : ℝ) (b : ℕ → ℝ) :
    threeEnergy (readoutProjection b) ≤ threeEnergy (readoutHeat t b) := by
  rw [heat_energy_split]
  exact le_add_of_nonneg_right
    (mul_nonneg (sq_nonneg _) (threeEnergy_nonneg _))

theorem heat_energy_le (t : ℝ) (ht : 0 ≤ t) (b : ℕ → ℝ) :
    threeEnergy (readoutHeat t b) ≤ threeEnergy b := by
  have hg : Real.exp (-t) ≤ 1 := by
    simpa only [Real.exp_zero] using Real.exp_le_exp.mpr (neg_nonpos.mpr ht)
  have hg0 := (Real.exp_pos (-t)).le
  have hsq : Real.exp (-t) ^ 2 ≤ 1 := by nlinarith
  have hm := mul_le_mul_of_nonneg_right hsq
    (threeEnergy_nonneg (fun v => b v - readoutProjection b v))
  rw [heat_energy_split, energy_split b]
  exact add_le_add_left (by simpa only [one_mul] using hm) _

/-- On the invisible subspace the inverse amplifies exactly, rather than recovering for free. -/
theorem heat_of_zero_readout (t : ℝ) (b : ℕ → ℝ) (hb : signedReadout b = 0) :
    readoutHeat t b = fun v => Real.exp (-t) * b v := by
  funext v
  simp [readoutHeat, readoutProjection, hb]

theorem inverse_energy_on_invisible (t : ℝ) (b : ℕ → ℝ) (hb : signedReadout b = 0) :
    threeEnergy (readoutHeat (-t) b) = Real.exp t ^ 2 * threeEnergy b := by
  rw [heat_of_zero_readout (-t) b hb]
  simp only [neg_neg, threeEnergy]
  ring

/-- Applying this heat to the actual arithmetic output changes no signed triple contribution. -/
theorem actual_triple_eq_heat_readout (width : ℕ → ℕ) (j : ℕ) (t : ℝ) :
    bulkPrefixFunctional width j (threePrimePrefix j) =
      signedReadout (readoutHeat t (responseProfile width j moebiusReal)) := by
  rw [readoutHeat_preserves]
  exact triple_eq_actual_readout width j

/-- Any apparent growth saving must already hold for the unsmoothed source. -/
theorem heat_readout_bound_iff (width : ℕ → ℕ) (j : ℕ) (t C : ℝ) :
    signedReadout (readoutHeat t (responseProfile width j moebiusReal)) ≤ C ↔
      bulkPrefixFunctional width j (threePrimePrefix j) ≤ C := by
  rw [← actual_triple_eq_heat_readout]

end GRWTSK.NumberTheory.Moebius.MertensSignedAbelReadoutHeat
