/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicTranslationSubadditivity
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Predicate underlying the cyclic sharp-prefix indicator. -/
def cyclicSharpPrefixMem
    (X m : ℕ)
    (z : ZMod (fejerOctavePeriod X)) : Prop :=
  2 * X < octaveRepresentative X z ∧
    octaveRepresentative X z ≤ m

/-- The cyclic sharp-prefix indicator is the 0/1 indicator of the membership predicate. -/
theorem cyclicSharpPrefixIndicator_eq_ite
    (X m : ℕ)
    (z : ZMod (fejerOctavePeriod X)) :
    cyclicSharpPrefixIndicator X m z =
      if cyclicSharpPrefixMem X m z then 1 else 0 := by
  rfl

/-- Finite support of the one-step boundary change. -/
def cyclicSharpUnitChangeSupport
    (X m : ℕ) :
    Finset (ZMod (fejerOctavePeriod X)) :=
  Finset.univ.filter fun z =>
    cyclicSharpPrefixMem X m z ≠
      cyclicSharpPrefixMem X m
        (z - (1 : ZMod (fejerOctavePeriod X)))

/-- For a 0/1 sharp indicator, the absolute one-step difference is exactly the
indicator of membership in the finite change support. -/
theorem cyclicSharpUnitDifference_abs_eq_indicator
    (X m : ℕ)
    (z : ZMod (fejerOctavePeriod X)) :
    |cyclicSharpPrefixIndicator X m z -
      cyclicSharpPrefixIndicator X m
        (z - (1 : ZMod (fejerOctavePeriod X)))|
      =
    if z ∈ cyclicSharpUnitChangeSupport X m then 1 else 0 := by
  classical
  unfold cyclicSharpUnitChangeSupport
  rw [Finset.mem_filter]
  simp only [Finset.mem_univ, true_and]
  rw [cyclicSharpPrefixIndicator_eq_ite,
    cyclicSharpPrefixIndicator_eq_ite]
  by_cases hz : cyclicSharpPrefixMem X m z
  · by_cases hzprev :
        cyclicSharpPrefixMem X m
          (z - (1 : ZMod (fejerOctavePeriod X)))
    · simp [hz, hzprev]
    · simp [hz, hzprev]
  · by_cases hzprev :
        cyclicSharpPrefixMem X m
          (z - (1 : ZMod (fejerOctavePeriod X)))
    · simp [hz, hzprev]
    · simp [hz, hzprev]

/-- The one-step cyclic sharp translation L1 is exactly the cardinality of the
finite boundary-change support. -/
theorem cyclicSharpUnitTranslationL1_eq_card_changeSupport
    (X m : ℕ) :
    cyclicSharpTranslationL1 X m
        (1 : ZMod (fejerOctavePeriod X))
      =
    (cyclicSharpUnitChangeSupport X m).card := by
  classical
  unfold cyclicSharpTranslationL1
  simp_rw [cyclicSharpUnitDifference_abs_eq_indicator]
  rw [Finset.sum_ite]
  simp

/-- The last local combinatorial supplier: the one-step change support contains
at most the two boundary residues of a cyclic interval. -/
def CyclicSharpUnitBoundarySupportCardClaim : Prop :=
  ∀ X m : ℕ,
    0 < X →
    2 * X ≤ m → m ≤ 4 * X →
      (cyclicSharpUnitChangeSupport X m).card ≤ 2

/-- Boundary-support cardinality immediately discharges the unit-translation
L1 bound. -/
theorem boundarySupportCard_to_unitTranslationBound
    (hcard : CyclicSharpUnitBoundarySupportCardClaim) :
    CyclicSharpUnitTranslationBoundClaim := by
  intro X m hX hm0 hm1
  rw [cyclicSharpUnitTranslationL1_eq_card_changeSupport]
  exact_mod_cast hcard X m hX hm0 hm1

/-- The entire cyclic interval-count theorem is now reduced to a pure two-point
support-cardinality statement. -/
theorem boundarySupportCard_to_translationCardinality
    (hcard : CyclicSharpUnitBoundarySupportCardClaim) :
    CyclicSharpTranslationCardinalityClaim :=
  unitTranslation_and_telescoping_to_translationCardinality
    (boundarySupportCard_to_unitTranslationBound hcard)
    cyclicSharpTranslationTelescoping

/-- Exact final frontier for the universal smoothing branch. -/
def CyclicSharpTwoBoundaryOnlyFrontier : Prop :=
  CyclicSharpUnitBoundarySupportCardClaim

end GRWTSK.RiemannHypothesis
