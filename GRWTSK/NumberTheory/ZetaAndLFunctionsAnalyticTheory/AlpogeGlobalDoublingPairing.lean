/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.LinearAlgebra.Eigenspace.Zero
import Mathlib.MeasureTheory.Group.FundamentalDomain
import Mathlib.MeasureTheory.Group.Integral
import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic

/-! # Boundary stabilizers and the graph term in unitary doubling

The first-coordinate displacement induced by the source unipotent radical
has square zero on its Lagrangian. The graph unfolding uses the rational
lattice on the left and right translation of the cusp vector. See the
accompanying manuscript for the arithmetic specialization, character,
volume normalizations, and domains of integration.
-/
namespace GRWTSK.NumberTheory.AlpogeGlobalDoublingPairing

section Boundary

variable {K W : Type*} [Field K] [AddCommGroup W] [Module K W]
  (Y : Submodule K (W × W)) (d : W →ₗ[K] W)
  (intoAxis : ∀ y : Y, (d y.val.1, (0 : W)) ∈ Y)

/-- Displacement of a first-coordinate unipotent on the boundary Lagrangian. -/
def boundaryShift : Module.End K Y where
  toFun y := ⟨(d y.val.1, 0), intoAxis y⟩
  map_add' x y := by ext <;> simp
  map_smul' a y := by ext <;> simp

theorem boundaryShift_sq (fixAxis : ∀ x, (x, (0 : W)) ∈ Y → d x = 0) :
    boundaryShift Y d intoAxis ^ 2 = 0 := by
  apply LinearMap.ext
  intro y
  apply Subtype.ext
  change (d (d y.val.1), (0 : W)) = (0, 0)
  rw [fixAxis _ (intoAxis y)]

/-- The determinant and every determinant character of the induced unipotent
on the Lagrangian are trivial, in arbitrary characteristic. -/
theorem boundary_det [FiniteDimensional K W]
    (fixAxis : ∀ x, (x, (0 : W)) ∈ Y → d x = 0) :
    LinearMap.det (1 + boundaryShift Y d intoAxis) = 1 := by
  let T := boundaryShift Y d intoAxis
  have h : IsNilpotent T := ⟨2, boundaryShift_sq Y d intoAxis fixAxis⟩
  have e := LinearMap.eval_charpoly (-T) (1 : K)
  rw [h.neg.charpoly_eq_X_pow_finrank] at e
  rw [map_one] at e
  have hmaps : (1 + T : Module.End K Y) = 1 - -T := by
    apply LinearMap.ext
    intro x
    change x + T x = x - -(T x)
    abel
  change LinearMap.det (1 + T) = 1
  rw [hmaps, ← e]
  simp

end Boundary

open MeasureTheory

/-- Summing the rational graph translates and changing variables gives exactly
the right-translated cusp vector. The absolute-integrability hypothesis is
needed for converting the orbit sum into the whole-group integral. -/
theorem graph_unfold {G : Type*} [Group G] [MeasurableSpace G]
    [MeasurableMul G] (μ : Measure G) [μ.IsMulLeftInvariant]
    (Γ : Subgroup G) [Countable Γ] [SMulInvariantMeasure Γ G μ]
    {F : Set G} (fund : IsFundamentalDomain Γ F μ)
    (a b : G → ℂ) (invariant : ∀ (γ : Γ) x, b (γ.val * x) = b x)
    (y : G) (integrable : Integrable (fun x => a (y⁻¹ * x) * b x) μ) :
    (∑' γ : Γ, ∫ x in F, a (y⁻¹ * (γ.val * x)) * b x ∂μ)
      = ∫ t, a t * b (y * t) ∂μ := by
  let f : G → ℂ := fun x => a (y⁻¹ * x) * b x
  have orbit (γ : Γ) (x : G) : f (γ • x) = a (y⁻¹ * (γ.val * x)) * b x := by
    change a (y⁻¹ * (γ.val * x)) * b (γ.val * x) = _
    rw [invariant]
  have tile := fund.integral_eq_tsum'' f integrable
  simp_rw [orbit] at tile
  rw [← tile, ← integral_mul_left_eq_self f y]
  simp [f]

end GRWTSK.NumberTheory.AlpogeGlobalDoublingPairing
