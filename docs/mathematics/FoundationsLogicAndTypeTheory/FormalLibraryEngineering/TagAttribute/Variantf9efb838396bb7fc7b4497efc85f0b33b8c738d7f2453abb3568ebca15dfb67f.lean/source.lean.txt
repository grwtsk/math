-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanTagAttributeGetDecls.Variant0bdb26e3e60f36b6cec4839c1f53d18cbc6e154a1bbb324e638d8a5c21380852","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0bdb26e3e60f36b6cec4839c1f53d18cbc6e154a1bbb324e638d8a5c21380852","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LeanTagAttributeGetDecls.Variant0bdb26e3e60f36b6cec4839c1f53d18cbc6e154a1bbb324e638d8a5c21380852","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0bdb26e3e60f36b6cec4839c1f53d18cbc6e154a1bbb324e638d8a5c21380852","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Lean/TagAttribute.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
module

public import Lean.Attributes


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanTagAttributeGetDecls.Variant0bdb26e3e60f36b6cec4839c1f53d18cbc6e154a1bbb324e638d8a5c21380852

@[expose] public section

/-- Get the list of declarations tagged with the tag attribute `attr`. -/
def Lean.TagAttribute.getDecls (attr : TagAttribute) (env : Environment) : Array Name :=
  core <| attr.ext.toEnvExtension.getState env
where
  /-- Implementation of `TagAttribute.getDecls`. -/
  core (st : PersistentEnvExtensionState Name NameSet) : Array Name := Id.run do
    let mut decls := st.state.toArray
    for ds in st.importedEntries do
      decls := decls ++ ds
    decls
