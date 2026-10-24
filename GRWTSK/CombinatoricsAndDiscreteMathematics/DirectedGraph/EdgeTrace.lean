/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib Covering: Antoine Labelle, Rémi Bottinelli; SingleObj: Antoine Labelle;
Path: David Waern, Kim Morrison, Matteo Cipollina, Runtian Zhou.
Mathlib and Lean imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PathOccurrences
import Mathlib.Combinatorics.Quiver.Covering

/-!
# Valid chronological traces of typed quiver edges

For a fixed root, existing `Quiver.PathStar` paths are equivalent to lists of
fully tagged edges whose initial source and successive joins are valid. Each
tag retains the actual source, target, and arrow; parallel edges remain distinct.
The construction uses the existing single-object path/list equivalence and
upstream `Prefunctor.pathStar_injective`, rather than a new path structure.

The decoder requires a proof of validity. No uniqueness of arrows, finiteness,
acyclicity, or decidable vertex equality is assumed. An empty trace retains its
root through the equivalence's parameter. Arbitrary lists need not lift, and the
tagging prefunctor is not asserted to be a covering. These are mathematical
statements about actual typed paths, not a JSON or runtime representation theorem.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace

open Quiver

variable {V : Type*} [Quiver V] {a b c : V}

/-- A complete typed edge, including both endpoints and actual arrow identity. -/
abbrev TotalEdge (V : Type*) [Quiver V] := Σ source : V, Σ target : V, (source ⟶ target)

/-- Forget vertices only after including them in every edge's tag. -/
def taggedPrefunctor : V ⥤q SingleObj (TotalEdge V) where
  obj _ := SingleObj.star _
  map {source target} edge := ⟨source, target, edge⟩

/-- Chronological fully tagged edge occurrences of an actual typed path. -/
def encodePath (path : Path a b) : List (TotalEdge V) :=
  PathOccurrences.edgeOccurrences (taggedPrefunctor.mapPath path)

/-- Chronological fully tagged occurrences on the existing fixed-root path star. -/
def encode (root : V) (path : PathStar root) : List (TotalEdge V) := encodePath path.2

@[simp]
theorem encodePath_nil (root : V) : encodePath (Path.nil : Path root root) = [] := rfl

@[simp]
theorem encodePath_toPath (edge : a ⟶ b) :
    encodePath edge.toPath = [⟨a, b, edge⟩] := rfl

/-- Composition preserves chronological order and every tagged edge occurrence. -/
theorem encodePath_comp (left : Path a b) (right : Path b c) :
    encodePath (left.comp right) = encodePath left ++ encodePath right := by
  unfold encodePath
  rw [Prefunctor.mapPath_comp, PathOccurrences.edgeOccurrences_comp]

theorem encodePath_cons (path : Path a b) (edge : b ⟶ c) :
    encodePath (path.cons edge) = encodePath path ++ [⟨b, c, edge⟩] :=
  encodePath_comp path edge.toPath

/-- The initial source must equal the root and every next source must match the preceding target. -/
noncomputable def ValidFrom : V → List (TotalEdge V) → Prop
  | _, [] => True
  | root, edge :: rest => edge.1 = root ∧ ValidFrom edge.2.1 rest

/-- Final vertex obtained by following the targets, starting at the given root. -/
noncomputable def finish : V → List (TotalEdge V) → V
  | root, [] => root
  | _, edge :: rest => finish edge.2.1 rest

theorem finish_append (root : V) (first second : List (TotalEdge V)) :
    finish root (first ++ second) = finish (finish root first) second := by
  induction first generalizing root with
  | nil => rfl
  | cons edge rest ih => exact ih edge.2.1

theorem validFrom_append_iff (root : V) (first second : List (TotalEdge V)) :
    ValidFrom root (first ++ second) ↔
      ValidFrom root first ∧ ValidFrom (finish root first) second := by
  induction first generalizing root with
  | nil => simp [ValidFrom, finish]
  | cons edge rest ih =>
    simp only [List.cons_append, ValidFrom, finish, ih]
    exact and_assoc.symm

theorem finish_encodePath (path : Path a b) : finish a (encodePath path) = b := by
  induction path with
  | nil => rfl
  | cons path edge ih =>
    rw [encodePath_cons, finish_append, ih]
    rfl

