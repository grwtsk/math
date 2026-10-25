# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Exception.Variantb2808314ccb28df956ff0a70fdfba72782f02439de4c5fbf03b084e59b939b89

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a344e11ea2fc7fb194747caa84c499572aac67a7` · SHA-256 `1ef5edbaada6074b2c3450d9f9a339344dd224ca2c0b8f2dcc6833b4498a9092`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ThrowPostpone.Variant0279d025d07271aec18f594b975004d462c2b11f7840edab038a1651fc09dc29","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0279d025d07271aec18f594b975004d462c2b11f7840edab038a1651fc09dc29","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ThrowPostpone.Variant0279d025d07271aec18f594b975004d462c2b11f7840edab038a1651fc09dc29","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0279d025d07271aec18f594b975004d462c2b11f7840edab038a1651fc09dc29","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Exception.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Exception


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ThrowPostpone.Variant0279d025d07271aec18f594b975004d462c2b11f7840edab038a1651fc09dc29

public section

namespace Lean.Elab

builtin_initialize postponeExceptionId : InternalExceptionId ← registerInternalExceptionId `postpone
builtin_initialize unsupportedSyntaxExceptionId : InternalExceptionId ← registerInternalExceptionId `unsupportedSyntax
builtin_initialize abortCommandExceptionId : InternalExceptionId ← registerInternalExceptionId `abortCommandElab
builtin_initialize abortTermExceptionId : InternalExceptionId ← registerInternalExceptionId `abortTermElab
builtin_initialize abortTacticExceptionId : InternalExceptionId ← registerInternalExceptionId `abortTactic
builtin_initialize autoBoundImplicitExceptionId : InternalExceptionId ← registerInternalExceptionId `autoBoundImplicit

def throwPostpone [MonadExceptOf Exception m] : m α :=
  throw $ Exception.internal postponeExceptionId

def throwUnsupportedSyntax [MonadExceptOf Exception m] : m α :=
  throw $ Exception.internal unsupportedSyntaxExceptionId

def throwIllFormedSyntax [Monad m] [MonadError m] : m α :=
  throwError "ill-formed syntax"

def throwAutoBoundImplicitLocal [MonadExceptOf Exception m] (n : Name) : m α :=
  throw $ Exception.internal autoBoundImplicitExceptionId <| KVMap.empty.insert `localId n

def isAutoBoundImplicitLocalException? (ex : Exception) : Option Name :=
  match ex with
  | Exception.internal id k =>
    if id == autoBoundImplicitExceptionId then
      some <| k.getName `localId `x
    else
      none
  | _ => none

def throwAlreadyDeclaredUniverseLevel [Monad m] [MonadError m] (u : Name) : m α :=
  throwError "a universe level named `{u}` has already been declared"

-- Throw exception to abort elaboration of the current command without producing any error message
def throwAbortCommand {α m} [MonadExcept Exception m] : m α :=
  throw <| Exception.internal abortCommandExceptionId

-- Throw exception to abort elaboration of the current term without producing any error message
def throwAbortTerm {α m} [MonadExcept Exception m] : m α :=
  throw <| Exception.internal abortTermExceptionId

-- Throw exception to abort evaluation of the current tactic without producing any error message
def throwAbortTactic {α m} [MonadExcept Exception m] : m α :=
  throw <| Exception.internal abortTacticExceptionId

def isAbortTacticException (ex : Exception) : Bool :=
  match ex with
  | Exception.internal id .. => id == abortTacticExceptionId
  | _ => false

def isAbortExceptionId (id : InternalExceptionId) : Bool :=
  id == abortCommandExceptionId || id == abortTermExceptionId || id == abortTacticExceptionId

def isAbortException (ex : Exception) : Bool :=
  match ex with
  | Exception.internal id .. => isAbortExceptionId id
  | _ => false

def mkMessageCore (fileName : String) (fileMap : FileMap) (data : MessageData) (severity : MessageSeverity) (pos : String.Pos.Raw) (endPos : String.Pos.Raw) : Message :=
  let pos := fileMap.toPosition pos
  let endPos := fileMap.toPosition endPos
  { fileName, pos, endPos, data, severity }

end Lean.Elab
```
