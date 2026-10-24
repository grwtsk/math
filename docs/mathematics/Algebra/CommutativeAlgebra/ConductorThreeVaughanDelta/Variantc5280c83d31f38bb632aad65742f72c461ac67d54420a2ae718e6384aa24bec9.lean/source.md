# Complete source: GRWTSK.Algebra.CommutativeAlgebra.ConductorThreeVaughanDelta.Variantc5280c83d31f38bb632aad65742f72c461ac67d54420a2ae718e6384aa24bec9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5021d5f8e5305fe7606c07a20b66b9c41d818570` · SHA-256 `c5280c83d31f38bb632aad65742f72c461ac67d54420a2ae718e6384aa24bec9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeTwistedVaughan
public import Mathlib.Algebra.MvPolynomial.CommRing
public import Mathlib.Algebra.MvPolynomial.Eval
import Mathlib.Tactic

/-!
# Exact three-typical lift of the conductor-three Vaughan Type II prefix

This module gives the finite Type II coefficient expression an algebraic
home before any packet geometry is introduced.  The two appearances of the
number three are deliberately separate:

* `ThreeTypicalDeltaOperation` records a Frobenius lift satisfying
  `phi a = a ^ 3 + 3 * delta a`;
* `conductorThreeIntegerValue` supplies the arithmetic Dirichlet character
  only when the universal variables are realized in `ℂ`.

The concrete coefficient algebra is a rational multivariate polynomial ring.
It is the universal commutative `ℚ`-algebra on the displayed left and right
variables.  Its Frobenius lift is the identity and
`delta(a) = (a - a^3) / 3`.  This is an exact three-typical operation because
three is invertible in `ℚ`.  It is **not** claimed to construct the free
Bhatt--Scholze delta-ring over `ℤ_(3)`.

The principal theorem, `realization_universalTypeII`, proves that evaluation
of the finite universal prefix is exactly the already checked literal Type II
Vaughan prefix.  No divisibility, filtration, Frobenius iteration, or delta
identity is converted into an Archimedean estimate here.
-/

public section

namespace Surface.Core.ConductorThreeVaughanDelta

noncomputable section

open scoped ArithmeticFunction BigOperators
open Surface.Core.ConductorThreeCharacterArithmetic
open Surface.Core.ConductorThreeTwistedVaughan

/-! ## Operation-level three-typical interface -/

/-- A deliberately small three-typical operation interface.

The bundled endomorphism is the authoritative algebraic datum.  The displayed
formula records its associated `p = 3` delta operation.  This interface makes
no completeness, topology, prism-ideal, or Archimedean assertion. -/
structure ThreeTypicalDeltaOperation (A : Type*) [CommRing A] where
  delta : A → A
  phi : A →+* A
  phi_apply : ∀ a, phi a = a ^ 3 + (3 : A) * delta a

/-- The explicit `p = 3` p-derivation laws associated to an operation-level
Frobenius lift.

The additive correction is
`-a²b - ab²`, and the multiplicative correction is
`a³δ(b) + b³δ(a) + 3δ(a)δ(b)`.  Keeping this as a separate proof
bundle lets a consumer distinguish a bare displayed Frobenius formula from a
fully certified three-typical delta operation. -/
structure ThreeTypicalDeltaLaws
    (A : Type*) [CommRing A]
    (operation : ThreeTypicalDeltaOperation A) : Prop where
  delta_zero : operation.delta 0 = 0
  delta_one : operation.delta 1 = 0
  delta_add : ∀ a b,
    operation.delta (a + b) =
      operation.delta a + operation.delta b - a ^ 2 * b - a * b ^ 2
  delta_mul : ∀ a b,
    operation.delta (a * b) =
      a ^ 3 * operation.delta b + b ^ 3 * operation.delta a +
        3 * operation.delta a * operation.delta b

