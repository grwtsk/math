/- Copyright (c) 2026 grwtsk contributors. MIT.
Analytical theorem and formal source candidate: module elaboration observed.
Fresh separate kernel replay NOT_RUN; see issue #1784 for scoped checks. -/
import GRWTSK.Combinatorics.GraphTheory.RelationalHolonomySpinCompletion
import Mathlib

/-!
# Voltage covering, exact path return, and lifted endpoint separation

The consumer is the identity-bearing `Path` of `RelationalHolonomySpinCompletion`.
An edge in a derived voltage graph projects to exactly one old edge, and any
chosen old edge has exactly one outgoing lift from each sheet coordinate.
This is a genuine covering construction, unlike the earlier graph with added
portals and flips. For undirected graph realizations, reverse-edge voltages must
also be compatible with inverses.

The finite-two-group *existence* return for arbitrary unequal fundamental-group
classes uses (i) free fundamental groups of connected graphs, (ii) residual
finite-2-group separation, and (iii) finite 2-group subgroup series. Those
external topology/group theorems are NOT proved or silently imported here.
The present file formalizes the derived-cover path lift, exact source return,
endpoint comparison, actual two-sheet graph, a locally lifted graph Laplacian,
and a normalized fiberwise Hilbert embedding.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy
namespace VoltageCover

universe u v w
variable {V : Type u} (E : V → V → Type v)
variable {G : Type w} [Group G]
variable (U : ∀ {a b : V}, E a b → G)

/-- Directed derived-voltage edges: one edge per old edge and starting sheet. -/
structure Edge (x y : V × G) where
  original : E x.1 y.1
  target_eq : x.2 * U original = y.2

/-- The unique canonical outgoing lift of an original edge from a sheet. -/
def liftEdge {a b : V} (e : E a b) (g : G) :
    Edge E U (a, g) (b, g * U e) := ⟨e, rfl⟩

/-- The incoming lift of the given base edge has a forced initial sheet. -/
def incomingEdge {a b : V} (e : E a b) (h : G) :
    Edge E U (a, h * (U e)⁻¹) (b, h) := by
  refine ⟨e, ?_⟩
  simp [mul_assoc]

/-- The target sheet is determined by the source sheet and base edge. -/
theorem lift_target_unique {a b : V} (e : E a b) (g h : G)
    (e' : Edge E U (a, g) (b, h)) (he : e'.original = e) :
    h = g * U e := by
  simpa only [he] using e'.target_eq.symm

/-- Project a path, retaining every old edge in its original order. -/
def erasePath {x y : V × G} :
    Path (Edge E U) x y → Path E x.1 y.1
  | .refl _ => .refl _
  | .cons e rest => .cons e.original (erasePath rest)

/-- Based path lifting returns both the actual endpoint sheet and lifted path. -/
def liftPath {a b : V} (p : Path E a b) (g : G) :
    Σ h : G, Path (Edge E U) (a, g) (b, h) :=
  match p with
  | .refl a => ⟨g, Path.refl (a, g)⟩
  | .cons e rest =>
      let tail := liftPath rest (g * U e)
      ⟨tail.1, Path.cons (liftEdge E U e g) tail.2⟩

/-- The endpoint is the starting coordinate multiplied by ordered holonomy. -/
theorem lift_endpoint {a b : V} (p : Path E a b) (g : G) :
    (liftPath E U p g).1 = g * Path.holonomy U p := by
  induction p generalizing g with
  | refl a => simp [liftPath, Path.holonomy]
  | cons e rest ih =>
      simpa [liftPath, Path.holonomy, mul_assoc] using ih (g * U e)

/-- Exact source return, including order and identity of the original edges. -/
theorem erase_liftPath {a b : V} (p : Path E a b) (g : G) :
    erasePath E U (liftPath E U p g).2 = p := by
  induction p generalizing g with
  | refl a => rfl
  | cons e rest ih => simp [liftPath, erasePath, liftEdge, ih]

/-- Distinct original holonomies give distinct based lifted endpoints. -/
theorem distinct_endpoints {a : V} (p q : Path E a a) (g : G)
    (h : Path.holonomy U p ≠ Path.holonomy U q) :
    (liftPath E U p g).1 ≠ (liftPath E U q g).1 := by
  intro he
  rw [lift_endpoint, lift_endpoint] at he
  exact h (mul_left_cancel he)

/-- A source-separating voltage witness provides an injective endpoint readout. -/
theorem endpoints_injective {P : Type*} {a : V}
    (history : P → Path E a a)
    (separates : ∀ p q, p ≠ q →
      Path.holonomy U (history p) ≠ Path.holonomy U (history q))
    (g : G) :
    Function.Injective (fun p => (liftPath E U (history p) g).1) := by
  intro p q he
  by_contra hpq
  exact (distinct_endpoints E U (history p) (history q) g
    (separates p q hpq)) he

