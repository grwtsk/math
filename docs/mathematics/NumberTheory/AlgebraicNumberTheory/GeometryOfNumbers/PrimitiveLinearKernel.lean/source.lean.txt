/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.GeometryOfNumbers.PrimitiveLinearBoxCount
import Mathlib.Data.Int.GCD
import Mathlib.Tactic

set_option autoImplicit false

/-!
# The integral kernel of a primitive linear equation

The equation `a*x+b*y=c*z` is represented by the integral homomorphism

`(x,y,z) ↦ a*x+b*y-c*z`.

This module proves two exact structural facts used before any finite lattice
estimate:

* its kernel is saturated in the elementary torsion-free sense;
* joint coefficient gcd one gives an explicit Bézout point mapping to one,
  hence the homomorphism is surjective.

No rank-two covolume formula, reduced basis, successive-minima theorem, or
primitive lattice-point bound is proved here.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #427.
-/

namespace GRWTSK.GeometryOfNumbers.PrimitiveLinearKernel

open GRWTSK.GeometryOfNumbers.PrimitiveLinearBoxCount

/-- Integral ambient point, with the same right-associated coordinate shape as
the natural finite count. -/
abbrev IntPoint := ℤ × ℤ × ℤ

/-- The coefficient functional with normal vector `(a,b,-c)`. -/
def coefficientHom (a b c : ℕ) : IntPoint →+ ℤ where
  toFun point :=
    (a : ℤ) * point.1 +
      (b : ℤ) * point.2.1 -
      (c : ℤ) * point.2.2
  map_zero' := by simp
  map_add' := by
    intro left right
    dsimp
    ring

/-- Rank-two kernel candidate underlying the source equation. -/
def linearKernel (a b c : ℕ) : AddSubgroup IntPoint :=
  (coefficientHom a b c).ker

@[simp] theorem mem_linearKernel
    {a b c : ℕ} {point : IntPoint} :
    point ∈ linearKernel a b c ↔
      (a : ℤ) * point.1 +
        (b : ℤ) * point.2.1 -
        (c : ℤ) * point.2.2 = 0 := by
  rfl

/-- Coordinatewise integer scaling. -/
def scalePoint (n : ℤ) (point : IntPoint) : IntPoint :=
  (n * point.1, n * point.2.1, n * point.2.2)

/-- The coefficient functional is homogeneous under literal integer scaling. -/
theorem coefficientHom_scale
    (a b c : ℕ) (n : ℤ) (point : IntPoint) :
    coefficientHom a b c (scalePoint n point) =
      n * coefficientHom a b c point := by
  change
    (a : ℤ) * (n * point.1) +
        (b : ℤ) * (n * point.2.1) -
        (c : ℤ) * (n * point.2.2) =
      n * ((a : ℤ) * point.1 +
        (b : ℤ) * point.2.1 -
        (c : ℤ) * point.2.2)
  ring

/-- Saturation of the integral kernel: a nonzero integer multiple can lie in
the kernel only when the original point lies in the kernel. -/
theorem mem_linearKernel_of_scalePoint_mem
    {a b c : ℕ} {n : ℤ} {point : IntPoint}
    (n_ne_zero : n ≠ 0)
    (scaled : scalePoint n point ∈ linearKernel a b c) :
    point ∈ linearKernel a b c := by
  rw [mem_linearKernel] at scaled ⊢
  have product_zero :
      n * coefficientHom a b c point = 0 := by
    rw [← coefficientHom_scale]
    exact scaled
  exact (mul_eq_zero.mp product_zero).resolve_left n_ne_zero

/-- Explicit Bézout point for the primitive coefficient normal. -/
def primitiveNormalWitness (a b c : ℕ) : IntPoint :=
  (Nat.gcdA a b * Nat.gcdA (Nat.gcd a b) c,
    Nat.gcdB a b * Nat.gcdA (Nat.gcd a b) c,
    -Nat.gcdB (Nat.gcd a b) c)

/-- Joint coefficient gcd one makes the normal vector primitive: the displayed
Bézout point maps exactly to one. -/
theorem coefficientHom_primitiveNormalWitness
    {a b c : ℕ}
    (primitive : Nat.gcd (Nat.gcd a b) c = 1) :
    coefficientHom a b c (primitiveNormalWitness a b c) = 1 := by
  change
    (a : ℤ) *
          (Nat.gcdA a b * Nat.gcdA (Nat.gcd a b) c) +
        (b : ℤ) *
          (Nat.gcdB a b * Nat.gcdA (Nat.gcd a b) c) -
        (c : ℤ) * (-Nat.gcdB (Nat.gcd a b) c) = 1
  calc
    _ =
        (((a : ℤ) * Nat.gcdA a b +
            (b : ℤ) * Nat.gcdB a b) *
          Nat.gcdA (Nat.gcd a b) c +
          (c : ℤ) * Nat.gcdB (Nat.gcd a b) c) := by ring
    _ =
        ((Nat.gcd a b : ℕ) : ℤ) *
            Nat.gcdA (Nat.gcd a b) c +
          (c : ℤ) * Nat.gcdB (Nat.gcd a b) c := by
            rw [Nat.gcd_eq_gcd_ab]
    _ = ((Nat.gcd (Nat.gcd a b) c : ℕ) : ℤ) := by
          rw [Nat.gcd_eq_gcd_ab]
    _ = 1 := by exact_mod_cast primitive

/-- The primitive coefficient functional is onto the integers. -/
theorem coefficientHom_surjective
    {a b c : ℕ}
    (primitive : Nat.gcd (Nat.gcd a b) c = 1) :
    Function.Surjective (coefficientHom a b c) := by
  intro value
  refine ⟨scalePoint value (primitiveNormalWitness a b c), ?_⟩
  rw [coefficientHom_scale,
    coefficientHom_primitiveNormalWitness primitive, mul_one]

/-- Cast a natural point into the integral ambient group. -/
def intPointOfNat (point : Point) : IntPoint :=
  ((point.1 : ℤ), (point.2.1 : ℤ), (point.2.2 : ℤ))

/-- A natural solution of the exact linear equation lies in the integral
kernel. -/
theorem intPointOfNat_mem_linearKernel
    {data : Data} {point : Point}
    (equation : data.LinearEquation point) :
    intPointOfNat point ∈ linearKernel data.a data.b data.c := by
  rw [mem_linearKernel]
  unfold intPointOfNat Data.LinearEquation at *
  apply sub_eq_zero.mpr
  exact_mod_cast equation

/-- Every point counted by the finite primitive solution set lies in the same
integral coefficient kernel. -/
theorem countedPoint_mem_linearKernel
    {data : Data} {point : Point}
    (member : point ∈ data.primitivePositiveSolutions) :
    intPointOfNat point ∈ linearKernel data.a data.b data.c :=
  intPointOfNat_mem_linearKernel
    ((Data.mem_primitivePositiveSolutions.mp member).2.2.2.2.2.2.2)

end GRWTSK.GeometryOfNumbers.PrimitiveLinearKernel
