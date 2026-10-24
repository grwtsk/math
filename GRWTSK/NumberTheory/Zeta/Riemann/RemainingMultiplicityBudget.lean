/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Proof drafting assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.WeightedSubsetBudget
import GRWTSK.NumberTheory.Zeta.Riemann.ReflectedMultiplicitySupplier

set_option autoImplicit false

/-!
# Remaining multiplicity after certified critical-line contributions

A known set is a supplied finite set of the SAME actual canonical zero points,
with proved regional membership and critical-line status. It is not a raw list
of heights, an assumed complete enumeration, or a new zero divisor. Removing it
leaves an exact set complement. An off-line reflected pair survives that removal.

The count budget counts all remaining points, not only off-line points. A budget
below two proves line location throughout the region, but may leave an unlisted
line point. Exact enumeration requires the separate positive-weight saturation
argument. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No numerical certificate,
complete root cover, accepted count or all-height supplier is constructed.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.RemainingMultiplicityBudget

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.CombinatoricsAndDiscreteMathematics.WeightedPairBudget
open GRWTSK.CombinatoricsAndDiscreteMathematics.WeightedSubsetBudget
open GRWTSK.NumberTheory.Zeta.Riemann.ReflectionMultiplicityBudget
open GRWTSK.NumberTheory.Zeta.Riemann.ReflectedMultiplicitySupplier

noncomputable section

/-- Exact complement mass of the old regional head; no subtraction convention is hidden. -/
def remainingCount (T : ℝ) (U : Set ℂ) (known : Finset ZeroPoint) : ℕ := by
  classical
  exact mass (regionHead T U \ known) multiplicity

/-- Both summands use the same source multiplicity and the same boundary conventions. -/
theorem remaining_add_known (T : ℝ) (U : Set ℂ) (known : Finset ZeroPoint)
    (subset : known ⊆ regionHead T U) :
    remainingCount T U known + mass known multiplicity = regionCount T U := by
  classical
  exact GRWTSK.CombinatoricsAndDiscreteMathematics.WeightedSubsetBudget.remaining_add_known (regionHead T U) known multiplicity subset

/-- A natural-number difference is meaningful here because subset alignment is proved. -/
theorem remaining_eq_sub (T : ℝ) (U : Set ℂ) (known : Finset ZeroPoint)
    (subset : known ⊆ regionHead T U) :
    remainingCount T U known = regionCount T U - mass known multiplicity := by
  classical
  exact GRWTSK.CombinatoricsAndDiscreteMathematics.WeightedSubsetBudget.remaining_eq_sub (regionHead T U) known multiplicity subset

/-- An off-line point cannot have its critical reflection on the line. -/
theorem reflected_off_line (z : ZeroPoint) (offLine : z.1.re ≠ 1 / 2) :
    (reflected z).1.re ≠ 1 / 2 := by
  intro reflectedLine
  apply offLine
  simp [reflected, criticalReflection] at reflectedLine
  linarith

