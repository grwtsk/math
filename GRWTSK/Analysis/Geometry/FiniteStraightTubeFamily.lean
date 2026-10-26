/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Upstream Mathlib and original GRWTSK source retain their licenses. -/
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Ambient-dimension-indexed Euclidean straight cylinders

A tube is an actual finite unit-direction line segment thickened by an
orthogonal radius.  It is not a quadratic Bezier arc or an energy-minimizing
bent path.  The ambient dimension d, axial half-length, radius and
unit direction remain explicit.

The geometric definition follows the *shape* of the public 3D cylinder
used in openai/math, OAI/Analysis/Kakeya/FixedScale.lean. We independently
define it for arbitrary Fin d rather than import or claim the entire
openai/math Kakeya theorem. No uniform volume formula or directional
incidence theorem is imported here.
-/

namespace GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily

/-- Euclidean ambient space with *explicit* index dimension. -/
abbrev Space (d : ℕ) := EuclideanSpace ℝ (Fin d)

/-- Only actual unit vectors represent directions. -/
abbrev Direction (d : ℕ) := ↥(Metric.sphere (0 : Space d) 1)

variable {d : ℕ}

theorem direction_norm (ω : Direction d) :
    ‖(ω : Space d)‖ = 1 := by
  simpa only [Metric.mem_sphere, dist_zero_right] using ω.property

theorem direction_inner (ω : Direction d) :
    inner ℝ (ω : Space d) (ω : Space d) = 1 := by
  simp

/-- Positive-radius straight finite cylinder. Half-length is used so
that the OAI 3D unit-length convention corresponds to halfLength=1/2.
No bend, wave energy or cladding is stored in this geometric object. -/
structure Tube (d : ℕ) where
  center : Space d
  direction : Direction d
  halfLength : ℝ
  halfLength_pos : 0 < halfLength
  radius : ℝ
  radius_pos : 0 < radius

namespace Tube

/-- Actual straight axis, independent of the tube thickness. -/
def axis (T : Tube d) (t : ℝ) : Space d :=
  T.center + t • (T.direction : Space d)

/-- Orthogonally thickened straight segment in the selected dimension. -/
def region (T : Tube d) : Set (Space d) :=
  {x | ∃ t : ℝ, |t| ≤ T.halfLength ∧
    ∃ u : Space d,
      inner ℝ u (T.direction : Space d) = 0 ∧
      ‖u‖ ≤ T.radius ∧
      x = T.center + t • (T.direction : Space d) + u}

/-- The tube keeps its original straight axis at all permitted times. -/
theorem axis_mem_region (T : Tube d) {t : ℝ}
    (ht : |t| ≤ T.halfLength) :
    T.axis t ∈ T.region := by
  refine ⟨t, ht, 0, ?_, ?_, ?_⟩
  · simp
  · exact (norm_zero : ‖(0 : Space d)‖ = 0).le.trans T.radius_pos.le
  · simp [axis]

theorem center_mem_region (T : Tube d) :
    T.center ∈ T.region := by
  have ht : |(0 : ℝ)| ≤ T.halfLength := by
    simpa using T.halfLength_pos.le
  simpa [axis] using (T.axis_mem_region (t := 0) ht)

/-- The two axial segment endpoints genuinely belong to the tube. -/
theorem positive_endpoint_mem_region (T : Tube d) :
    T.axis T.halfLength ∈ T.region :=
  T.axis_mem_region (by
    simpa [abs_of_pos T.halfLength_pos] using
      (le_refl T.halfLength))

theorem negative_endpoint_mem_region (T : Tube d) :
    T.axis (-T.halfLength) ∈ T.region :=
  T.axis_mem_region (by
    simpa [abs_neg, abs_of_pos T.halfLength_pos] using
      (le_refl T.halfLength))

/-- Geometric membership criterion in axial and perpendicular
coordinates, with no appeal to a rendered tube picture. -/
theorem mem_region_iff (T : Tube d) (x : Space d) :
    x ∈ T.region ↔
      |inner ℝ (x - T.center) (T.direction : Space d)| ≤ T.halfLength ∧
      ‖x - T.center -
        (inner ℝ (x - T.center) (T.direction : Space d)) •
          (T.direction : Space d)‖ ≤ T.radius := by
  constructor
  · rintro ⟨t, ht, u, hu, hud, rfl⟩
    have heq :
        T.center + t • (T.direction : Space d) + u - T.center =
          t • (T.direction : Space d) + u := by
      abel
    rw [heq]
    simp only [inner_add_left, inner_smul_left, direction_inner, hu]
    simpa using And.intro ht hud
  · rintro ⟨ht, hu⟩
    refine ⟨inner ℝ (x-T.center) (T.direction : Space d), ht,
      x-T.center -
        inner ℝ (x-T.center) (T.direction : Space d) •
          (T.direction : Space d), ?_, hu, ?_⟩
    · simp [inner_sub_left, inner_smul_left, direction_inner]
    · abel

/-- Geometric cylinders have measurable regions, so the later
Lebesgue-volume interface is meaningful even before computing it. -/
theorem isClosed_region (T : Tube d) : IsClosed T.region := by
  have h :
      T.region =
        {x | |inner ℝ (x - T.center)
          (T.direction : Space d)| ≤ T.halfLength} ∩
        {x | ‖x - T.center -
          (inner ℝ (x - T.center)
            (T.direction : Space d)) •
              (T.direction : Space d)‖ ≤ T.radius} := by
    ext x
    exact T.mem_region_iff x
  rw [h]
  exact (isClosed_le (by fun_prop) continuous_const).inter
    (isClosed_le (by fun_prop) continuous_const)

theorem measurableSet_region (T : Tube d) :
    MeasurableSet T.region :=
  T.isClosed_region.measurableSet

/-- Keeping direction, axis and length fixed while changing thickness
changes *only* the radius. The map is a geometric operation, not an
operator-norm or Kakeya dimension transport theorem. -/
def withRadius (T : Tube d) (ρ : ℝ) (hρ : 0 < ρ) : Tube d :=
  { T with radius := ρ, radius_pos := hρ }

/-- Monotonicity under a genuinely larger transverse thickness. -/
theorem region_subset_of_radius_le
    (T : Tube d) (ρ : ℝ) (hρ : 0 < ρ) (hr : T.radius ≤ ρ) :
    T.region ⊆ (T.withRadius ρ hρ).region := by
  intro x hx
  obtain ⟨t, ht, u, hu, hud, heq⟩ := hx
  exact ⟨t, ht, u, hu, hud.trans hr, heq⟩

/-- A selected tube has a measurable Lebesgue volume in the *declared
ambient dimension*. Computing it requires the dimension-specific
cross-section theorem; a finite cell count is not this volume. -/
def lebesgueVolume (T : Tube d) : ℝ≥0∞ :=
  MeasureTheory.volume T.region

end Tube

end GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
