/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Proof drafting assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.WeightedPairBudget
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalZeroDivisor
import GRWTSK.NumberTheory.Zeta.Riemann.BoundedHeightCriterion
import Mathlib.Tactic.Linarith

set_option autoImplicit false

/-!
# Critical-line exclusion by a reflection-pair multiplicity budget

Reuse the actual nontrivial-zero subtype and analytic multiplicity from
CanonicalZeroDivisor. A region head is only a filter of that complete closed
absolute-height head; no second zeta divisor or numerical enumerator is defined.

The primary consumer accepts separate multiplicity LOWER bounds at the supplied
zero and its ACTUAL reflected zero, and a count UPPER bound for the same region.
It does not assert multiplicity preservation from zero transport. A separate
convenience theorem retains that preservation equation as an explicit premise.
The simpler common-lower-bound theorem needs no equality of multiplicities.

No derivative nonvanishing, root simplicity, numerical packet, regional upper
count, or all-height supplier is constructed. The finite-cover theorem retains
coverage of EVERY actual zero through the chosen height. SOURCE_ONLY / NOT_RUN /
NOT_KERNEL_AUDITED. The inherited analytic dependency closure remains unaudited.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.ReflectionMultiplicityBudget

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.CombinatoricsAndDiscreteMathematics.WeightedPairBudget
open scoped BigOperators

noncomputable section

/-- The existing functional equation supplies the actual reflected zero. -/
def reflected (z : ZeroPoint) : ZeroPoint :=
  ⟨criticalReflection z.1, z.2.critical_reflection⟩

/-- Reflection preserves the canonical absolute height, not just a display label. -/
@[simp] theorem height_reflected (z : ZeroPoint) : height (reflected z) = height z := by
  simp [height, reflected, criticalReflection]

/-- Equality of the full source points forces exact critical-line equality. -/
theorem on_line_of_eq_reflected (z : ZeroPoint) (same : z = reflected z) :
    z.1.re = 1 / 2 := by
  have realEquality := congrArg (fun w : ZeroPoint => w.1.re) same
  simp [reflected, criticalReflection] at realEquality
  linarith

/-- An off-line source point and its actual reflection are distinct. -/
theorem distinct_of_off_line (z : ZeroPoint) (offLine : z.1.re ≠ 1 / 2) :
    z ≠ reflected z := fun same => offLine (on_line_of_eq_reflected z same)

/-- Already supplied membership in the same exact finite set is enough locally.
An arbitrary external list does not supply either membership or the weight bounds. -/
theorem critical_line_of_finite_pair_bounds (S : Finset ZeroPoint) (z : ZeroPoint)
    (left right upper : ℕ) (member : z ∈ S) (reflectedMember : reflected z ∈ S)
    (leftBound : left ≤ multiplicity z) (rightBound : right ≤ multiplicity (reflected z))
    (countBound : mass S multiplicity ≤ upper) (strict : upper < left + right) :
    z.1.re = 1 / 2 := by
  classical
  exact on_line_of_eq_reflected z
    (eq_of_upper_lt_lower_sum S multiplicity z (reflected z) left right upper
      member reflectedMember leftBound rightBound countBound strict)

/-- Source-complete projection onto an exact region, with the closed height endpoint retained. -/
def regionHead (T : ℝ) (U : Set ℂ) : Finset ZeroPoint := by
  classical
  exact (heightHead T).filter (fun z => z.1 ∈ U)

/-- The region does not erase height, horizontal location, or its own boundary convention. -/
@[simp] theorem mem_regionHead (T : ℝ) (U : Set ℂ) (z : ZeroPoint) :
    z ∈ regionHead T U ↔ height z ≤ T ∧ z.1 ∈ U := by
  classical
  simp [regionHead]

/-- The weighted sum uses the unchanged source analytic order at every point. -/
def regionCount (T : ℝ) (U : Set ℂ) : ℕ := mass (regionHead T U) multiplicity

/-- Forgetting the region recovers the existing head exactly. -/
@[simp] theorem regionHead_univ (T : ℝ) : regionHead T Set.univ = heightHead T := by
  classical
  simp [regionHead]

/-- In particular, this is not a competing convention for the both-sign height count. -/
@[simp] theorem regionCount_univ (T : ℝ) : regionCount T Set.univ = heightCount T := by
  simp [regionCount, mass, heightCount]

/-- The regional count is bounded by the same complete absolute-height count. -/
theorem regionCount_le_heightCount (T : ℝ) (U : Set ℂ) :
    regionCount T U ≤ heightCount T := by
  classical
  have subset : regionHead T U ⊆ heightHead T := by
    intro z hz
    exact (mem_heightHead T z).mpr ((mem_regionHead T U z).mp hz).1
  exact Finset.sum_le_sum_of_subset_of_nonneg subset
    (fun z _ _ => Nat.zero_le (multiplicity z))