theorem validFrom_encodePath (path : Path a b) : ValidFrom a (encodePath path) := by
  induction path with
  | nil => trivial
  | cons path edge ih =>
    rw [encodePath_cons, validFrom_append_iff, finish_encodePath]
    exact ⟨ih, rfl, trivial⟩

/-- Tags distinguish outgoing arrows even when their targets vary. -/
theorem tagged_star_injective (root : V) :
    Function.Injective (taggedPrefunctor.star root) := by
  intro left right hequal
  have htag : (⟨root, left⟩ : TotalEdge V) = ⟨root, right⟩ :=
    congrArg (fun edge : Star (SingleObj.star (TotalEdge V)) =>
      (show TotalEdge V from edge.2)) hequal
  exact eq_of_heq (Sigma.mk.inj htag).2

/-- Full traces distinguish existing paths with the same fixed root, using upstream path lifting. -/
theorem encode_injective (root : V) : Function.Injective (encode root) := by
  intro left right hequal
  apply taggedPrefunctor.pathStar_injective tagged_star_injective root
  have hmapped := PathOccurrences.edgeOccurrences_injective hequal
  exact congrArg (fun path : Path (SingleObj.star (TotalEdge V))
    (SingleObj.star (TotalEdge V)) =>
      (⟨SingleObj.star (TotalEdge V), path⟩ : PathStar (SingleObj.star (TotalEdge V)))) hmapped

/-- Lift a valid list to an actual existing typed path, with its endpoint. -/
noncomputable def decode :
    (root : V) → (trace : List (TotalEdge V)) → ValidFrom root trace → PathStar root
  | root, [], _ => ⟨root, Path.nil⟩
  | _, ⟨source, target, edge⟩ :: rest, hvalid =>
    hvalid.1 ▸ (let suffix := decode target rest hvalid.2
      (⟨suffix.1, edge.toPath.comp suffix.2⟩ : PathStar source))

/-- Actual construction followed by projection retains every tag and occurrence. -/
theorem encode_decode (root : V) (trace : List (TotalEdge V)) (hvalid : ValidFrom root trace) :
    encode root (decode root trace hvalid) = trace := by
  induction trace generalizing root with
  | nil => rfl
  | cons edge rest ih =>
    rcases edge with ⟨source, target, edge⟩
    rcases hvalid with ⟨rfl, hrest⟩
    change encodePath (edge.toPath.comp (decode target rest hrest).2) = _
    rw [encodePath_comp, encodePath_toPath]
    change [⟨source, target, edge⟩] ++ encode target (decode target rest hrest) = _
    rw [ih]
    rfl

/-- Projection followed by the proof-indexed constructor returns the original actual path. -/
theorem decode_encode (root : V) (path : PathStar root) :
    decode root (encode root path) (validFrom_encodePath path.2) = path := by
  apply encode_injective root
  exact encode_decode root (encode root path) (validFrom_encodePath path.2)

/-- The decoder's actual typed endpoint is exactly the trace's final vertex. -/
theorem decode_endpoint (root : V) (trace : List (TotalEdge V))
    (hvalid : ValidFrom root trace) : (decode root trace hvalid).1 = finish root trace := by
  have hfinish := finish_encodePath (decode root trace hvalid).2
  change finish root (encode root (decode root trace hvalid)) = _ at hfinish
  rw [encode_decode] at hfinish
  exact hfinish.symm

/-- Exact fixed-root equivalence with the valid chronological fully tagged edge lists. -/
noncomputable def pathStarEquivTrace (root : V) :
    PathStar root ≃ {trace : List (TotalEdge V) // ValidFrom root trace} where
  toFun path := ⟨encode root path, validFrom_encodePath path.2⟩
  invFun trace := decode root trace.1 trace.2
  left_inv := decode_encode root
  right_inv trace := Subtype.ext (encode_decode root trace.1 trace.2)

/-- A wrongly rooted nonempty trace cannot be lifted by the valid-trace equivalence. -/
theorem wrong_root_not_valid (root : V) (edge : TotalEdge V) (rest : List (TotalEdge V))
    (hroot : edge.1 ≠ root) : ¬ ValidFrom root (edge :: rest) := fun h => hroot h.1

/-- An incompatible successive source rejects the actual trace, regardless of the remaining edges. -/
theorem broken_join_not_valid (root : V) (first second : TotalEdge V)
    (rest : List (TotalEdge V)) (hjoin : first.2.1 ≠ second.1) :
    ¬ ValidFrom root (first :: second :: rest) := fun h => hjoin h.2.1.symm

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace
