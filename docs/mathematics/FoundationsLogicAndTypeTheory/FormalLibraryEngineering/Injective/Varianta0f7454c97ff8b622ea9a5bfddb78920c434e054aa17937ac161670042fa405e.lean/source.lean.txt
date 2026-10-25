-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeftInv.Variante7190038a6a94bfbf3d988f6e30e9578b0769501d22194354a052c7df9dd77b2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e7190038a6a94bfbf3d988f6e30e9578b0769501d22194354a052c7df9dd77b2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.LeftInv.Variante7190038a6a94bfbf3d988f6e30e9578b0769501d22194354a052c7df9dd77b2","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"e7190038a6a94bfbf3d988f6e30e9578b0769501d22194354a052c7df9dd77b2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Grind/Injective.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Init.Data.Function
public import Init.NotationExtra
import Init.Classical

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeftInv.Variante7190038a6a94bfbf3d988f6e30e9578b0769501d22194354a052c7df9dd77b2

public section
namespace Lean.Grind
open Function

noncomputable def leftInv {α : Sort u} {β : Sort v} (f : α → β) (hf : Injective f) [Nonempty α] : β → α :=
  Classical.choose hf.exists_leftInverse

theorem leftInv_eq {α : Sort u} {β : Sort v} (f : α → β) (hf : Injective f) [Nonempty α] (a : α) : leftInv f hf (f a) = a :=
  Classical.choose_spec hf.exists_leftInverse a

@[app_unexpander leftInv]
meta def leftInvUnexpander : PrettyPrinter.Unexpander := fun stx => do
  match stx with
  | `($_ $f:term $_) => `($f⁻¹)
  | `($_ $f:term $_ $a:term) => `($f⁻¹ $a)
  | _ => throw ()

end Lean.Grind
