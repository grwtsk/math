-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Event.Variant8e20f1c6c02a8dbf3868fc1e13cd3a6763ad318d0b242c48b5b183be055c12b1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8e20f1c6c02a8dbf3868fc1e13cd3a6763ad318d0b242c48b5b183be055c12b1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Event.Variant8e20f1c6c02a8dbf3868fc1e13cd3a6763ad318d0b242c48b5b183be055c12b1","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"8e20f1c6c02a8dbf3868fc1e13cd3a6763ad318d0b242c48b5b183be055c12b1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Http/Protocol/H1/Event.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Time
public import Std.Http.Data
public import Std.Http.Internal
public import Std.Http.Protocol.H1.Parser
public import Std.Http.Protocol.H1.Config
public import Std.Http.Protocol.H1.Message
public import Std.Http.Protocol.H1.Error


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Event.Variant8e20f1c6c02a8dbf3868fc1e13cd3a6763ad318d0b242c48b5b183be055c12b1

public section

/-!
# HTTP/1.1 Events

This module defines the events that can occur during HTTP/1.1 message processing,
including header completion and control/error signals.
-/

namespace Std.Http.Protocol.H1

set_option linter.all true

/--
Events emitted during HTTP message processing.
-/
inductive Event (dir : Direction)
  /--
  Indicates that all headers have been successfully parsed.
  -/
  | endHeaders (head : Message.Head dir)

  /--
  Signals that additional input data is required to continue processing.
  -/
  | needMoreData (size : Option Nat)

  /--
  Indicates a failure during parsing or processing.
  -/
  | failed (err : Error)

  /--
  Requests that the connection be closed.
  -/
  | close

  /--
  The body should be closed.
  -/
  | closeBody

  /--
  Indicates that a response is required.
  -/
  | needAnswer

  /--
  Indicates readiness to process the next message.
  -/
  | next

  /--
  Signals that an `Expect: 100-continue` decision is pending.
  -/
  | «continue»
deriving Inhabited, Repr