/-- The off-line pair is disjoint from EVERY certified known line point.
Actual source symmetry gives twice the selected analytic multiplicity. -/
theorem known_add_twice_le_count_of_off_line (T : ℝ) (U : Set ℂ)
    (known : Finset ZeroPoint) (subset : known ⊆ regionHead T U)
    (knownLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (stable : ∀ s ∈ U, criticalReflection s ∈ U)
    (z : ZeroPoint) (member : z ∈ regionHead T U) (offLine : z.1.re ≠ 1 / 2) :
    mass known multiplicity + 2 * multiplicity z ≤ regionCount T U := by
  classical
  have outside : z ∉ known := fun hz => offLine (knownLine z hz)
  have reflectedOutside : reflected z ∉ known :=
    fun hz => reflected_off_line z offLine (knownLine (reflected z) hz)
  have bound := known_add_pair_le_mass (regionHead T U) known multiplicity subset
    z (reflected z) member (reflected_mem_regionHead T U z member stable)
    outside reflectedOutside (distinct_of_off_line z offLine)
  simpa only [multiplicity_reflected, two_mul, Nat.add_assoc] using bound

/-- Only ONE selected multiplicity lower certificate is needed. Known mass may
also be bounded below, while the regional count is independently bounded above. -/
theorem critical_line_of_known_budget (T : ℝ) (U : Set ℂ)
    (known : Finset ZeroPoint) (subset : known ⊆ regionHead T U)
    (knownLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (stable : ∀ s ∈ U, criticalReflection s ∈ U)
    (z : ZeroPoint) (member : z ∈ regionHead T U) (lower knownLower upper : ℕ)
    (rootBound : lower ≤ multiplicity z) (knownBound : knownLower ≤ mass known multiplicity)
    (countBound : regionCount T U ≤ upper) (strict : upper < knownLower + 2 * lower) :
    z.1.re = 1 / 2 := by
  by_contra offLine
  have lowerTotal : knownLower + 2 * lower ≤ regionCount T U :=
    (Nat.add_le_add knownBound (Nat.mul_le_mul_left 2 rootBound)).trans
      (known_add_twice_le_count_of_off_line T U known subset knownLine stable z member offLine)
  exact (not_le_of_gt strict) (lowerTotal.trans countBound)

/-- Every actual zero has positive weight, so a residual budget below two rules
out EVERY off-line point. This does not assert known-set exhaustion. -/
theorem all_on_line_of_known_budget (T : ℝ) (U : Set ℂ)
    (known : Finset ZeroPoint) (subset : known ⊆ regionHead T U)
    (knownLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (stable : ∀ s ∈ U, criticalReflection s ∈ U) (knownLower upper : ℕ)
    (knownBound : knownLower ≤ mass known multiplicity)
    (countBound : regionCount T U ≤ upper) (strict : upper < knownLower + 2) :
    ∀ z ∈ regionHead T U, z.1.re = 1 / 2 := by
  intro z hz
  exact critical_line_of_known_budget T U known subset knownLine stable z hz
    1 knownLower upper (multiplicity_pos z) knownBound countBound (by simpa using strict)

/-- Equivalent budget presentation, retaining the independent consistency theorem
for the two natural-number bounds; the difference is not an exact observed count. -/
theorem all_on_line_of_sub_budget (T : ℝ) (U : Set ℂ)
    (known : Finset ZeroPoint) (subset : known ⊆ regionHead T U)
    (knownLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (stable : ∀ s ∈ U, criticalReflection s ∈ U) (knownLower upper : ℕ)
    (knownBound : knownLower ≤ mass known multiplicity)
    (countBound : regionCount T U ≤ upper) (small : upper - knownLower < 2) :
    ∀ z ∈ regionHead T U, z.1.re = 1 / 2 := by
  classical
  have consistent : knownLower ≤ upper :=
    lower_le_upper (regionHead T U) known multiplicity subset knownLower upper knownBound countBound
  exact all_on_line_of_known_budget T U known subset knownLine stable knownLower upper
    knownBound countBound (by omega)

/-- The exact remaining mass may be one. Line classification is weaker than enumeration. -/
theorem all_on_line_of_remaining_lt_two (T : ℝ) (U : Set ℂ)
    (known : Finset ZeroPoint) (subset : known ⊆ regionHead T U)
    (knownLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (stable : ∀ s ∈ U, criticalReflection s ∈ U) (small : remainingCount T U known < 2) :
    ∀ z ∈ regionHead T U, z.1.re = 1 / 2 := by
  have partition := remaining_add_known T U known subset
  exact all_on_line_of_known_budget T U known subset knownLine stable
    (mass known multiplicity) (regionCount T U) le_rfl le_rfl (by omega)

/-- Zero remaining mass really does exhaust the canonical region, using positive
actual analytic multiplicities. Line status is not needed for this separate result. -/
theorem known_eq_regionHead_of_remaining_zero (T : ℝ) (U : Set ℂ)
    (known : Finset ZeroPoint) (subset : known ⊆ regionHead T U)
    (zeroRemaining : remainingCount T U known = 0) : known = regionHead T U := by
  classical
  apply eq_of_mass_eq (regionHead T U) known multiplicity subset
    (fun z _ => multiplicity_pos z)
  have partition := remaining_add_known T U known subset
  change mass known multiplicity = regionCount T U
  omega

/-- All-height-sign scope reuses the OLD head and count. Neither the known subset
nor a line conclusion at one natural height proves an all-height result. -/
theorem rhThrough_of_height_known_budget (N : ℕ) (known : Finset ZeroPoint)
    (subset : known ⊆ heightHead (N : ℝ))
    (knownLine : ∀ z ∈ known, z.1.re = 1 / 2) (knownLower upper : ℕ)
    (knownBound : knownLower ≤ mass known multiplicity)
    (countBound : heightCount (N : ℝ) ≤ upper) (strict : upper < knownLower + 2) :
    RHThrough N := by
  have allLine := all_on_line_of_known_budget (N : ℝ) Set.univ known
    (by simpa using subset) knownLine (fun _ _ => Set.mem_univ _) knownLower upper
    knownBound (by simpa using countBound) strict
  intro s zero heightBound
  let z : ZeroPoint := ⟨s, zero⟩
  have member : z ∈ regionHead (N : ℝ) Set.univ :=
    (mem_regionHead _ _ _).mpr ⟨heightBound, Set.mem_univ _⟩
  exact allLine z member

end
end GRWTSK.NumberTheory.Zeta.Riemann.RemainingMultiplicityBudget
