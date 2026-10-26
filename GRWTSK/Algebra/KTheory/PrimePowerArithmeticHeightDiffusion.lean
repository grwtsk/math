/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.Algebra.KTheory.FinitePrimePowerFamilyProfileSchedule
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section

/-!
# Alternating prime-power profile heights and certified diffusion observations

This module instantiates the time-varying prime-power profile interface on the
finite arithmetic carrier `2`, `3`, `3^2`.

At even discrete heights, the target weights on the `3`-power collision fibre
are the exponent-sensitive weights `1, 2`. At odd heights these two weights are
swapped. The singleton `2`-power fibre always has weight `1`.

The normalized profile is therefore nonconstant, but every state has normalized
weight at least `1 / 3`. With the existing initial heat assigning mass `1 / 2`
to each collision class, every fine state has rational and real mass at least
`1 / 6` after every positive scheduled step.

Each time slice is packaged as a height-indexed certified observation. The
observation retains:

* the discrete natural-number height;
* the existing `SpectralHeight` carrier;
* the provenance-bearing `SourceSearchInventory`;
* exact positive-transition/certified-edge support;
* exact positive-path/certified-path support;
* rational-real cast compatibility;
* fine-type completeness and the quantitative `1 / 6` floor.

The height is schedule time. It is not the real or imaginary part of a zeta zero.
The alternating weights are an internal finite arithmetic fixture, not a
Möbius, Dirichlet-character, Chowla, Kim--Vu, Frobenius, analytic heat-semigroup,
or Riemann-hypothesis supplier.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Algebra.KTheory.PrimePowerArithmeticHeightDiffusion

open scoped BigOperators
open GRWTSK.Algebra.KTheory.PrimePowerCollisionSearchInventory
open GRWTSK.Algebra.KTheory.FinitePrimePowerFamilyClassDiffusion
open GRWTSK.Algebra.KTheory.FinitePrimePowerFamilySearchDiffusion
open GRWTSK.Algebra.KTheory.FinitePrimePowerFamilyProfileSchedule
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RootHeatState
open GRWTSK.GraphSandwichDiffusion

namespace AlternatingExponentProfile

abbrev State := UnequalFiberExample.UnequalState
abbrev Class := UnequalFiberExample.UnequalClass

/-- The fixed arithmetic family `2`, `3`, `3^2`. -/
def family : FinitePrimePowerFamily State Class :=
  UnequalFiberExample.family

/-- Alternating exponent-sensitive target weights.

At even height the weights are `(1, 1, 2)` on `2`, `3`, `3^2`.
At odd height they are `(1, 2, 1)`. -/
def targetWeight (height : Nat) (state : State) : ℚ :=
  if state = 0 then 1
  else if height % 2 = 0 then
    if state = 1 then 1 else 2
  else
    if state = 1 then 2 else 1

theorem targetWeight_pos (height : Nat) (state : State) :
    0 < targetWeight height state := by
  fin_cases state <;>
    by_cases evenHeight : height % 2 = 0 <;>
      norm_num [targetWeight, evenHeight]

/-- At even heights, the target weight is exactly the arithmetic exponent. -/
theorem targetWeight_eq_exponent_of_even
    (height : Nat) (evenHeight : height % 2 = 0) (state : State) :
    targetWeight height state = (family.exponent state : ℚ) := by
  fin_cases state <;>
    norm_num [targetWeight, family, UnequalFiberExample.family,
      UnequalFiberExample.exponent, evenHeight]

/-- At odd heights, the two weights in the nontrivial `3`-power fibre swap. -/
theorem targetWeight_swap_of_odd
    (height : Nat) (oddHeight : height % 2 ≠ 0) :
    targetWeight height (1 : State) = 2 ∧
      targetWeight height (2 : State) = 1 := by
  norm_num [targetWeight, oddHeight]

/-- One positive class-local profile at the selected discrete height. -/
def profileAt (height : Nat) : ClassWeightProfile family where
  targetWeight := targetWeight height
  targetWeight_pos := targetWeight_pos height
  fiber_nonempty := UnequalFiberExample.unitProfile.fiber_nonempty

/-- The nonconstant schedule of alternating arithmetic profiles. -/
def schedule : ClassProfileSchedule family where
  profile := profileAt

/-- The profile is genuinely nonconstant on the `3` state. -/
theorem schedule_nonconstant :
    schedule.profileFraction 0 (1 : State) ≠
      schedule.profileFraction 1 (1 : State) := by
  norm_num [ClassProfileSchedule.profileFraction, schedule, profileAt,
    targetWeight, ClassWeightProfile.classMass, family,
    UnequalFiberExample.family, UnequalFiberExample.classOf,
    Fin.sum_univ_three]

