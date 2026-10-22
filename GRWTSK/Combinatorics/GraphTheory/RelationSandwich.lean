/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Order.Basic

set_option autoImplicit false

/-!
# Relation sandwiches for directed graph control

This file formalizes the deterministic containment core used by graph-sandwich
arguments: a lower edge relation is contained in an actual middle relation, which
is contained in an upper relation. Upward-closed information, such as existence of
a directed path, moves from the lower relation to the middle one. Downward-closed
information, such as acyclicity or a separately supplied planar-embedding
certificate, moves from the upper relation to the middle one.

The organization is motivated by Kim--Vu graph sandwiches and the coupling proved
by Behague, Il'kovic, and Montgomery (arXiv:2510.20765). This file does not
formalize that probabilistic coupling, regular or binomial random graphs, a planar
embedding, prismatic cohomology, or a biological model.

`OrderedControl` permits arbitrary node payloads. A later consumer may instantiate
that payload with a Reed--Solomon observation, but no interpolation, sheaf, or
cohomological compatibility is inferred merely from attaching the label.
-/

namespace GRWTSK.Combinatorics.GraphTheory.RelationSandwich

/-- A directed edge relation on a fixed vertex type. -/
abbrev EdgeRelation (V : Type*) := V → V → Prop

/-- Inclusion of directed edge relations on the same vertices. -/
def Subrelation {V : Type*} (lower upper : EdgeRelation V) : Prop :=
  ∀ ⦃u v : V⦄, lower u v → upper u v

/-- A lower, actual, and upper relation coupled by exact edge containment. -/
structure Sandwich (V : Type*) where
  lower : EdgeRelation V
  middle : EdgeRelation V
  upper : EdgeRelation V
  lower_le_middle : Subrelation lower middle
  middle_le_upper : Subrelation middle upper

/-- A relation property preserved when edges are added. -/
def UpwardClosed {V : Type*} (property : EdgeRelation V → Prop) : Prop :=
  ∀ ⦃lower upper : EdgeRelation V⦄,
    Subrelation lower upper → property lower → property upper

/-- A relation property preserved when edges are deleted. -/
def DownwardClosed {V : Type*} (property : EdgeRelation V → Prop) : Prop :=
  ∀ ⦃lower upper : EdgeRelation V⦄,
    Subrelation lower upper → property upper → property lower

variable {V α Payload : Type*}

/-- The two containments compose. -/
theorem Sandwich.lower_le_upper (sandwich : Sandwich V) :
    Subrelation sandwich.lower sandwich.upper := by
  intro u v edge
  exact sandwich.middle_le_upper (sandwich.lower_le_middle edge)

/-- Any upward-closed lower certificate applies to the actual middle relation. -/
theorem Sandwich.middle_of_lower_upward
    (sandwich : Sandwich V) (property : EdgeRelation V → Prop)
    (closed : UpwardClosed property) (lowerCertificate : property sandwich.lower) :
    property sandwich.middle :=
  closed sandwich.lower_le_middle lowerCertificate

/-- Any downward-closed upper certificate applies to the actual middle relation. -/
theorem Sandwich.middle_of_upper_downward
    (sandwich : Sandwich V) (property : EdgeRelation V → Prop)
    (closed : DownwardClosed property) (upperCertificate : property sandwich.upper) :
    property sandwich.middle :=
  closed sandwich.middle_le_upper upperCertificate

/-- A nonempty directed path, represented by its transitive edge construction. -/
inductive Path (edge : EdgeRelation V) : V → V → Type _
  | single {u v : V} : edge u v → Path edge u v
  | tail {u v w : V} : Path edge u v → edge v w → Path edge u w

/-- Directed paths persist when the edge relation is enlarged. -/
noncomputable def Path.mono {lower upper : EdgeRelation V}
    (included : Subrelation lower upper) {u v : V}
    (path : Path lower u v) : Path upper u v := by
  induction path with
  | single edge =>
      exact Path.single (included edge)
  | tail path edge inductionHypothesis =>
      exact Path.tail inductionHypothesis (included edge)

/-- Existence of a directed path between fixed endpoints is upward-closed. -/
theorem pathProperty_upwardClosed (u v : V) :
    UpwardClosed (fun edge => Nonempty (Path edge u v)) := by
  intro lower upper included path
  exact path.map (Path.mono included)

/-- Every lower path is an actual middle path. -/
noncomputable def Sandwich.lower_path_to_middle (sandwich : Sandwich V) {u v : V}
    (path : Path sandwich.lower u v) : Path sandwich.middle u v :=
  Path.mono sandwich.lower_le_middle path

/-- Every actual middle path is admitted by the upper relation. -/
noncomputable def Sandwich.middle_path_to_upper (sandwich : Sandwich V) {u v : V}
    (path : Path sandwich.middle u v) : Path sandwich.upper u v :=
  Path.mono sandwich.middle_le_upper path

