import Mathematics.GammaBridge.Exact
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Tactic

/-! # Affine Gamma interpolation -/

namespace Mathematics.GammaBridge

variable {E : Type*} [AddCommMonoid E] [Module ℝ E]

def linear (left right : E) (time : ℝ) : E :=
  (1 - time) • left + time • right

@[simp] theorem left_endpoint (left right : E) :
    linear left right 0 = left := by
  simp [linear]

@[simp] theorem right_endpoint (left right : E) :
    linear left right 1 = right := by
  simp [linear]

def exactLinear (id : GammaBridgeId) (left right : E) : Exact E where
  id := id
  path := linear left right
  left := left
  right := right
  left_endpoint := left_endpoint left right
  right_endpoint := right_endpoint left right

def scalarLinear (left right time : ℝ) : ℝ :=
  (1 - time) * left + time * right

theorem monotone
    {left right first second : ℝ}
    (hendpoints : left ≤ right)
    (htime : first ≤ second) :
    scalarLinear left right first ≤ scalarLinear left right second := by
  have hproduct :
      0 ≤ (second - first) * (right - left) :=
    mul_nonneg (sub_nonneg.mpr htime) (sub_nonneg.mpr hendpoints)
  dsimp [scalarLinear]
  nlinarith

end Mathematics.GammaBridge
