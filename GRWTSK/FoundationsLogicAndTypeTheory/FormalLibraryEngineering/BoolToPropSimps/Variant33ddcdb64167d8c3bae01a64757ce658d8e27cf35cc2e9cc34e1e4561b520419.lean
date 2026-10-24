-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attr.Variant5bdd1bb1b60837e5d7f45cb7551188b24088c570ac667c941dc3d49173b54195","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5bdd1bb1b60837e5d7f45cb7551188b24088c570ac667c941dc3d49173b54195","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Attr.Variant5bdd1bb1b60837e5d7f45cb7551188b24088c570ac667c941dc3d49173b54195","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5bdd1bb1b60837e5d7f45cb7551188b24088c570ac667c941dc3d49173b54195","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/BoolToPropSimps.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 University of Cambridge. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Tobias Grosser
-/

module

prelude
public import Lean.Meta.Tactic.Simp.Attr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attr.Variant5bdd1bb1b60837e5d7f45cb7551188b24088c570ac667c941dc3d49173b54195

public section

namespace Lean

builtin_initialize bool_to_prop : Lean.Meta.SimpExtension ←
  Lean.Meta.registerSimpAttr `bool_to_prop
    "simp lemmas converting boolean expressions in terms of `decide` into propositional statements"

end Lean
