/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source candidate. Native Lean elaboration succeeded with Lean
4.34.1 and the project-pinned mathlib; scope is recorded in theorem-local
provenance. Fresh kernel replay, transitive axiom audit and independent
analytical review NOT_RUN. -/
import GRWTSK.ManifoldsAndCellComplexes.PrimeLoopGeometrization
import Mathlib

/-!
# Prime-link arithmetic signatures and the unfilled JSJ classification port

This file formalizes EXACTLY the arithmetic data of the selected construction
K_p = T(2,2p+1), K_q = T(2,2q+1), base link T(2,2(q-p)).
The component genus, determinant, linking and peripheral first-homology
coordinates are a source-derived recipe. These equalities do NOT prove
existence, unique isotopy type, or Seifert fibrations of a smooth embedding.

For the intended smooth construction, the central T(2,2d) torus-link exterior
is Seifert-fibered over an annulus with one cone order d (none for d=1).
Each component torus-knot exterior is fibered over a disk with cone orders
2,2p+1 or 2,2q+1. Componentwise knot tying is a graph-link construction;
Eisenbud--Neumann graph-link theory gives Seifert-type splice pieces.
These are written external topological results, NOT imported Lean proofs.

The combinatorial JSJ port below stores ALL gluing matrices and their
unimodularity requirements. It does not assert that any particular packet
is the minimal JSJ decomposition or that the corresponding tori are
incompressible. In particular the three displayed Seifert ingredients
must NOT be silently identified with the complete minimal JSJ graph.
No Ricci-flow theorem, complete homeomorphism classification, new intrinsic
prime geometry, Weil positivity or RH/GRH is concluded.

Source: supplied zhang_prime_link_weil_construction.md, 2026-11-07.
Comparison: D. Eisenbud and W. Neumann, Three-Dimensional Link Theory
and Invariants of Plane Curve Singularities, Annals of Math. Studies 110
(1985), and Hamilton--Perelman geometrization as discussed in
B. Kleiner and J. Lott, Notes on Perelman's Papers (2008).
-/

namespace GRWTSK.Topology.GeometricTopology.PrimeLinkGeometrization

/-- Ordered prime labels: consecutiveness is not inferred from primality. -/
structure PrimePair where
  p : ℕ
  q : ℕ
  prime_p : Nat.Prime p
  prime_q : Nat.Prime q
  ordered : p < q

/-- The positive, integer-valued link gap in the chosen family. -/
def gap (x : PrimePair) : ℕ := x.q - x.p

theorem gap_pos (x : PrimePair) : 0 < gap x := by
  have h := x.ordered
  dsimp [gap]
  omega

theorem p_add_gap (x : PrimePair) : x.p + gap x = x.q := by
  have h := x.ordered
  dsimp [gap]
  omega

/-- Whether an ordered prime pair is consecutive requires another test. -/
def Consecutive (x : PrimePair) : Prop :=
  ∀ n : ℕ, x.p < n → n < x.q → ¬ Nat.Prime n

/-- This checks a particular edge; Zhang's existence theorem is not here. -/
def InsideZhangBound (x : PrimePair) : Prop := gap x < 70000000

/-- Selected component torus-knot parameters and knot determinants. -/
def torusOrderP (x : PrimePair) : ℕ := 2 * x.p + 1
def torusOrderQ (x : PrimePair) : ℕ := 2 * x.q + 1
def determinantP (x : PrimePair) : ℕ := torusOrderP x
def determinantQ (x : PrimePair) : ℕ := torusOrderQ x

theorem determinantP_decode (x : PrimePair) :
    (determinantP x - 1) / 2 = x.p := by
  dsimp [determinantP, torusOrderP]
  omega

theorem determinantQ_decode (x : PrimePair) :
    (determinantQ x - 1) / 2 = x.q := by
  dsimp [determinantQ, torusOrderQ]
  omega

/-- The genera and linking number are lossless on the CONSTRUCTED image,
not complete invariants of arbitrary knots or links. -/
def sourceSignature (x : PrimePair) : ℕ × ℕ × ℕ :=
  (x.p, x.q, gap x)

