# Complete source: GRWTSK.Analysis.SurfaceScope.Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c9fb8c12ef74ae36659aa8e5b14b102342d838d` · SHA-256 `e4b227a81ce71e4085ab07eb3d87b5980cea8f3825a1ac9d0227186051f0912e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.DescentObstructionOn.Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.DescentObstructionOn.Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"ef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/history-independent-reconstructed-464b26cc/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/SurfaceScope.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Descent
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Tactic

/-!
# Scoped descent and a spherical formula family

Restricting the admissible states can make a target descend through a carrier.
The positive-radius family below consists of scalar formulas. Its volume formula
determines its radius, and hence every radius-only target. These statements do
not identify the formulas with Hausdorff area, enclosed Lebesgue volume, or
geometric curvature of an embedded surface. They do not extend to arbitrary
shapes, positions, embeddings, or varying surface-tension parameters.
-/


namespace GRWTSK.Analysis.DescentObstructionOn.Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

/-- A target is constant on carrier fibers restricted to the declared scope. -/
def DescendsThroughOn {X Q Y : Type*} (scope : Set X) (carrier : X → Q)
    (target : X → Y) : Prop :=
  ∀ ⦃x y⦄, x ∈ scope → y ∈ scope → carrier x = carrier y → target x = target y

/-- Scoped descent is exactly ordinary descent on the subtype of admissible states. -/
theorem descendsThroughOn_iff_subtype {X Q Y : Type*} (scope : Set X)
    (carrier : X → Q) (target : X → Y) :
    DescendsThroughOn scope carrier target ↔
      DescendsThrough (fun x : scope => carrier x) (fun x : scope => target x) := by
  constructor
  · intro h x y equal
    exact h x.property y.property equal
  · intro h x y hx hy equal
    exact h (x := ⟨x, hx⟩) (y := ⟨y, hy⟩) equal

/-- Restricting admissible states preserves a scoped descent proof. -/
theorem DescendsThroughOn.mono {X Q Y : Type*} {small large : Set X}
    {carrier : X → Q} {target : X → Y} (h : DescendsThroughOn large carrier target)
    (subset : small ⊆ large) : DescendsThroughOn small carrier target :=
  fun {_ _} hx hy equal => h (subset hx) (subset hy) equal

/-- The unrestricted scope recovers the existing descent predicate exactly. -/
theorem descendsThroughOn_univ_iff {X Q Y : Type*} (carrier : X → Q) (target : X → Y) :
    DescendsThroughOn Set.univ carrier target ↔ DescendsThrough carrier target := by
  constructor
  · intro h x y equal
    exact h (Set.mem_univ x) (Set.mem_univ y) equal
  · intro h x y _ _ equal
    exact h equal

/-- Both states in a scoped collision must belong to the declared scope. -/
structure DescentObstructionOn {X Q Y : Type*} (scope : Set X) (carrier : X → Q)
    (target : X → Y) where
  /-- First admissible state. -/
  left : X
  /-- Second admissible state. -/
  right : X
  /-- The first state is in scope. -/
  leftMem : left ∈ scope
  /-- The second state is in scope. -/
  rightMem : right ∈ scope
  /-- The retained information agrees. -/
  sameCarrier : carrier left = carrier right
  /-- The target information differs. -/
  targetSeparated : target left ≠ target right

/-- A scoped collision is an ordinary obstruction on the admissible-state subtype. -/
def DescentObstructionOn.toSubtype {X Q Y : Type*} {scope : Set X} {carrier : X → Q}
    {target : X → Y} (obstruction : DescentObstructionOn scope carrier target) :
    DescentObstruction (fun x : scope => carrier x) (fun x : scope => target x) where
  left := ⟨obstruction.left, obstruction.leftMem⟩
  right := ⟨obstruction.right, obstruction.rightMem⟩
  sameCarrier := obstruction.sameCarrier
  targetSeparated := obstruction.targetSeparated

/-- An admissible target-separated collision prevents descent on that scope. -/
theorem DescentObstructionOn.notDescends {X Q Y : Type*} {scope : Set X}
    {carrier : X → Q} {target : X → Y}
    (obstruction : DescentObstructionOn scope carrier target) :
    ¬DescendsThroughOn scope carrier target :=
  fun h => obstruction.targetSeparated
    (h obstruction.leftMem obstruction.rightMem obstruction.sameCarrier)

