/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
PresentedGroup, FreeGroup, Abelianization, List.prod and their results:
Mathlib authors; retained under upstream attribution and license.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#734. Exact parent: PR #728 head
919dd825e117045ec209a877fcf0db0aeadaad31.
-/
import GRWTSK.Algebra.GroupTheory.Words.GenusTwoHeisenbergWitness
import Mathlib.Algebra.BigOperators.Group.List.Basic

/-!
# Homology-invisible primitive first-handle commutators in every genus g ≥ 2

For each k : Nat define the genuine Mathlib presented group for a
genus-(k+2) closed orientable surface's *abstract standard presentation*.
Its alphabet has four initial handle generators and k further ordered
handle pairs. The sole relator is the *ordered noncommutative product*
of k+2 handle commutators.

Map the initial two handles to (X,Y), (X,Y^-1) in integral Heisenberg
and every later generator to the identity. The whole genuine relator
maps to one, so PresentedGroup.toGroup constructs a real homomorphism.
Its first-handle commutator maps to central Z=(0,0,1), which is neither
one nor a proper power. Yet the actual Mathlib Abelianization.of kills
the very same element, and every integer character gives zero.

The abstract genus-(k+2) one-relator presentation is NOT an
authenticated fundamental group of a specified marked hyperbolic
surface. No actual closed geodesic, length, full source enumeration,
Selberg trace or RH application is established by this module.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Algebra.GroupTheory.Words.HigherGenusHeisenbergWitness

open GRWTSK.Algebra.GroupTheory.Words.PrimitiveConjugacy
open GRWTSK.Algebra.GroupTheory.Words.IntegralHomologyPrimitive
open GRWTSK.Algebra.GroupTheory.Words.IntegralHeisenbergPrimitive

/-- Distinguish the first two handles from k further handle pairs.
The extra Bool flag distinguishes their oriented a- and b-generators;
it does not identify any word with an actual geometric loop. -/
abbrev GenusLetter (k : ℕ) : Type :=
  Sum (Fin 4) (Fin k × Bool)

/-- Source identity of a first-two-handles generator. -/
def baseLetter (k : ℕ) (i : Fin 4) : GenusLetter k :=
  Sum.inl i

/-- Source identity of a generator on an additional handle. -/
def extraLetter (k : ℕ) (j : Fin k) (isB : Bool) : GenusLetter k :=
  Sum.inr (j, isB)

/-- The first two actual free-group handle commutators, in order. -/
def firstTwoRelator (k : ℕ) : FreeGroup (GenusLetter k) :=
  wordCommutator
      (FreeGroup.of (baseLetter k 0)) (FreeGroup.of (baseLetter k 1)) *
    wordCommutator
      (FreeGroup.of (baseLetter k 2)) (FreeGroup.of (baseLetter k 3))

/-- The j-th *additional* handle commutator. -/
def extraHandleRelator (k : ℕ) (j : Fin k) :
    FreeGroup (GenusLetter k) :=
  wordCommutator
    (FreeGroup.of (extraLetter k j false))
    (FreeGroup.of (extraLetter k j true))

/-- The extra relators retain the canonical Fin k ORDER. We do not
use Finset.prod on a noncommutative free group. -/
def extraRelatorList (k : ℕ) :
    List (FreeGroup (GenusLetter k)) :=
  List.ofFn (fun j : Fin k => extraHandleRelator k j)

/-- Actual one-relator word for g=k+2, not merely a tuple of two
handles with an unreported quotient. -/
def higherGenusRelator (k : ℕ) : FreeGroup (GenusLetter k) :=
  firstTwoRelator k * (extraRelatorList k).prod

/-- Quotient by the NORMAL CLOSURE of precisely the selected
ordered genus-(k+2) relator. This is a genuine Mathlib group. -/
abbrev HigherGenusPresentedGroup (k : ℕ) : Type :=
  PresentedGroup ({higherGenusRelator k} :
    Set (FreeGroup (GenusLetter k)))

/-- Canonical coset of each named finite generating letter. -/
def generator (k : ℕ) (x : GenusLetter k) :
    HigherGenusPresentedGroup k :=
  PresentedGroup.of
    (rels := ({higherGenusRelator k} :
      Set (FreeGroup (GenusLetter k)))) x

