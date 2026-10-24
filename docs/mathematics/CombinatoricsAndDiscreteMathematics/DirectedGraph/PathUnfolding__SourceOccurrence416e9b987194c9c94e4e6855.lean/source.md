# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PathUnfolding

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f0343271b35894fccb1a2abfd33a7c2e37a8eaf` · SHA-256 `e99fabeedb0b8b032eb6d72645bf4ed801c5fcd8cde57b5df0bc65147216e994`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib Arborescence: David Wärn; Covering: Antoine Labelle, Rémi Bottinelli;
Path: David Waern, Kim Morrison, Matteo Cipollina, Runtian Zhou.
Mathlib and Lean imports retain upstream authorship and Apache-2.0 licensing. -/
import Mathlib.Combinatorics.Quiver.Arborescence
import Mathlib.Combinatorics.Quiver.Covering

/-!
# The fixed-root unfolding by all finite path occurrences

Vertices wrap the existing `Quiver.PathStar root`; no new inductive path type is
introduced. An extension contains its actual base arrow and equality with the
history extended by that arrow. The resulting quiver is an arborescence. Its
endpoint/edge projection is bijective on outgoing stars and therefore has unique
finite path lifts from every chosen occurrence, by Mathlib's existing theorem.

The endpoint projection covers exactly the vertices reachable from the chosen
root, without connectivity, finiteness or countability assumptions. `Quiver.Path`
allows repeated vertices and edges (directed walks in conventions that reserve
the word path for nonrepeating walks). Incoming-star surjectivity is different:
the empty occurrence has no incoming edge even when the base root does. This
does not assert a full covering or a JSON/runtime refinement, universal property,
proof implication, authorization, or new mathematical novelty.

For this standard construction's context, see Bruno Courcelle, "Unfoldings and
coverings of weighted graphs," arXiv:2212.07205v3, Section 3.1, proof of Theorem
3.5(1). No weighted, countable, globally rooted, or universal-property result from
that paper is imported by these separately stated and checked generic contracts.
-/

set_option autoImplicit false

namespace GRWTSK.Combinatorics.DirectedGraph.PathUnfolding

open Quiver

variable {V : Type*} [Quiver V]

/-- An occurrence is an object-specific wrapper of an existing fixed-root path star. -/
structure Occurrence (root : V) where
  history : PathStar root

variable {root : V}

/-- The base vertex reached by this occurrence's exact history. -/
abbrev Occurrence.endpoint (node : Occurrence root) : V := node.history.1

/-- The actual existing typed path carried by an occurrence. -/
abbrev Occurrence.path (node : Occurrence root) : Path root node.endpoint := node.history.2

open Occurrence

/-- Include an actual existing rooted path as an occurrence. -/
def ofPath {target : V} (history : Path root target) : Occurrence root := ⟨⟨target, history⟩⟩

@[simp]
theorem ofPath_path (node : Occurrence root) : ofPath node.path = node := by
  cases node
  rfl

/-- The distinguished empty-path occurrence. -/
def origin (root : V) : Occurrence root := ofPath Path.nil

/-- Extend the exact occurrence by one actual typed base edge. -/
def extend (node : Occurrence root) {target : V} (edge : node.endpoint ⟶ target) :
    Occurrence root := ofPath (node.path.cons edge)

/-- Extension arrows retain the actual base edge and its equality with the target history. -/
abbrev Extension (source target : Occurrence root) :=
  {edge : source.endpoint ⟶ target.endpoint // extend source edge = target}

instance : Quiver (Occurrence root) := ⟨Extension⟩

/-- Canonical extension arrow, with its actual base-edge identity. -/
def step (node : Occurrence root) {target : V} (edge : node.endpoint ⟶ target) :
    node ⟶ extend node edge := ⟨edge, rfl⟩

/-- Project occurrences to endpoints and extensions to the actual edges they carry. -/
def projection (root : V) : Occurrence root ⥤q V where
  obj node := node.endpoint
  map edge := edge.1

@[simp]
theorem projection_step (node : Occurrence root) {target : V}
    (edge : node.endpoint ⟶ target) : (projection root).map (step node edge) = edge := rfl

theorem extension_length {source target : Occurrence root} (edge : source ⟶ target) :
    target.path.length = source.path.length + 1 := by
  exact (congrArg (fun node : Occurrence root => node.path.length) edge.2).symm

theorem extension_height_lt {source target : Occurrence root} (edge : source ⟶ target) :
    source.path.length < target.path.length := by
  rw [extension_length edge]
  exact Nat.lt_succ_self _

/-- Equality of extended histories determines both the parent occurrence and the actual edge. -/
theorem unique_incoming {first second target : Occurrence root}
    (left : first ⟶ target) (right : second ⟶ target) :
    first = second ∧ HEq left right := by
  rcases first with ⟨⟨a, first⟩⟩
  rcases second with ⟨⟨b, second⟩⟩
  rcases target with ⟨⟨c, target⟩⟩
  rcases left with ⟨left, hleft⟩
  rcases right with ⟨right, hright⟩
  have hl : first.cons left = target :=
    eq_of_heq (Sigma.mk.inj (congrArg Occurrence.history hleft)).2
  have hr : second.cons right = target :=
    eq_of_heq (Sigma.mk.inj (congrArg Occurrence.history hright)).2
  cases hl.trans hr.symm
  constructor <;> rfl

theorem root_or_incoming (node : Occurrence root) :
    node = origin root ∨ ∃ parent, Nonempty (parent ⟶ node) := by
  rcases node with ⟨⟨target, history⟩⟩
  cases history with
  | nil => exact Or.inl rfl
  | cons history edge => exact Or.inr ⟨ofPath history, ⟨step (ofPath history) edge⟩⟩

/-- The exact extension quiver is an arborescence, using the upstream height/parent criterion. -/
@[instance_reducible]
noncomputable def unfoldingArborescence (root : V) : Arborescence (Occurrence root) :=
  arborescenceMk (origin root) (fun node => node.path.length)
    (by intro source target edge; exact extension_height_lt edge)
    (by intro first second target left right; exact unique_incoming left right) root_or_incoming

/-- The existing arborescence construction supplies a unique actual path to every occurrence. -/
@[instance_reducible]
noncomputable def uniqueRootPath (node : Occurrence root) : Unique (Path (origin root) node) :=
  (unfoldingArborescence root).uniquePath node

/-- A base rooted path has an actual canonical lift to its own occurrence. -/
noncomputable def liftHistory : {target : V} → (history : Path root target) →
    Path (origin root) (ofPath history)
  | _, Path.nil => Path.nil
  | _, Path.cons history edge => (liftHistory history).cons (step (ofPath history) edge)

theorem projection_liftHistory {target : V} (history : Path root target) :
    (projection root).mapPath (liftHistory history) = history := by
  induction history with
  | nil => rfl
  | cons history edge ih =>
    change ((projection root).mapPath (liftHistory history)).cons edge = history.cons edge
    rw [ih]
    rfl

/-- Every lifted path ends at the occurrence obtained by appending its actual projected history. -/
theorem ofPath_comp_projection {source target : Occurrence root} (lifted : Path source target) :
    ofPath (source.path.comp ((projection root).mapPath lifted)) = target := by
  induction lifted with
  | nil => exact ofPath_path source
  | cons lifted edge ih =>
    have hhistory := congrArg Occurrence.history ih
    have hpath := eq_of_heq (Sigma.mk.inj hhistory).2
    change ofPath ((source.path.comp ((projection root).mapPath lifted)).cons edge.1) = _
    rw [hpath]
    exact edge.2

/-- Each outgoing base arrow lifts once from a chosen occurrence, with its exact identity. -/
noncomputable def outgoingStarEquiv (node : Occurrence root) : Star node ≃ Star node.endpoint where
  toFun := (projection root).star node
  invFun outgoing := ⟨extend node outgoing.2, step node outgoing.2⟩
  left_inv := by
    rintro ⟨target, edge, htarget⟩
    change (⟨extend node edge, step node edge⟩ : Star node) = ⟨target, ⟨edge, htarget⟩⟩
    refine Sigma.ext htarget ?_
    apply (Subtype.heq_iff_coe_eq (fun base => by
      change extend node base = extend node edge ↔ extend node base = target
      exact ⟨fun h => h.trans htarget, fun h => h.trans htarget.symm⟩)).mpr
    rfl
  right_inv outgoing := by cases outgoing; rfl

theorem outgoing_star_bijective (node : Occurrence root) :
    Function.Bijective ((projection root).star node) := (outgoingStarEquiv node).bijective

/-- Finite lifting uses only outgoing-star bijectivity; no incoming-star premise is hidden. -/
theorem path_star_bijective (node : Occurrence root) :
    Function.Bijective ((projection root).pathStar node) :=
  (projection root).pathStar_bijective outgoing_star_bijective node

theorem unique_finite_lift (node : Occurrence root) (history : PathStar node.endpoint) :
    ∃! lifted : PathStar node, (projection root).pathStar node lifted = history :=
  (path_star_bijective node).existsUnique history

/-- Exactly root-reachable base vertices occur; no global connectivity is inferred. -/
theorem endpoint_range_iff (target : V) :
    (∃ node : Occurrence root, node.endpoint = target) ↔ Nonempty (Path root target) := by
  constructor
  · rintro ⟨node, htarget⟩
    exact ⟨htarget ▸ node.path⟩
  · rintro ⟨history⟩
    exact ⟨ofPath history, rfl⟩

theorem endpoint_surjective_iff :
    Function.Surjective (endpoint (root := root)) ↔ ∀ target : V, Nonempty (Path root target) := by
  constructor
  · intro h target
    exact (endpoint_range_iff target).mp (h target)
  · intro h target
    exact (endpoint_range_iff target).mpr (h target)

/-- No arrow can enter the empty occurrence, since every extension strictly increases length. -/
theorem no_arrow_into_origin {source : Occurrence root} (edge : source ⟶ origin root) : False := by
  have hlength := extension_length edge
  exact Nat.noConfusion hlength

theorem empty_origin_costar : IsEmpty (Costar (origin root)) :=
  ⟨fun incoming => no_arrow_into_origin incoming.2⟩

theorem origin_costar_not_surjective (incoming : Costar root) :
    ¬ Function.Surjective ((projection root).costar (origin root)) := by
  intro hsurjective
  obtain ⟨candidate, _⟩ := hsurjective incoming
  exact no_arrow_into_origin candidate.2

/-- An incoming edge at the base root prevents full covering, despite unique outgoing lifting. -/
theorem not_covering_of_incoming (incoming : Costar root) : ¬ (projection root).IsCovering :=
  fun covering => origin_costar_not_surjective incoming (covering.costar_bijective (origin root)).2

end GRWTSK.Combinatorics.DirectedGraph.PathUnfolding
```
