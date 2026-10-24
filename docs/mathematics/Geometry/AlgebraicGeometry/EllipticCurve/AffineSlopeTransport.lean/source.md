# Complete source: GRWTSK.AlgebraicGeometry.EllipticCurve.AffineSlopeTransport

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7b70c96e61ea747859079415d529279e2d15c68` · SHA-256 `bd5f99775c10709fa34a0d78e3e535f3b402f97101557329f17584d3358b6dd1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Transport of the OLD tangent polynomial through a nonzero affine slope map.
The cleared coefficient identity is kept separate from geometric/model
integrality. The characteristic-two slope test uses T^2+T+k, not T^2-k.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Scripts are unelaborated.
-/
import GRWTSK.AlgebraicGeometry.EllipticCurve.TangentPolynomialSplitting
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic.FieldSimp

set_option autoImplicit false
noncomputable section

namespace GRWTSK.AlgebraicGeometry.EllipticCurve.AffineSlopeTransport

open WeierstrassCurve Polynomial
open GRWTSK.AlgebraicGeometry.EllipticCurve.TangentPolynomialSplitting

section Field
variable {K : Type*} [Field K]

/-- New slope z corresponds to OLD slope u*z+s; this is not point translation. -/
def slopePolynomial (u s : K) : K[X] := C u * X + C s

theorem slope_degree (u s : K) (hu : u ≠ 0) :
    (slopePolynomial u s).natDegree = 1 := by
  rw [slopePolynomial, natDegree_add_C, natDegree_C_mul hu, natDegree_X]

/-- A nonzero slope scale is essential for the converse. -/
theorem splits_affine_iff (f : K[X]) (u s : K) (hu : u ≠ 0) :
    (f.comp (slopePolynomial u s)).Splits ↔ f.Splits :=
  (splits_iff_comp_splits_of_natDegree_eq_one (slope_degree u s hu)).symm

/-- A supplied COEFFICIENT identity, with both scalar cancellations justified. -/
theorem splits_of_cleared_identity (f g : K[X]) (k u s : K)
    (hk : k ≠ 0) (hu : u ≠ 0)
    (h : C k * g = f.comp (slopePolynomial u s)) : g.Splits ↔ f.Splits := by
  calc
    g.Splits ↔ (C k * g).Splits := (splits_C_mul_iff k hk g).symm
    _ ↔ (f.comp (slopePolynomial u s)).Splits := by rw [h]
    _ ↔ f.Splits := splits_affine_iff f u s hu

theorem eval_cleared_identity (f g : K[X]) (k u s z : K)
    (h : C k * g = f.comp (slopePolynomial u s)) :
    k * g.eval z = f.eval (u*z+s) := by
  have he := congrArg (fun p : K[X] => p.eval z) h
  simpa only [eval_mul, eval_C, eval_comp, slopePolynomial, eval_add, eval_X] using he

theorem root_transport_iff (f g : K[X]) (k u s : K) (hk : k ≠ 0)
    (h : C k * g = f.comp (slopePolynomial u s)) (z : K) :
    g.eval z = 0 ↔ f.eval (u*z+s) = 0 := by
  rw [← eval_cleared_identity f g k u s z h, mul_eq_zero]
  simp only [hk, false_or]