/-- A directed relation is acyclic when it has no nonempty path from a vertex to itself. -/
def Acyclic (edge : EdgeRelation V) : Prop :=
  ∀ vertex : V, Path edge vertex vertex → False

/-- Acyclicity is preserved by deleting edges. -/
theorem acyclic_of_subrelation {lower upper : EdgeRelation V}
    (included : Subrelation lower upper) (upperAcyclic : Acyclic upper) :
    Acyclic lower := by
  intro vertex lowerCycle
  exact upperAcyclic vertex (Path.mono included lowerCycle)

/-- Acyclicity is a downward-closed relation property. -/
theorem acyclic_downwardClosed :
    DownwardClosed (fun edge : EdgeRelation V => Acyclic edge) := by
  intro lower upper included upperAcyclic
  exact acyclic_of_subrelation included upperAcyclic

/-- An acyclic upper relation forces the actual middle relation to be acyclic. -/
theorem Sandwich.middle_acyclic_of_upper (sandwich : Sandwich V)
    (upperAcyclic : Acyclic sandwich.upper) : Acyclic sandwich.middle :=
  acyclic_of_subrelation sandwich.middle_le_upper upperAcyclic

/-- Every edge strictly increases a declared rank or frequency. -/
def OrderedBy [Preorder α] (rank : V → α) (edge : EdgeRelation V) : Prop :=
  ∀ ⦃u v : V⦄, edge u v → rank u < rank v

/-- A rank condition on an upper relation restricts to every subrelation. -/
theorem orderedBy_of_subrelation [Preorder α] (rank : V → α)
    {lower upper : EdgeRelation V} (included : Subrelation lower upper)
    (upperOrdered : OrderedBy rank upper) : OrderedBy rank lower := by
  intro u v edge
  exact upperOrdered (included edge)

/-- A directed path strictly increases the declared rank from its source to target. -/
theorem Path.rank_lt [Preorder α] (rank : V → α) {edge : EdgeRelation V}
    (ordered : OrderedBy rank edge) {u v : V} (path : Path edge u v) :
    rank u < rank v := by
  induction path with
  | single edge =>
      exact ordered edge
  | tail path edge inductionHypothesis =>
      exact lt_trans inductionHypothesis (ordered edge)

/-- A strictly rank-increasing edge relation is acyclic. -/
theorem acyclic_of_ordered [Preorder α] (rank : V → α)
    {edge : EdgeRelation V} (ordered : OrderedBy rank edge) : Acyclic edge := by
  intro vertex cycle
  exact (lt_irrefl (rank vertex)) (Path.rank_lt rank ordered cycle)

/-- An upper frequency order forces the actual middle relation to be acyclic. -/
theorem Sandwich.middle_acyclic_of_upper_ordered [Preorder α]
    (sandwich : Sandwich V) (rank : V → α)
    (upperOrdered : OrderedBy rank sandwich.upper) : Acyclic sandwich.middle :=
  acyclic_of_ordered rank
    (orderedBy_of_subrelation rank sandwich.middle_le_upper upperOrdered)

/-- A graph sandwich with arbitrary node payloads and a strict upper frequency order.

The payload can carry Reed--Solomon symbols and their heterogeneous audit records. The
structure deliberately requires no relation between a payload and an edge; that missing
restriction or descent map remains a separate mathematical obligation. -/
structure OrderedControl (V α Payload : Type*) [Preorder α] where
  sandwich : Sandwich V
  frequency : V → α
  payload : V → Payload
  upper_ordered : OrderedBy frequency sandwich.upper

/-- A certified lower path survives in the actual relation. -/
noncomputable def OrderedControl.accepts_lower_path [Preorder α]
    (control : OrderedControl V α Payload) {u v : V}
    (path : Path control.sandwich.lower u v) :
    Path control.sandwich.middle u v :=
  Sandwich.lower_path_to_middle control.sandwich path

/-- The actual relation in an ordered control sandwich is acyclic. -/
theorem OrderedControl.middle_acyclic [Preorder α]
    (control : OrderedControl V α Payload) :
    Acyclic control.sandwich.middle :=
  Sandwich.middle_acyclic_of_upper_ordered
    control.sandwich control.frequency control.upper_ordered

/-- Lower path existence and upper acyclicity control meet at the actual relation. -/
theorem OrderedControl.certified_path_control [Preorder α]
    (control : OrderedControl V α Payload) {u v : V}
    (path : Path control.sandwich.lower u v) :
    Nonempty (Path control.sandwich.middle u v) ∧ Acyclic control.sandwich.middle :=
  ⟨⟨OrderedControl.accepts_lower_path control path⟩,
    OrderedControl.middle_acyclic control⟩

end GRWTSK.Combinatorics.GraphTheory.RelationSandwich
