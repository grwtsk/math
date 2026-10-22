/-
Copyright (c) 2026 R.A. Jacob Martone. Released under the MIT license.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Free groups, fundamental groups, group equivalences and List algebra:
Mathlib authors, with upstream attribution retained.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#745. Parent PR #738 exact head
8cc8520b210bfc5ae2d119fbe9ac5be81bb33002.
-/
import GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
import Mathlib.AlgebraicTopology.FundamentalGroupoid.FundamentalGroup
import Mathlib.Data.List.Flatten

/-!
# The oriented polygon boundary word and a marked pi1 transport seam

The genuine finite combinatorial supplier here is the identity between
the edge word of the standard oriented 4g-gon, g=k+2, and the EXACT
higher-genus FreeGroup relator from #734. Each signed edge remembers
its generator identity and orientation. Every handle contributes the
ordered block a b a^(-1) b^(-1), and the additional k blocks are
flattened in the same canonical order as the existing relator.

The second supplier is a precise CONDITIONAL transport for a REAL
Mathlib FundamentalGroup X x: if a marked identification with the
already source-authored PresentedGroup is supplied, and an oriented
loop's exact source ID matches the first-handle commutator, then that
loop is nonidentity/non-proper-power and killed by Abelianization.of.

No closed genus-g surface, polygon topological quotient, van Kampen
proof, hyperbolic metric, closed geodesic length, Selberg trace,
Torelli/Johnson action, GUE theorem, Chowla, or RH theorem is
constructed. The marked fundamental-group adapter is NOT instantiated.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPresentationSeam

open GRWTSK.GroupTheory.Words.PrimitiveConjugacy
open GRWTSK.GroupTheory.Words.IntegralHomologyPrimitive
open GRWTSK.GroupTheory.Words.IntegralHeisenbergPrimitive
open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness

/-- Exact oriented edge source: a fixed generator ID and a Boolean
sign; true means the forward generator and false its inverse.
This is a combinatorial polygon edge, NOT a path in a surface. -/
abbrev SignedSide (k : ℕ) : Type := GenusLetter k × Bool

/-- Interpret a signed edge as an actual FreeGroup word of length one. -/
def signedSideValue (k : ℕ) (side : SignedSide k) :
    FreeGroup (GenusLetter k) :=
  if side.2 then FreeGroup.of side.1 else (FreeGroup.of side.1)⁻¹

/-- Evaluate a list of ordered oriented sides in the genuine free group. -/
def polygonBoundaryEval (k : ℕ) (w : List (SignedSide k)) :
    FreeGroup (GenusLetter k) :=
  evalWord (signedSideValue k) w

/-- One oriented handle cell has exactly four ordered sides. -/
def handleBlock (k : ℕ) (a b : GenusLetter k) :
    List (SignedSide k) :=
  [(a, true), (b, true), (a, false), (b, false)]

@[simp] theorem handleBlock_length (k : ℕ) (a b : GenusLetter k) :
    (handleBlock k a b).length = 4 := rfl

/-- Literal signed-edge interpretation of one commutator block. -/
theorem handleBlock_eval (k : ℕ) (a b : GenusLetter k) :
    polygonBoundaryEval k (handleBlock k a b) =
      wordCommutator (FreeGroup.of a) (FreeGroup.of b) := by
  simp [polygonBoundaryEval, evalWord, handleBlock,
    signedSideValue, wordCommutator, mul_assoc]

/-- Concatenated polygon edges evaluate to an ORDERED product. -/
theorem polygonBoundaryEval_append (k : ℕ)
    (u v : List (SignedSide k)) :
    polygonBoundaryEval k (u ++ v) =
      polygonBoundaryEval k u * polygonBoundaryEval k v :=
  evalWord_append (signedSideValue k) u v

/-- Flattening an ordered list of polygon blocks preserves their
noncommutative multiplication order. -/
theorem polygonBoundaryEval_flatten (k : ℕ)
    (blocks : List (List (SignedSide k))) :
    polygonBoundaryEval k blocks.flatten =
      (blocks.map (polygonBoundaryEval k)).prod := by
  induction blocks with
  | nil =>
      simp [polygonBoundaryEval, evalWord]
  | cons block rest ih =>
      simp only [List.flatten_cons, List.map_cons, List.prod_cons]
      rw [polygonBoundaryEval_append, ih]

/-- Source-preserving boundary word for the two base handles. -/
def firstTwoBoundary (k : ℕ) : List (SignedSide k) :=
  handleBlock k (baseLetter k 0) (baseLetter k 1) ++
    handleBlock k (baseLetter k 2) (baseLetter k 3)

