/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Group identities, abelianization and arithmetic lemmas: Mathlib authors.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#722. Parent PR #712 exact head
0678ec3ff744eab8a19f9c7d9efa4dded7ea6836.
-/
import GRWTSK.Algebra.GroupTheory.Words.IntegralHomologyPrimitive
import Mathlib.GroupTheory.Abelianization.Defs
import Mathlib.Tactic.Ext
import Mathlib.Tactic.Ring

/-!
# A primitive non-power invisible to abelianization

The integral Heisenberg group is the central extension on integer triples
  (a,b,c)*(a',b',c') = (a+a', b+b', c+c'+a*b').
Its basic commutator Z=(0,0,1) is nontrivial, has trivial image in
the genuine Mathlib abelianization, but is not ANY proper power.

For an arbitrary group G, every actual group homomorphism G -> H(Z)
mapping g to Z proves IsPrimitiveConjugacy g. This is a positive
NONABELIAN certificate, complementary to issue #704's positive
integer-character witness, not a complete root decision algorithm.

No hyperbolic surface or Selberg trace is constructed here.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.GroupTheory.Words.IntegralHeisenbergPrimitive

open GRWTSK.Algebra.GroupTheory.Words.PrimitiveConjugacy
open GRWTSK.Algebra.GroupTheory.Words.IntegralHomologyPrimitive

/-- Explicit integral Heisenberg group carrier, retaining the central
integer coordinate that abelianization forgets. -/
@[ext] structure IntegralHeisenberg where
  x : ℤ
  y : ℤ
  z : ℤ
  deriving DecidableEq, Repr

namespace IntegralHeisenberg

/-- The integral bilinear cocycle x*y' makes multiplication noncommutative. -/
def multiply (a b : IntegralHeisenberg) : IntegralHeisenberg :=
  ⟨a.x + b.x, a.y + b.y, a.z + b.z + a.x * b.y⟩

/-- The inverse includes the correction +x*y in the central coordinate. -/
def invert (a : IntegralHeisenberg) : IntegralHeisenberg :=
  ⟨-a.x, -a.y, -a.z + a.x * a.y⟩

instance : Group IntegralHeisenberg where
  mul := multiply
  one := ⟨0, 0, 0⟩
  inv := invert
  mul_assoc a b c := by
    change multiply (multiply a b) c = multiply a (multiply b c)
    cases a
    cases b
    cases c
    apply IntegralHeisenberg.ext <;> dsimp [multiply] <;> ring
  one_mul a := by
    change multiply ⟨0, 0, 0⟩ a = a
    apply IntegralHeisenberg.ext <;> simp [multiply]
  mul_one a := by
    change multiply a ⟨0, 0, 0⟩ = a
    apply IntegralHeisenberg.ext <;> simp [multiply]
  inv_mul_cancel a := by
    change multiply (invert a) a = ⟨0, 0, 0⟩
    cases a
    apply IntegralHeisenberg.ext <;> dsimp [multiply, invert] <;> ring

@[simp] theorem mul_x (a b : IntegralHeisenberg) :
    (a * b).x = a.x + b.x := rfl

@[simp] theorem mul_y (a b : IntegralHeisenberg) :
    (a * b).y = a.y + b.y := rfl

@[simp] theorem mul_z (a b : IntegralHeisenberg) :
    (a * b).z = a.z + b.z + a.x * b.y := rfl

@[simp] theorem one_x : (1 : IntegralHeisenberg).x = 0 := rfl
@[simp] theorem one_y : (1 : IntegralHeisenberg).y = 0 := rfl
@[simp] theorem one_z : (1 : IntegralHeisenberg).z = 0 := rfl

/-- Horizontal generator X. -/
def X : IntegralHeisenberg := ⟨1, 0, 0⟩

/-- Horizontal generator Y. -/
def Y : IntegralHeisenberg := ⟨0, 1, 0⟩

/-- Unit central generator Z, invisible to the abelianization. -/
def Z : IntegralHeisenberg := ⟨0, 0, 1⟩

end IntegralHeisenberg

variable {G : Type*} [Group G]

/-- Explicit commutator convention: [a,b] = a*b*a^(-1)*b^(-1).
This convention must be retained by the genus-two relator. -/
def wordCommutator (a b : G) : G :=
  a * b * a⁻¹ * b⁻¹

/-- A group homomorphism preserves the exact commutator convention. -/
theorem map_wordCommutator {H : Type*} [Group H]
    (f : G →* H) (a b : G) :
    f (wordCommutator a b) = wordCommutator (f a) (f b) := by
  simp [wordCommutator, map_mul, map_inv]

namespace IntegralHeisenberg

/-- The commutator has genuinely nontrivial central coordinate +1. -/
theorem comm_X_Y : wordCommutator X Y = Z := by
  decide

/-- Reversing Y reverses the signed central commutator. -/
theorem comm_X_Y_inv : wordCommutator X Y⁻¹ = Z⁻¹ := by
  decide

/-- The two commutators cancel, exactly as required by the
standard four-generator genus-two surface relation. -/
theorem genusTwo_relation :
    wordCommutator X Y * wordCommutator X Y⁻¹ = 1 := by
  rw [comm_X_Y, comm_X_Y_inv]
  exact mul_inv_cancel Z

/-- The generator Z is NOT the group identity. -/
theorem Z_ne_one : Z ≠ (1 : IntegralHeisenberg) := by
  intro h
  have hz := congrArg IntegralHeisenberg.z h
  norm_num [Z] at hz

/-- First coordinate of every group power is n*x. -/
theorem pow_x (a : IntegralHeisenberg) (n : ℕ) :
    (a ^ n).x = (n : ℤ) * a.x := by
  induction n with
  | zero => simp
  | succ n ih =>
      rw [pow_succ]
      simp only [mul_x, ih, Nat.cast_succ]
      ring

/-- Second coordinate of every group power is n*y. -/
theorem pow_y (a : IntegralHeisenberg) (n : ℕ) :
    (a ^ n).y = (n : ℤ) * a.y := by
  induction n with
  | zero => simp
  | succ n ih =>
      rw [pow_succ]
      simp only [mul_y, ih, Nat.cast_succ]
      ring

/-- For a central-axis element x=y=0, powering is integer scaling
also in the third coordinate. No general binomial formula is assumed. -/
theorem pow_z_of_xy_zero (a : IntegralHeisenberg)
    (_hx : a.x = 0) (hy : a.y = 0) (n : ℕ) :
    (a ^ n).z = (n : ℤ) * a.z := by
  induction n with
  | zero => simp
  | succ n ih =>
      rw [pow_succ]
      simp only [mul_z, ih, hy, mul_zero, add_zero, Nat.cast_succ]
      ring

/-- The central unit Z has no proper positive root in the complete
integral Heisenberg group. If r^n=Z, n>=2, then n*r.x=n*r.y=0
forces r.x=r.y=0; the remaining equation n*r.z=1 is impossible. -/
theorem Z_not_properPower : ¬ IsProperPower Z := by
  rintro ⟨r, n, hn, hr⟩
  have hn0 : (n : ℤ) ≠ 0 := by
    exact_mod_cast (show n ≠ 0 by omega)
  have hpx := congrArg IntegralHeisenberg.x hr
  have hpy := congrArg IntegralHeisenberg.y hr
  have hxmul : (n : ℤ) * r.x = 0 := by
    simpa [pow_x, Z] using hpx
  have hymul : (n : ℤ) * r.y = 0 := by
    simpa [pow_y, Z] using hpy
  have hx : r.x = 0 := (mul_eq_zero.mp hxmul).resolve_left hn0
  have hy : r.y = 0 := (mul_eq_zero.mp hymul).resolve_left hn0
  have hpz := congrArg IntegralHeisenberg.z hr
  have hz : (n : ℤ) * r.z = 1 := by
    simpa [pow_z_of_xy_zero r hx hy n, Z] using hpz
  have hdvd : (n : ℤ) ∣ (1 : ℤ) := ⟨r.z, hz.symm⟩
  have hunit : IsUnit (n : ℤ) := isUnit_of_dvd_unit hdvd isUnit_one
  have hnlarge : (2 : ℤ) ≤ (n : ℤ) := by exact_mod_cast hn
  rcases Int.isUnit_iff.mp hunit with hpos | hneg
  · omega
  · omega

/-- Genuine primitive status of the central commutator. -/
theorem Z_primitive : IsPrimitiveConjugacy Z :=
  ⟨Z_ne_one, Z_not_properPower⟩

/-- The genuine Mathlib abelianization kills Z because Z is an
actual group commutator, not because its x/y fields are merely zero. -/
theorem Z_abelianization_eq_one :
    (Abelianization.of Z : Abelianization IntegralHeisenberg) = 1 := by
  rw [← comm_X_Y]
  simp [wordCommutator, map_mul, map_inv, mul_assoc]

/-- Every actual homomorphism H(Z) -> ℤ is blind to Z, despite
the strict non-power certificate just proved. -/
theorem Z_integerCharacter_eq_zero (h : IntegerCharacter IntegralHeisenberg) :
    (h Z).toAdd = 0 := by
  have hc : h Z = 1 := by
    rw [← comm_X_Y]
    simp [wordCommutator, map_mul, map_inv, mul_assoc]
  simp [hc]

end IntegralHeisenberg

/-- This root obstruction transports along ACTUAL group homomorphisms
to Heisenberg. The premise f(g)=Z is not a free numerical label. -/
theorem primitive_of_hom_maps_to_Z {T : Type*} [Group T]
    (f : T →* IntegralHeisenberg) {g : T}
    (hg : f g = IntegralHeisenberg.Z) :
    IsPrimitiveConjugacy g := by
  constructor
  · intro h1
    apply IntegralHeisenberg.Z_ne_one
    have hf : f g = 1 := by simp [h1]
    exact hg.symm.trans hf
  · rintro ⟨r, n, hn, hr⟩
    apply IntegralHeisenberg.Z_not_properPower
    refine ⟨f r, n, hn, ?_⟩
    calc
      (f r) ^ n = f (r ^ n) := by rw [map_pow]
      _ = f g := by rw [hr]
      _ = IntegralHeisenberg.Z := hg

end GRWTSK.Algebra.GroupTheory.Words.IntegralHeisenbergPrimitive