/-- An actual bijection of root sets, not just equality of root counts. -/
def rootEquiv (f g : K[X]) (k u s : K) (hk : k ≠ 0) (hu : u ≠ 0)
    (h : C k * g = f.comp (slopePolynomial u s)) :
    {z : K // g.eval z = 0} ≃ {z : K // f.eval z = 0} where
  toFun z := ⟨u*z.val+s, (root_transport_iff f g k u s hk h z.val).mp z.property⟩
  invFun z := ⟨(z.val-s)/u, by
    apply (root_transport_iff f g k u s hk h _).mpr
    have he : u*((z.val-s)/u)+s = z.val := by field_simp [hu] <;> ring
    rw [he]
    exact z.property⟩
  left_inv z := by
    apply Subtype.ext
    change (u*z.val+s-s)/u = z.val
    field_simp [hu] <;> ring
  right_inv z := by
    apply Subtype.ext
    change u*((z.val-s)/u)+s = z.val
    field_simp [hu] <;> ring

/-- Distinct directions stay distinct; no orientation sign is supplied over a finite field. -/
theorem slope_distinct_iff (u s x y : K) (hu : u ≠ 0) :
    u*x+s ≠ u*y+s ↔ x ≠ y := by
  constructor
  · intro h he
    apply h
    rw [he]
  · intro h he
    exact h (mul_left_cancel₀ hu (add_right_cancel he))

end Field

/-- Fixed rational scale and shear used by BOTH old selected-model chambers.
Translations r,t remain arbitrary; the tangent identity is independent of them. -/
def halfSlopeChange (r t : ℚ) : VariableChange ℚ where
  u := Units.mk0 2 (by norm_num)
  r := r
  s := 1
  t := t

/-- A cleared POLYNOMIAL identity, proved before reduction at any prime.
The factor 64 is not invertible at two, so this is not a dyadic split-transport rule. -/
theorem half_tangent_identity (W : WeierstrassCurve ℚ) (r t : ℚ) :
    C (64 : ℚ) * tangentPolynomial (halfSlopeChange r t • W) =
      (tangentPolynomial W).comp (slopePolynomial 2 1) := by
  let V := halfSlopeChange r t • W
  have h4 : 64*V.c₄ = 4*W.c₄ := by
    dsimp only [V]
    norm_num [halfSlopeChange, WeierstrassCurve.variableChange_c₄] <;> ring
  have h1 : 64*(V.a₁*V.c₄) = 2*(W.a₁+2)*W.c₄ := by
    dsimp only [V]
    norm_num [halfSlopeChange, WeierstrassCurve.variableChange_a₁,
      WeierstrassCurve.variableChange_c₄] <;> ring
  have h0 : 64*(54*V.b₆-3*V.b₂*V.b₄+V.a₂*V.c₄) =
      (54*W.b₆-3*W.b₂*W.b₄+W.a₂*W.c₄)-(1+W.a₁)*W.c₄ := by
    dsimp only [V]
    norm_num [halfSlopeChange, WeierstrassCurve.variableChange_b₆,
      WeierstrassCurve.variableChange_b₂, WeierstrassCurve.variableChange_b₄,
      WeierstrassCurve.variableChange_a₂, WeierstrassCurve.variableChange_c₄] <;>
      (simp only [WeierstrassCurve.c₄] <;> ring)
  change C (64 : ℚ)*tangentPolynomial V = _
  calc
    _ = C (64*V.c₄)*X^2 + C (64*(V.a₁*V.c₄))*X -
        C (64*(54*V.b₆-3*V.b₂*V.b₄+V.a₂*V.c₄)) := by
      simp only [tangentPolynomial, map_mul]
      ring
    _ = _ := by
      rw [h4,h1,h0]
      simp only [tangentPolynomial, slopePolynomial, add_comp, sub_comp,
        mul_comp, pow_comp, C_comp, X_comp, map_add, map_sub, map_mul,
        map_pow, map_ofNat, map_one]
      ring

/-- The characteristic-two selected shape, derived from the SAME invariant polynomial. -/
theorem binary_tangent (k q : ZMod 2) :
    tangentPolynomial (⟨1,k,0,q,0⟩ : WeierstrassCurve (ZMod 2)) =
      X^2+X+C k := by
  simp only [tangentPolynomial, WeierstrassCurve.c₄, WeierstrassCurve.b₂,
    WeierstrassCurve.b₄, WeierstrassCurve.b₆]
  norm_num <;> ring

/-- F_2 uses the separable Artin-Schreier polynomial, not an odd-characteristic square test. -/
theorem binary_quadratic_splits_iff (k : ZMod 2) :
    (X^2+X+C k : (ZMod 2)[X]).Splits ↔ k = 0 := by
  constructor
  · intro hs
    have hd : (X^2+X+C k : (ZMod 2)[X]).degree ≠ 0 := by
      rw [add_assoc, degree_add_eq_left_of_degree_lt (by simp)]
      simp
    obtain ⟨r,hr⟩ := hs.exists_eval_eq_zero hd
    have hh : r^2+r = 0 := by
      have ht : ∀ z : ZMod 2, z^2+z = 0 := by decide
      exact ht r
    simpa only [eval_add, eval_pow, eval_X, eval_C, hh, zero_add] using hr
  · intro hk
    rw [hk, C_0, add_zero]
    have he : (X^2+X : (ZMod 2)[X]) = X*(X+C 1) := by simp only [C_1]; ring
    rw [he]
    exact Splits.X.mul (Splits.X_add_C 1)

/-- Split slopes in F_2 are zero and one: they are NOT r and -r. -/
theorem binary_split_roots (r : ZMod 2) :
    (X^2+X : (ZMod 2)[X]).eval r = 0 ∧ (r = 0 ∨ r = 1) := by
  have hh : ∀ z : ZMod 2, z^2+z=0 ∧ (z=0 ∨ z=1) := by decide
  simpa only [eval_add, eval_pow, eval_X] using hh r

end GRWTSK.AlgebraicGeometry.EllipticCurve.AffineSlopeTransport
```
