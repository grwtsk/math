-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReadUTF8.Variant83207364818a17e5d7a0511c5f0cf9d12fa4734746c1bdc45d34161486c8a3d6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"83207364818a17e5d7a0511c5f0cf9d12fa4734746c1bdc45d34161486c8a3d6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ReadUTF8.Variant83207364818a17e5d7a0511c5f0cf9d12fa4734746c1bdc45d34161486c8a3d6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"83207364818a17e5d7a0511c5f0cf9d12fa4734746c1bdc45d34161486c8a3d6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Data/Json/Stream.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Marc Huisinga. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: Marc Huisinga
-/
module

prelude
public import Lean.Data.Json.Parser
public import Lean.Data.Json.Printer


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReadUTF8.Variant83207364818a17e5d7a0511c5f0cf9d12fa4734746c1bdc45d34161486c8a3d6

public section

open IO

namespace Lean.IO.FS.Stream

open Lean

def readUTF8 (h : FS.Stream) (nBytes : Nat) : IO String := do
  let bytes ← h.read (USize.ofNat nBytes)
  let some s := String.fromUTF8? bytes | throw (IO.userError "invalid UTF-8")
  return s

/-- Consumes `nBytes` bytes from the stream, interprets the bytes as a utf-8 string and the string as a valid JSON object. -/
def readJson (h : FS.Stream) (nBytes : Nat) : IO Json := do
  let bytes ← h.read (USize.ofNat nBytes)
  let some s := String.fromUTF8? bytes | throw (IO.userError "invalid UTF-8")
  ofExcept (Json.parse s)

def writeJson (h : FS.Stream) (j : Json) : IO Unit := do
  h.putStr j.compress
  h.flush

end Lean.IO.FS.Stream