/-- Group-order power-of-two data is retained as a separate hypothesis:
    it is needed for the tower-of-double-covers construction, not for the
    elementary lifted-endpoint injection. -/
theorem finite_two_group_endpoints_injective [Fintype G]
    {P : Type*} {a : V} (history : P → Path E a a)
    (exponent : Nat) (two_power : Fintype.card G = 2 ^ exponent)
    (separates : ∀ p q, p ≠ q →
      Path.holonomy U (history p) ≠ Path.holonomy U (history q))
    (g : G) :
    Function.Injective (fun p => (liftPath E U (history p) g).1) := by
  exact endpoints_injective E U history separates g

end VoltageCover

namespace DoubleVoltageCover

universe u v
variable {V : Type u} (E : V → V → Type v)
variable (bit : ∀ {a b : V}, E a b → Bool)

/-- One specified binary sheet flip for an oriented edge. -/
def nextSheet {a b : V} (s : Bool) (e : E a b) : Bool :=
  Bool.xor s (bit e)

/-- Exactly two sheets, with no portal/exit/extra-edge constructors. -/
structure Edge (x y : V × Bool) where
  original : E x.1 y.1
  target_eq : nextSheet E bit x.2 original = y.2

/-- Every base edge has a canonical outgoing lift from either sheet. -/
def liftEdge {a b : V} (e : E a b) (s : Bool) :
    Edge E bit (a, s) (b, nextSheet E bit s e) := ⟨e, rfl⟩

/-- The source sheet and edge determine the lifted edge's target sheet. -/
theorem target_unique {a b : V} (e : E a b) (s t : Bool)
    (lifted : Edge E bit (a, s) (b, t))
    (he : lifted.original = e) :
    t = nextSheet E bit s e := by
  simpa only [he] using lifted.target_eq.symm

/-- Projection of one step is always the original directed edge. -/
def baseEdge {x y : V × Bool} (e : Edge E bit x y) : E x.1 y.1 :=
  e.original

/-- Base graph operator: multiplicity of parallel edges is retained. -/
def laplacian [Fintype V] [∀ a b : V, Fintype (E a b)]
    (f : V → ℂ) (a : V) : ℂ :=
  ∑ b : V, ∑ _e : E a b, (f a - f b)

/-- Lifted graph operator, computed on the exact two-sheet adjacency. -/
def liftedLaplacian [Fintype V] [∀ a b : V, Fintype (E a b)]
    (F : V × Bool → ℂ) (x : V × Bool) : ℂ :=
  ∑ b : V, ∑ e : E x.1 b,
    (F x - F (b, nextSheet E bit x.2 e))

/-- The literal fiber-constant pullback of functions from the base graph. -/
def pullback (f : V → ℂ) : V × Bool → ℂ :=
  fun x => f x.1

/-- Covering pullback intertwines actual graph operators. -/
theorem laplacian_pullback [Fintype V] [∀ a b : V, Fintype (E a b)]
    (f : V → ℂ) (x : V × Bool) :
    liftedLaplacian E bit (pullback f) x = laplacian E f x.1 := by
  rfl

/-- Finite original Hilbert pairing, conjugate-linear in the first slot. -/
def baseInner [Fintype V] (f g : V → ℂ) : ℂ :=
  ∑ a : V, star (f a) * g a

/-- Uniform probability normalization on each two-point sheet fiber. -/
noncomputable def coverInner [Fintype V] (f g : V × Bool → ℂ) : ℂ :=
  (∑ a : V,
    ((star (f (a, false)) * g (a, false)) +
    (star (f (a, true)) * g (a, true)))) / 2

/-- The fiber-constant embedding preserves the Hilbert pairing exactly. -/
theorem pullback_inner [Fintype V] (f g : V → ℂ) :
    coverInner (pullback f) (pullback g) = baseInner f g := by
  unfold coverInner baseInner pullback
  rw [Finset.sum_add_distrib]
  ring

end DoubleVoltageCover


/-! ### An explicit nonabelian three-stage double-cover witness

This concrete witness discharges a separating-voltage premise for the ordered
loops ab and ba. It is NOT a residual-2 proof for all free-group words.
The third bit is state-dependent; independent abelian parity bits cannot
separate the two cyclic orderings. The group is UT₃(F₂), of order eight. -/

namespace EightSheetWitness

inductive Letter where | a | b deriving DecidableEq, Repr

instance : Fintype Letter where
  elems := {.a, .b}
  complete := by intro x; cases x <;> simp

structure Fiber where
  a : Bool
  b : Bool
  c : Bool
  deriving DecidableEq, Fintype, Repr

def mul (x y : Fiber) : Fiber :=
  ⟨Bool.xor x.a y.a, Bool.xor x.b y.b,
   Bool.xor (Bool.xor x.c y.c) (x.a && y.b)⟩

