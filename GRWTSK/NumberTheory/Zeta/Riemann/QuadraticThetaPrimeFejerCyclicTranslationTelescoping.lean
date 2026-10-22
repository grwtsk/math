/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicDoubleSum
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- L1 distance between a cyclic function and its translate by r. -/
def cyclicTranslationL1
    {L : ℕ}
    (f : ZMod L → ℝ)
    (r : ZMod L) : ℝ :=
  ∑ x : ZMod L, |f x - f (x - r)|

/-- The sharp-prefix translation error is the generic cyclic translation L1. -/
theorem cyclicSharpTranslationL1_eq_generic
    (X m : ℕ)
    (r : ZMod (fejerOctavePeriod X)) :
    cyclicSharpTranslationL1 X m r =
      cyclicTranslationL1
        (cyclicSharpPrefixIndicator X m) r := by
  rfl

/-- Cyclic translation L1 is symmetric under reversing the shift. -/
theorem cyclicTranslationL1_neg
    {L : ℕ}
    (f : ZMod L → ℝ)
    (r : ZMod L) :
    cyclicTranslationL1 f (-r) =
      cyclicTranslationL1 f r := by
  unfold cyclicTranslationL1
  let e : ZMod L ≃ ZMod L := {
    toFun := fun x => x + r
    invFun := fun x => x - r
    left_inv := by intro x; simp
    right_inv := by intro x; simp
  }
  calc
    (∑ x : ZMod L, |f x - f (x - (-r))|)
      =
      ∑ y : ZMod L,
        |f (y + r) - f y| := by
          exact Fintype.sum_equiv e.symm _ _ (by
            intro y
            simp [e]
            ring_nf)
    _ =
      ∑ y : ZMod L,
        |f y - f (y - r)| := by
          apply Finset.sum_congr rfl
          intro y hy
          rw [abs_sub_comm]
          congr 2
          simp
    _ = _ := rfl

/-- The only local interval fact needed by the telescoping route: a one-step
cyclic translation changes at most two values of a single sharp interval
indicator. -/
def CyclicSharpUnitTranslationBoundClaim : Prop :=
  ∀ X m : ℕ,
    0 < X →
    2 * X ≤ m → m ≤ 4 * X →
      cyclicSharpTranslationL1 X m
        (1 : ZMod (fejerOctavePeriod X)) ≤ 2

/-- Telescoping frontier: translation by a residue costs at most cyclic distance
times the one-step L1 translation error. -/
def CyclicSharpTranslationTelescopingClaim : Prop :=
  ∀ X m : ℕ,
    0 < X →
    2 * X ≤ m → m ≤ 4 * X →
    ∀ r : ZMod (fejerOctavePeriod X),
      cyclicSharpTranslationL1 X m r ≤
        (min r.val
          (fejerOctavePeriod X - r.val) : ℕ) *
        cyclicSharpTranslationL1 X m
          (1 : ZMod (fejerOctavePeriod X))

/-- Unit-boundary control plus telescoping yields the remaining cyclic interval
translation-cardinality theorem. -/
theorem unitTranslation_and_telescoping_to_translationCardinality
    (hunit : CyclicSharpUnitTranslationBoundClaim)
    (htelescope : CyclicSharpTranslationTelescopingClaim) :
    CyclicSharpTranslationCardinalityClaim := by
  intro X m hX hm0 hm1 r
  have htel :=
    htelescope X m hX hm0 hm1 r
  have hu :=
    hunit X m hX hm0 hm1
  have hd :
      0 ≤
        (min r.val
          (fejerOctavePeriod X - r.val) : ℝ) := by
    positivity
  calc
    cyclicSharpTranslationL1 X m r
      ≤
      (min r.val
        (fejerOctavePeriod X - r.val) : ℕ) *
        cyclicSharpTranslationL1 X m
          (1 : ZMod (fejerOctavePeriod X)) := htel
    _ ≤
      (min r.val
        (fejerOctavePeriod X - r.val) : ℕ) * 2 := by
          exact mul_le_mul_of_nonneg_left hu hd
    _ =
      2 * (min r.val
        (fejerOctavePeriod X - r.val) : ℕ) := by ring

/-- The entire smoothing route is now reduced to a two-lemma universal interval
package: one-step boundary control and translation telescoping. -/
structure CyclicSharpIntervalTranslationPackage where
  unitBound : CyclicSharpUnitTranslationBoundClaim
  telescoping : CyclicSharpTranslationTelescopingClaim

end GRWTSK.RiemannHypothesis
