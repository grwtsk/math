# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.RoleRelationReindex

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1774dd68fa8f9fa87f73c8cafd51a438fda9e01` · SHA-256 `f7aa9cd233a39bd61bf25fc52361bf6a689946eccb6a5198af37716f4ed08b13`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib and Lean imports retain their individual authorship and Apache-2.0 licenses. -/
import GRWTSK.Combinatorics.DirectedGraph.RoleRelationReindex

set_option autoImplicit false

open Quiver
open GRWTSK.Combinatorics.DirectedGraph
open RoleRelationTable RoleRelationReindex
open GRWTSK.Logic.FiniteSequences IndexedDictionary DecisionCertificate

namespace GRWTSK.Combinatorics.DirectedGraph.RoleRelationReindex.Checks.Positive

def original : Table Bool Bool 4 where
  source index := if index.1 < 2 then false else true
  target index := if index.1 < 2 then true else false
  kind index := index.1 == 3

def swapIndex : Fin 4 ≃ Fin 4 := Equiv.swap 0 2

def updated : Table Bool Bool 4 where
  source index := original.source (swapIndex index)
  target index := original.target (swapIndex index)
  kind index := original.kind (swapIndex index)

def translation : Reindex original updated where
  index := swapIndex
  source index := congrArg original.source (Equiv.swap_apply_self 0 2 index)
  target index := congrArg original.target (Equiv.swap_apply_self 0 2 index)
  kind index := congrArg original.kind (Equiv.swap_apply_self 0 2 index)

theorem translation_bijective : Function.Bijective translation.index := swapIndex.bijective

def vertexA : Vertex original false := ⟨false⟩
def vertexB : Vertex original false := ⟨true⟩
def id0 : RoleId original false := ⟨0, by decide⟩
def id1 : RoleId original false := ⟨1, by decide⟩
def id2 : RoleId original false := ⟨2, by decide⟩
def new0 : RoleId updated false := ⟨0, by decide⟩
def new1 : RoleId updated false := ⟨1, by decide⟩
def new2 : RoleId updated false := ⟨2, by decide⟩

def arrow0 : vertexA ⟶ vertexB := ⟨0, by decide, by decide, by decide⟩
def arrow1 : vertexA ⟶ vertexB := ⟨1, by decide, by decide, by decide⟩
def arrow2 : vertexB ⟶ vertexA := ⟨2, by decide, by decide, by decide⟩
def single0 : PathStar vertexA := ⟨vertexB, arrow0.toPath⟩
def single1 : PathStar vertexA := ⟨vertexB, arrow1.toPath⟩
def revisited : PathStar vertexA :=
  ⟨vertexB, (arrow0.toPath.comp arrow2.toPath).comp arrow1.toPath⟩

theorem encode_single0 : encode original false vertexA single0 = [id0] := rfl
theorem encode_single1 : encode original false vertexA single1 = [id1] := rfl

theorem encode_revisited : encode original false vertexA revisited = [id0, id2, id1] := by
  change encodePath original false ((arrow0.toPath.comp arrow2.toPath).comp arrow1.toPath) = _
  rw [encodePath_comp, encodePath_comp]
  rfl

theorem old_word_valid : ValidFrom original false vertexA [id0, id2, id1] := by
  have hvalid := valid_encode original false vertexA revisited
  rwa [encode_revisited] at hvalid

theorem translated_word : [id0, id2, id1].map (qualified translation false) = [new2, new0, new1] :=
  rfl

theorem actual_mapped_history :
    encode updated false (mapVertex translation false vertexA)
      (mapStar translation false vertexA revisited) = [new2, new0, new1] := by
  rw [encode_naturality, encode_revisited]
  exact translated_word

theorem translated_valid :
    ValidFrom updated false (mapVertex translation false vertexA) [new2, new0, new1] := by
  have hvalid := valid_map translation false vertexA [id0, id2, id1] old_word_valid
  rwa [translated_word] at hvalid

theorem translated_actual_decode :
    decode updated false (mapVertex translation false vertexA) [new2, new0, new1] translated_valid =
      mapStar translation false vertexA revisited := by
  apply encode_injective updated false (mapVertex translation false vertexA)
  rw [encode_decode, actual_mapped_history]

example : (decode updated false (mapVertex translation false vertexA)
    [new2, new0, new1] translated_valid).1.value = true := by
  rw [translated_actual_decode]
  rfl

example : mapStar (inverse translation translation_bijective) false
    (mapVertex translation false vertexA) (mapStar translation false vertexA revisited) =
      revisited := inverse_mapStar translation false translation_bijective vertexA revisited

example : Function.Injective (mapStar translation false vertexA) :=
  mapStar_injective translation false translation_bijective.1 vertexA

/-- Equal bounds and roles do not make stale numeric ID words select the same sources. -/
theorem stale_word_rejected :
    ¬ ValidFrom updated false (mapVertex translation false vertexA) [new0, new2, new1] := by
  intro hvalid
  have hbool : true = false := congrArg Vertex.value hvalid.1
  cases hbool

def collapseIndex (index : Fin 4) : Fin 4 := if index = 1 then 0 else index

/-- Parallel relations have equal endpoints and roles, so this lossy map preserves all three. -/
def collapse : Reindex original original where
  index := collapseIndex
  source index := by
    by_cases hequal : index = 1
    · subst index
      decide
    · simp [collapseIndex, hequal]
  target index := by
    by_cases hequal : index = 1
    · subst index
      decide
    · simp [collapseIndex, hequal]
  kind index := by
    by_cases hequal : index = 1
    · subst index
      decide
    · simp [collapseIndex, hequal]

theorem collapse_not_injective : ¬ Function.Injective collapse.index := by
  intro hinjective
  have hbad : (0 : Fin 4) = 1 := hinjective (show collapse.index 0 = collapse.index 1 from rfl)
  exact (by decide : (0 : Fin 4) ≠ 1) hbad

theorem qualified_collapse_not_injective : ¬ Function.Injective (qualified collapse false) := by
  intro hinjective
  have hbad : id0 = id1 := hinjective (show qualified collapse false id0 =
    qualified collapse false id1 from rfl)
  have hindex := congrArg (fun index : RoleId original false => index.1.1) hbad
  change 0 = 1 at hindex
  omega

theorem old_parallel_paths_distinct : single0 ≠ single1 := by
  intro hequal
  have hword := congrArg (encode original false vertexA) hequal
  rw [encode_single0, encode_single1] at hword
  have hindex := congrArg (fun index : RoleId original false => index.1.1)
    (List.singleton_inj.mp hword)
  change 0 = 1 at hindex
  omega

theorem actual_parallel_history_loss :
    single0 ≠ single1 ∧
      mapStar collapse false vertexA single0 = mapStar collapse false vertexA single1 := by
  refine ⟨old_parallel_paths_distinct, ?_⟩
  apply encode_injective original false (mapVertex collapse false vertexA)
  rw [encode_naturality, encode_naturality, encode_single0, encode_single1]
  rfl

def roleChangedIndex (index : Fin 4) : Fin 4 := if index = 2 then 3 else index

theorem role_change_preserves_endpoints :
    (∀ index, original.source (roleChangedIndex index) = original.source index) ∧
      (∀ index, original.target (roleChangedIndex index) = original.target index) := by
  constructor
  · intro index
    by_cases hequal : index = 2
    · subst index
      decide
    · simp [roleChangedIndex, hequal]
  · intro index
    by_cases hequal : index = 2
    · subst index
      decide
    · simp [roleChangedIndex, hequal]

theorem role_change_fails :
    ¬ (∀ index, original.kind (roleChangedIndex index) = original.kind index) := by
  intro hagree
  have hbad : true = false := hagree 2
  cases hbad

noncomputable def rows : List (Nat × PathStar vertexA) :=
  [(11, revisited), (11, single0), (11, revisited)]

theorem actual_new_rows : mappedPathRows translation false vertexA rows =
    [(11, [new2, new0, new1]), (11, [new2]), (11, [new2, new0, new1])] := by
  change [(11, encode updated false (mapVertex translation false vertexA)
      (mapStar translation false vertexA revisited)),
    (11, encode updated false (mapVertex translation false vertexA)
      (mapStar translation false vertexA single0)),
    (11, encode updated false (mapVertex translation false vertexA)
      (mapStar translation false vertexA revisited))] = _
  rw [actual_mapped_history, encode_naturality, encode_single0]
  rfl

example : unpack (mappedPacked translation false vertexA rows) =
    some [(11, [new2, new0, new1]), (11, [new2]), (11, [new2, new0, new1])] := by
  rw [mappedPacked, unpack_pack, actual_new_rows]

noncomputable def oldCertificate : Certificate Nat (Bool × List (RoleId original false)) where
  entries := [(11, (false, [id0, id2, id1])), (11, (false, [id0])),
    (11, (false, [id0, id2, id1]))]
  predicate entries := ∀ entry ∈ entries, entry.2.2.head? = some id0
  evidence := by simp

theorem certificate_entries :
    oldCertificate.entries = rootedRows false vertexA.value (pathRows false vertexA rows) := by
  change oldCertificate.entries = [(11, (false, encode original false vertexA revisited)),
    (11, (false, encode original false vertexA single0)),
    (11, (false, encode original false vertexA revisited))]
  rw [encode_revisited, encode_single0]
  rfl

/-- Actual new unpacking and inverse old-rooted repacking precede old criterion reuse. -/
example : (mapVertex translation false vertexA).value = vertexA.value ∧
    ∃ restored, restorePacked translation false translation_bijective vertexA.value
        (mappedPacked translation false vertexA rows) = some restored ∧
      DecodesSatisfying restored oldCertificate.predicate :=
  certified_reindex translation false translation_bijective vertexA rows
    oldCertificate certificate_entries

/-- The new ID pack omits root context when there are no rows; retain it externally. -/
theorem empty_new_packet_root_loss :
    mappedPacked translation false vertexA ([] : List (Nat × PathStar vertexA)) =
        mappedPacked translation false vertexB ([] : List (Nat × PathStar vertexB)) ∧
      (mapVertex translation false vertexA).value ≠ (mapVertex translation false vertexB).value :=
  ⟨rfl, Bool.false_ne_true⟩

example : encode updated false (mapVertex translation false vertexA)
    (mapStar translation false vertexA ⟨vertexA, Path.nil⟩) = [] := rfl

example : (mapVertex translation false vertexA).value ≠
    (mapVertex translation false vertexB).value :=
  Bool.false_ne_true

end GRWTSK.Combinatorics.DirectedGraph.RoleRelationReindex.Checks.Positive
```