/-- The full generator assignment to integral Heisenberg. It agrees
with the already source-authored genus-two assignment on the first
four letters and maps all extra handles to group identity. -/
def heisenbergLetter (k : ℕ) : GenusLetter k → IntegralHeisenberg
  | Sum.inl i =>
      GRWTSK.Algebra.GroupTheory.Words.GenusTwoHeisenbergWitness.heisenbergLetter i
  | Sum.inr _ => 1

/-- The initial two relators still cancel with no assumptions on k. -/
theorem firstTwoRelator_evaluation (k : ℕ) :
    (FreeGroup.lift (heisenbergLetter k)) (firstTwoRelator k) = 1 := by
  unfold firstTwoRelator
  rw [map_mul, map_wordCommutator, map_wordCommutator]
  simp only [FreeGroup.lift_apply_of]
  simpa [baseLetter, heisenbergLetter,
    GRWTSK.Algebra.GroupTheory.Words.GenusTwoHeisenbergWitness.heisenbergLetter] using
    IntegralHeisenberg.genusTwo_relation

/-- Every additional handle commutator has image 1, since both of
its source generators map to 1, retaining correct group order. -/
theorem extraHandleRelator_evaluation
    (k : ℕ) (j : Fin k) :
    (FreeGroup.lift (heisenbergLetter k))
      (extraHandleRelator k j) = 1 := by
  unfold extraHandleRelator
  rw [map_wordCommutator]
  simp [extraLetter, heisenbergLetter, wordCommutator]

/-- The entire ordered finite list of additional commutators maps
to 1. This remains true when k=0 and the list is empty. -/
theorem extraRelatorList_evaluation (k : ℕ) :
    (FreeGroup.lift (heisenbergLetter k))
      (extraRelatorList k).prod = 1 := by
  calc
    (FreeGroup.lift (heisenbergLetter k)) (extraRelatorList k).prod =
        ((extraRelatorList k).map
          (FreeGroup.lift (heisenbergLetter k))).prod :=
      (List.prod_hom (extraRelatorList k)
        (FreeGroup.lift (heisenbergLetter k))).symm
    _ = 1 := by
      apply List.prod_eq_one
      intro w hw
      obtain ⟨r, hr, rfl⟩ := List.mem_map.mp hw
      obtain ⟨j, rfl⟩ := List.mem_ofFn.mp hr
      exact extraHandleRelator_evaluation k j

/-- This is the exact normal-closure relator soundness premise
consumed by PresentedGroup.toGroup, not a free homomorphism axiom. -/
theorem higherGenusRelator_evaluation (k : ℕ) :
    (FreeGroup.lift (heisenbergLetter k))
      (higherGenusRelator k) = 1 := by
  unfold higherGenusRelator
  rw [map_mul, firstTwoRelator_evaluation,
    extraRelatorList_evaluation]
  simp

/-- True quotient-group homomorphism for every k, built only after
discharging the full ordered relator equation. -/
def toHeisenberg (k : ℕ) :
    HigherGenusPresentedGroup k →* IntegralHeisenberg :=
  PresentedGroup.toGroup
    (f := heisenbergLetter k)
    (rels := ({higherGenusRelator k} :
      Set (FreeGroup (GenusLetter k)))) (by
      intro r hr
      have heq : r = higherGenusRelator k :=
        Set.mem_singleton_iff.mp hr
      subst r
      exact higherGenusRelator_evaluation k)

/-- Exact generator images, without conflating extra and initial IDs. -/
@[simp] theorem toHeisenberg_generator (k : ℕ) (x : GenusLetter k) :
    toHeisenberg k (generator k x) = heisenbergLetter k x := by
  simp [toHeisenberg, generator]

/-- Same explicitly identified first-handle element in every member
of the presented-group family. -/
def firstHandleCommutator (k : ℕ) : HigherGenusPresentedGroup k :=
  wordCommutator
    (generator k (baseLetter k 0))
    (generator k (baseLetter k 1))

/-- The actual quotient-group homomorphism sends this source
commutator exactly to the central Heisenberg unit Z. -/
theorem toHeisenberg_firstHandleCommutator (k : ℕ) :
    toHeisenberg k (firstHandleCommutator k) =
      IntegralHeisenberg.Z := by
  unfold firstHandleCommutator
  rw [map_wordCommutator]
  simp only [toHeisenberg_generator]
  simpa [baseLetter, heisenbergLetter,
    GRWTSK.Algebra.GroupTheory.Words.GenusTwoHeisenbergWitness.heisenbergLetter] using
    IntegralHeisenberg.comm_X_Y