/-- Region stability and exact height transport supply the second membership proof. -/
theorem reflected_mem_regionHead (T : ℝ) (U : Set ℂ) (z : ZeroPoint)
    (member : z ∈ regionHead T U)
    (stable : ∀ s ∈ U, criticalReflection s ∈ U) : reflected z ∈ regionHead T U := by
  rcases (mem_regionHead T U z).mp member with ⟨heightBound, regionMember⟩
  apply (mem_regionHead T U (reflected z)).mpr
  exact ⟨by simpa only [height_reflected] using heightBound, stable z.1 regionMember⟩

/-- Two independently certified lower bounds can be unequal. All counts concern
one exact source, region and cutoff. Strictness excludes a distinct pair only. -/
theorem critical_line_of_region_pair_bounds (T : ℝ) (U : Set ℂ) (z : ZeroPoint)
    (left right upper : ℕ) (member : z ∈ regionHead T U)
    (stable : ∀ s ∈ U, criticalReflection s ∈ U)
    (leftBound : left ≤ multiplicity z) (rightBound : right ≤ multiplicity (reflected z))
    (countBound : regionCount T U ≤ upper) (strict : upper < left + right) :
    z.1.re = 1 / 2 := by
  exact critical_line_of_finite_pair_bounds (regionHead T U) z left right upper member
    (reflected_mem_regionHead T U z member stable) leftBound rightBound countBound strict

/-- A common certified lower bound does not require a simplicity assumption. -/
theorem critical_line_of_region_common_lower (T : ℝ) (U : Set ℂ) (z : ZeroPoint)
    (lower upper : ℕ) (member : z ∈ regionHead T U)
    (stable : ∀ s ∈ U, criticalReflection s ∈ U)
    (leftBound : lower ≤ multiplicity z) (rightBound : lower ≤ multiplicity (reflected z))
    (countBound : regionCount T U ≤ upper) (strict : upper < 2 * lower) :
    z.1.re = 1 / 2 := by
  exact critical_line_of_region_pair_bounds T U z lower lower upper member stable
    leftBound rightBound countBound (by simpa only [two_mul] using strict)

/-- Reusing one lower certificate requires the exact analytic-multiplicity equation.
This module DOES NOT derive that equation from the zero-existence symmetry. -/
theorem critical_line_of_region_preserved_multiplicity (T : ℝ) (U : Set ℂ)
    (z : ZeroPoint) (lower upper : ℕ) (member : z ∈ regionHead T U)
    (stable : ∀ s ∈ U, criticalReflection s ∈ U)
    (preserved : multiplicity (reflected z) = multiplicity z)
    (lowerBound : lower ≤ multiplicity z)
    (countBound : regionCount T U ≤ upper) (strict : upper < 2 * lower) :
    z.1.re = 1 / 2 := by
  apply critical_line_of_region_common_lower T U z lower upper member stable lowerBound
  · simpa only [preserved] using lowerBound
  · exact countBound
  · exact strict

/-- The off-line obstruction retains unequal analytic weights before any upper bound. -/
theorem off_line_pair_mass_le_regionCount (T : ℝ) (U : Set ℂ) (z : ZeroPoint)
    (member : z ∈ regionHead T U) (stable : ∀ s ∈ U, criticalReflection s ∈ U)
    (offLine : z.1.re ≠ 1 / 2) :
    multiplicity z + multiplicity (reflected z) ≤ regionCount T U := by
  classical
  exact pair_le_mass (regionHead T U) multiplicity z (reflected z) member
    (reflected_mem_regionHead T U z member stable) (distinct_of_off_line z offLine)

/-- A finite regional family yields a bounded conclusion ONLY with full actual-zero
coverage and the pointwise multiplicity budgets. No global root selection is used. -/
theorem rhThrough_of_region_pair_cover (N count : ℕ)
    (region : Fin count → Set ℂ) (upper : Fin count → ℕ)
    (stable : ∀ i, ∀ s ∈ region i, criticalReflection s ∈ region i)
    (countBound : ∀ i, regionCount (N : ℝ) (region i) ≤ upper i)
    (coverage : ∀ z : ZeroPoint, height z ≤ (N : ℝ) →
      ∃ (i : Fin count) (left right : ℕ), z.1 ∈ region i ∧
        left ≤ multiplicity z ∧ right ≤ multiplicity (reflected z) ∧
        upper i < left + right) : RHThrough N := by
  intro s zero heightBound
  let z : ZeroPoint := ⟨s, zero⟩
  have hz : height z ≤ (N : ℝ) := heightBound
  obtain ⟨i, left, right, regionMember, leftBound, rightBound, strict⟩ := coverage z hz
  have member : z ∈ regionHead (N : ℝ) (region i) :=
    (mem_regionHead (N : ℝ) (region i) z).mpr ⟨hz, regionMember⟩
  exact critical_line_of_region_pair_bounds (N : ℝ) (region i) z left right (upper i)
    member (stable i) leftBound rightBound (countBound i) strict

end
end GRWTSK.NumberTheory.Zeta.Riemann.ReflectionMultiplicityBudget
