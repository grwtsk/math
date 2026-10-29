/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib algebra homomorphisms and linear equivalences (Apache-2.0).
Formalization assistance: OpenAI.

Weighted linear lifts of an algebra involution. The scalar square is retained;
these maps are not unital ring maps in general. No divisor, norm, arithmetic
height, or global-section identification is supplied. Source proof scripts
only, pending elaboration and independent trust checks.
-/
import Mathlib.Algebra.Algebra.Hom
import Mathlib.Algebra.Module.Equiv.Basic
import Mathlib.Tactic.Ring

set_option autoImplicit false

namespace GRWTSK.Algebra.RingTheory.WeightedInvolution

variable {R A : Type*} [CommRing R] [CommRing A] [Algebra R A]

/-- Weight k acts on the SAME algebra map, by multiplication by u^k. -/
def operator (sigma : A →ₐ[R] A) (u : A) (k : ℕ) : A →ₗ[R] A where
  toFun f := u ^ k * sigma f
  map_add' f g := by simp only [map_add, mul_add]
  map_smul' c f := by
    simp only [Algebra.smul_def, map_mul, AlgHom.commutes]
    ring

@[simp] theorem operator_apply (sigma : A →ₐ[R] A) (u : A) (k : ℕ) (f : A) :
    operator sigma u k f = u ^ k * sigma f := rfl

@[simp] theorem operator_one (sigma : A →ₐ[R] A) (u : A) (k : ℕ) :
    operator sigma u k 1 = u ^ k := by simp [operator]

/-- The square is multiplication by d^k, NOT necessarily the identity. -/
theorem operator_square (sigma : A →ₐ[R] A) (hsigma : Function.Involutive sigma)
    (u : A) (d : R) (hd : u * sigma u = algebraMap R A d) (k : ℕ) (f : A) :
    operator sigma u k (operator sigma u k f) = d ^ k • f := by
  change u ^ k * sigma (u ^ k * sigma f) = d ^ k • f
  rw [map_mul, map_pow, hsigma]
  calc
    _ = (u * sigma u) ^ k * f := by rw [mul_pow]; ring
    _ = d ^ k • f := by rw [hd, ← map_pow, Algebra.smul_def]

/-- Multiplication adds weights; a fixed-weight lift need not be multiplicative. -/
theorem operator_graded_mul (sigma : A →ₐ[R] A) (u : A) (k m : ℕ) (f g : A) :
    operator sigma u (k + m) (f * g) =
      operator sigma u k f * operator sigma u m g := by
  simp only [operator_apply, map_mul, pow_add]
  ring

/-- Increasing the stage changes the lift by u; naive inclusion covariance is false. -/
theorem operator_succ (sigma : A →ₐ[R] A) (u : A) (k : ℕ) (f : A) :
    operator sigma u (k + 1) f = u * operator sigma u k f := by
  simp only [operator_apply, pow_succ]
  ring

/-- A scalar normalization has its own square law and cannot be discarded. -/
theorem normalized_square (sigma : A →ₐ[R] A) (hsigma : Function.Involutive sigma)
    (u : A) (d : R) (hd : u * sigma u = algebraMap R A d)
    (k : ℕ) (c : R) (f : A) :
    c • operator sigma u k (c • operator sigma u k f) =
      (c ^ 2 * d ^ k) • f := by
  rw [(operator sigma u k).map_smul, operator_square sigma hsigma u d hd]
  simp only [smul_smul]
  congr 1
  ring

/-- The actual inverse uses d^(-k), represented by a supplied scalar inverse e.
No field extension or selected square root is introduced. -/
def operatorEquiv (sigma : A →ₐ[R] A) (hsigma : Function.Involutive sigma)
    (u : A) (d e : R) (hd : u * sigma u = algebraMap R A d) (hde : d * e = 1)
    (k : ℕ) : A ≃ₗ[R] A where
  toLinearMap := operator sigma u k
  invFun f := e ^ k • operator sigma u k f
  left_inv f := by
    change e ^ k • operator sigma u k (operator sigma u k f) = f
    rw [operator_square sigma hsigma u d hd, smul_smul, ← mul_pow,
      mul_comm e d, hde, one_pow, one_smul]
  right_inv f := by
    change operator sigma u k (e ^ k • operator sigma u k f) = f
    rw [(operator sigma u k).map_smul, operator_square sigma hsigma u d hd,
      smul_smul, ← mul_pow, mul_comm e d, hde, one_pow, one_smul]

@[simp] theorem operatorEquiv_apply (sigma : A →ₐ[R] A)
    (hsigma : Function.Involutive sigma) (u : A) (d e : R)
    (hd : u * sigma u = algebraMap R A d) (hde : d * e = 1) (k : ℕ) (f : A) :
    operatorEquiv sigma hsigma u d e hd hde k f = operator sigma u k f := rfl

end GRWTSK.Algebra.RingTheory.WeightedInvolution