/-- Genus-uniform abstract primitive theorem. The proof inherits
the parent's full Heisenberg no-root argument rather than a bounded
syntactic proper-power test. -/
theorem firstHandleCommutator_primitive (k : ℕ) :
    IsPrimitiveConjugacy (firstHandleCommutator k) :=
  primitive_of_hom_maps_to_Z (toHeisenberg k)
    (toHeisenberg_firstHandleCommutator k)

/-- The SAME first-handle source element dies in the genuine
Mathlib abelianization for every k; this is a group commutator,
not merely an assigned zero integer vector. -/
theorem firstHandleCommutator_abelianization_eq_one (k : ℕ) :
    (Abelianization.of (firstHandleCommutator k) :
      Abelianization (HigherGenusPresentedGroup k)) = 1 := by
  simp [firstHandleCommutator, wordCommutator,
    map_mul, map_inv, mul_assoc]

/-- Every genuine integer character of the actual genus-(k+2)
presented group annihilates its first handle commutator. -/
theorem firstHandleCommutator_integerCharacter_zero
    (k : ℕ) (h : IntegerCharacter (HigherGenusPresentedGroup k)) :
    (h (firstHandleCommutator k)).toAdd = 0 := by
  have heq : h (firstHandleCommutator k) = 1 := by
    calc
      h (firstHandleCommutator k) =
          Abelianization.lift h
            (Abelianization.of (firstHandleCommutator k)) :=
        (Abelianization.lift_apply_of h
          (firstHandleCommutator k)).symm
      _ = Abelianization.lift h 1 := by
        rw [firstHandleCommutator_abelianization_eq_one]
      _ = 1 := map_one _
  simp [heq]

/-- Reuse the parent generic witness for the exact same source
element, not an arbitrary primitive class substituted after proof. -/
def familyWitness (k : ℕ) :
    GRWTSK.Algebra.GroupTheory.Words.GenusTwoHeisenbergWitness.HomologyInvisiblePrimitiveWitness
      (HigherGenusPresentedGroup k) where
  element := firstHandleCommutator k
  primitive := firstHandleCommutator_primitive k
  invisible := firstHandleCommutator_abelianization_eq_one k

/-- The requested simultaneous source-level theorem family. -/
theorem primitive_and_homology_invisible (k : ℕ) :
    IsPrimitiveConjugacy (firstHandleCommutator k) ∧
      (Abelianization.of (firstHandleCommutator k) :
        Abelianization (HigherGenusPresentedGroup k)) = 1 :=
  ⟨(familyWitness k).primitive, (familyWitness k).invisible⟩

/-- Every member defeats the sufficiency-only integer-unit route
from #704, even though it is primitive by the nonabelian route. -/
theorem no_integer_unit_certificate
    (k : ℕ) (h : IntegerCharacter (HigherGenusPresentedGroup k)) :
    ¬ IsUnit (h (firstHandleCommutator k)).toAdd :=
  (familyWitness k).no_integer_unit h

/-- Zero extra handles = genus two: the ordered extra relator list
is empty, but the two real initial handles remain. -/
@[simp] theorem extraRelatorList_zero :
    extraRelatorList 0 = [] := by
  simp [extraRelatorList]

/-- One additional handle is genuinely present in the syntactic
relator list when k=1. Its Heisenberg image is one, but its
source word is not silently deleted from the presented group. -/
@[simp] theorem extraRelatorList_one :
    extraRelatorList 1 = [extraHandleRelator 1 0] := by
  simp [extraRelatorList]

/-- Hostile base-case guard: g=2 is actually in the family. -/
theorem genus_two_case :
    IsPrimitiveConjugacy (firstHandleCommutator 0) ∧
      (Abelianization.of (firstHandleCommutator 0) :
        Abelianization (HigherGenusPresentedGroup 0)) = 1 :=
  primitive_and_homology_invisible 0

/-- One additional handle = genus three. The extra commutator
remains in the literal relator even though its Heisenberg image is 1. -/
theorem genus_three_case :
    IsPrimitiveConjugacy (firstHandleCommutator 1) ∧
      (Abelianization.of (firstHandleCommutator 1) :
        Abelianization (HigherGenusPresentedGroup 1)) = 1 :=
  primitive_and_homology_invisible 1

end GRWTSK.Algebra.GroupTheory.Words.HigherGenusHeisenbergWitness
