# Complete source: GRWTSK.Topology.AlgebraicTopology.AddCircleConeDisk

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `418a859dc26d5408558de36edcf7e710c1e2924a` · SHA-256 `d1a3e8c195baa296126ebfc4a9a25d90d02113f635f5afb45981aa96d3a5f8e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI Codex.
Imported Mathlib results retain their original credits and licenses. -/
import GRWTSK.Topology.AlgebraicTopology.CircleBoundaryAdapters
import GRWTSK.Topology.AlgebraicTopology.ConeCongruence
import GRWTSK.Topology.AlgebraicTopology.ComplexDisk

/-!
# The cone on the period-one additive circle is the Euclidean two-disk

The actual Mathlib additive-circle homeomorphism induces a cone homeomorphism.
Composing it with the complex-circle cone and coordinate homeomorphisms gives
the standard Euclidean two-disk. The boundary inclusion and radial coordinates
are those of the actual exponential parameterization, rather than additional
compatibility assumptions.
-/

set_option autoImplicit false

noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.AddCircleConeDisk

/-- The additive circle parameterizes the actual Euclidean disk boundary. -/
def boundaryHomeomorph : UnitAddCircle ≃ₜ TopCat.diskBoundary.{0} 2 :=
  CircleBoundaryAdapters.unitAddCircleToComplexCircle.trans
    ComplexDisk.topCatBoundaryHomeomorph

/-- The concrete homeomorphism from the additive-circle cone to the Euclidean disk. -/
def homeomorph : CircleCone.Cone UnitAddCircle ≃ₜ TopCat.disk.{0} 2 :=
  (ConeCongruence.homeomorph CircleBoundaryAdapters.unitAddCircleToComplexCircle).trans
    ComplexDisk.coneHomeomorph

@[simp] theorem boundaryHomeomorph_zero (x : UnitAddCircle) :
    ((boundaryHomeomorph x).down : ComplexDisk.EuclideanPlane) 0 =
      (AddCircle.toCircle x : ℂ).re := by
  simp only [boundaryHomeomorph, Homeomorph.trans_apply,
    ComplexDisk.topCatBoundaryHomeomorph_zero,
    CircleBoundaryAdapters.unitAddCircleToComplexCircle_apply]

@[simp] theorem boundaryHomeomorph_one (x : UnitAddCircle) :
    ((boundaryHomeomorph x).down : ComplexDisk.EuclideanPlane) 1 =
      (AddCircle.toCircle x : ℂ).im := by
  simp only [boundaryHomeomorph, Homeomorph.trans_apply,
    ComplexDisk.topCatBoundaryHomeomorph_one,
    CircleBoundaryAdapters.unitAddCircleToComplexCircle_apply]

/-- A real parameter has the usual period-one cosine boundary coordinate. -/
@[simp] theorem boundaryHomeomorph_coe_zero (t : ℝ) :
    ((boundaryHomeomorph (t : UnitAddCircle)).down : ComplexDisk.EuclideanPlane) 0 =
      Real.cos (2 * Real.pi * t) := by
  rw [boundaryHomeomorph_zero, AddCircle.toCircle_apply_mk, Circle.coe_exp,
    Complex.exp_ofReal_mul_I_re, div_one]

/-- A real parameter has the usual period-one sine boundary coordinate. -/
@[simp] theorem boundaryHomeomorph_coe_one (t : ℝ) :
    ((boundaryHomeomorph (t : UnitAddCircle)).down : ComplexDisk.EuclideanPlane) 1 =
      Real.sin (2 * Real.pi * t) := by
  rw [boundaryHomeomorph_one, AddCircle.toCircle_apply_mk, Circle.coe_exp,
    Complex.exp_ofReal_mul_I_im, div_one]

/-- The radius-one copy maps to the standard boundary inclusion pointwise. -/
@[simp] theorem homeomorph_boundary (x : UnitAddCircle) :
    homeomorph (ConeCongruence.boundary x) =
      (TopCat.diskBoundaryInclusion 2) (boundaryHomeomorph x) := by
  change ComplexDisk.coneHomeomorph
    (CircleCone.boundary (CircleBoundaryAdapters.unitAddCircleToComplexCircle x)) = _
  exact ComplexDisk.coneHomeomorph_boundary _

@[simp] theorem homeomorph_coneMk_zero (x : UnitAddCircle) (r : unitInterval) :
    ((homeomorph (CircleCone.coneMk x r)).down : ComplexDisk.EuclideanPlane) 0 =
      (r : ℝ) * (AddCircle.toCircle x : ℂ).re := by
  simp only [homeomorph, Homeomorph.trans_apply, ConeCongruence.homeomorph_coneMk,
    ComplexDisk.coneHomeomorph_coneMk_zero,
    CircleBoundaryAdapters.unitAddCircleToComplexCircle_apply]

@[simp] theorem homeomorph_coneMk_one (x : UnitAddCircle) (r : unitInterval) :
    ((homeomorph (CircleCone.coneMk x r)).down : ComplexDisk.EuclideanPlane) 1 =
      (r : ℝ) * (AddCircle.toCircle x : ℂ).im := by
  simp only [homeomorph, Homeomorph.trans_apply, ConeCongruence.homeomorph_coneMk,
    ComplexDisk.coneHomeomorph_coneMk_one,
    CircleBoundaryAdapters.unitAddCircleToComplexCircle_apply]

/-- The quotient radius is exactly the Euclidean norm of the image. -/
@[simp] theorem norm_homeomorph (p : CircleCone.Cone UnitAddCircle) :
    ‖((homeomorph p).down : ComplexDisk.EuclideanPlane)‖ =
      (ConeCongruence.radius p : ℝ) := by
  refine Quotient.inductionOn p ?_
  rintro ⟨x, r⟩
  change ‖ComplexDisk.coordinateIsometry
    (CircleCone.homeomorph
      (CircleCone.coneMk (CircleBoundaryAdapters.unitAddCircleToComplexCircle x) r) : ℂ)‖ =
    (r : ℝ)
  rw [ComplexDisk.coordinateIsometry.norm_map, CircleCone.homeomorph_coneMk,
    norm_smul, Real.norm_eq_abs, abs_of_nonneg r.property.1, Circle.norm_coe, mul_one]

/-- Every radius-zero representative maps to the center. -/
@[simp] theorem homeomorph_apex (x : UnitAddCircle) :
    ((homeomorph (ConeCongruence.apex x)).down : ComplexDisk.EuclideanPlane) = 0 := by
  simp only [ConeCongruence.apex, homeomorph, Homeomorph.trans_apply,
    ConeCongruence.homeomorph_coneMk, CircleCone.coneMk_zero,
    ComplexDisk.coneHomeomorph_apex]

end GRWTSK.Topology.AlgebraicTopology.AddCircleConeDisk
```
