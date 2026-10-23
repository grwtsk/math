/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
Mathlib quotient groups, quadratic characters and unit maps retain
their upstream mathematical authorship and licenses.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Proof terms have not yet
been elaborated with the pinned Lean/Mathlib toolchain.
-/
import GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239LocalSquareClass
import Mathlib.GroupTheory.QuotientGroup.Basic
import Mathlib.Algebra.Group.Units.Hom
import Mathlib.Data.ZMod.Basic

/-!
# Functorial transport of unit square classes

A ring homomorphism R →+* S sends units to units and squares to squares.
Consequently it gives a genuine group homomorphism

  Rˣ / (Rˣ)^2  -->  Sˣ / (Sˣ)^2.

Composing this map with the finite-field quadratic character already
constructed in Record4239LocalSquareClass produces a character for any
ring with an actual reduction homomorphism R →+* ZMod p.

CRUCIAL SCOPE: this transports *unit* square classes. For p > 0 there
is no unital ring homomorphism Q →+* ZMod p; reducing arbitrary nonzero
rational representatives modulo p is not defined. The actual
Cremona-Brumer/Stoll x-T descent still needs a valuation-normalized
local-unit identification before applying this supplier.

This file also gives the concrete finite example ZMod 49 → ZMod 7.
That reduction is a real ring homomorphism, not an assumed placeholder.
Neither this example nor the generic supplier establishes the rank 32
certificate on the native elliptic-curve point group.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

/-- Units modulo unit squares over a commutative ring. -/
abbrev UnitSquareClasses (R : Type*) [CommRing R] : Type :=
  Rˣ ⧸ (powMonoidHom (α := Rˣ) 2).range

/-- A *genuine* map of unit square-class groups induced by an actual
unital ring homomorphism. The proof checks well-definedness by
transporting the square subgroup into the square subgroup. -/
noncomputable def unitSquareClassMap
    {R S : Type*} [CommRing R] [CommRing S]
    (f : R →+* S) :
    UnitSquareClasses R →* UnitSquareClasses S :=
  QuotientGroup.map
    (powMonoidHom (α := Rˣ) 2).range
    (powMonoidHom (α := Sˣ) 2).range
    (Units.map f.toMonoidHom) (by
      intro u hu
      obtain ⟨v, rfl⟩ := hu
      exact ⟨Units.map f.toMonoidHom v, by
        simp only [powMonoidHom_apply, map_pow]⟩)

/-- Transport on a representative is the class of the transported unit.
No choice of a square-root representative enters the definition. -/
theorem unitSquareClassMap_mk
    {R S : Type*} [CommRing R] [CommRing S]
    (f : R →+* S) (u : Rˣ) :
    unitSquareClassMap f
        ((QuotientGroup.mk'
          (powMonoidHom (α := Rˣ) 2).range) u) =
      (QuotientGroup.mk'
        (powMonoidHom (α := Sˣ) 2).range)
        (Units.map f.toMonoidHom u) := by
  rfl

/-- The preceding map followed by Mathlib's genuine residue quadratic
character is a well-defined multiplicative character on local units
modulo squares, PROVIDED the ring reduction f is actually constructed. -/
noncomputable def localUnitClassCharacter
    (p : ℕ) [Fact p.Prime]
    {R : Type*} [CommRing R]
    (f : R →+* ZMod p) :
    UnitSquareClasses R →* Multiplicative (ZMod 2) :=
  (residueSquareClassBitHom p).comp (unitSquareClassMap f)

/-- Explicit representative evaluation: the character on the source
ring is exactly the genuine quadratic residue character on the image
of a unit. This is the concrete source-to-local comparison equation. -/
theorem localUnitClassCharacter_mk
    (p : ℕ) [Fact p.Prime]
    {R : Type*} [CommRing R]
    (f : R →+* ZMod p) (u : Rˣ) :
    localUnitClassCharacter p f
        ((QuotientGroup.mk'
          (powMonoidHom (α := Rˣ) 2).range) u) =
      residueUnitBitHom p (Units.map f.toMonoidHom u) := by
  change residueSquareClassBitHom p
      (unitSquareClassMap f
        ((QuotientGroup.mk'
          (powMonoidHom (α := Rˣ) 2).range) u)) =
    residueUnitBitHom p (Units.map f.toMonoidHom u)
  rw [unitSquareClassMap_mk]
  exact residueSquareClassBitHom_mk p (Units.map f.toMonoidHom u)

/-- A concrete, unconditionally defined reduction ring homomorphism.
It does not attempt to reduce Q directly to a finite field. -/
def reduction49to7 : ZMod 49 →+* ZMod 7 :=
  ZMod.castHom (by decide : 7 ∣ 49) (ZMod 7)

/-- An actual quadratic local unit-squareclass character arising from
the above reduction (a fixed finite instance of the generic map). -/
noncomputable def reduction49to7SquareClassCharacter :
    UnitSquareClasses (ZMod 49) →* Multiplicative (ZMod 2) :=
  localUnitClassCharacter 7 reduction49to7

/-- A hostile control excluding a common invalid global-to-local port.
A unital ring hom Q → ZMod p cannot exist for p prime, since p is
invertible in Q but equals zero in the target field. -/
theorem noRationalRingReductionToPrime
    (p : ℕ) [Fact p.Prime] (f : ℚ →+* ZMod p) : False := by
  have hp : (p : ℚ) ≠ 0 := by
    exact_mod_cast (Fact.out : Nat.Prime p).ne_zero
  have hinv : f (p : ℚ) * f ((p : ℚ)⁻¹) = 1 := by
    calc
      f (p : ℚ) * f ((p : ℚ)⁻¹) =
          f ((p : ℚ) * (p : ℚ)⁻¹) := (map_mul f _ _).symm
      _ = f 1 := by rw [mul_inv_cancel₀ hp]
      _ = 1 := map_one f
  have hzero : f (p : ℚ) = 0 := by
    rw [map_natCast]
    exact ZMod.natCast_self p
  rw [hzero, zero_mul] at hinv
  exact zero_ne_one hinv

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
