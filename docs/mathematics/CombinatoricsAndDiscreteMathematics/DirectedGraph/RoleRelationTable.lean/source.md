# Complete source: GRWTSK.Combinatorics.DirectedGraph.RoleRelationTable

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a008799c845b3c2f5683eba2740b2e1819f25bd4` · SHA-256 `058f2bc46c88dcf47f26b1fc31db28d3cc30a6e45277ed834cc5c0f7f508ce4e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib Quiver.Basic authors David Wärn and Kim Morrison retain Apache-2.0 credit.
Existing local path/trace/dictionary codecs retain their individual source credits. -/
import GRWTSK.Combinatorics.DirectedGraph.PrefixTableCompaction

/-!
# Role-qualified finite relation tables

An arrow is an actual finite relation-table index with source, target and selected
role witnesses. Full typed edges correspond exactly to role-qualified indices.
The existing rooted path/valid full-trace codec supplies an actual inverse codec
for chronological qualified-ID words. A vertex wrapper binds this particular
table and role to its quiver instance; it introduces no new path datatype.

Natural-index lookup checks bounds and role. No external string-ID uniqueness,
JSON parser correspondence, hash injectivity, revision stability or operational
taxonomy acceptance follows. In particular the existing duplicate-edge policy is
unchanged; the parallel-ID example is a mathematical quiver fixture.
-/

set_option autoImplicit false

namespace GRWTSK.Combinatorics.DirectedGraph.RoleRelationTable

open Quiver

variable {V Role Key : Type*} {n : Nat}

/-- One fixed finite table occurrence supplies actual endpoints and role for every index. -/
structure Table (V Role : Type*) (n : Nat) where
  source : Fin n → V
  target : Fin n → V
  kind : Fin n → Role

/-- Bind a particular table and selected role into the quiver's vertex type. -/
structure Vertex (table : Table V Role n) (role : Role) where
  value : V

