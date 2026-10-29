-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SymDSimpVariant.Variant86667bc42e98007adcc666567d7ae928e6af7564310f4f62db63268952771886","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"86667bc42e98007adcc666567d7ae928e6af7564310f4f62db63268952771886","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SymDSimpVariant.Variant86667bc42e98007adcc666567d7ae928e6af7564310f4f62db63268952771886","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"86667bc42e98007adcc666567d7ae928e6af7564310f4f62db63268952771886","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/DSimp/Variant.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.DSimp.DSimpM
import Lean.ScopedEnvExtension

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SymDSimpVariant.Variant86667bc42e98007adcc666567d7ae928e6af7564310f4f62db63268952771886

public section
namespace Lean.Meta.Sym.DSimp

/--
A named `Sym.dsimp` variant. Stores `pre`/`post` dsimproc chains as syntax
(elaborated at use time in `GrindTacticM`) and configuration overrides.
-/
structure SymDSimpVariant where
  /-- Pre-processing dsimproc chain (elaborated at use time). -/
  pre?   : Option Syntax := none
  /-- Post-processing dsimproc chain (elaborated at use time). -/
  post?  : Option Syntax := none
  /-- Configuration overrides. -/
  config : Config := {}
  deriving Inhabited

/-- Entry for the scoped environment extension. -/
structure SymDSimpVariantEntry where
  name    : Name
  variant : SymDSimpVariant
  deriving Inhabited

/-- Persistent environment extension mapping variant names to their definitions. -/
builtin_initialize symDSimpVariantExtension :
    SimpleScopedEnvExtension SymDSimpVariantEntry (Std.HashMap Name SymDSimpVariant) ←
  registerSimpleScopedEnvExtension {
    name     := `symDSimpVariantExtension
    initial  := {}
    addEntry := fun map entry => map.insert entry.name entry.variant
  }

/-- Look up a named `Sym.dsimp` variant. -/
def getSymDSimpVariant? (env : Environment) (name : Name) : Option SymDSimpVariant :=
  (symDSimpVariantExtension.getState env)[name]?

end Lean.Meta.Sym.DSimp
