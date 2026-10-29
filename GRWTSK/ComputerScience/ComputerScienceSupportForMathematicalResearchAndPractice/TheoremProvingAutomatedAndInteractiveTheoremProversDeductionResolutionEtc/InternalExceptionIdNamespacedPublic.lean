-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InternalExceptionId.Variantb18e6bb18d4eb0d3f0eebf961c2cf7806efce37ba16e2e7265e4171b568c4ca9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b18e6bb18d4eb0d3f0eebf961c2cf7806efce37ba16e2e7265e4171b568c4ca9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.InternalExceptionId.Variantb18e6bb18d4eb0d3f0eebf961c2cf7806efce37ba16e2e7265e4171b568c4ca9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b18e6bb18d4eb0d3f0eebf961c2cf7806efce37ba16e2e7265e4171b568c4ca9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/InternalExceptionId.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.System.IO
import Init.Data.ToString.Name
import Init.Data.ToString.Macro


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InternalExceptionId.Variantb18e6bb18d4eb0d3f0eebf961c2cf7806efce37ba16e2e7265e4171b568c4ca9

public section
namespace Lean

/-- Internal exception identifier -/
structure InternalExceptionId where
  idx : Nat := 0
  deriving Inhabited, BEq

/-- Internal exceptions registered in the system. -/
builtin_initialize internalExceptionsRef : IO.Ref (Array Name) ← IO.mkRef #[]

/--
Register a new internal exception in the system.
Each internal exception has a unique index.
Throw an exception if the given name is not unique.
This method is usually invoked using the `initialize` command.
-/
def registerInternalExceptionId (name : Name) : IO InternalExceptionId := do
  let exs ← internalExceptionsRef.get
  if exs.contains name then throw <| IO.userError s!"invalid internal exception id, '{name}' has already been used"
  let nextIdx := exs.size
  internalExceptionsRef.modify fun a => a.push name
  pure { idx := nextIdx }

/-- Convert internal exception id into the message "internal exception #<idx>"-/
def InternalExceptionId.toString (id : InternalExceptionId) : String :=
  s!"internal exception #{id.idx}"

/-- Retrieve the name used to register the internal exception. -/
def InternalExceptionId.getName (id : InternalExceptionId) : IO Name :=  do
  let exs ← internalExceptionsRef.get
  let i := id.idx;
  if h : i < exs.size then
    return exs[i]
  else
    throw <| IO.userError "invalid internal exception id"

end Lean