/-- Literal component-genus recovery. -/
theorem pair_recovery (x y : PrimePair)
    (h : sourceSignature x = sourceSignature y) :
    x.p = y.p ∧ x.q = y.q := by
  constructor
  · simpa [sourceSignature] using
      (congrArg (fun t : ℕ × ℕ × ℕ => t.1) h)
  · simpa [sourceSignature] using
      (congrArg (fun t : ℕ × ℕ × ℕ => t.2.1) h)

theorem sourceSignature_injective : Function.Injective sourceSignature := by
  intro x y h
  cases x with
  | mk p q hp hq ho =>
    cases y with
    | mk p' q' hp' hq' ho' =>
      have he₁ : p = p' := (pair_recovery _ _ h).1
      have he₂ : q = q' := (pair_recovery _ _ h).2
      subst p'
      subst q'
      rfl

/-- A marked basis of the rank-two abelianized link complement.
These are FORMAL coordinates, not generators of the full nonabelian group. -/
def meridianP : ℤ × ℤ := (1, 0)
def meridianQ : ℤ × ℤ := (0, 1)

/-- Peripheral longitude coefficients for the chosen linking number. -/
def longitudeP (x : PrimePair) : ℤ × ℤ := (0, (gap x : ℤ))
def longitudeQ (x : PrimePair) : ℤ × ℤ := ((gap x : ℤ), 0)

theorem longitudeP_cross (x : PrimePair) :
    (longitudeP x).2 = (x.q : ℤ) - (x.p : ℤ) := by
  have h := x.ordered
  dsimp [longitudeP, gap]
  omega

theorem longitudeQ_cross (x : PrimePair) :
    (longitudeQ x).1 = (x.q : ℤ) - (x.p : ℤ) := by
  have h := x.ordered
  dsimp [longitudeQ, gap]
  omega

/-- Orbifold order lists for the three Seifert building-block RECIPES.
These are not proofs that a chosen embedding has the required fibrations. -/
structure SeifertOrderPacket where
  boundaryComponents : ℕ
  exceptionalOrders : List ℕ

def baseTorusLinkPacket (x : PrimePair) : SeifertOrderPacket :=
  ⟨2, if gap x = 1 then [] else [gap x]⟩

def firstTorusKnotPacket (x : PrimePair) : SeifertOrderPacket :=
  ⟨1, [2, torusOrderP x]⟩

def secondTorusKnotPacket (x : PrimePair) : SeifertOrderPacket :=
  ⟨1, [2, torusOrderQ x]⟩

/-- This is strictly a finite classification DATA FORMAT. A verified JSJ
decomposition requires geometrically meaningful incompressibility,
minimality, actual Seifert fibrations, and exact boundary identifications. -/
inductive CandidatePieceKind
  | seifert
  | hyperbolic
  deriving DecidableEq

structure CandidateJSJ (Piece Gluing : Type*) where
  kind : Piece → CandidatePieceKind
  left : Gluing → Piece
  right : Gluing → Piece
  boundaryMap : Gluing → Matrix (Fin 2) (Fin 2) ℤ
  unimodular : ∀ g, (boundaryMap g).det = 1 ∨ (boundaryMap g).det = -1

def HasHyperbolicTag {P G : Type*} (j : CandidateJSJ P G) : Prop :=
  ∃ p : P, j.kind p = .hyperbolic

/-- A finite Seifert-only candidate has no hyperbolic TAG.
This is not a proof that the candidate is a complete JSJ decomposition. -/
theorem no_hyperbolic_tag_of_all_seifert
    {P G : Type*} (j : CandidateJSJ P G)
    (h : ∀ p : P, j.kind p = .seifert) :
    ¬ HasHyperbolicTag j := by
  rintro ⟨p, hp⟩
  rw [h p] at hp
  cases hp

/-- Source-level arithmetic diagnostic only. No knot is computed in Lean. -/
def exampleElevenThirteen : PrimePair where
  p := 11
  q := 13
  prime_p := by norm_num
  prime_q := by norm_num
  ordered := by omega

theorem exampleElevenThirteen_data :
    gap exampleElevenThirteen = 2 ∧
      determinantP exampleElevenThirteen = 23 ∧
      determinantQ exampleElevenThirteen = 27 := by
  norm_num [gap, determinantP, determinantQ,
    torusOrderP, torusOrderQ, exampleElevenThirteen]

end GRWTSK.Topology.GeometricTopology.PrimeLinkGeometrization