/-- Source-preserving ordered blocks for k additional handles. -/
def extraHandleBlocks (k : ℕ) : List (List (SignedSide k)) :=
  List.ofFn (fun j : Fin k =>
    handleBlock k (extraLetter k j false) (extraLetter k j true))

/-- Flatten the ordered additional handle blocks. -/
def extraBoundary (k : ℕ) : List (SignedSide k) :=
  (extraHandleBlocks k).flatten

/-- Full standard polygon boundary edge word for abstract genus g=k+2. -/
def polygonBoundaryWord (k : ℕ) : List (SignedSide k) :=
  firstTwoBoundary k ++ extraBoundary k

/-- The first eight directed edges evaluate to the literal two-handle
noncommutative relator already defined by #734. -/
theorem firstTwoBoundary_eval (k : ℕ) :
    polygonBoundaryEval k (firstTwoBoundary k) =
      firstTwoRelator k := by
  unfold firstTwoBoundary firstTwoRelator
  rw [polygonBoundaryEval_append,
    handleBlock_eval, handleBlock_eval]

/-- Each extra oriented block evaluates to the corresponding exact
extra-handle commutator. The ordered lists have equal identities. -/
theorem extraHandleBlocks_eval (k : ℕ) :
    (extraHandleBlocks k).map (polygonBoundaryEval k) =
      extraRelatorList k := by
  simp only [extraHandleBlocks, extraRelatorList, List.map_ofFn]
  congr 1

/-- The flattened extra polygon edges evaluate to the exact ordered
product of extra relators. No commutativity has been assumed. -/
theorem extraBoundary_eval (k : ℕ) :
    polygonBoundaryEval k (extraBoundary k) =
      (extraRelatorList k).prod := by
  rw [extraBoundary, polygonBoundaryEval_flatten,
    extraHandleBlocks_eval]

/-- THE FINITE POLYGON-PRESENTATION SEAM: every directed edge is
evaluated in the true free group, and the resulting ordered product
is the same exact relator consumed by Mathlib PresentedGroup in #734.

No geometric polygon quotient or fundamental-group theorem is
assumed or constructed by this equality. -/
theorem polygonBoundaryWord_eval_eq_relator (k : ℕ) :
    polygonBoundaryEval k (polygonBoundaryWord k) =
      higherGenusRelator k := by
  unfold polygonBoundaryWord higherGenusRelator
  rw [polygonBoundaryEval_append, firstTwoBoundary_eval,
    extraBoundary_eval]

/-- Empty extra-handle boundary at genus two, without dropping the
initial pair of handle commutators. -/
@[simp] theorem extraHandleBlocks_zero :
    extraHandleBlocks 0 = [] := by
  simp [extraHandleBlocks]

/-- The first two commutator blocks remain eight directed sides. -/
@[simp] theorem firstTwoBoundary_length (k : ℕ) :
    (firstTwoBoundary k).length = 8 := by
  simp [firstTwoBoundary]

/-- Explicit genus-two finite equality; a proof about a word in a
free group, not about an authenticated surface attaching map. -/
theorem genus_two_boundary_eval :
    polygonBoundaryEval 0 (polygonBoundaryWord 0) =
      higherGenusRelator 0 :=
  polygonBoundaryWord_eval_eq_relator 0

/-- Explicit genus-three finite equality, retaining the third handle. -/
theorem genus_three_boundary_eval :
    polygonBoundaryEval 1 (polygonBoundaryWord 1) =
      higherGenusRelator 1 :=
  polygonBoundaryWord_eval_eq_relator 1

/-- A real topological fundamental-group adapter, with no fictitious
surface constructor or unproved van Kampen theorem.

Both the group equivalence and the loop's exact SOURCE identity are
premises. No instance of this structure is asserted to exist for a
specific closed hyperbolic surface by the present module. -/
structure MarkedFundamentalGroupAdapter
    (X : Type*) [TopologicalSpace X] (x : X) (k : ℕ) where
  presentation :
    FundamentalGroup X x ≃* HigherGenusPresentedGroup k
  orientedFirstHandle : FundamentalGroup X x
  firstHandle_source_eq :
    presentation orientedFirstHandle = firstHandleCommutator k

variable {X : Type*} [TopologicalSpace X] {x : X} {k : ℕ}

