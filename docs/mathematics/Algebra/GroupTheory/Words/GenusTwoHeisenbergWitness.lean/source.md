# Complete source: GRWTSK.GroupTheory.Words.GenusTwoHeisenbergWitness

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27ae273ead061bfa836d5fee59f0b8a9a9f4c785` · SHA-256 `67340b505a8f0a75bf4179a83340dfaac3a6c2b0fed3ad59f1a1ed98e44c990b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Presented groups, free-group lifts and abelianization: Mathlib authors.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#722, stacked on PR #712 exact head
0678ec3ff744eab8a19f9c7d9efa4dded7ea6836.
-/
import GRWTSK.GroupTheory.Words.IntegralHeisenbergPrimitive
import Mathlib.GroupTheory.PresentedGroup

/-!
# A homology-invisible primitive element in the genus-two presented group

Using Mathlib PresentedGroup, define the four-generator one-relator group
  <a1,b1,a2,b2 | [a1,b1]*[a2,b2]=1>.
The assignment (a1,b1,a2,b2) -> (X,Y,X,Y^(-1)) satisfies the actual
relator in the integral Heisenberg group. Mathlib's universal property
therefore constructs a TRUE group homomorphism of the quotient.

The separating commutator [a1,b1] maps to central unit Z, which is not
a proper power, yet its canonical Abelianization.of is exactly identity.
Thus it is an actual group-theoretic primitive element that no integer
homology-unit certificate can detect.

The standard identification of this presented group with the
fundamental group of a particular MARKED hyperbolic genus-two surface
is an EXTERNAL theorem, not established here. No geodesic length,
complete primitive-geodesic source, or Selberg trace is constructed.
-/

set_option autoImplicit false

namespace GRWTSK.GroupTheory.Words.GenusTwoHeisenbergWitness

open GRWTSK.GroupTheory.Words.PrimitiveConjugacy
open GRWTSK.GroupTheory.Words.IntegralHomologyPrimitive
open GRWTSK.GroupTheory.Words.IntegralHeisenbergPrimitive

/-- Canonical four-generator relator in Mathlib's actual free group:
[a1,b1]*[a2,b2], with [a,b]=a*b*a^-1*b^-1. -/
def genusTwoRelator : FreeGroup (Fin 4) :=
  wordCommutator (FreeGroup.of (0 : Fin 4)) (FreeGroup.of (1 : Fin 4)) *
    wordCommutator (FreeGroup.of (2 : Fin 4)) (FreeGroup.of (3 : Fin 4))

/-- Genuine group presentation via Mathlib's normal-closure quotient,
not a record merely naming four generators. -/
abbrev GenusTwoPresentedGroup : Type :=
  PresentedGroup ({genusTwoRelator} : Set (FreeGroup (Fin 4)))

/-- The actual coset of one of the four source generators. -/
def generator (i : Fin 4) : GenusTwoPresentedGroup :=
  PresentedGroup.of (rels := ({genusTwoRelator} : Set (FreeGroup (Fin 4)))) i

/-- Concrete generator assignment into the integral Heisenberg group.
The second commutator is deliberately the inverse of the first. -/
def heisenbergLetter (i : Fin 4) :
    IntegralHeisenberg :=
  if i = 0 then IntegralHeisenberg.X
  else if i = 1 then IntegralHeisenberg.Y
  else if i = 2 then IntegralHeisenberg.X
  else IntegralHeisenberg.Y⁻¹

/-- The exact one relator evaluates to 1 in Heisenberg. This is the
hypothesis required by the PresentedGroup universal property; it is
not inferred from an unverified name or numerical trace. -/
theorem heisenbergLetter_respects_relator :
    (FreeGroup.lift heisenbergLetter) genusTwoRelator = 1 := by
  unfold genusTwoRelator
  rw [map_mul, map_wordCommutator, map_wordCommutator]
  simp only [FreeGroup.lift_apply_of]
  simpa [heisenbergLetter] using
    IntegralHeisenberg.genusTwo_relation

/-- The universal property builds a genuine group homomorphism FROM
THE QUOTIENT, because the relator was proved to map to identity. -/
def toHeisenberg :
    GenusTwoPresentedGroup →* IntegralHeisenberg :=
  PresentedGroup.toGroup (f := heisenbergLetter)
    (rels := ({genusTwoRelator} : Set (FreeGroup (Fin 4)))) (by
      intro r hr
      have heq : r = genusTwoRelator := Set.mem_singleton_iff.mp hr
      subst r
      exact heisenbergLetter_respects_relator)

@[simp] theorem toHeisenberg_generator (i : Fin 4) :
    toHeisenberg (generator i) = heisenbergLetter i := by
  simp [toHeisenberg, generator]

/-- The algebraic separating commutator source: boundary of the first
handle in the standard genus-two presentation. -/
def separatingCommutator : GenusTwoPresentedGroup :=
  wordCommutator (generator 0) (generator 1)

/-- The actual source commutator maps to the central unit Z. -/
theorem toHeisenberg_separatingCommutator :
    toHeisenberg separatingCommutator =
      IntegralHeisenberg.Z := by
  rw [separatingCommutator, map_wordCommutator]
  simp only [toHeisenberg_generator]
  simpa [heisenbergLetter] using
    IntegralHeisenberg.comm_X_Y

/-- Nonidentity/non-proper-power status follows by transporting the
explicit Heisenberg obstruction across the real presented-group map. -/
theorem separatingCommutator_primitive :
    IsPrimitiveConjugacy separatingCommutator :=
  primitive_of_hom_maps_to_Z toHeisenberg
    toHeisenberg_separatingCommutator

/-- The SAME element is invisible to the genuine Mathlib abelianization
of the presented group. It is a literal commutator, not just a vector
with informally assigned zero homology. -/
theorem separatingCommutator_abelianization_eq_one :
    (Abelianization.of separatingCommutator :
      Abelianization GenusTwoPresentedGroup) = 1 := by
  simp [separatingCommutator, wordCommutator,
    map_mul, map_inv, mul_assoc]

/-- Every actual integer-valued group homomorphism is blind to the
separating commutator, including every signed-linear homology character
of #704 once a source-consistency theorem has been supplied. -/
theorem separatingCommutator_integerCharacter_zero
    (h : IntegerCharacter GenusTwoPresentedGroup) :
    (h separatingCommutator).toAdd = 0 := by
  have hImage : h separatingCommutator = 1 := by
    calc
      h separatingCommutator =
          Abelianization.lift h
            (Abelianization.of separatingCommutator) :=
        (Abelianization.lift_apply_of h separatingCommutator).symm
      _ = Abelianization.lift h 1 := by
        rw [separatingCommutator_abelianization_eq_one]
      _ = 1 := map_one _
  simp [hImage]

/-- The exact reusable obstruction: an actual primitive group element
lies in the kernel of its canonical abelianization map. -/
structure HomologyInvisiblePrimitiveWitness (T : Type*) [Group T] where
  element : T
  primitive : IsPrimitiveConjugacy element
  invisible : (Abelianization.of element : Abelianization T) = 1

/-- Any such witness defeats ALL integer-unit homology certificates,
but does not refute primitivity (indeed it includes primitivity). -/
theorem HomologyInvisiblePrimitiveWitness.no_integer_unit
    {T : Type*} [Group T] (w : HomologyInvisiblePrimitiveWitness T)
    (h : IntegerCharacter T) :
    ¬ IsUnit (h w.element).toAdd := by
  have heq : h w.element = 1 := by
    calc
      h w.element =
          Abelianization.lift h (Abelianization.of w.element) :=
        (Abelianization.lift_apply_of h w.element).symm
      _ = Abelianization.lift h 1 := by rw [w.invisible]
      _ = 1 := map_one _
  intro hu
  have hz : IsUnit (0 : ℤ) := by
    rw [heq, toAdd_one] at hu
    exact hu
  rcases Int.isUnit_iff.mp hz with hpos | hneg
  · norm_num at hpos
  · norm_num at hneg

/-- The concrete nonvacuous genus-two witness, constructed from the
actual quotient group and its Heisenberg homomorphism. -/
def genusTwoWitness :
    HomologyInvisiblePrimitiveWitness GenusTwoPresentedGroup where
  element := separatingCommutator
  primitive := separatingCommutator_primitive
  invisible := separatingCommutator_abelianization_eq_one

/-- The old homology-unit route cannot certify this same element,
although the nonabelian Heisenberg route proves it primitive. -/
theorem genusTwo_no_integer_unit_certificate
    (h : IntegerCharacter GenusTwoPresentedGroup) :
    ¬ IsUnit (h separatingCommutator).toAdd :=
  genusTwoWitness.no_integer_unit h

end GRWTSK.GroupTheory.Words.GenusTwoHeisenbergWitness
```
