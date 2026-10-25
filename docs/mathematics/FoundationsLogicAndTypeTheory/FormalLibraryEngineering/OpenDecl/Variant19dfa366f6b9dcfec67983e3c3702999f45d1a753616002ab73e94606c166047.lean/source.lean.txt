-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OpenDecl.Variantb3f2afa70bf2d25dc02ed2c81b1738568309935069b840c5445969a2105c3483","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b3f2afa70bf2d25dc02ed2c81b1738568309935069b840c5445969a2105c3483","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.OpenDecl.Variantb3f2afa70bf2d25dc02ed2c81b1738568309935069b840c5445969a2105c3483","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b3f2afa70bf2d25dc02ed2c81b1738568309935069b840c5445969a2105c3483","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Data/OpenDecl.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Data.ToString.Name
public import Init.Data.ToString.Extra


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OpenDecl.Variantb3f2afa70bf2d25dc02ed2c81b1738568309935069b840c5445969a2105c3483

public section

namespace Lean

/-- Data for representing `open` commands -/
inductive OpenDecl where
  | simple   (ns : Name) (except : List Name)
  | explicit (id : Name) (declName : Name)
  deriving BEq

namespace OpenDecl
instance : Inhabited OpenDecl := ⟨simple Name.anonymous []⟩

instance : ToString OpenDecl := ⟨fun decl =>
  match decl with
  | explicit id decl => toString id ++ " → " ++ toString decl
  | simple ns ex     => toString ns ++ (if ex == [] then "" else " hiding " ++ toString ex)⟩

end OpenDecl

def rootNamespace := `_root_

def removeRoot (n : Name) : Name :=
  n.replacePrefix rootNamespace Name.anonymous

end Lean
