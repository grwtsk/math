-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LawfulVecOperator.Variantc2682765392017b0e9b231bc0337a601e283ceb18f4b6082e1abf94a3cc3428f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c2682765392017b0e9b231bc0337a601e283ceb18f4b6082e1abf94a3cc3428f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.LawfulVecOperator.Variantc2682765392017b0e9b231bc0337a601e283ceb18f4b6082e1abf94a3cc3428f","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"c2682765392017b0e9b231bc0337a601e283ceb18f4b6082e1abf94a3cc3428f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Sat/AIG/LawfulVecOperator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Sat.AIG.RefVec
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LawfulVecOperator.Variantc2682765392017b0e9b231bc0337a601e283ceb18f4b6082e1abf94a3cc3428f

@[expose] public section

namespace Std
namespace Sat

namespace AIG

variable {α : Type} [Hashable α] [DecidableEq α]

class LawfulVecOperator (α : Type) [Hashable α] [DecidableEq α]
    (β : AIG α → Nat → Type) (f : {len : Nat} → (aig : AIG α) → β aig len → RefVecEntry α len) where
  le_size : ∀ (aig : AIG α) (input : β aig len), aig.decls.size ≤ (f aig input).aig.decls.size
  decl_eq : ∀ (aig : AIG α) (input : β aig len) (idx : Nat) (h1 : idx < aig.decls.size) (h2),
    (f aig input).aig.decls[idx]'h2 = aig.decls[idx]'h1

namespace LawfulVecOperator

variable {β : AIG α → Nat → Type}
variable {f : {len : Nat} → (aig : AIG α) → β aig len → RefVecEntry α len}
variable [LawfulVecOperator α β f]

theorem isPrefix_aig (aig : AIG α) (input : β aig len) :
    IsPrefix aig.decls (f aig input).aig.decls := by
  apply IsPrefix.of
  · intro idx h
    apply decl_eq
  · apply le_size

theorem lt_size (entry : Entrypoint α) (input : β entry.aig len) :
    entry.ref.gate < (f entry.aig input).aig.decls.size := by
  have h1 := entry.ref.hgate
  have h2 : entry.aig.decls.size ≤ (f entry.aig input).aig.decls.size := by
    apply le_size
  omega

theorem lt_size_of_lt_aig_size (aig : AIG α) (input : β aig len) (h : x < aig.decls.size) :
    x < (f aig input).aig.decls.size := by
  apply Nat.lt_of_lt_of_le
  · exact h
  · exact le_size aig input

theorem le_size_of_le_aig_size (aig : AIG α) (input : β aig len) (h : x ≤ aig.decls.size) :
    x ≤ (f aig input).aig.decls.size := by
  apply Nat.le_trans
  · exact h
  · exact le_size aig input

@[simp]
theorem denote_input_entry (entry : Entrypoint α) {input : β entry.aig len} {h} :
    ⟦(f entry.aig input).aig, ⟨entry.ref.gate, entry.ref.invert, h⟩, assign ⟧
      =
    ⟦entry, assign⟧ :=  by
  apply denote.eq_of_isPrefix
  apply isPrefix_aig

@[simp]
theorem denote_cast_entry (entry : Entrypoint α) {input : β entry.aig len} {h} :
    ⟦(f entry.aig input).aig, entry.ref.cast h, assign⟧
      =
    ⟦entry, assign⟧ := by
  simp [Ref.cast]

theorem denote_mem_prefix {aig : AIG α} {input : β aig len} (h) :
    ⟦(f aig input).aig, ⟨start, inv, by apply lt_size_of_lt_aig_size; omega⟩, assign⟧
      =
    ⟦aig, ⟨start, inv, h⟩, assign⟧ :=  by
  rw [denote_input_entry ⟨aig, start, inv, h⟩]

@[simp]
theorem denote_input_vec (s : RefVecEntry α len) {input : β s.aig len} {hcast} :
    ⟦(f s.aig input).aig, (s.vec.get idx hidx).cast hcast, assign⟧
      =
    ⟦s.aig, s.vec.get idx hidx, assign⟧ :=  by
  rw [denote_mem_prefix]
  rfl

end LawfulVecOperator
end AIG

end Sat
end Std