/-- The identity-Frobenius three-typical delta operation on `ℂ`. -/
@[expose]
def complexThreeDelta (z : ℂ) : ℂ :=
  (z - z ^ 3) / 3

@[surface_novel, surface_published]
theorem complexThreeDelta_formula (z : ℂ) :
    z = z ^ 3 + 3 * complexThreeDelta z := by
  simp [complexThreeDelta]
  ring

@[expose]
def complexThreeTypicalDelta : ThreeTypicalDeltaOperation ℂ where
  delta := complexThreeDelta
  phi := RingHom.id ℂ
  phi_apply := complexThreeDelta_formula

/-! ## A generic finite coefficient base -/

/-- A finite algebraic lift of the two Type II coefficient families.

The delta operation and its Frobenius law do not mention `χ₃`.  The character
appears only in the two realization equations. -/
structure DeltaTypeIICoefficientBase (N : ℕ) where
  A : Type
  commRing : CommRing A
  threeTypical : ThreeTypicalDeltaOperation A
  threeTypicalLaws : ThreeTypicalDeltaLaws A threeTypical
  leftVariable : VaughanScaleIndex N → A
  rightVariable : VaughanScaleIndex N → A
  realization : A →+* ℂ
  realization_phi : ∀ a,
    realization (threeTypical.phi a) = realization a
  realization_left : ∀ m,
    realization (leftVariable m) =
      (((conductorThreeIntegerValue m : ℝ) *
        ArithmeticFunction.vonMangoldt m : ℝ) : ℂ)
  realization_right : ∀ k,
    realization (rightVariable k) =
      (((conductorThreeIntegerValue k : ℝ) *
        vaughanDivisorCoefficient (vaughanFourthRootCutoff N) k : ℝ) : ℂ)

attribute [instance] DeltaTypeIICoefficientBase.commRing

/-- Embed a bounded prefix index into the full scale index. -/
@[expose]
def prefixIndex {N : ℕ} (x : VaughanScaleIndex N) :
    Fin (x.1 + 1) → VaughanScaleIndex N :=
  Fin.castLE (Nat.succ_le_iff.mpr x.2)

local instance (N : ℕ) : Fintype (VaughanTypeIIFactorAtom N) :=
  @Subtype.fintype _ (IsVaughanTypeIIFactor N)
    (by intro q; unfold IsVaughanTypeIIFactor; infer_instance) inferInstance

/-- The universal finite Type II prefix.

It is written as a sum of products `-L_m R_k`.  The outer finite sum runs
through every arithmetic moment up to `x`; the inner fiber contains exactly
the effective pairs `m > U_N`, `k > U_N`, `m*k = n`. -/
@[expose]
def universalTypeII {N : ℕ}
    (base : DeltaTypeIICoefficientBase N)
    (x : VaughanScaleIndex N) : base.A :=
  ∑ n : Fin (x.1 + 1),
    ∑ a : VaughanTypeIIFactorAtom N,
      if vaughanTypeIIFactorIndex a = prefixIndex x n then
        -(base.leftVariable a.1.1 * base.rightVariable a.1.2)
      else 0

/-- Evaluation of one universal moment fiber is the exact Type II component
of the checked twisted Vaughan identity. -/
@[surface_novel, surface_published]
theorem realization_universalTypeIIFiber {N : ℕ}
    (base : DeltaTypeIICoefficientBase N)
    (n : VaughanScaleIndex N) :
    base.realization
        (∑ a : VaughanTypeIIFactorAtom N,
          if vaughanTypeIIFactorIndex a = n then
            -(base.leftVariable a.1.1 * base.rightVariable a.1.2)
          else 0) =
      (((conductorThreeIntegerValue n : ℝ) *
        vaughanTypeIIScalar (vaughanFourthRootCutoff N)
          (vaughanFourthRootCutoff N) n : ℝ) : ℂ) := by
  classical
  rw [map_sum]
  calc
    (∑ a : VaughanTypeIIFactorAtom N,
        base.realization
          (if vaughanTypeIIFactorIndex a = n then
            -(base.leftVariable a.1.1 * base.rightVariable a.1.2)
          else 0)) =
        ∑ a : VaughanTypeIIFactorAtom N,
          if vaughanTypeIIFactorIndex a = n then
            vaughanFactorCoefficient (.inr (.inr (.inr a))) else 0 := by
      apply Finset.sum_congr rfl
      intro a _
      by_cases ha : vaughanTypeIIFactorIndex a = n
      · simp only [ha, if_pos, map_neg, map_mul,
          base.realization_left, base.realization_right,
          vaughanFactorCoefficient]
        push_cast
        ring
      · simp [ha]
    _ = _ := vaughanTypeIIFactor_fiber_eq_component N n

/-- Realizing the universal expression gives the literal finite Type II
prefix from `ConductorThreeTwistedVaughan`.

The cutoff is a bounded `Fin` index so no term beyond `2*N` can enter either
side. -/
@[surface_novel, surface_published]
theorem realization_universalTypeII {N : ℕ}
    (base : DeltaTypeIICoefficientBase N)
    (x : VaughanScaleIndex N) :
    base.realization (universalTypeII base x) =
      vaughanPrefix
        (fun n ↦ (conductorThreeIntegerValue n : ℝ) *
          vaughanTypeIIScalar (vaughanFourthRootCutoff N)
            (vaughanFourthRootCutoff N) n) x.1 := by
  classical
  rw [universalTypeII, map_sum]
  simp_rw [realization_universalTypeIIFiber]
  rw [vaughanPrefix]
  push_cast
  rw [← Fin.sum_univ_eq_sum_range]
  apply Finset.sum_congr rfl
  intro n _
  rfl

/-- Frobenius iteration is invisible after realization.  This is an exact
algebraic normalization statement, not an estimate. -/
@[surface_novel, surface_published]
theorem realization_phi_iterate {N : ℕ}
    (base : DeltaTypeIICoefficientBase N) (r : ℕ) (a : base.A) :
    base.realization ((base.threeTypical.phi^[r]) a) =
      base.realization a := by
  induction r generalizing a with
  | zero => rfl
  | succ r ih =>
      rw [Function.iterate_succ_apply, ih, base.realization_phi]

/-- Frobenius-normalizing the universal prefix preserves precisely its
literal complex Type II realization.  This theorem still contains no norm or
order estimate. -/
@[surface_novel, surface_published]
theorem realization_phi_iterate_universalTypeII {N : ℕ}
    (base : DeltaTypeIICoefficientBase N)
    (r : ℕ) (x : VaughanScaleIndex N) :
    base.realization
        ((base.threeTypical.phi^[r]) (universalTypeII base x)) =
      vaughanPrefix
        (fun n ↦ (conductorThreeIntegerValue n : ℝ) *
          vaughanTypeIIScalar (vaughanFourthRootCutoff N)
            (vaughanFourthRootCutoff N) n) x.1 := by
  rw [realization_phi_iterate, realization_universalTypeII]

/-! ## Canonical rational polynomial coefficient base -/

/-- Independent left and right variables for every bounded arithmetic index. -/
abbrev VaughanDeltaVariable (N : ℕ) :=
  VaughanScaleIndex N ⊕ VaughanScaleIndex N

/-- The universal rational polynomial coefficient algebra at scale `N`. -/
abbrev VaughanDeltaPolynomial (N : ℕ) :=
  MvPolynomial (VaughanDeltaVariable N) ℚ

/-- Identity-Frobenius delta operation on the universal polynomial algebra. -/
@[expose]
def polynomialThreeDelta {N : ℕ} (a : VaughanDeltaPolynomial N) :
    VaughanDeltaPolynomial N :=
  MvPolynomial.C (1 / 3 : ℚ) * (a - a ^ 3)

