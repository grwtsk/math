/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.FunctionsOfAComplexVariable.MobiusPoleNeighborhoods

/-!
# A directed filtration at one fixed Möbius pole

The entire family of transformed radial images is not directed under
reverse inclusion: MobiusData.no_common_image_refinement already proves
this for identity versus inversion. Fixing one pole p and taking PREIMAGES
of neighborhoods of infinity under poleInverse p repairs this assertion.
These preimages are ordinary disks about p, INCLUDING p, and larger
thresholds give smaller disks. Maximum yields a common refinement.

This does not assert an order on arbitrary MobiusData presentations, a
PGL2 quotient, an action theorem, or a homeomorphism classification.
The exact source preimage identity is reused; the remaining proofs use
preimage monotonicity and the real maximum. Mathematical scope is this
one fixed-pole family only. Source proof candidate: compilation, Lean
elaboration, fresh kernel verification, axiom audit, independent review
NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.ComplexGeometry

open ExteriorDisk

/-- The fixed-pole pullback of an actual radial infinity neighborhood. -/
def fixedPoleNeighborhood (p : ℂ) (R : ℝ) (hR : 0 < R) :
    Set (OnePoint ℂ) :=
  poleInverse p ⁻¹' (radial R hR).exterior

/-- At the pole, infinity is a sphere value, not complex division by zero. -/
theorem fixedPoleNeighborhood_eq_ball (p : ℂ) (R : ℝ) (hR : 0 < R) :
    fixedPoleNeighborhood p R hR =
      OnePoint.some '' Metric.ball p (1 / R) := by
  exact poleInverse_preimage_radial p R hR

/-- The pullback sets are antitone in the positive radius threshold. -/
theorem fixedPoleNeighborhood_antitone (p : ℂ)
    (R S : ℝ) (hR : 0 < R) (hS : 0 < S) (hRS : R ≤ S) :
    fixedPoleNeighborhood p S hS ⊆ fixedPoleNeighborhood p R hR := by
  unfold fixedPoleNeighborhood
  apply Set.preimage_mono
  apply (exterior_subset_iff (radial R hR) (radial S hS)).mpr
  change ‖(0 : ℂ) - 0‖ + R ≤ S
  simpa using hRS

/-- Existing real subtype order rather than a new order on maps. -/
abbrev FixedPoleRadius := {R : ℝ // 0 < R}

def fixedPoleStage (p : ℂ) (R : FixedPoleRadius) :
    Set (OnePoint ℂ) :=
  fixedPoleNeighborhood p R.val R.property

theorem fixedPoleStage_antitone (p : ℂ) :
    Antitone (fixedPoleStage p) := by
  intro R S hRS
  exact fixedPoleNeighborhood_antitone p R.val S.val R.property S.property hRS

theorem fixedPoleStage_common_upper (R S : FixedPoleRadius) :
    ∃ T : FixedPoleRadius, R ≤ T ∧ S ≤ T := by
  refine ⟨⟨max R.val S.val,
    lt_of_lt_of_le R.property (le_max_left R.val S.val)⟩, ?_, ?_⟩
  · exact le_max_left R.val S.val
  · exact le_max_right R.val S.val

/-- Genuine common refinement for the fixed pole, not all Mobius maps. -/
theorem fixedPoleStage_common_refinement (p : ℂ)
    (R S : FixedPoleRadius) :
    ∃ T : FixedPoleRadius,
      fixedPoleStage p T ⊆ fixedPoleStage p R ∧
      fixedPoleStage p T ⊆ fixedPoleStage p S := by
  obtain ⟨T, hRT, hST⟩ := fixedPoleStage_common_upper R S
  exact ⟨T, (fixedPoleStage_antitone p) hRT,
    (fixedPoleStage_antitone p) hST⟩

end GRWTSK.ComplexGeometry