/-- Every normalized profile coordinate is at least `1 / 3`, uniformly at all
heights. This is a proved supplier, not an inference from pointwise positivity. -/
theorem oneThird_profileFloor :
    schedule.HasEventualProfileFractionFloor
      (fun _ : State => (1 / 3 : ℚ)) 0 := by
  intro height _ state
  fin_cases state <;>
    by_cases evenHeight : height % 2 = 0 <;>
      norm_num [ClassProfileSchedule.profileFraction, schedule, profileAt,
        targetWeight, ClassWeightProfile.classMass, family,
        UnequalFiberExample.family, UnequalFiberExample.classOf,
        evenHeight, Fin.sum_univ_three]

/-- The existing initial heat has mass exactly `1 / 2` in each collision class. -/
theorem initialClassMass_eq_half (class : Class) :
    aggregate family.classOf UnequalFiberExample.initialHeat class =
      (1 / 2 : ℚ) := by
  fin_cases class <;>
    norm_num [aggregate, family, UnequalFiberExample.family,
      UnequalFiberExample.classOf, UnequalFiberExample.initialHeat,
      Fin.sum_univ_three]

/-- The concrete scheduled rational heat has a uniform `1 / 6` fine-state floor
at every positive time. -/
theorem rationalFineMass_oneSixth_lower
    (height : Nat) (target : State) :
    (1 / 6 : ℚ) ≤
      schedule.rationalEvolve
        UnequalFiberExample.initialHeat (height + 1) target := by
  rw [schedule.rationalEvolve_succ_eq_profileFraction_mul_initialClassMass]
  rw [initialClassMass_eq_half]
  have profileFloor :
      (1 / 3 : ℚ) ≤ schedule.profileFraction height target :=
    oneThird_profileFloor height (Nat.zero_le height) target
  nlinarith

/-- The exact real cast evolution inherits the same uniform floor. -/
theorem realFineMass_oneSixth_lower
    (height : Nat) (target : State) :
    (1 / 6 : ℝ) ≤
      schedule.realEvolve
        (fun state => (UnequalFiberExample.initialHeat state : ℝ))
        (height + 1) target := by
  rw [schedule.realEvolve_cast]
  exact_mod_cast rationalFineMass_oneSixth_lower height target

/-- The scheduled real fine-type mass also inherits the same uniform floor. -/
theorem realFineTypeMass_oneSixth_lower
    (height : Nat) (target : State) :
    (1 / 6 : ℝ) ≤
      schedule.realTypeMass
        (fun state => (UnequalFiberExample.initialHeat state : ℝ))
        (fun state : State => state) (height + 1) target := by
  rw [schedule.realFineTypeMass_cast]
  exact_mod_cast rationalFineMass_oneSixth_lower height target

/-! ## Height-indexed certified observations -/

/-- Immutable source identity for the varying-profile schedule interface. -/
def profileScheduleSource : SourceIdentity where
  kind := .leanDeclaration
  identifier :=
    "GRWTSK.Algebra.KTheory.FinitePrimePowerFamilyProfileSchedule"
  locator :=
    "ClassProfileSchedule.rationalEvolve; realEvolve_cast; eventual profile floors"
  repository := some "grwtsk/math"
  commit := some "3f439538c6d1e84d421cdecce7684f85e25379dc"
  path := some
    "GRWTSK/Algebra/KTheory/FinitePrimePowerFamilyProfileSchedule.lean"
  blob := some "6549a7abbf01dd1ca0682b4c758c2ab4c85b7a35"

/-- Immutable source identity for certified same-class search support. -/
def certifiedSearchSource : SourceIdentity where
  kind := .leanDeclaration
  identifier :=
    "GRWTSK.Algebra.KTheory.FinitePrimePowerFamilySearchDiffusion"
  locator :=
    "familyInventory; positive_transition_iff_certified; positivePath_iff_certifiedPath"
  repository := some "grwtsk/math"
  commit := some "dce5b821df97025d4960cc5f903c591a3a230c28"
  path := some
    "GRWTSK/Algebra/KTheory/FinitePrimePowerFamilySearchDiffusion.lean"
  blob := some "659520edc4c33246e659f9e7d023972a69143f60"

/-- Spectral motivation only: finite linear-chain spectra, exponential weighting,
Farey organization and Lifshitz tails. No theorem from the paper supplies the
alternating arithmetic weights. -/
def nechaevPolovnikovAnalogy : SourceIdentity where
  kind := .arXiv
  identifier := "arXiv:1702.06757v2"
  locator :=
    "Equations (7), (11)--(16): linear-chain spectra, exponential weights, Farey peak order, Lifshitz tails; analogy only"
  repository := none
  commit := none
  path := none
  blob := none

/-- Open supplier boundary: signed function-field Chowla or character data must
first be converted into an explicitly nonnegative profile with all original
finite-field hypotheses retained. -/
def chowlaPositiveWeightSupplier : SourceIdentity where
  kind := .unresolved
  identifier := "nonnegative Chowla-labeled prime-power profile supplier"
  locator :=
    "No bridge from signed Möbius/Dirichlet-character correlations to the positive rational target weights used here"
  repository := some "grwtsk/math"
  commit := none
  path := none
  blob := none