@[surface_novel, surface_published]
theorem polynomialThreeDelta_formula {N : ℕ}
    (a : VaughanDeltaPolynomial N) :
    a = a ^ 3 + 3 * polynomialThreeDelta a := by
  unfold polynomialThreeDelta
  rw [← mul_assoc]
  have hthree :
      (3 : VaughanDeltaPolynomial N) * MvPolynomial.C (1 / 3 : ℚ) = 1 := by
    change MvPolynomial.C (3 : ℚ) * MvPolynomial.C (1 / 3 : ℚ) =
      MvPolynomial.C (1 : ℚ)
    rw [← map_mul]
    norm_num
  rw [hthree, one_mul]
  ring

@[surface_novel, surface_published, simp]
theorem polynomialThreeDelta_zero {N : ℕ} :
    polynomialThreeDelta (N := N) 0 = 0 := by
  simp [polynomialThreeDelta]

@[surface_novel, surface_published, simp]
theorem polynomialThreeDelta_one {N : ℕ} :
    polynomialThreeDelta (N := N) 1 = 0 := by
  simp [polynomialThreeDelta]

/-- Multiplication by three recovers the Frobenius defect exactly. -/
@[surface_novel, surface_published]
theorem three_mul_polynomialThreeDelta {N : ℕ}
    (a : VaughanDeltaPolynomial N) :
    3 * polynomialThreeDelta a = a - a ^ 3 := by
  calc
    3 * polynomialThreeDelta a =
        (a ^ 3 + 3 * polynomialThreeDelta a) - a ^ 3 := by ring
    _ = a - a ^ 3 := by rw [← polynomialThreeDelta_formula]

@[surface_novel, surface_published]
theorem polynomialThreeDelta_add {N : ℕ}
    (a b : VaughanDeltaPolynomial N) :
    polynomialThreeDelta (a + b) =
      polynomialThreeDelta a + polynomialThreeDelta b -
        a ^ 2 * b - a * b ^ 2 := by
  apply mul_left_cancel₀ (show (3 : VaughanDeltaPolynomial N) ≠ 0 by norm_num)
  calc
    3 * polynomialThreeDelta (a + b) =
        (a + b) - (a + b) ^ 3 :=
      three_mul_polynomialThreeDelta (a + b)
    _ = (a - a ^ 3) + (b - b ^ 3) -
        3 * a ^ 2 * b - 3 * a * b ^ 2 := by ring
    _ = 3 * polynomialThreeDelta a +
        3 * polynomialThreeDelta b -
        3 * a ^ 2 * b - 3 * a * b ^ 2 := by
      rw [three_mul_polynomialThreeDelta, three_mul_polynomialThreeDelta]
    _ = 3 * (polynomialThreeDelta a + polynomialThreeDelta b -
        a ^ 2 * b - a * b ^ 2) := by ring

@[surface_novel, surface_published]
theorem polynomialThreeDelta_mul {N : ℕ}
    (a b : VaughanDeltaPolynomial N) :
    polynomialThreeDelta (a * b) =
      a ^ 3 * polynomialThreeDelta b +
        b ^ 3 * polynomialThreeDelta a +
        3 * polynomialThreeDelta a * polynomialThreeDelta b := by
  apply mul_left_cancel₀ (show (3 : VaughanDeltaPolynomial N) ≠ 0 by norm_num)
  calc
    3 * polynomialThreeDelta (a * b) =
        a * b - (a * b) ^ 3 :=
      three_mul_polynomialThreeDelta (a * b)
    _ = a ^ 3 * (b - b ^ 3) + b ^ 3 * (a - a ^ 3) +
        (a - a ^ 3) * (b - b ^ 3) := by ring
    _ = a ^ 3 * (3 * polynomialThreeDelta b) +
        b ^ 3 * (3 * polynomialThreeDelta a) +
        (3 * polynomialThreeDelta a) *
          (3 * polynomialThreeDelta b) := by
      rw [three_mul_polynomialThreeDelta, three_mul_polynomialThreeDelta]
    _ = 3 * (a ^ 3 * polynomialThreeDelta b +
        b ^ 3 * polynomialThreeDelta a +
        3 * polynomialThreeDelta a * polynomialThreeDelta b) := by ring

