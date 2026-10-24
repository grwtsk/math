# Complete source: GRWTSK.Analysis.Operator.BoundedPortDefect

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b5719dea37115916fff7a064e81e204c18dcdbe` · SHA-256 `c1b5414cd8530bf7b8c268ca4154d224e84383c72e91b0debfabe1566c5c535c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.Normed.Operator.Basic

namespace GRWTSK.Analysis.Operator.BoundedPortDefect

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

end GRWTSK.Analysis.Operator.BoundedPortDefect
```