/-- Qualified identities retain actual table indices, including parallel relations. -/
abbrev RoleId (table : Table V Role n) (role : Role) := {index : Fin n // table.kind index = role}

instance tableQuiver (table : Table V Role n) (role : Role) : Quiver (Vertex table role) :=
  ⟨fun source target => {index : Fin n // table.source index = source.value ∧
    table.target index = target.value ∧ table.kind index = role}⟩

variable (table : Table V Role n) (role : Role)

/-- The wrapper retains exactly the original vertex, with no quotient or loss. -/
def vertexEquiv : Vertex table role ≃ V where
  toFun := Vertex.value
  invFun := Vertex.mk
  left_inv vertex := by cases vertex; rfl
  right_inv _ := rfl

/-- Project the actual arrow's identity and its actual selected-role witness. -/
def edgeId (edge : EdgeTrace.TotalEdge (Vertex table role)) : RoleId table role :=
  ⟨edge.2.2.1, edge.2.2.2.2.2⟩

/-- Reconstitute the actual full edge, using its table-bound endpoints and role witness. -/
def fullEdge (index : RoleId table role) : EdgeTrace.TotalEdge (Vertex table role) :=
  ⟨⟨table.source index.1⟩, ⟨table.target index.1⟩, ⟨index.1, rfl, rfl, index.2⟩⟩

theorem fullEdge_source (index : RoleId table role) :
    (fullEdge table role index).1.value = table.source index.1 := rfl

theorem fullEdge_target (index : RoleId table role) :
    (fullEdge table role index).2.1.value = table.target index.1 := rfl

theorem fullEdge_edgeId (edge : EdgeTrace.TotalEdge (Vertex table role)) :
    fullEdge table role (edgeId table role edge) = edge := by
  rcases edge with ⟨⟨source⟩, ⟨target⟩, ⟨index, hsource, htarget, hrole⟩⟩
  cases hsource
  cases htarget
  rfl

theorem edgeId_fullEdge (index : RoleId table role) :
    edgeId table role (fullEdge table role index) = index := rfl

def edgeEquiv : EdgeTrace.TotalEdge (Vertex table role) ≃ RoleId table role where
  toFun := edgeId table role
  invFun := fullEdge table role
  left_inv := fullEdge_edgeId table role
  right_inv := edgeId_fullEdge table role

/-- Actual complete tags of the chronological qualified IDs, with no endpoint inference. -/
def expandIds (indices : List (RoleId table role)) :
    List (EdgeTrace.TotalEdge (Vertex table role)) :=
  indices.map (fullEdge table role)

def encodePath {source target : Vertex table role} (path : Path source target) :
    List (RoleId table role) := (EdgeTrace.encodePath path).map (edgeId table role)

def encode (root : Vertex table role) (path : PathStar root) : List (RoleId table role) :=
  encodePath table role path.2

theorem expand_encodePath {source target : Vertex table role} (path : Path source target) :
    expandIds table role (encodePath table role path) = EdgeTrace.encodePath path := by
  simp only [expandIds, encodePath, List.map_map, Function.comp_def, fullEdge_edgeId,
    List.map_id_fun']
  rfl

theorem expand_encode (root : Vertex table role) (path : PathStar root) :
    expandIds table role (encode table role root path) = EdgeTrace.encode root path :=
  expand_encodePath table role path.2

theorem ids_expand (indices : List (RoleId table role)) :
    (expandIds table role indices).map (edgeId table role) = indices := by
  simp only [expandIds, List.map_map, Function.comp_def, edgeId_fullEdge, List.map_id_fun']
  rfl

theorem encodePath_comp {a b c : Vertex table role} (left : Path a b) (right : Path b c) :
    encodePath table role (left.comp right) =
      encodePath table role left ++ encodePath table role right := by
  simp only [encodePath, EdgeTrace.encodePath_comp, List.map_append]

theorem encode_nil (root : Vertex table role) :
    encode table role root ⟨root, Path.nil⟩ = [] := rfl

/-- Actual existing full-tag root and successive-join validity, specialized to qualified IDs. -/
abbrev ValidFrom (root : Vertex table role) (indices : List (RoleId table role)) : Prop :=
  EdgeTrace.ValidFrom root (expandIds table role indices)

theorem valid_encode (root : Vertex table role) (path : PathStar root) :
    ValidFrom table role root (encode table role root path) := by
  rw [ValidFrom, expand_encode]
  exact EdgeTrace.validFrom_encodePath path.2

/-- Actual existing proof-indexed path construction after actual table-index expansion. -/
noncomputable def decode (root : Vertex table role) (indices : List (RoleId table role))
    (hvalid : ValidFrom table role root indices) : PathStar root :=
  EdgeTrace.decode root (expandIds table role indices) hvalid

theorem encode_decode (root : Vertex table role) (indices : List (RoleId table role))
    (hvalid : ValidFrom table role root indices) :
    encode table role root (decode table role root indices hvalid) = indices := by
  change (EdgeTrace.encode root
    (EdgeTrace.decode root (expandIds table role indices) hvalid)).map (edgeId table role) = _
  rw [EdgeTrace.encode_decode]
  exact ids_expand table role indices

theorem decode_encode (root : Vertex table role) (path : PathStar root) :
    decode table role root (encode table role root path)
      (valid_encode table role root path) = path := by
  apply EdgeTrace.encode_injective root
  rw [decode, EdgeTrace.encode_decode]
  exact expand_encode table role root path

/-- Qualified-ID words encode every actual rooted path exactly when full-tag joins are valid. -/
noncomputable def pathStarEquivIds (root : Vertex table role) :
    PathStar root ≃ {indices : List (RoleId table role) // ValidFrom table role root indices} where
  toFun path := ⟨encode table role root path, valid_encode table role root path⟩
  invFun indices := decode table role root indices.1 indices.2
  left_inv := decode_encode table role root
  right_inv indices := Subtype.ext (encode_decode table role root indices.1 indices.2)

theorem encode_injective (root : Vertex table role) :
    Function.Injective (encode table role root) := by
  intro left right hequal
  apply (pathStarEquivIds table role root).injective
  exact Subtype.ext hequal

noncomputable def finish (root : Vertex table role) (indices : List (RoleId table role)) :
    Vertex table role :=
  EdgeTrace.finish root (expandIds table role indices)

theorem finish_nil (root : Vertex table role) : finish table role root [] = root := rfl

theorem finish_cons (root : Vertex table role) (index : RoleId table role)
    (rest : List (RoleId table role)) :
    finish table role root (index :: rest) = finish table role ⟨table.target index.1⟩ rest := rfl

theorem decode_endpoint (root : Vertex table role) (indices : List (RoleId table role))
    (hvalid : ValidFrom table role root indices) :
    (decode table role root indices hvalid).1 = finish table role root indices :=
  EdgeTrace.decode_endpoint root _ hvalid

variable [DecidableEq Role]

/-- Bounded natural-index lookup checks the actual table's selected role. -/
noncomputable def lookup (index : Nat) : Option (RoleId table role) :=
  if hbound : index < n then
    if hrole : table.kind ⟨index, hbound⟩ = role then some ⟨⟨index, hbound⟩, hrole⟩ else none
  else none

theorem lookup_roleId (index : RoleId table role) : lookup table role index.1.1 = some index := by
  simp only [lookup, dif_pos index.1.2, dif_pos index.2]

theorem lookup_out_of_bounds (index : Nat) (hbound : ¬ index < n) :
    lookup table role index = none := by
  simp only [lookup, dif_neg hbound]

theorem lookup_wrong_role (index : Fin n) (hrole : table.kind index ≠ role) :
    lookup table role index.1 = none := by
  simp only [lookup, dif_pos index.2, dif_neg hrole]

omit [DecidableEq Role] in
/-- Project full decoded histories to their actual table-bound relation IDs, retaining all rows. -/
def idRows (entries : List (Key × List (EdgeTrace.TotalEdge (Vertex table role)))) :
    List (Key × List (RoleId table role)) :=
  entries.map (fun entry => (entry.1, entry.2.map (edgeId table role)))

omit [DecidableEq Role] in
/-- Full ID rows reconstruct the actual full tags, not merely endpoints or counts. -/
theorem expand_idRows (entries : List (Key × List (EdgeTrace.TotalEdge (Vertex table role)))) :
    (idRows table role entries).map
      (fun entry => (entry.1, expandIds table role entry.2)) = entries := by
  simp only [idRows, expandIds, List.map_map, Function.comp_def]
  calc
    _ = entries.map (fun entry => entry) := by
      apply List.map_congr_left
      intro entry _
      simp only [fullEdge_edgeId, List.map_id_fun']
      rfl
    _ = entries := by simp only [List.map_id_fun']; rfl

omit [DecidableEq Role] in
/-- Existing actual stored-state decoding projected to complete qualified-ID histories. -/
noncomputable def decodeState (state : PrefixTableState.State (Vertex table role) Key) :
    Option (List (Key × List (RoleId table role))) :=
  (PrefixTableState.decode state).map (idRows table role)

variable [DecidableEq (EdgeTrace.TotalEdge (Vertex table role))]

omit [DecidableEq Role] in
/-- Actual compaction preserves the outer root and every decoded ordered qualified-ID row. -/
theorem compact_preserves_ids (state : PrefixTableState.State (Vertex table role) Key)
    (hstate : PrefixTableState.WellFormed state) :
    (PrefixTableCompaction.compact state hstate).root = state.root ∧
      decodeState table role (PrefixTableCompaction.compact state hstate) =
        decodeState table role state := by
  refine ⟨rfl, ?_⟩
  rw [decodeState, decodeState, PrefixTableCompaction.decode_compact]

end GRWTSK.Combinatorics.DirectedGraph.RoleRelationTable
```