@[expose]
def polynomialThreeTypicalDelta (N : ℕ) :
    ThreeTypicalDeltaOperation (VaughanDeltaPolynomial N) where
  delta := polynomialThreeDelta
  phi := RingHom.id _
  phi_apply := polynomialThreeDelta_formula

/-- The canonical rational polynomial operation satisfies all four explicit
three-typical p-derivation laws. -/
@[expose]
def polynomialThreeTypicalDeltaLaws (N : ℕ) :
    ThreeTypicalDeltaLaws (VaughanDeltaPolynomial N)
      (polynomialThreeTypicalDelta N) where
  delta_zero := polynomialThreeDelta_zero
  delta_one := polynomialThreeDelta_one
  delta_add := polynomialThreeDelta_add
  delta_mul := polynomialThreeDelta_mul

@[surface_novel, surface_published]
theorem polynomialThreeTypicalDelta_satisfies_laws (N : ℕ) :
    ThreeTypicalDeltaLaws (VaughanDeltaPolynomial N)
      (polynomialThreeTypicalDelta N) :=
  polynomialThreeTypicalDeltaLaws N

@[expose]
def vaughanDeltaVariableValue (N : ℕ) :
    VaughanDeltaVariable N → ℂ
  | .inl m =>
      (((conductorThreeIntegerValue m : ℝ) *
        ArithmeticFunction.vonMangoldt m : ℝ) : ℂ)
  | .inr k =>
      (((conductorThreeIntegerValue k : ℝ) *
        vaughanDivisorCoefficient (vaughanFourthRootCutoff N) k : ℝ) : ℂ)

/-- Evaluation of the universal rational polynomial ring at the actual
conductor-three Vaughan coefficient families. -/
@[expose]
def vaughanDeltaRealization (N : ℕ) :
    VaughanDeltaPolynomial N →+* ℂ :=
  MvPolynomial.eval₂Hom (Rat.castHom ℂ) (vaughanDeltaVariableValue N)

/-- The canonical, fully inhabited coefficient base. -/
@[expose]
def canonicalDeltaTypeIICoefficientBase (N : ℕ) :
    DeltaTypeIICoefficientBase N where
  A := VaughanDeltaPolynomial N
  commRing := inferInstance
  threeTypical := polynomialThreeTypicalDelta N
  threeTypicalLaws := polynomialThreeTypicalDeltaLaws N
  leftVariable := fun m ↦ MvPolynomial.X (.inl m)
  rightVariable := fun k ↦ MvPolynomial.X (.inr k)
  realization := vaughanDeltaRealization N
  realization_phi := by simp [polynomialThreeTypicalDelta]
  realization_left := by
    intro m
    simp [vaughanDeltaRealization, vaughanDeltaVariableValue]
  realization_right := by
    intro k
    simp [vaughanDeltaRealization, vaughanDeltaVariableValue]

/-- Concrete endpoint: the canonical universal polynomial prefix evaluates
exactly to the literal Type II Vaughan prefix. -/
@[surface_novel, surface_published]
theorem canonical_realization_universalTypeII {N : ℕ}
    (x : VaughanScaleIndex N) :
    (canonicalDeltaTypeIICoefficientBase N).realization
        (universalTypeII (canonicalDeltaTypeIICoefficientBase N) x) =
      vaughanPrefix
        (fun n ↦ (conductorThreeIntegerValue n : ℝ) *
          vaughanTypeIIScalar (vaughanFourthRootCutoff N)
            (vaughanFourthRootCutoff N) n) x.1 :=
  realization_universalTypeII (canonicalDeltaTypeIICoefficientBase N) x

end

end Surface.Core.ConductorThreeVaughanDelta
```
