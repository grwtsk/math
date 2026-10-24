# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.MobiusEulerProduct.Variant13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c81e5a5e039d769dbdc5bece359c31a11906fd3` · SHA-256 `13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Analysis.ReciprocalBoundary

set_option autoImplicit false

namespace Think.Analysis

universe u

/-
Möbius relation to the Riemann zeta function and the Euler product identity.

This file records the algebraic carrier formulation:

  zeta Euler product        = prime-power expansion carrier
  reciprocal Euler product = signed squarefree expansion carrier
  Möbius                   = Dirichlet-inverse coefficient carrier

It is an abstract finite carrier surface for the ordinary Euler-product relation

  1 / zeta(s) = sum_n mu(n) n^{-s}.

Zero/pole language is represented only by the reciprocal-boundary interface.
-/

/-- Finite prime-index selection carrier. -/
abbrev PrimeSelection (N : Nat) :=
  Fin N → Bool

/-- Finite prime-exponent profile carrier. -/
structure PrimeExponentProfile (N : Nat) where
  exponent : Fin N → Nat

/-- A profile is squarefree when every exponent is at most one. -/
def PrimeExponentProfile.IsSquarefree
    {N : Nat} (profile : PrimeExponentProfile N) : Prop :=
  ∀ p : Fin N, profile.exponent p ≤ 1

/-- Convert a prime subset/selection into its squarefree exponent profile. -/
def PrimeSelection.toSquarefreeProfile
    {N : Nat} (selection : PrimeSelection N) : PrimeExponentProfile N :=
  { exponent := fun p => if selection p then 1 else 0 }

/-- Selection profiles are squarefree by construction. -/
theorem prime_selection_to_squarefree_profile_is_squarefree
    {N : Nat} (selection : PrimeSelection N) :
    (PrimeSelection.toSquarefreeProfile selection).IsSquarefree := by
  intro p
  dsimp [PrimeSelection.toSquarefreeProfile, PrimeExponentProfile.IsSquarefree]
  by_cases h : selection p <;> simp [h]

/-- Möbius coefficient cases for a finite multiplicative carrier. -/
inductive MobiusCoefficientKind where
  | unit
  | squarefreeEven
  | squarefreeOdd
  | nonsquarefree
deriving Repr, DecidableEq

/-- Integer value of the Möbius coefficient kind. -/
def MobiusCoefficientKind.value : MobiusCoefficientKind → Int
  | .unit => 1
  | .squarefreeEven => 1
  | .squarefreeOdd => -1
  | .nonsquarefree => 0

@[simp] theorem mobius_unit_value :
    MobiusCoefficientKind.unit.value = 1 := by
  rfl

@[simp] theorem mobius_squarefree_even_value :
    MobiusCoefficientKind.squarefreeEven.value = 1 := by
  rfl

@[simp] theorem mobius_squarefree_odd_value :
    MobiusCoefficientKind.squarefreeOdd.value = -1 := by
  rfl

@[simp] theorem mobius_nonsquarefree_value :
    MobiusCoefficientKind.nonsquarefree.value = 0 := by
  rfl

/-- Prime-power Euler-product side: all exponent profiles are admitted. -/
def EulerPrimePowerCarrier (N : Nat) :=
  PrimeExponentProfile N

/-- Reciprocal Euler-product side: only squarefree exponent profiles remain. -/
def ReciprocalEulerSquarefreeCarrier (N : Nat) :=
  { profile : PrimeExponentProfile N // profile.IsSquarefree }

/-- A selected prime subset gives a reciprocal Euler squarefree carrier element. -/
def PrimeSelection.toReciprocalEulerCarrier
    {N : Nat} (selection : PrimeSelection N) :
    ReciprocalEulerSquarefreeCarrier N :=
  ⟨ PrimeSelection.toSquarefreeProfile selection
  , prime_selection_to_squarefree_profile_is_squarefree selection
  ⟩

/-- Algebraic carrier package for the Möbius/Euler-product relation. -/
structure MobiusEulerProductCarrier (N : Nat) where
  primePowerCarrier : Type := EulerPrimePowerCarrier N
  reciprocalSquarefreeCarrier : Type := ReciprocalEulerSquarefreeCarrier N
  mobiusCoefficient : PrimeExponentProfile N → MobiusCoefficientKind

/-- Default carrier with all coefficient classification supplied externally. -/
def mkMobiusEulerProductCarrier
    {N : Nat}
    (muKind : PrimeExponentProfile N → MobiusCoefficientKind) :
    MobiusEulerProductCarrier N :=
  { mobiusCoefficient := muKind }

/-- The reciprocal-boundary interface turns a zeta pole into a reciprocal-zeta zero. -/
theorem mobius_reciprocal_boundary_zeta_pole_to_zero
    {Object Point : Type u}
    (Z : ZetaReciprocalBoundary Object Point)
    (h : Z.boundary.poleAt Z.zeta Z.one) :
    Z.boundary.zeroAt Z.reciprocalZeta Z.one :=
  zeta_pole_at_one_implies_reciprocal_zero_at_one Z h

end Think.Analysis
```
