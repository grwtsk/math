-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.All.Variant097af0cc2ed312539927aa1b7c84943e26e8c80556f4c09846b238291b3cad7e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"097af0cc2ed312539927aa1b7c84943e26e8c80556f4c09846b238291b3cad7e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.All.Variant097af0cc2ed312539927aa1b7c84943e26e8c80556f4c09846b238291b3cad7e","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"097af0cc2ed312539927aa1b7c84943e26e8c80556f4c09846b238291b3cad7e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Config/Opaque.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Prelude
meta import all Lake.Util.OpaqueType
import Lake.Util.OpaqueType


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.All.Variant097af0cc2ed312539927aa1b7c84943e26e8c80556f4c09846b238291b3cad7e

namespace Lake

/-- Opaque reference to a `Workspace` used for forward declaration. -/
public nonempty_type OpaqueWorkspace

/-- Opaque reference to a `TargetConfig` used for forward declaration. -/
public nonempty_type OpaqueTargetConfig (pkgName name : Lean.Name)
