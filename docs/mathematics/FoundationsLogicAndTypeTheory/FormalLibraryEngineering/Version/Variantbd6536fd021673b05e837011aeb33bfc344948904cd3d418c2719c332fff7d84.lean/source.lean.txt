-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.VersionMajor.Variantc5e24a972430a3adc2b22c615fc8fc154d72dfb79c52950f732fe8c6f9b1fd14","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c5e24a972430a3adc2b22c615fc8fc154d72dfb79c52950f732fe8c6f9b1fd14","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.VersionMajor.Variantc5e24a972430a3adc2b22c615fc8fc154d72dfb79c52950f732fe8c6f9b1fd14","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"c5e24a972430a3adc2b22c615fc8fc154d72dfb79c52950f732fe8c6f9b1fd14","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Version.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Prelude
import Init.Data.ToString
import Init.Data.String.TakeDrop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.VersionMajor.Variantc5e24a972430a3adc2b22c615fc8fc154d72dfb79c52950f732fe8c6f9b1fd14

namespace Lake

public def version.major : Nat := 5
public def version.minor : Nat := 0
public def version.patch : Nat := 0

public def version.isRelease : Bool :=
  Lean.version.isRelease

public def version.specialDesc : String :=
  if isRelease && !Lean.githash.isEmpty then s!"src+{Lean.githash.take 7}" else "src"

public def versionStringCore : String :=
  s!"{version.major}.{version.minor}.{version.patch}"

public def versionString : String :=
  if version.specialDesc ≠ "" then
    s!"{versionStringCore}-{version.specialDesc}"
  else
    versionStringCore

public def uiVersionString : String :=
  s!"Lake version {versionString} (Lean version {Lean.versionString})"
