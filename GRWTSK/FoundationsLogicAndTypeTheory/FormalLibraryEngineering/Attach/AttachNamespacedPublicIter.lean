-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterAttachWith.Variantcf0fa914a529a732b4193233c44ad87d561847e15d3b88171edbd6b0edda52f9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cf0fa914a529a732b4193233c44ad87d561847e15d3b88171edbd6b0edda52f9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterAttachWith.Variantcf0fa914a529a732b4193233c44ad87d561847e15d3b88171edbd6b0edda52f9","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"cf0fa914a529a732b4193233c44ad87d561847e15d3b88171edbd6b0edda52f9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Iterators/Combinators/Attach.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Combinators.Monadic.Attach


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterAttachWith.Variantcf0fa914a529a732b4193233c44ad87d561847e15d3b88171edbd6b0edda52f9

public section

namespace Std
open Std.Iterators

@[cbv_opaque, always_inline, inline, expose, inherit_doc IterM.attachWith]
def Iter.attachWith {α β : Type w}
    [Iterator α Id β]
    (it : Iter (α := α) β) (P : β → Prop) (h : ∀ out, it.IsPlausibleIndirectOutput out → P out) :
  Iter (α := Types.Attach α Id P) { out : β // P out } :=
  (it.toIterM.attachWith P ?h).toIter
where finally
  case h =>
    simp only [← isPlausibleIndirectOutput_iff_isPlausibleIndirectOutput_toIterM]
    exact h

end Std