def one : Fiber := ⟨false, false, false⟩
def inv (x : Fiber) : Fiber :=
  ⟨x.a, x.b, Bool.xor x.c (x.a && x.b)⟩

theorem assoc : ∀ x y z : Fiber, mul (mul x y) z = mul x (mul y z) := by decide
theorem identity : ∀ x : Fiber, mul x one = x ∧ mul one x = x := by decide
theorem inverse : ∀ x : Fiber, mul x (inv x) = one ∧ mul (inv x) x = one := by decide

instance : Group Fiber where
  mul := mul
  one := one
  inv := inv
  mul_assoc := fun x y z => assoc x y z
  mul_one := fun x => (identity x).1
  one_mul := fun x => (identity x).2
  inv_mul_cancel := fun x => (inverse x).2

def A : Fiber := ⟨true, false, false⟩
def B : Fiber := ⟨false, true, false⟩

theorem noncommute : A * B ≠ B * A := by decide

/-- The original source is the one-vertex, two-edge bouquet. -/
def E (_x _y : PUnit) : Type := Letter

def U {x y : PUnit} : E x y → Fiber
  | .a => A
  | .b => B

def path : List Letter → Path E PUnit.unit PUnit.unit
  | [] => .refl _
  | e :: rest => .cons e (path rest)

def ab : Path E PUnit.unit PUnit.unit := path [.a, .b]
def ba : Path E PUnit.unit PUnit.unit := path [.b, .a]

def twoBits (x : Fiber) : Bool × Bool := (x.a, x.b)
def firstBit (x : Fiber) : Bool := x.a

/-- Two first-stage observations coincide, whereas complete endpoints differ. -/
theorem first_same :
    firstBit ((VoltageCover.liftPath E U ab (1 : Fiber)).1) =
    firstBit ((VoltageCover.liftPath E U ba (1 : Fiber)).1) := by
  rw [VoltageCover.lift_endpoint, VoltageCover.lift_endpoint]
  decide

theorem first_two_same :
    twoBits ((VoltageCover.liftPath E U ab (1 : Fiber)).1) =
    twoBits ((VoltageCover.liftPath E U ba (1 : Fiber)).1) := by
  rw [VoltageCover.lift_endpoint, VoltageCover.lift_endpoint]
  decide

theorem third_separates :
    (VoltageCover.liftPath E U ab (1 : Fiber)).1 ≠
    (VoltageCover.liftPath E U ba (1 : Fiber)).1 := by
  rw [VoltageCover.lift_endpoint, VoltageCover.lift_endpoint]
  decide

/-- The full source history returns, not only a sheet number. -/
theorem source_ab :
    VoltageCover.erasePath E U (VoltageCover.liftPath E U ab (1 : Fiber)).2 = ab :=
  VoltageCover.erase_liftPath E U ab 1

theorem source_ba :
    VoltageCover.erasePath E U (VoltageCover.liftPath E U ba (1 : Fiber)).2 = ba :=
  VoltageCover.erase_liftPath E U ba 1

/-- A bit is appended at each covering projection. -/
def section21 (a b : Bool) : Bool × Bool := (a, b)
def section32 (p : Bool × Bool) (c : Bool) : Fiber := ⟨p.1, p.2, c⟩

theorem section21_recover (p : Bool × Bool) :
    section21 p.1 p.2 = p := rfl

theorem section32_recover (x : Fiber) :
    section32 (twoBits x) x.c = x := by cases x; rfl

/-- Right multiplication makes the third bit depend on the CURRENT first bit. -/
theorem update_A (x : Fiber) : x * A = ⟨!x.a, x.b, x.c⟩ := by
  rcases x with ⟨a,b,c⟩
  cases a <;> cases b <;> cases c <;> rfl

theorem update_B (x : Fiber) :
    x * B = ⟨x.a, !x.b, Bool.xor x.c x.a⟩ := by
  rcases x with ⟨a,b,c⟩
  cases a <;> cases b <;> cases c <;> rfl

end EightSheetWitness

namespace AbelianCoverObstruction

variable {V : Type*} {E : V → V → Type*} {a : V}
variable {G : Type*} [CommGroup G]

/-- Abelian voltage endpoints cannot distinguish a cyclic reordering. -/
theorem same_rotated_endpoint (U : ∀ {x y : V}, E x y → G)
    (p q : Path E a a) (g : G) :
    (VoltageCover.liftPath E U (p.append q) g).1 =
    (VoltageCover.liftPath E U (q.append p) g).1 := by
  simp only [VoltageCover.lift_endpoint, Path.holonomy_append]
  rw [mul_comm (Path.holonomy U p) (Path.holonomy U q)]

end AbelianCoverObstruction
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy
