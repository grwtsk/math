/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Mathlib and Lean retain their original attribution and licenses.

Status: authored proof source; not yet elaborated in the pinned environment.
No claim of an all-scale arithmetic estimate is made by this module.
-/
import Mathlib
import GRWTSK.Analysis.InnerProductSpace.VariationalResidual

/-! # Full residual and reading errors under an isometric trial-space embedding -/
set_option autoImplicit false
noncomputable section
open scoped InnerProductSpace
namespace GRWTSK.Analysis.NormedSpace.IntertwiningResidual
open GRWTSK.Analysis.InnerProductSpace.VariationalResidual

variable {E F : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
  [NormedAddCommGroup F] [InnerProductSpace ℝ F]
  {V : Submodule ℝ E} {W : Submodule ℝ F}

/-- The lift records membership in the actual operator domain. -/
structure DomainEmbedding (V : Submodule ℝ E) (W : Submodule ℝ F) where
  isometry : F →ₗᵢ[ℝ] E
  lift : W →ₗ[ℝ] V
  coe_lift : ∀ y, (lift y : E) = isometry (y : F)

variable (J : DomainEmbedding V W) (A : V →ₗ[ℝ] E) (Ah : W →ₗ[ℝ] F)

def defect (y : W) : E := A (J.lift y)-J.isometry (Ah y)

theorem full_residual_identity (b : E) (bh : F) (y : W) :
    b-A (J.lift y) = (b-J.isometry bh) +
      J.isometry (bh-Ah y)-defect J A Ah y := by
  simp only [defect, map_sub]
  abel

theorem full_residual_bound (b : E) (bh : F) (y : W)
    {eta_b eta_D : ℝ}
    (hsource : ‖b-J.isometry bh‖ ≤ eta_b)
    (hdefect : ‖defect J A Ah y‖ ≤ eta_D*‖(y : F)‖) :
    ‖b-A (J.lift y)‖ ≤
      eta_b+‖bh-Ah y‖+eta_D*‖(y : F)‖ := by
  rw [full_residual_identity J A Ah]
  calc
    _ ≤ ‖b-J.isometry bh+J.isometry (bh-Ah y)‖+‖defect J A Ah y‖ := norm_sub_le _ _
    _ ≤ (‖b-J.isometry bh‖+‖J.isometry (bh-Ah y)‖)+‖defect J A Ah y‖ :=
      add_le_add_right (norm_add_le _ _) _
    _ ≤ _ := by rw [J.isometry.norm_map]; gcongr

/-- The linear source error and quadratic operator error are separate. -/
theorem reading_difference_identity (b : E) (bh : F) (y : W) :
    lowerReading A b (J.lift y)-lowerReading Ah bh y =
      2*⟪b-J.isometry bh, J.isometry (y : F)⟫_ℝ-
      ⟪J.isometry (y : F),defect J A Ah y⟫_ℝ := by
  unfold lowerReading defect
  simp only [J.coe_lift, inner_sub_left, inner_sub_right,
    J.isometry.inner_map_map]
  ring

theorem reading_difference_bound (b : E) (bh : F) (y : W)
    {eta_b eta_D : ℝ} (hb : 0 ≤ eta_b) (hD : 0 ≤ eta_D)
    (hsource : ‖b-J.isometry bh‖ ≤ eta_b)
    (hdefect : ‖defect J A Ah y‖ ≤ eta_D*‖(y : F)‖) :
    |lowerReading A b (J.lift y)-lowerReading Ah bh y| ≤
      2*eta_b*‖(y : F)‖+eta_D*‖(y : F)‖^2 := by
  rw [reading_difference_identity J A Ah]
  have hp : |⟪b-J.isometry bh,J.isometry (y : F)⟫_ℝ| ≤ eta_b*‖(y : F)‖ := by
    calc
      _ ≤ ‖b-J.isometry bh‖*‖J.isometry (y : F)‖ := by
        simpa only [Real.norm_eq_abs] using
          norm_inner_le_norm (b-J.isometry bh) (J.isometry (y : F))
      _ ≤ _ := by rw [J.isometry.norm_map]; gcongr
  have hq : |⟪J.isometry (y : F),defect J A Ah y⟫_ℝ| ≤
      eta_D*‖(y : F)‖^2 := by
    calc
      _ ≤ ‖J.isometry (y : F)‖*‖defect J A Ah y‖ := by
        simpa only [Real.norm_eq_abs] using
          norm_inner_le_norm (J.isometry (y : F)) (defect J A Ah y)
      _ ≤ ‖(y : F)‖*(eta_D*‖(y : F)‖) := by
        rw [J.isometry.norm_map]
        gcongr
      _ = _ := by ring
  calc
    _ ≤ |2*⟪b-J.isometry bh,J.isometry (y : F)⟫_ℝ|+
        |⟪J.isometry (y : F),defect J A Ah y⟫_ℝ| := abs_sub_le _ _
    _ ≤ _ := by rw [abs_mul]; norm_num; nlinarith

/-- Actual source, discretization, and algebraic residual errors returned together. -/
theorem full_operator_enclosure (b : E) (bh : F) (x : V) (y : W)
    {s eta_b eta_D : ℝ} (hs : 0 < s)
    (hb : 0 ≤ eta_b) (hD : 0 ≤ eta_D)
    (hsym : SymmetricOnDomain A) (hcoerc : CoerciveAt A s)
    (hsolve : A x=b)
    (hsource : ‖b-J.isometry bh‖ ≤ eta_b)
    (hdefect : ‖defect J A Ah y‖ ≤ eta_D*‖(y : F)‖) :
    let eta := 2*eta_b*‖(y : F)‖+eta_D*‖(y : F)‖^2
    let R := eta_b+‖bh-Ah y‖+eta_D*‖(y : F)‖
    lowerReading Ah bh y-eta ≤ ⟪b,(x : E)⟫_ℝ ∧
    ⟪b,(x : E)⟫_ℝ ≤ lowerReading Ah bh y+eta+R^2/s := by
  dsimp only
  obtain ⟨hlo,hhi⟩ := positive_height_enclosure A b x (J.lift y) hs hsym hcoerc hsolve
  apply GRWTSK.Analysis.Inequalities.ResidualEnclosure.perturb_enclosure hs
    (by positivity) (norm_nonneg _) hlo hhi
  · exact reading_difference_bound J A Ah b bh y hb hD hsource hdefect
  · exact full_residual_bound J A Ah b bh y hsource hdefect

end GRWTSK.Analysis.NormedSpace.IntertwiningResidual
