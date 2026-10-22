/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Finite cyclic endpoint coordinates and elementary identities.  The original
endpoint declarations below retain their names, types, bodies, and attributes.
This module has no arithmetic endpoint or all-scale cancellation dependency.
-/
import Mathlib.Analysis.Fourier.ZMod

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open AddChar

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Ambient cyclic modulus used only after the strict endpoint no-wrap theorem
has embedded every ordinary endpoint into `[0,2^(j+1))`. -/
def coreGrowingShiftEndpointFourierModulus (j : ℕ) : ℕ :=
  2 ^ (j + 1)

instance coreGrowingShiftEndpointFourierModulus_neZero (j : ℕ) :
    NeZero (coreGrowingShiftEndpointFourierModulus j) :=
  ⟨by unfold coreGrowingShiftEndpointFourierModulus; positivity⟩

/-- Frequency and zero-padded endpoint coordinate at scale `j`. -/
abbrev CoreGrowingShiftEndpointFourierIndex (j : ℕ) :=
  ZMod (coreGrowingShiftEndpointFourierModulus j)


/-- Doubled cyclic modulus.  The endpoint window has length `Y`, while the
ambient group has length `2Y`, so every ordinary positive difference below
`Y` has its literal canonical representative. -/
def coreGrowingShiftEndpointDoubledFourierModulus (j : ℕ) : ℕ :=
  2 * coreGrowingShiftEndpointFourierModulus j

instance coreGrowingShiftEndpointDoubledFourierModulus_neZero (j : ℕ) :
    NeZero (coreGrowingShiftEndpointDoubledFourierModulus j) :=
  ⟨by
    unfold coreGrowingShiftEndpointDoubledFourierModulus
      coreGrowingShiftEndpointFourierModulus
    positivity⟩

/-- Doubled endpoint coordinate and frequency group. -/
abbrev CoreGrowingShiftEndpointDoubledFourierIndex (j : ℕ) :=
  ZMod (coreGrowingShiftEndpointDoubledFourierModulus j)


/-- Negative additive character evaluated on an ordinary representative. -/
def coreGrowingShiftEndpointTransverseNatCharacter
    (j : ℕ)
    (u : CoreGrowingShiftEndpointDoubledFourierIndex j)
    (n : ℕ) : ℂ :=
  ZMod.stdAddChar
    (-((n : CoreGrowingShiftEndpointDoubledFourierIndex j) * u))

/-- Successor relation for the negative ordinary character. -/
theorem coreGrowingShiftEndpointTransverseNatCharacter_succ_mul
    (j : ℕ)
    (u : CoreGrowingShiftEndpointDoubledFourierIndex j)
    (n : ℕ) :
    coreGrowingShiftEndpointTransverseNatCharacter j u (n + 1) *
        ZMod.stdAddChar u =
      coreGrowingShiftEndpointTransverseNatCharacter j u n := by
  unfold coreGrowingShiftEndpointTransverseNatCharacter
  rw [← map_add_eq_mul]
  congr 1
  push_cast
  ring


/-- Circular distance of a doubled transverse frequency from zero. -/
def coreGrowingShiftEndpointTransverseCircularDistance
    (j : ℕ)
    (u : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℕ :=
  min u.val (-u).val

/-- Circular transverse distance vanishes exactly at the zero frequency. -/
theorem coreGrowingShiftEndpointTransverseCircularDistance_eq_zero_iff
    (j : ℕ)
    (u : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointTransverseCircularDistance j u = 0 ↔ u = 0 := by
  constructor
  · intro h
    by_cases hu : u = 0
    · exact hu
    · have huval : 0 < u.val := by
        exact Nat.pos_of_ne_zero ((ZMod.val_eq_zero u).not.mpr hu)
      have hnu : -u ≠ 0 := neg_ne_zero.mpr hu
      have hnuval : 0 < (-u).val := by
        exact Nat.pos_of_ne_zero ((ZMod.val_eq_zero (-u)).not.mpr hnu)
      unfold coreGrowingShiftEndpointTransverseCircularDistance at h
      omega
  · rintro rfl
    simp [coreGrowingShiftEndpointTransverseCircularDistance]

/-- Circular distance is invariant under frequency negation. -/
theorem coreGrowingShiftEndpointTransverseCircularDistance_neg
    (j : ℕ)
    (u : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointTransverseCircularDistance j (-u) =
      coreGrowingShiftEndpointTransverseCircularDistance j u := by
  simp [coreGrowingShiftEndpointTransverseCircularDistance, min_comm]

/-- Exact transverse finite-difference multiplier. -/
def coreGrowingShiftEndpointTransverseMultiplier
    (j : ℕ)
    (u : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  ZMod.stdAddChar u - 1

/-- The transverse multiplier vanishes exactly at frequency zero. -/
theorem coreGrowingShiftEndpointTransverseMultiplier_eq_zero_iff
    (j : ℕ)
    (u : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointTransverseMultiplier j u = 0 ↔ u = 0 := by
  unfold coreGrowingShiftEndpointTransverseMultiplier
  rw [sub_eq_zero]
  constructor
  · intro h
    apply ZMod.injective_stdAddChar
    simpa using h
  · rintro rfl
    simp

/-- Nonzero transverse frequency has a nonzero finite-difference multiplier. -/
theorem coreGrowingShiftEndpointTransverseMultiplier_ne_zero
    {j : ℕ}
    {u : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (hu : u ≠ 0) :
    coreGrowingShiftEndpointTransverseMultiplier j u ≠ 0 := by
  exact
    (coreGrowingShiftEndpointTransverseMultiplier_eq_zero_iff j u).not.mpr hu


/-- The elementary Jordan lower scale attached to one transverse frequency. -/
def coreGrowingShiftEndpointTransverseJordanLowerScale
    (j : ℕ)
    (u : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℝ :=
  4 *
      (coreGrowingShiftEndpointTransverseCircularDistance j u : ℝ) /
    (coreGrowingShiftEndpointDoubledFourierModulus j : ℝ)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