/-- One discrete height slice. The diffusion weights are exactly the scheduled
real kernel at that height. -/
def spectralHeightAt (height : Nat) : SpectralHeight State where
  height := fun _ => height
  diffusionWeight := fun source target =>
    (schedule.realKernelAt height).transition source target

@[simp]
theorem spectralHeightAt_height (height : Nat) (state : State) :
    (spectralHeightAt height).height state = height :=
  rfl

@[simp]
theorem spectralHeightAt_weight
    (height : Nat) (source target : State) :
    (spectralHeightAt height).diffusionWeight source target =
      (schedule.realKernelAt height).transition source target :=
  rfl

/-- Positive spectral weight is exactly a certified same-class search edge. -/
theorem spectralHeightAt_positive_iff_certified
    (height : Nat) (source target : State) :
    0 < (spectralHeightAt height).diffusionWeight source target ↔
      (profileAt height).familyInventory.certified source target := by
  simpa [spectralHeightAt, schedule, ClassProfileSchedule.realKernelAt] using
    (profileAt height).positive_transition_iff_certified source target

/-- Exact positive paths at one height are exactly certified bounded paths. -/
theorem positivePath_iff_certifiedPath_at
    (height depth : Nat) (source target : State) :
    (schedule.realKernelAt height).positivePath depth source target ↔
      BoundedPath (profileAt height).familyInventory.certified
        depth source target := by
  simpa [schedule, ClassProfileSchedule.realKernelAt] using
    (profileAt height).positivePath_iff_certifiedPath
      depth source target

/-- A complete finite observation at one schedule height. -/
structure HeightIndexedCertifiedObservation where
  index : Nat
  spectral : SpectralHeight State
  inventory : SourceSearchInventory State
  rationalHeat : State → ℚ
  realHeat : State → ℝ
  index_spec : ∀ state, spectral.height state = index
  weight_spec :
    ∀ source target,
      spectral.diffusionWeight source target =
        (schedule.realKernelAt index).transition source target
  support_spec :
    ∀ source target,
      0 < spectral.diffusionWeight source target ↔
        inventory.certified source target
  path_spec :
    ∀ depth source target,
      (schedule.realKernelAt index).positivePath depth source target ↔
        BoundedPath inventory.certified depth source target
  cast_spec : ∀ target, realHeat target = (rationalHeat target : ℝ)
  rational_type_complete :
    TypeCompleteAt (fun state : State => state) rationalHeat
  real_floor : ∀ target, (1 / 6 : ℝ) ≤ realHeat target
  proofProvenance : List SourceIdentity
  analogyProvenance : List SourceIdentity
  unresolvedSuppliers : List SourceIdentity

/-- The complete observation family, indexed by discrete schedule height. -/
def observationAt (height : Nat) : HeightIndexedCertifiedObservation where
  index := height
  spectral := spectralHeightAt height
  inventory := (profileAt height).familyInventory
  rationalHeat :=
    schedule.rationalEvolve UnequalFiberExample.initialHeat (height + 1)
  realHeat :=
    schedule.realEvolve
      (fun state => (UnequalFiberExample.initialHeat state : ℝ))
      (height + 1)
  index_spec := by
    intro state
    rfl
  weight_spec := by
    intro source target
    rfl
  support_spec := by
    intro source target
    exact spectralHeightAt_positive_iff_certified height source target
  path_spec := by
    intro depth source target
    exact positivePath_iff_certifiedPath_at
      height depth source target
  cast_spec := by
    intro target
    exact schedule.realEvolve_cast
      UnequalFiberExample.initialHeat (height + 1) target
  rational_type_complete :=
    schedule.rationalFineTypeComplete_all_positive_times
      UnequalFiberExample.initialHeat
      UnequalFiberExample.initialClassComplete height
  real_floor := by
    intro target
    exact realFineMass_oneSixth_lower height target
  proofProvenance := [profileScheduleSource, certifiedSearchSource]
  analogyProvenance := [nechaevPolovnikovAnalogy]
  unresolvedSuppliers := [chowlaPositiveWeightSupplier]

@[simp]
theorem observationAt_index (height : Nat) :
    (observationAt height).index = height :=
  rfl

/-- Every height slice is type-complete with its explicit quantitative floor. -/
theorem observationAt_complete_and_lower
    (height : Nat) :
    TypeCompleteAt (fun state : State => state)
        (observationAt height).rationalHeat ∧
      ∀ target, (1 / 6 : ℝ) ≤ (observationAt height).realHeat target := by
  exact ⟨(observationAt height).rational_type_complete,
    (observationAt height).real_floor⟩

/-- Cross-class edges remain absent at every height. -/
theorem observationAt_crossClass_weight_zero
    (height : Nat) {source target : State}
    (different :
      family.classOf source ≠ family.classOf target) :
    (observationAt height).spectral.diffusionWeight source target = 0 := by
  change (schedule.realKernelAt height).transition source target = 0
  exact schedule.realTransition_eq_zero_of_class_ne
    height different

end AlternatingExponentProfile

end GRWTSK.Algebra.KTheory.PrimePowerArithmeticHeightDiffusion