/-- A singleton scope permits identity descent even through a constant carrier. -/
theorem boolean_singleton_scoped_descent :
    DescendsThroughOn ({false} : Set Bool) (fun _ : Bool => ()) id := by
  intro x y hx hy _
  have hx' : x = false := Set.mem_singleton_iff.mp hx
  have hy' : y = false := Set.mem_singleton_iff.mp hy
  exact hx'.trans hy'.symm

/-- Enlarging that scope admits a genuine carrier collision. -/
def booleanUnrestrictedScopeObstruction :
    DescentObstructionOn (Set.univ : Set Bool) (fun _ : Bool => ()) id where
  left := false
  right := true
  leftMem := Set.mem_univ false
  rightMem := Set.mem_univ true
  sameCarrier := rfl
  targetSeparated := by decide

/-- Scoped success cannot be promoted to a larger scope without a new proof. -/
theorem boolean_unrestricted_scope_not_descends :
    ¬DescendsThroughOn (Set.univ : Set Bool) (fun _ : Bool => ()) id :=
  booleanUnrestrictedScopeObstruction.notDescends

namespace SurfaceBulk

/-- The state of the spherical formula family is only a strictly positive radius. -/
abbrev PositiveRadius := {r : ℝ // 0 < r}

/-- The three-dimensional spherical volume formula, without a geometric identification claim. -/
noncomputable def sphereVolumeFormula (r : PositiveRadius) : ℝ :=
  (4 / 3 : ℝ) * Real.pi * (r : ℝ) ^ 3

/-- The spherical area formula, without a Hausdorff-measure identification claim. -/
noncomputable def sphereAreaFormula (r : PositiveRadius) : ℝ :=
  4 * Real.pi * (r : ℝ) ^ 2

/-- The sum-of-principal-curvatures formula with the declared positive sign convention. -/
noncomputable def sphereSumCurvatureFormula (r : PositiveRadius) : ℝ :=
  2 / (r : ℝ)

/-- The pressure-jump formula at one fixed, supplied surface-tension parameter. -/
noncomputable def spherePressureFormula (surfaceTension : ℝ) (r : PositiveRadius) : ℝ :=
  surfaceTension * sphereSumCurvatureFormula r

/-- The interfacial energy formula at one fixed, supplied surface-tension parameter. -/
noncomputable def sphereEnergyFormula (surfaceTension : ℝ) (r : PositiveRadius) : ℝ :=
  surfaceTension * sphereAreaFormula r

/-- Equality of the volume formulas forces equality of the positive radii. -/
theorem sphereVolumeFormula_injective : Function.Injective sphereVolumeFormula := by
  intro r s equal
  apply Subtype.ext
  have coefficient : (4 / 3 : ℝ) * Real.pi ≠ 0 := by positivity
  have cubes : (r : ℝ) ^ 3 = (s : ℝ) ^ 3 :=
    mul_left_cancel₀ coefficient equal
  exact (pow_left_inj₀ r.property.le s.property.le (by decide : 3 ≠ 0)).mp cubes

/-- Volume retains every target defined solely on this positive-radius formula family. -/
theorem sphere_radius_target_descends {Y : Type*} (target : PositiveRadius → Y) :
    DescendsThrough sphereVolumeFormula target :=
  fun {_ _} equal => congrArg target (sphereVolumeFormula_injective equal)

/-- The area formula descends through the volume formula within this family. -/
theorem sphere_area_formula_descends :
    DescendsThrough sphereVolumeFormula sphereAreaFormula :=
  sphere_radius_target_descends sphereAreaFormula

/-- The declared curvature formula descends through the volume formula within this family. -/
theorem sphere_sum_curvature_formula_descends :
    DescendsThrough sphereVolumeFormula sphereSumCurvatureFormula :=
  sphere_radius_target_descends sphereSumCurvatureFormula

/-- With surface tension fixed, the pressure formula descends within this family. -/
theorem sphere_pressure_formula_descends (surfaceTension : ℝ) :
    DescendsThrough sphereVolumeFormula (spherePressureFormula surfaceTension) :=
  sphere_radius_target_descends (spherePressureFormula surfaceTension)

/-- With surface tension fixed, the energy formula descends within this family. -/
theorem sphere_energy_formula_descends (surfaceTension : ℝ) :
    DescendsThrough sphereVolumeFormula (sphereEnergyFormula surfaceTension) :=
  sphere_radius_target_descends (sphereEnergyFormula surfaceTension)

/-- Every radius in the formula family has strictly positive volume. -/
theorem sphere_volume_formula_pos (r : PositiveRadius) : 0 < sphereVolumeFormula r := by
  unfold sphereVolumeFormula
  exact mul_pos (mul_pos (by norm_num) Real.pi_pos) (pow_pos r.property 3)

/-- The dimensionless scalar defect formula; no geometric inequality is assumed by definition. -/
noncomputable def isoperimetricDefectFormula (area volume : ℝ) : ℝ :=
  area ^ 3 / (36 * Real.pi * volume ^ 2) - 1

/-- A supplied scalar isoperimetric inequality implies a nonnegative scalar defect.
This theorem does not prove that inequality for arbitrary regions. -/
theorem isoperimetric_defect_formula_nonneg {area volume : ℝ} (volumePositive : 0 < volume)
    (inequality : 36 * Real.pi * volume ^ 2 ≤ area ^ 3) :
    0 ≤ isoperimetricDefectFormula area volume := by
  have denominator : 0 < 36 * Real.pi * volume ^ 2 := by positivity
  exact sub_nonneg.mpr ((one_le_div denominator).mpr inequality)

/-- These spherical scalar formulas satisfy equality in the scalar defect formula. -/
theorem sphere_isoperimetric_defect_formula_zero (r : PositiveRadius) :
    isoperimetricDefectFormula (sphereAreaFormula r) (sphereVolumeFormula r) = 0 := by
  have radiusNonzero : (r : ℝ) ≠ 0 := ne_of_gt r.property
  unfold isoperimetricDefectFormula sphereAreaFormula sphereVolumeFormula
  field_simp
  ring

/-- An exact identity between the spherical scalar area and volume formulas. -/
theorem sphere_area_cube_formula (r : PositiveRadius) :
    sphereAreaFormula r ^ 3 = 36 * Real.pi * sphereVolumeFormula r ^ 2 := by
  unfold sphereAreaFormula sphereVolumeFormula
  ring

/-- A scalar interfacial energy excess relative to a supplied reference area. -/
noncomputable def surfaceEnergyExcessFormula (surfaceTension area referenceArea : ℝ) : ℝ :=
  surfaceTension * (area - referenceArea)

/-- Nonnegative tension and a supplied area lower bound imply nonnegative energy excess.
No geometric minimizer or rigidity assertion follows without those geometric hypotheses. -/
theorem surface_energy_excess_formula_nonneg {surfaceTension area referenceArea : ℝ}
    (tensionNonnegative : 0 ≤ surfaceTension) (areaLowerBound : referenceArea ≤ area) :
    0 ≤ surfaceEnergyExcessFormula surfaceTension area referenceArea :=
  mul_nonneg tensionNonnegative (sub_nonneg.mpr areaLowerBound)

/-- At the positive volume supplied by a reference radius, an explicit scalar
isoperimetric inequality and nonnegative tension give nonnegative reference energy excess.
The reference is a formula state; no geometric existence or rigidity theorem is used. -/
theorem sphere_reference_energy_excess_formula_nonneg (r : PositiveRadius)
    {surfaceTension area : ℝ} (tensionNonnegative : 0 ≤ surfaceTension)
    (inequality : 36 * Real.pi * sphereVolumeFormula r ^ 2 ≤ area ^ 3) :
    0 ≤ surfaceEnergyExcessFormula surfaceTension area (sphereAreaFormula r) := by
  apply surface_energy_excess_formula_nonneg tensionNonnegative
  apply (show Odd 3 by decide).pow_le_pow.mp
  rw [sphere_area_cube_formula]
  exact inequality

end SurfaceBulk
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
