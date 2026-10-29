-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LoadToml.Variantc23f99808c0166b9bf76df3c59606d0720545282e6972e907c452888de23c0e4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c23f99808c0166b9bf76df3c59606d0720545282e6972e907c452888de23c0e4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.LoadToml.Variantc23f99808c0166b9bf76df3c59606d0720545282e6972e907c452888de23c0e4","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"c23f99808c0166b9bf76df3c59606d0720545282e6972e907c452888de23c0e4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Toml/Load.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lean.Parser.Types
public import Lake.Toml.Data.Value
import Lake.Toml.Elab
import Lake.Util.Message
import Std.Do


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LoadToml.Variantc23f99808c0166b9bf76df3c59606d0720545282e6972e907c452888de23c0e4

open Lean Parser

namespace Lake.Toml

/-- Load a TOML table from some input. -/
public def loadToml (ictx : InputContext) : EIO MessageLog Table := do
  let env ←
    match (← mkEmptyEnvironment.toBaseIO) with
    | .ok env => pure env
    | .error e => throw <| MessageLog.empty.add <| mkMessageNoPos ictx <|
      m!"failed to initialize TOML environment: {e}"
  let s := toml.fn.run ictx { env, options := {} } {} (mkParserState ictx.inputString)
  if let some errorMsg := s.errorMsg then
    throw <|  MessageLog.empty.add <| mkParserErrorMessage ictx s errorMsg
  else if ictx.atEnd s.pos then
    let act := elabToml ⟨s.stxStack.back⟩
    match (← act.run {fileName := ictx.fileName, fileMap := ictx.fileMap} {env} |>.toBaseIO) with
    | .ok (t, s) =>
      if s.messages.hasErrors then
        throw s.messages
      else
        return t
    | .error e =>
      throw <| MessageLog.empty.add <| mkExceptionMessage ictx e
  else
    throw <| MessageLog.empty.add <| mkParserErrorMessage ictx s {expected := ["end of input"]}
