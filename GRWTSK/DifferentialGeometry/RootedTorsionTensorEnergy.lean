/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Geometry.Manifold.VectorBundle.CovariantDerivative.Torsion
import Mathlib

/-!
# Positive normed energy for torsion tensors of affine connections

Local attribution: grwtsk contributors.
The genuine Mathlib CovariantDerivative.torsion is an alternating
vector-valued 2-tensor. It has no intrinsic positive sign. Choosing a
positive-definite norm on its tensor carrier defines a nonnegative
energy, and positive stiffness gives strict positivity when that
torsion tensor is nonzero.

For Lorentzian pseudo-Riemannian metrics, raw index contraction
T_abc T^abc need NOT be positive. Its replacement with a positive
observer/spatial norm requires an exact observer and projection.
The Gödel metric in ordinary general relativity is analyzed with a
torsion-free Levi-Civita connection; its rotation is vorticity and
cannot be inserted as positive connection torsion.

This finite/normed lemma is a reusable consumer boundary, not a
formal Gödel metric computation.

Lean compilation, kernel replay, transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.DifferentialGeometry.RootedTorsionTensorEnergy

universe u v

variable {V : Type u} [NormedAddCommGroup V]

/-- The selected nonnegative quadratic norm of a torsion tensor sample. -/
def tensorEnergy (κ : ℝ) (T : V) : ℝ :=
  κ * ‖T‖ ^ 2

theorem tensorEnergy_nonneg (κ : ℝ) (hκ : 0 ≤ κ) (T : V) :
    0 ≤ tensorEnergy κ T := by
  unfold tensorEnergy
  exact mul_nonneg hκ (sq_nonneg _)

/-- A positive-definite tensor norm vanishes only at the zero tensor. -/
theorem tensorEnergy_pos_of_ne_zero
    (κ : ℝ) (hκ : 0 < κ) (T : V) (hT : T ≠ 0) :
    0 < tensorEnergy κ T := by
  have hn : ‖T‖ ≠ 0 := by
    intro hzero
    exact hT (norm_eq_zero.mp hzero)
  exact mul_pos hκ (sq_pos_of_ne_zero hn)

/-- The root here is the ZERO TENSOR; it is not a preferred coordinate
origin of the underlying manifold. -/
theorem tensorEnergy_zero_iff
    (κ : ℝ) (hκ : 0 < κ) (T : V) :
    tensorEnergy κ T = 0 ↔ T = 0 := by
  constructor
  · intro h
    by_contra hT
    have hp := tensorEnergy_pos_of_ne_zero κ hκ T hT
    linarith
  · intro h
    subst T
    simp [tensorEnergy]

/-- Actual norm preservation, not merely a topological frame equivalence,
is needed to transport positive tensor energy unchanged. -/
theorem tensorEnergy_eq_of_norm_preserving
    {W : Type v} [NormedAddCommGroup W]
    (κ : ℝ) (f : V → W)
    (hf : ∀ x : V, ‖f x‖ = ‖x‖) (T : V) :
    tensorEnergy κ (f T) = tensorEnergy κ T := by
  simp [tensorEnergy, hf T]

/-- A general map retains a signed tensor defect; no isometry is inferred. -/
def tensorDefect {W : Type v} [AddCommGroup W]
    (f : V → W) (T : V) (target : W) : W :=
  f T - target

theorem tensorDefect_return
    {W : Type v} [AddCommGroup W]
    (f : V → W) (T : V) (target : W) :
    f T = target + tensorDefect f T target := by
  unfold tensorDefect
  abel

end GRWTSK.DifferentialGeometry.RootedTorsionTensorEnergy

end
