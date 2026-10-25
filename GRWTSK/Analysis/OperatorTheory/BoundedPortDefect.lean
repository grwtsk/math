import Mathlib.Analysis.Normed.Operator.Basic

namespace GRWTSK.Analysis.OperatorTheory.BoundedPortDefect

universe u v w x

variable {𝕜 : Type u} [NontriviallyNormedField 𝕜]
variable {E : Type v} {F : Type w} {G : Type x}
variable [SeminormedAddCommGroup E] [NormedSpace 𝕜 E]
variable [SeminormedAddCommGroup F] [NormedSpace 𝕜 F]
variable [SeminormedAddCommGroup G] [NormedSpace 𝕜 G]

/-- Continuous-linear operator transport defect. -/
def defect
    (U : E →L[𝕜] F) (D_E : E →L[𝕜] E) (D_F : F →L[𝕜] F) :
    E →L[𝕜] F :=
  U.comp D_E - D_F.comp U

/-- Exact bounded operator transport. -/
def Intertwines
    (U : E →L[𝕜] F) (D_E : E →L[𝕜] E) (D_F : F →L[𝕜] F) : Prop :=
  U.comp D_E = D_F.comp U

/-- Exact bounded transport is equivalent to zero defect. -/
theorem intertwines_iff_defect_eq_zero
    (U : E →L[𝕜] F) (D_E : E →L[𝕜] E) (D_F : F →L[𝕜] F) :
    Intertwines U D_E D_F ↔ defect U D_E D_F = 0 := by
  exact sub_eq_zero.symm

/-- Defects obey the exact cocycle identity under continuous-linear composition. -/
theorem defect_comp
    (U : E →L[𝕜] F) (V : F →L[𝕜] G)
    (D_E : E →L[𝕜] E) (D_F : F →L[𝕜] F) (D_G : G →L[𝕜] G) :
    defect (V.comp U) D_E D_G =
      V.comp (defect U D_E D_F) + (defect V D_F D_G).comp U := by
  ext x
  simp [defect, ContinuousLinearMap.comp_apply]

/-- A direct operator-norm bound for one transport defect. -/
theorem norm_defect_le
    (U : E →L[𝕜] F) (D_E : E →L[𝕜] E) (D_F : F →L[𝕜] F) :
    ‖defect U D_E D_F‖ ≤ ‖U‖ * ‖D_E‖ + ‖D_F‖ * ‖U‖ := by
  unfold defect
  calc
    ‖U.comp D_E - D_F.comp U‖ ≤ ‖U.comp D_E‖ + ‖D_F.comp U‖ :=
      norm_sub_le _ _
    _ ≤ ‖U‖ * ‖D_E‖ + ‖D_F‖ * ‖U‖ :=
      add_le_add (U.opNorm_comp_le D_E) (D_F.opNorm_comp_le U)

/-- The exact two-port residual bound required by the framed-port issue. -/
theorem norm_defect_comp_le
    (U : E →L[𝕜] F) (V : F →L[𝕜] G)
    (D_E : E →L[𝕜] E) (D_F : F →L[𝕜] F) (D_G : G →L[𝕜] G) :
    ‖defect (V.comp U) D_E D_G‖ ≤
      ‖V‖ * ‖defect U D_E D_F‖ + ‖defect V D_F D_G‖ * ‖U‖ := by
  rw [defect_comp]
  calc
    ‖V.comp (defect U D_E D_F) + (defect V D_F D_G).comp U‖ ≤
        ‖V.comp (defect U D_E D_F)‖ + ‖(defect V D_F D_G).comp U‖ :=
      norm_add_le _ _
    _ ≤ ‖V‖ * ‖defect U D_E D_F‖ + ‖defect V D_F D_G‖ * ‖U‖ :=
      add_le_add
        (V.opNorm_comp_le (defect U D_E D_F))
        ((defect V D_F D_G).opNorm_comp_le U)

/-- Exact bounded intertwiners compose. -/
theorem Intertwines.comp
    {U : E →L[𝕜] F} {V : F →L[𝕜] G}
    {D_E : E →L[𝕜] E} {D_F : F →L[𝕜] F} {D_G : G →L[𝕜] G}
    (hU : Intertwines U D_E D_F) (hV : Intertwines V D_F D_G) :
    Intertwines (V.comp U) D_E D_G := by
  rw [intertwines_iff_defect_eq_zero] at hU hV ⊢
  rw [defect_comp, hU, hV]
  simp


section QuantitativeGapTransport

variable {X : Type*} [NormedAddCommGroup X] [NormedSpace ℝ X]
variable {Y : Type*} [SeminormedAddCommGroup Y] [NormedSpace ℝ Y]

/-- A small bounded intertwining defect preserves injectivity of the transported
operator when the reference composite has a quantitative lower norm bound.

This extends the perturbation-injectivity argument used in the OpenAI
Navier–Stokes finite-rank gap stack to distinct source and target spaces.
The gap is an explicit hypothesis, not a consequence of the defect bound. -/
theorem injective_of_defect_lt_gap
    (U : X →L[ℝ] Y) (D_X : X →L[ℝ] X) (D_Y : Y →L[ℝ] Y)
    {γ : ℝ}
    (hgap : ∀ x, γ * ‖x‖ ≤ ‖(U.comp D_X) x‖)
    (hsmall : ‖defect U D_X D_Y‖ < γ) :
    Function.Injective (D_Y.comp U) := by
  intro x y hxy
  have hz : (D_Y.comp U) (x - y) = 0 := by
    rw [map_sub, hxy, sub_self]
  have hd : ‖(U.comp D_X) (x - y)‖ =
      ‖(defect U D_X D_Y) (x - y)‖ := by
    simp [defect, hz]
  have hle : ‖(U.comp D_X) (x - y)‖ ≤
      ‖defect U D_X D_Y‖ * ‖x - y‖ := by
    rw [hd]
    exact (defect U D_X D_Y).le_opNorm (x - y)
  have hbound : γ * ‖x - y‖ ≤ ‖defect U D_X D_Y‖ * ‖x - y‖ :=
    (hgap (x - y)).trans hle
  have hzero : ‖x - y‖ = 0 := by
    by_contra hn
    have hp : 0 < ‖x - y‖ :=
      lt_of_le_of_ne (norm_nonneg _) (Ne.symm hn)
    have hlt : ‖defect U D_X D_Y‖ * ‖x - y‖ <
        γ * ‖x - y‖ := mul_lt_mul_of_pos_right hsmall hp
    exact (lt_irrefl _) (hbound.trans_lt hlt)
  exact sub_eq_zero.mp (norm_eq_zero.mp hzero)

end QuantitativeGapTransport

end GRWTSK.Analysis.OperatorTheory.BoundedPortDefect
