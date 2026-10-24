# Complete source: GRWTSK.Analysis.InnerProductSpace.VariationalResidual

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a34811ceb23cc376914d0a6a397f02622c90ba9` · SHA-256 `132804487aa9713137e15ad617950a23d342453ae41452e508c96034da8be091`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Mathlib and Lean retain their original attribution and licenses.

Status: authored proof source; not yet elaborated in the pinned environment.
No claim of an all-scale arithmetic estimate is made by this module.
-/
import Mathlib
import GRWTSK.Analysis.Inequalities.ResidualEnclosure

/-!
# Variational residual bounds on an explicit operator domain

The operator is a linear map from a specified domain submodule to the ambient
real Hilbert space. This avoids silently replacing an unbounded operator by an
everywhere-defined bounded one. For a complex source the intended specialization is its realification, where
the pairing is the real part of the complex inner product. The concrete complex
operator/domain adapter is not constructed in this file.

An exact domain solution and the stated symmetry/coercivity are hypotheses.
This file does not prove existence of the resolvent from self-adjointness.
-/
set_option autoImplicit false
noncomputable section
open scoped InnerProductSpace
namespace GRWTSK.Analysis.InnerProductSpace.VariationalResidual

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
  {V : Submodule ℝ E}

def SymmetricOnDomain (A : V →ₗ[ℝ] E) : Prop :=
  ∀ x y : V, ⟪(x : E), A y⟫_ℝ = ⟪A x, (y : E)⟫_ℝ

def CoerciveAt (A : V →ₗ[ℝ] E) (s : ℝ) : Prop :=
  ∀ x : V, s*‖(x : E)‖^2 ≤ ⟪(x : E), A x⟫_ℝ

def residual (A : V →ₗ[ℝ] E) (b : E) (y : V) : E := b-A y

def lowerReading (A : V →ₗ[ℝ] E) (b : E) (y : V) : ℝ :=
  2*⟪b,(y : E)⟫_ℝ-⟪(y : E),A y⟫_ℝ

theorem error_equation (A : V →ₗ[ℝ] E) (b : E) (x y : V)
    (hsolve : A x = b) : A (x-y) = residual A b y := by
  rw [map_sub, hsolve]
  rfl

/-- Completing the square retains the full signed cross interaction. -/
theorem variational_identity (A : V →ₗ[ℝ] E) (b : E) (x y : V)
    (hsym : SymmetricOnDomain A) (hsolve : A x = b) :
    ⟪b,(x : E)⟫_ℝ = lowerReading A b y +
      ⟪((x-y : V) : E), A (x-y)⟫_ℝ := by
  have hxy : ⟪(x : E), A y⟫_ℝ = ⟪b,(y : E)⟫_ℝ := by
    simpa [hsolve] using hsym x y
  unfold lowerReading
  simp only [map_sub, Submodule.coe_sub, inner_sub_left, inner_sub_right]
  rw [hsolve, hxy, real_inner_comm (x : E) b, real_inner_comm (y : E) b]
  ring

/-- A posteriori interval at positive height, on the actual operator domain. -/
theorem positive_height_enclosure (A : V →ₗ[ℝ] E) (b : E) (x y : V)
    {s : ℝ} (hs : 0 < s) (hsym : SymmetricOnDomain A)
    (hcoerc : CoerciveAt A s) (hsolve : A x = b) :
    lowerReading A b y ≤ ⟪b,(x : E)⟫_ℝ ∧
    ⟪b,(x : E)⟫_ℝ ≤ lowerReading A b y + ‖residual A b y‖^2/s := by
  let e : V := x-y
  have hid := variational_identity A b x y hsym hsolve
  have hpos : 0 ≤ ⟪(e : E), A e⟫_ℝ :=
    (mul_nonneg hs.le (sq_nonneg _)).trans (hcoerc e)
  have hCS : ⟪(e : E), A e⟫_ℝ ≤ ‖(e : E)‖*‖residual A b y‖ := by
    rw [show A e = residual A b y from error_equation A b x y hsolve]
    exact (le_abs_self _).trans (by simpa only [Real.norm_eq_abs] using
      (norm_inner_le_norm (e : E) (residual A b y)))
  have hupper := GRWTSK.Analysis.Inequalities.ResidualEnclosure.coercive_error_bound
    hs (norm_nonneg (e : E)) (norm_nonneg (residual A b y)) (hcoerc e) hCS
  constructor <;> dsimp [e] at hpos hupper <;> linarith

def shift (D : V →ₗ[ℝ] E) (s : ℝ) : V →ₗ[ℝ] E := D+s • V.subtype

@[simp] theorem shift_apply (D : V →ₗ[ℝ] E) (s : ℝ) (x : V) :
    shift D s x = D x+s • (x : E) := rfl

theorem shift_coercive (D : V →ₗ[ℝ] E) (s : ℝ)
    (hpos : ∀ x : V, 0 ≤ ⟪(x : E), D x⟫_ℝ) :
    CoerciveAt (shift D s) s := by
  intro x
  simp only [shift_apply, inner_add_right, real_inner_smul_right,
    real_inner_self_eq_norm_sq]
  linarith [hpos x]

theorem shift_symmetric (D : V →ₗ[ℝ] E) (s : ℝ)
    (hsym : SymmetricOnDomain D) : SymmetricOnDomain (shift D s) := by
  intro x y
  simp only [shift_apply, inner_add_left, inner_add_right,
    real_inner_smul_left, real_inner_smul_right]
  rw [hsym x y]

/-- The positive-height theorem does not remove a zero mode of D. -/
theorem harmonic_source_reading (s b : ℝ) :
    b*(b/s)=b^2/s := by ring

end GRWTSK.Analysis.InnerProductSpace.VariationalResidual
```
