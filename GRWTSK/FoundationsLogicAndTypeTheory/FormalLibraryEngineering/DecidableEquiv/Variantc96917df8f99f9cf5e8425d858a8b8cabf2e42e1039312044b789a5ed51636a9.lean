-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DecidableEquiv.Variant4c8e85f4e6f6ee5cc5367f4d8d25da924a5098359d448e46ed88397f78dc004f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4c8e85f4e6f6ee5cc5367f4d8d25da924a5098359d448e46ed88397f78dc004f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.DecidableEquiv.Variant4c8e85f4e6f6ee5cc5367f4d8d25da924a5098359d448e46ed88397f78dc004f","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"4c8e85f4e6f6ee5cc5367f4d8d25da924a5098359d448e46ed88397f78dc004f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/TreeSet/DecidableEquiv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.TreeMap.DecidableEquiv
public import Std.Data.TreeSet.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DecidableEquiv.Variant4c8e85f4e6f6ee5cc5367f4d8d25da924a5098359d448e46ed88397f78dc004f

public section

/-!
# Decidable equivalence for `TreeSet`
-/

open Std.TreeMap

namespace Std.TreeSet

instance {α : Type u} {cmp : α → α → Ordering} [TransCmp cmp] [LawfulEqCmp cmp] {t₁ t₂ : TreeSet α cmp} : Decidable (t₁ ~m t₂) :=
  let : Ord α := ⟨cmp⟩;
  decidable_of_iff _ ⟨fun h => ⟨h⟩, fun h => h.1⟩

end Std.TreeSet