/-- The exact marked loop is expressible as the commutator of the
inverse images of the named initial generators. This preserves the
same topological loop SOURCE, not merely the cardinality of π1. -/
theorem MarkedFundamentalGroupAdapter.loop_eq_commutator
    (m : MarkedFundamentalGroupAdapter X x k) :
    m.orientedFirstHandle =
      wordCommutator
        (m.presentation.symm (generator k (baseLetter k 0)))
        (m.presentation.symm (generator k (baseLetter k 1))) := by
  apply m.presentation.injective
  calc
    m.presentation m.orientedFirstHandle =
        firstHandleCommutator k := m.firstHandle_source_eq
    _ = wordCommutator
          (generator k (baseLetter k 0))
          (generator k (baseLetter k 1)) := rfl
    _ = m.presentation
          (wordCommutator
            (m.presentation.symm (generator k (baseLetter k 0)))
            (m.presentation.symm (generator k (baseLetter k 1)))) := by
      simpa only [MulEquiv.coe_toMonoidHom, MulEquiv.apply_symm_apply] using
        (map_wordCommutator m.presentation.toMonoidHom
          (m.presentation.symm (generator k (baseLetter k 0)))
          (m.presentation.symm (generator k (baseLetter k 1)))).symm

/-- The actual topological fundamental-group loop is primitive if
the externally supplied marking/presentation source match is real. -/
theorem MarkedFundamentalGroupAdapter.loop_primitive
    (m : MarkedFundamentalGroupAdapter X x k) :
    IsPrimitiveConjugacy m.orientedFirstHandle := by
  let φ : FundamentalGroup X x →* IntegralHeisenberg :=
    (toHeisenberg k).comp m.presentation.toMonoidHom
  apply primitive_of_hom_maps_to_Z φ
  change toHeisenberg k (m.presentation m.orientedFirstHandle) =
    IntegralHeisenberg.Z
  rw [m.firstHandle_source_eq]
  exact toHeisenberg_firstHandleCommutator k

/-- The SAME actual fundamental-group loop is killed by Mathlib's
canonical abelianization; the loop commutator source identity is
consumed explicitly, not replaced by a numerical homology label. -/
theorem MarkedFundamentalGroupAdapter.loop_abelianization_eq_one
    (m : MarkedFundamentalGroupAdapter X x k) :
    (Abelianization.of m.orientedFirstHandle :
      Abelianization (FundamentalGroup X x)) = 1 := by
  rw [m.loop_eq_commutator, map_wordCommutator]
  simp [wordCommutator]

/-- Construct the existing reusable H1-invisible primitive witness
on the ACTUAL FundamentalGroup type, not on the abstract presented
group, given the exact source-preserving equivalence. -/
def MarkedFundamentalGroupAdapter.toHomologyInvisibleWitness
    (m : MarkedFundamentalGroupAdapter X x k) :
    GRWTSK.GroupTheory.Words.GenusTwoHeisenbergWitness.HomologyInvisiblePrimitiveWitness
      (FundamentalGroup X x) where
  element := m.orientedFirstHandle
  primitive := m.loop_primitive
  invisible := m.loop_abelianization_eq_one

/-- In any pointed topological space with the supplied equivalence,
every genuine integer character of π1 vanishes on this exact loop.
No assumption that X is a closed compact genus-g surface is smuggled
into the mathematical conclusion. -/
theorem MarkedFundamentalGroupAdapter.loop_integerCharacter_eq_zero
    (m : MarkedFundamentalGroupAdapter X x k)
    (h : IntegerCharacter (FundamentalGroup X x)) :
    (h m.orientedFirstHandle).toAdd = 0 := by
  have hImage : h m.orientedFirstHandle = 1 := by
    calc
      h m.orientedFirstHandle =
          Abelianization.lift h
            (Abelianization.of m.orientedFirstHandle) :=
        (Abelianization.lift_apply_of h m.orientedFirstHandle).symm
      _ = Abelianization.lift h 1 := by
        rw [m.loop_abelianization_eq_one]
      _ = 1 := map_one _
  simp [hImage]

/-- The same loop is primitive but has no unit-valued abelian
character, as an exact conditional π1 statement. -/
theorem MarkedFundamentalGroupAdapter.loop_primitive_and_invisible
    (m : MarkedFundamentalGroupAdapter X x k) :
    IsPrimitiveConjugacy m.orientedFirstHandle ∧
      (Abelianization.of m.orientedFirstHandle :
        Abelianization (FundamentalGroup X x)) = 1 :=
  ⟨m.loop_primitive, m.loop_abelianization_eq_one⟩

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPresentationSeam
