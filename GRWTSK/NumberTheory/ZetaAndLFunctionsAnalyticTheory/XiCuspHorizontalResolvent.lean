/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Analysis.InnerProductSpace.LinearMap
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Module
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-! # Rank-one inverse and the horizontal geometric resolvent

These identities apply to the actual shifted rank-one dissipative
realization once its analytically constructed real-part resolvent is given.
-/
noncomputable section
namespace GRWTSK.NumberTheory.XiCuspHorizontalResolvent
open Complex

section
variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]

/-- The shifted modular damping with the scale absorbed in the vector. -/
def damped (A : E →L[ℂ] E) (v : E) : E →L[ℂ] E :=
  A - I • InnerProductSpace.rankOne ℂ v v

/-- A rank-one correction to the free inverse. -/
def solve (F : E →L[ℂ] E) (v : E) (z : ℂ) (x : E) : E :=
  F x - (I*z*inner ℂ v (F x)/(1+I*z*inner ℂ v (F v))) • F v

theorem solve_damped (A F : E →L[ℂ] E) (v : E) (z : ℂ)
    (hf : ∀ x, F x-z • A (F x)=x)
    (hd : 1+I*z*inner ℂ v (F v) ≠ 0) (x : E) :
    solve F v z x - z • damped A v (solve F v z x) = x := by
  let a := I*z*inner ℂ v (F x)/(1+I*z*inner ℂ v (F v))
  have hfree : solve F v z x-z • A (solve F v z x)=x-a • v := by
    calc
      _ = (F x-z • A (F x))-a • (F v-z • A (F v)) := by
        change (F x-a • F v)-z • A (F x-a • F v)=_
        simp only [map_sub, map_smul]
        module
      _ = _ := by rw [hf,hf]
  have hscalar : z*I*(inner ℂ v (F x)-a*inner ℂ v (F v)) = a := by
    have hmul : a*(1+I*z*inner ℂ v (F v))=I*z*inner ℂ v (F x) := div_mul_cancel₀ _ hd
    linear_combination -hmul
  calc
    _ = (solve F v z x-z • A (solve F v z x)) +
        (z*I*(inner ℂ v (F x)-a*inner ℂ v (F v))) • v := by
      simp only [damped,sub_apply,smul_apply,
        InnerProductSpace.rankOne_apply,solve,inner_sub_right,inner_smul_right]
      dsimp [a]
      module
    _ = _ := by rw [hfree,hscalar]; abel

/-- The free resolvent is the additive error in the norm of the rank-one pole. -/
theorem rank_one_norm_error (G : E →L[ℂ] E) (u v : E) (a : ℂ) :
    |‖G+a • InnerProductSpace.rankOne ℂ u v‖-‖a‖*‖u‖*‖v‖| ≤ ‖G‖ := by
  simpa [norm_smul,InnerProductSpace.norm_rankOne,mul_assoc] using
    (abs_norm_sub_norm_le (G+a • InnerProductSpace.rankOne ℂ u v)
      (a • InnerProductSpace.rankOne ℂ u v))

/-- A residual escaping to infinity gives weakly null vectors when tested
against any vector in the adjoint domain. -/
theorem weak_escape_bound (x hx y hy : E) (z : ℂ)
    (hadj : inner ℂ y hx=inner ℂ hy x) :
    ‖z‖*‖inner ℂ y x‖ ≤ ‖hy‖*‖x‖+‖y‖*‖hx-z • x‖ := by
  have h : z*inner ℂ y x=inner ℂ hy x-inner ℂ y (hx-z • x) := by
    rw [inner_sub_right,inner_smul_right,hadj]
    abel
  rw [← norm_mul,h]
  exact (norm_sub_le ..).trans (add_le_add (norm_inner_le_norm ..) (norm_inner_le_norm ..))

end

/-- Cayley inversion gives the positive numerator in the exact pole norm. -/
theorem cayley_im (q : ℂ) :
    (I*((1-q)/(1+q))).im = (1-‖q‖^2)/‖1+q‖^2 := by
  rw [I_mul_im, div_re, ← normSq_eq_norm_sq, ← normSq_eq_norm_sq]
  simp [normSq_apply]
  ring

theorem cayley_denominator (q : ℂ) (hq : 1+q ≠ 0) :
    1+I*(I*((1-q)/(1+q)))=2*q/(1+q) := by
  field_simp
  rw [I_sq]
  ring

/-- The squared absolute Euler factor decreases in the real part of its
prime phase when 0 ≤ b < a < 1. -/
theorem euler_factor_antitone {a b u v : ℝ} (hb : 0 ≤ b) (hba : b < a) (ha : a < 1)
    (huv : u ≤ v) (hv : v ≤ 1) :
    (1-2*a*v+a^2)/(1-2*b*v+b^2) ≤ (1-2*a*u+a^2)/(1-2*b*u+b^2) := by
  have hpos (w : ℝ) (hw : w ≤ 1) : 0 < 1-2*b*w+b^2 := by
    have hp : 0 < (1-b)^2 := sq_pos_of_pos (by linarith)
    nlinarith [mul_nonneg hb (sub_nonneg.mpr hw)]
  apply (div_le_div_iff₀ (hpos v hv) (hpos u (huv.trans hv))).mpr
  have hab : 0 ≤ 1-a*b := by
    nlinarith [mul_nonneg (show 0 ≤ a by linarith) (show 0 ≤ 1-b by linarith)]
  have hd := mul_nonneg (mul_nonneg (sub_nonneg.mpr huv) (sub_nonneg.mpr hba.le)) hab
  nlinarith

end GRWTSK.NumberTheory.XiCuspHorizontalResolvent
