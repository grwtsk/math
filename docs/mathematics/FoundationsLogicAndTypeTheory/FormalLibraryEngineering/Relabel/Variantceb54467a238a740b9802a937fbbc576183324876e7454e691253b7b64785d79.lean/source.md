# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Relabel.Variantceb54467a238a740b9802a937fbbc576183324876e7454e691253b7b64785d79

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f8e06f9c475c5651a7dfeeb9ab0c23574abf35b` · SHA-256 `7b0bca493f6d53d8c415fff0b7acb1c76d6080699867d7f940a39181db92d6d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Relabel.Variant3052b3bfccc567ead53ad2f664b38f98f5db22543c9d5583fdb6b34693614588","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3052b3bfccc567ead53ad2f664b38f98f5db22543c9d5583fdb6b34693614588","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Relabel.Variant3052b3bfccc567ead53ad2f664b38f98f5db22543c9d5583fdb6b34693614588","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"3052b3bfccc567ead53ad2f664b38f98f5db22543c9d5583fdb6b34693614588","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Sat/CNF/Relabel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Std.Sat.CNF.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Relabel.Variant3052b3bfccc567ead53ad2f664b38f98f5db22543c9d5583fdb6b34693614588

@[expose] public section

namespace Std
namespace Sat

namespace CNF

namespace Clause

/--
Change the literal type in a `Clause` from `α` to `β` by using `r`.
-/
def relabel (r : α → β) (c : Clause α) : Clause β := c.map (fun (i, n) => (r i, n))

@[simp]
theorem relabel_nil (r : α → β) : Clause.relabel r [] = [] := by simp [relabel]

@[simp] theorem eval_relabel {r : α → β} {a : β → Bool} {c : Clause α} :
    (relabel r c).eval a = c.eval (a ∘ r) := by
  induction c <;> simp_all [relabel]

@[simp] theorem relabel_id' : relabel (id : α → α) = id := by funext; simp [relabel]

theorem relabel_congr {c : Clause α} {r1 r2 : α → β} (hw : ∀ v, Mem v c → r1 v = r2 v) :
    relabel r1 c = relabel r2 c := by
  simp only [relabel]
  rw [List.map_congr_left]
  intro ⟨v, p⟩ h
  congr
  apply hw _ (mem_of h)

-- We need the unapplied equality later.
@[simp] theorem relabel_relabel' : relabel r1 ∘ relabel r2 = relabel (r1 ∘ r2) := by
  funext i
  simp only [Function.comp_apply, relabel, List.map_map]
  rfl

end Clause

/-! ### Relabelling

It is convenient to be able to construct a CNF using a more complicated literal type,
but eventually we need to embed in `Nat`.
-/

/--
Change the literal type in a `CNF` formula from `α` to `β` by using `r`.
-/
def relabel (r : α → β) (f : CNF α) : CNF β := ⟨f.clauses.map (Clause.relabel r)⟩

@[simp] theorem relabel_empty {r : α → β} : relabel r .empty = .empty := by
  simp [relabel, empty]

@[simp] theorem relabel_add {r : α → β} :
    relabel r (f.add c) = (relabel r f).add (c.relabel r) := by
  simp [relabel, add]

@[simp] theorem eval_relabel (r : α → β) (a : β → Bool) (f : CNF α) :
    (relabel r f).eval a = f.eval (a ∘ r) := by
  unfold relabel eval
  simp

@[simp] theorem relabel_append : relabel r (f1 ++ f2) = relabel r f1 ++ relabel r f2 := by
  unfold relabel
  simp [Internal.clauses_append, Internal.ext_iff]

@[simp] theorem relabel_relabel : relabel r1 (relabel r2 f) = relabel (r1 ∘ r2) f := by
  simp only [relabel, Array.map_map, Clause.relabel_relabel']

@[simp] theorem relabel_id : relabel id x = x := by simp [relabel]

theorem relabel_congr {f : CNF α} {r1 r2 : α → β} (hw : ∀ v, VarMem v f → r1 v = r2 v) :
    relabel r1 f = relabel r2 f := by
  dsimp only [relabel]
  rw [Array.map_congr_left]
  intro c h
  apply Clause.relabel_congr
  intro v m
  exact hw _ (VarMem_of h m)

theorem sat_relabel {f : CNF α} (h : Sat (r1 ∘ r2) f) : Sat r1 (relabel r2 f) := by
  simp_all [sat_def]

theorem unsat_relabel {f : CNF α} (r : α → β) (h : Unsat f) :
    Unsat (relabel r f) := by
  simp_all [unsat_def]

private theorem nonempty_or_impossible (f : CNF α) :
    Nonempty α ∨ ∃ n, f = ⟨Array.replicate n []⟩ := by
  apply Classical.byContradiction
  intro h
  simp only [Internal.ext_iff, not_or, not_exists] at h
  rcases h with ⟨h1, h2⟩
  specialize h2 f.clauses.size
  simp only [Array.eq_replicate_iff, true_and, Classical.not_forall] at h2
  rcases h2 with ⟨x, ⟨_, hx⟩⟩
  apply h1
  apply Nonempty.intro
  exact (x.head hx).fst

theorem unsat_relabel_iff {f : CNF α} {r : α → β}
    (hw : ∀ {v1 v2}, VarMem v1 f → VarMem v2 f → r v1 = r v2 → v1 = v2) :
    Unsat (relabel r f) ↔ Unsat f := by
  rcases nonempty_or_impossible f with (⟨⟨a₀⟩⟩ | ⟨n, rfl⟩)
  · refine ⟨fun h => ?_, unsat_relabel r⟩
    have em := Classical.propDecidable
    let g : β → α := fun b =>
      if h : ∃ a, VarMem a f ∧ r a = b then h.choose else a₀
    have h' := unsat_relabel g h
    suffices w : relabel g (relabel r f) = f by
      rwa [w] at h'
    have : ∀ a, VarMem a f → g (r a) = a := by
      intro v h
      dsimp [g]
      rw [dif_pos ⟨v, h, rfl⟩]
      apply hw _ h
      · exact (Exists.choose_spec (⟨v, h, rfl⟩ : ∃ a', VarMem a' f ∧ r a' = r v)).2
      · exact (Exists.choose_spec (⟨v, h, rfl⟩ : ∃ a', VarMem a' f ∧ r a' = r v)).1
    rw [relabel_relabel, relabel_congr, relabel_id]
    exact this
  · cases n
    · rw [Array.replicate_zero, ← CNF.empty]
      simp
    · rw [Array.replicate_succ, ← CNF.add]
      simp

end CNF

end Sat
end Std
```
