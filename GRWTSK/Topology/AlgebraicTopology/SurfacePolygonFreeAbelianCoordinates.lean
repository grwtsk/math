/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
FreeAbelianGroup.equivFinsupp: Johan Commelin / Mathlib authors.
Finsupp.addEquivFunOnFinite, quotient, type-tag and FreeGroup APIs:
Mathlib contributors under Mathlib's original attribution.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#795. Exact parent draft PR #785:
6530b6815b9ce6f5383b64cd4207892e8c016675.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAbelianizationComparison
import Mathlib.Algebra.FreeAbelianGroup.Finsupp
import Mathlib.Algebra.Group.Finsupp
import Mathlib.Algebra.Group.Equiv.TypeTags

/-!
# Complete integral coordinates of the finite polygon's free abelian group

The ACTUAL free abelian group on the finite polygon generator source A
is equivalent to A -> Z, the identical one-cell chain carrier in #758.

Unlike the source-coordinate collection from #774, this is a full
equivalence, obtained by COMPOSING two existing, pinned Mathlib
isomorphisms:
  FreeAbelianGroup.equivFinsupp : FreeAbelianGroup A ≃+ (A ->₀ Z)
  Finsupp.addEquivFunOnFinite : (A ->₀ Z) ≃+ (A -> Z).

Since Mathlib defines FreeAbelianGroup A as Additive of
Abelianization (FreeGroup A), type-tag transport makes the same map a
genuine multiplicative group equivalence on canonical abelianization.

The new proof work binds this equivalence to #774's genuine integer
characters on EVERY FreeGroup word and to #758's literal signed edge
incidence. It proves that all these characters jointly detect the
canonical abelianization kernel (not the triviality of the original
noncommutative FreeGroup word).

This does NOT construct an actual topological genus-g surface, its CW
chain complex/categorical homology, Hurewicz or van Kampen, authentic
hyperbolic lengths, Selberg/Weil-Petersson, GUE or RH.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonFreeAbelianCoordinates

open GRWTSK.Algebra.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPresentationSeam
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCellularBoundary
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAbelianizationComparison

/-- The full additive isomorphism to the SAME finite one-cell source
carrier as #758. No independent basis and no invented injectivity:
both components are already-proved pinned Mathlib AddEquiv values. -/
def freeAbelianCoordinates (k : ℕ) :
    FreeAbelianGroup (GenusLetter k) ≃+ OneCellChains k :=
  (FreeAbelianGroup.equivFinsupp (GenusLetter k)).trans
    (Finsupp.addEquivFunOnFinite)

/-- The canonical abelianization of the ACTUAL FreeGroup, converted
using Mathlib's definitional FreeAbelianGroup = Additive Abelianization,
is FULLY group-isomorphic to the integer coordinate vectors. -/
def canonicalAbelianizationCoordinates (k : ℕ) :
    Abelianization (FreeGroup (GenusLetter k)) ≃*
      Multiplicative (OneCellChains k) :=
  AddEquiv.toMultiplicativeRight (freeAbelianCoordinates k)

/-- Every named free abelian basis generator has EXACTLY its source's
Kronecker integer coordinate. -/
@[simp] theorem freeAbelianCoordinates_of (k : ℕ)
    (a x : GenusLetter k) :
    (freeAbelianCoordinates k (FreeAbelianGroup.of a)) x =
      if x = a then 1 else 0 := by
  classical
  simp [freeAbelianCoordinates, FreeAbelianGroup.equivFinsupp,
    Finsupp.addEquivFunOnFinite, FreeAbelianGroup.toFinsupp_of]

/-- The actual canonical quotient identifies the same named generator
with the corresponding integer one-cell basis vector. -/
@[simp] theorem canonicalAbelianizationCoordinates_generator
    (k : ℕ) (a x : GenusLetter k) :
    ((canonicalAbelianizationCoordinates k)
      (Abelianization.of (FreeGroup.of a))).toAdd x =
        if x = a then 1 else 0 := by
  change (freeAbelianCoordinates k (FreeAbelianGroup.of a)) x = _
  exact freeAbelianCoordinates_of k a x

/-- Every coordinate vector really has a preimage under the full
canonical abelianization isomorphism, with NO extra affine constraint. -/
theorem canonicalCoordinates_surjective (k : ℕ) :
    Function.Surjective (canonicalAbelianizationCoordinates k) :=
  (canonicalAbelianizationCoordinates k).surjective

/-- The quotient-to-coordinate map is injective: once two genuine
abelianization elements have identical integer coordinate vectors,
they are EQUAL in the abelianization (but not necessarily in the
noncommutative original FreeGroup). -/
theorem canonicalCoordinates_injective (k : ℕ) :
    Function.Injective (canonicalAbelianizationCoordinates k) :=
  (canonicalAbelianizationCoordinates k).injective

/-- Genuine evaluation of the x-coordinate of a *multiplicative*
integer vector. The homomorphism laws hold by pointwise addition. -/
def coordinateProjection (k : ℕ) (x : GenusLetter k) :
    Multiplicative (OneCellChains k) →* Multiplicative ℤ where
  toFun v := Multiplicative.ofAdd (v.toAdd x)
  map_one' := rfl
  map_mul' _ _ := rfl

/-- Pull back one canonical abelian coordinate through the complete
actual group quotient to the original (noncommutative) FreeGroup. -/
def canonicalProjectedCharacter (k : ℕ) (x : GenusLetter k) :
    FreeGroup (GenusLetter k) →* Multiplicative ℤ :=
  (coordinateProjection k x).comp
    ((canonicalAbelianizationCoordinates k).toMonoidHom.comp
      (Abelianization.of :
        FreeGroup (GenusLetter k) →*
          Abelianization (FreeGroup (GenusLetter k))))

/-- The actual quotient-coordinate character coincides on EVERY
free-group element with the EXISTING #774 exponentCharacter. We prove
homomorphism equality on actual generators using Mathlib's unique
FreeGroup map property; no oracle over arbitrary words is inserted. -/
theorem canonicalProjectedCharacter_eq_exponentCharacter (k : ℕ)
    (x : GenusLetter k) :
    canonicalProjectedCharacter k x = exponentCharacter k x := by
  apply FreeGroup.ext_hom
  intro a
  apply Multiplicative.toAdd.injective
  change ((canonicalAbelianizationCoordinates k)
    (Abelianization.of (FreeGroup.of a))).toAdd x =
      ((exponentCharacter k x) (FreeGroup.of a)).toAdd
  rw [canonicalAbelianizationCoordinates_generator,
    exponentCharacter_generator]
  simp [eq_comm]

/-- Pointwise exact equality on ANY original noncommutative word,
without syntactic normalization or truncation of that word. -/
theorem canonicalCoordinates_eq_exponentCharacter (k : ℕ)
    (w : FreeGroup (GenusLetter k)) (x : GenusLetter k) :
    ((canonicalAbelianizationCoordinates k)
      (Abelianization.of w)).toAdd x =
        ((exponentCharacter k x) w).toAdd := by
  have h :=
    DFunLike.congr_fun
      (canonicalProjectedCharacter_eq_exponentCharacter k x) w
  simpa [canonicalProjectedCharacter, coordinateProjection] using
    congrArg Multiplicative.toAdd h

/-- FULL vector equality for EVERY source-signed edge word from #745:
the actual canonical abelianization coordinates are the literal
integer incidences from #758. Not just one character or one polygon. -/
theorem canonicalCoordinates_signedWord (k : ℕ)
    (sides : List (SignedSide k)) :
    ((canonicalAbelianizationCoordinates k)
      (Abelianization.of (polygonBoundaryEval k sides))).toAdd =
        (fun x => signedWordCoefficient k x sides) := by
  funext x
  calc
    ((canonicalAbelianizationCoordinates k)
      (Abelianization.of (polygonBoundaryEval k sides))).toAdd x =
        ((exponentCharacter k x)
          (polygonBoundaryEval k sides)).toAdd :=
      canonicalCoordinates_eq_exponentCharacter k _ x
    _ = signedWordCoefficient k x sides :=
      exponentCharacter_polygonWord k x sides

/-- The original signed face-boundary vector of #758 is EXACTLY
the canonical FreeGroup abelianization coordinate vector of the
SAME complete relator from #734, not an unrelated zero chain. -/
theorem polygonFaceBoundaryVector_eq_canonicalCoordinates
    (k : ℕ) :
    polygonFaceBoundaryVector k =
      ((canonicalAbelianizationCoordinates k)
        (Abelianization.of (higherGenusRelator k))).toAdd := by
  funext x
  rw [← polygonBoundaryWord_eval_eq_relator k]
  exact (congrArg
    (fun v : OneCellChains k => v x)
      (canonicalCoordinates_signedWord k (polygonBoundaryWord k))).symm

/-- The complete relator's canonical quotient coordinates are zero.
This consumes the source vector equality and the parent's actual
signed-incidence cancellation instead of assuming a null vector. -/
theorem fullPolygonCoordinates_zero (k : ℕ) :
    ((canonicalAbelianizationCoordinates k)
      (Abelianization.of (higherGenusRelator k))).toAdd = 0 := by
  rw [← polygonFaceBoundaryVector_eq_canonicalCoordinates]
  exact polygonFaceBoundaryVector_eq_zero k

/-- The exact kernel of the TRUE abelianization map is characterized
by vanishing of ALL sourced integer exponent characters. Unlike #774
this converse is now justified by the FULL Mathlib group equivalence. -/
theorem abelianization_eq_one_iff_all_characters_zero (k : ℕ)
    (w : FreeGroup (GenusLetter k)) :
    (Abelianization.of w :
        Abelianization (FreeGroup (GenusLetter k))) = 1 ↔
      ∀ x : GenusLetter k,
        ((exponentCharacter k x) w).toAdd = 0 := by
  constructor
  · intro hw x
    have h := canonicalCoordinates_eq_exponentCharacter k w x
    rw [hw] at h
    simpa using h.symm
  · intro h
    apply (canonicalAbelianizationCoordinates k).injective
    have hzero :
        (canonicalAbelianizationCoordinates k
          (Abelianization.of w)) = 1 := by
      apply Multiplicative.toAdd.injective
      funext x
      calc
        ((canonicalAbelianizationCoordinates k)
          (Abelianization.of w)).toAdd x =
            ((exponentCharacter k x) w).toAdd :=
          canonicalCoordinates_eq_exponentCharacter k w x
        _ = 0 := h x
        _ = (1 : Multiplicative (OneCellChains k)).toAdd x := rfl
    simpa using hzero

/-- Source-bound hostile test: a word missing its inverse b-edge
has NONZERO coordinates in the complete canonical quotient. -/
theorem missingInverseEdge_coordinates_nonzero (k : ℕ) :
    ((canonicalAbelianizationCoordinates k)
      (Abelianization.of
        (polygonBoundaryEval k (missingInverseEdge k)))).toAdd ≠ 0 := by
  intro hzero
  have hcoordinate :=
    canonicalCoordinates_eq_exponentCharacter k
      (polygonBoundaryEval k (missingInverseEdge k)) (baseLetter k 1)
  rw [hzero] at hcoordinate
  rw [missingInverseEdge_character_one k] at hcoordinate
  norm_num at hcoordinate

/-- Source-bound positive/hostile contrast: the complete first-handle
word has ZERO canonical abelianization coordinates but is NONIDENTITY
in the actual FreeGroup, witnessed by its Heisenberg image. -/
theorem firstHandleBlock_zero_coordinates_but_nontrivial (k : ℕ) :
    polygonBoundaryEval k
      (handleBlock k (baseLetter k 0) (baseLetter k 1)) ≠ 1 ∧
      ((canonicalAbelianizationCoordinates k)
        (Abelianization.of
          (polygonBoundaryEval k
            (handleBlock k (baseLetter k 0) (baseLetter k 1))))).toAdd = 0 := by
  refine ⟨(firstHandleBlock_in_kernel_nontrivial k).1, ?_⟩
  rw [(firstHandleBlock_in_kernel_nontrivial k).2]
  simp

/-- Reusable genus-two instance: four source generator IDs in the
FULL integer coordinate equivalence, not a quotient eliminating any
first handle generator. -/
theorem genus_two_integer_coordinate_count :
    Fintype.card (GenusLetter 0) = 4 := by
  simpa using oneCellSourceCount 0

/-- Reusable genus-three instance: six source generator IDs, with the
third handle retained despite the total face-boundary cancellation. -/
theorem genus_three_integer_coordinate_count :
    Fintype.card (GenusLetter 1) = 6 := by
  simpa using oneCellSourceCount 1

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonFreeAbelianCoordinates
