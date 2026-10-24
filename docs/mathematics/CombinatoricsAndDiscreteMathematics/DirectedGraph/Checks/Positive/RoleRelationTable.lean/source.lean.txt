/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib and Lean imports retain their individual authorship and Apache-2.0 licenses. -/
import GRWTSK.Combinatorics.DirectedGraph.RoleRelationTable

set_option autoImplicit false

open Quiver
open GRWTSK.Combinatorics.DirectedGraph
open RoleRelationTable
open GRWTSK.Logic.FiniteSequences

namespace GRWTSK.Combinatorics.DirectedGraph.RoleRelationTable.Checks.Positive

/-- IDs 0,1 : A→B role R; ID2 : B→A role R; ID3 : B→A role S. -/
def fixture : Table Bool Bool 4 where
  source index := if index.1 < 2 then false else true
  target index := if index.1 < 2 then true else false
  kind index := index.1 == 3

def vertexA : Vertex fixture false := ⟨false⟩
def vertexB : Vertex fixture false := ⟨true⟩

def id0 : RoleId fixture false := ⟨0, by decide⟩
def id1 : RoleId fixture false := ⟨1, by decide⟩
def id2 : RoleId fixture false := ⟨2, by decide⟩
def index3 : Fin 4 := 3

def arrow0 : vertexA ⟶ vertexB := ⟨0, by decide, by decide, by decide⟩
def arrow1 : vertexA ⟶ vertexB := ⟨1, by decide, by decide, by decide⟩
def arrow2 : vertexB ⟶ vertexA := ⟨2, by decide, by decide, by decide⟩

def single0 : PathStar vertexA := ⟨vertexB, arrow0.toPath⟩
def single1 : PathStar vertexA := ⟨vertexB, arrow1.toPath⟩

def revisited : PathStar vertexA :=
  ⟨vertexB, (arrow0.toPath.comp arrow2.toPath).comp arrow1.toPath⟩

def repeated : PathStar vertexA :=
  ⟨vertexB, (arrow0.toPath.comp arrow2.toPath).comp arrow0.toPath⟩

theorem encode_single0 : encode fixture false vertexA single0 = [id0] := rfl
theorem encode_single1 : encode fixture false vertexA single1 = [id1] := rfl

theorem encode_revisited : encode fixture false vertexA revisited = [id0, id2, id1] := by
  change encodePath fixture false ((arrow0.toPath.comp arrow2.toPath).comp arrow1.toPath) = _
  rw [encodePath_comp, encodePath_comp]
  rfl

theorem encode_repeated : encode fixture false vertexA repeated = [id0, id2, id0] := by
  change encodePath fixture false ((arrow0.toPath.comp arrow2.toPath).comp arrow0.toPath) = _
  rw [encodePath_comp, encodePath_comp]
  rfl

theorem actual_parallel_paths :
    single0.1 = single1.1 ∧ single0.2.length = single1.2.length ∧ single0 ≠ single1 := by
  refine ⟨rfl, rfl, ?_⟩
  intro hequal
  have hids := congrArg (encode fixture false vertexA) hequal
  rw [encode_single0, encode_single1] at hids
  have hindex := congrArg (fun index : RoleId fixture false => index.1.1)
    (List.singleton_inj.mp hids)
  change 0 = 1 at hindex
  omega

theorem revisited_valid : ValidFrom fixture false vertexA [id0, id2, id1] := by
  have hvalid := valid_encode fixture false vertexA revisited
  rwa [encode_revisited] at hvalid

theorem revisited_actual_decode :
    decode fixture false vertexA [id0, id2, id1] revisited_valid = revisited := by
  apply encode_injective fixture false vertexA
  rw [encode_decode, encode_revisited]

example : (decode fixture false vertexA [id0, id2, id1] revisited_valid).1.value = true := by
  rw [revisited_actual_decode]
  rfl

example : (encode fixture false vertexA repeated).count id0 = 2 := by
  rw [encode_repeated]
  decide

/-- Replacing parallel ID1 with another occurrence of ID0 changes the actual path. -/
theorem repeated_history_distinct : repeated ≠ revisited := by
  intro hequal
  have hids := congrArg (encode fixture false vertexA) hequal
  rw [encode_repeated, encode_revisited] at hids
  have hlast : id0 = id1 := (List.cons.inj (List.cons.inj (List.cons.inj hids).2).2).1
  have hindex := congrArg (fun index : RoleId fixture false => index.1.1) hlast
  change 0 = 1 at hindex
  omega

/-- The wrong successor source really fails actual full-tag join validity. -/
theorem broken_join_rejected : ¬ ValidFrom fixture false vertexA [id0, id1] := by
  intro hvalid
  have hbool : false = true := congrArg Vertex.value hvalid.2.1
  cases hbool

theorem wrong_root_rejected : ¬ ValidFrom fixture false vertexB [id0] := by
  intro hvalid
  have hbool : false = true := congrArg Vertex.value hvalid.1
  cases hbool

theorem wrong_end_rejected : finish fixture false vertexA [id0] ≠ vertexA := by
  intro hequal
  have hbool : true = false := congrArg Vertex.value hequal
  cases hbool

theorem index3_role : fixture.kind index3 = true := rfl

theorem index3_not_selected : fixture.kind index3 ≠ false := by decide

theorem actual_wrong_role_lookup : lookup fixture false 3 = none :=
  lookup_wrong_role fixture false index3 index3_not_selected

example : lookup fixture false 0 = some id0 := lookup_roleId fixture false id0
example : lookup fixture false 1 = some id1 := lookup_roleId fixture false id1
example : lookup fixture false 2 = some id2 := lookup_roleId fixture false id2
example : lookup fixture false 4 = none := lookup_out_of_bounds fixture false 4 (by decide)

example : ([0, 2, 0] : List Nat).mapM (lookup fixture false) = some [id0, id2, id0] := rfl
example : ([0, 3] : List Nat).mapM (lookup fixture false) = none := rfl
example : ([0, 4] : List Nat).mapM (lookup fixture false) = none := rfl

/-- The same empty ID word retains distinct outer root vertices. -/
example : (decode fixture false vertexA [] True.intro).1.value ≠
    (decode fixture false vertexB [] True.intro).1.value := Bool.false_ne_true

example : vertexEquiv fixture false vertexA = false ∧
    vertexEquiv fixture false vertexB = true := ⟨rfl, rfl⟩

noncomputable instance tagDecidableEq :
    DecidableEq (EdgeTrace.TotalEdge (Vertex fixture false)) := Classical.decEq _

noncomputable def storedRows : List (Nat × PathUnfolding.Occurrence vertexA) :=
  [(11, ⟨single0⟩), (11, ⟨revisited⟩), (11, ⟨single0⟩)]

noncomputable def stored : PrefixTableState.State (Vertex fixture false) Nat :=
  PrefixTableState.ofOneStep storedRows []

theorem stored_wellFormed : PrefixTableState.WellFormed stored :=
  PrefixTableState.ofOneStep_wellFormed storedRows []

theorem stored_actual_ids : decodeState fixture false stored =
    some [(11, [id0]), (11, [id0, id2, id1]), (11, [id0])] := by
  rw [decodeState, stored, PrefixTableState.decode_ofOneStep, List.append_nil, Option.map_some]
  change some [(11, encode fixture false vertexA single0),
    (11, encode fixture false vertexA revisited), (11, encode fixture false vertexA single0)] = _
  rw [encode_single0, encode_revisited]

theorem compact_actual_ids :
    (PrefixTableCompaction.compact stored stored_wellFormed).root = vertexA ∧
      decodeState fixture false (PrefixTableCompaction.compact stored stored_wellFormed) =
        some [(11, [id0]), (11, [id0, id2, id1]), (11, [id0])] := by
  refine ⟨rfl, ?_⟩
  rw [(compact_preserves_ids fixture false stored stored_wellFormed).2, stored_actual_ids]

example (entries : List (Nat × List (EdgeTrace.TotalEdge (Vertex fixture false))))
    (hdecoded : PrefixTableState.decode (PrefixTableCompaction.compact stored stored_wellFormed) =
      some entries) :
    PrefixInventory.recoverRows entries
      (PrefixTableState.output_valid _
        (PrefixTableCompaction.compact_wellFormed stored stored_wellFormed) entries hdecoded) =
      storedRows := by
  apply (PrefixTableCompaction.compact_recovers stored stored_wellFormed entries hdecoded).trans
  apply PrefixTableCompaction.realRows_of_decode stored stored_wellFormed storedRows
  unfold stored
  change PrefixTableState.decode (PrefixTableState.ofOneStep storedRows []) =
    some (PrefixInventory.traceRows (root := vertexA) storedRows)
  simpa only [List.append_nil] using (PrefixTableState.decode_ofOneStep storedRows [])

end GRWTSK.Combinatorics.DirectedGraph.RoleRelationTable.Checks.Positive
