-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SymSimpVariant.Variantcd6f6fbfb186e81fe675f9c35eb6f3efce9af4a57f0ebe97742aa8e97b5bad7c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cd6f6fbfb186e81fe675f9c35eb6f3efce9af4a57f0ebe97742aa8e97b5bad7c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SymSimpVariant.Variantcd6f6fbfb186e81fe675f9c35eb6f3efce9af4a57f0ebe97742aa8e97b5bad7c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"cd6f6fbfb186e81fe675f9c35eb6f3efce9af4a57f0ebe97742aa8e97b5bad7c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/Simp/Variant.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.Simp.SimpM
import Lean.ScopedEnvExtension

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SymSimpVariant.Variantcd6f6fbfb186e81fe675f9c35eb6f3efce9af4a57f0ebe97742aa8e97b5bad7c

public section
namespace Lean.Meta.Sym.Simp

/--
A named `Sym.simp` variant. Stores `pre`/`post` simproc chains as syntax
(elaborated at use time in `GrindTacticM`) and configuration overrides.
-/
structure SymSimpVariant where
  /-- Pre-processing simproc chain (elaborated at use time). -/
  pre?   : Option Syntax := none
  /-- Post-processing simproc chain (elaborated at use time). -/
  post?  : Option Syntax := none
  /-- Configuration overrides. -/
  config : Config := {}
  deriving Inhabited

/-- Entry for the scoped environment extension. -/
structure SymSimpVariantEntry where
  name    : Name
  variant : SymSimpVariant
  deriving Inhabited

/-- Persistent environment extension mapping variant names to their definitions. -/
builtin_initialize symSimpVariantExtension :
    SimpleScopedEnvExtension SymSimpVariantEntry (Std.HashMap Name SymSimpVariant) ←
  registerSimpleScopedEnvExtension {
    name     := `symSimpVariantExtension
    initial  := {}
    addEntry := fun map entry => map.insert entry.name entry.variant
  }

/-- Look up a named `Sym.simp` variant. -/
def getSymSimpVariant? (env : Environment) (name : Name) : Option SymSimpVariant :=
  (symSimpVariantExtension.getState env)[name]?

end Lean.Meta.Sym.Simp
