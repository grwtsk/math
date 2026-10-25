# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Parsing.Variant33ab0e4eb4dde5af379815704470e081d3dee9d7882c8d56f61661b21162477a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10eef4ebd60c87041212cd92bd504bc5eb9a4de5` · SHA-256 `d8172805f06b7ed4f8019cff5c4ad21b8325c655af4c04da1f1246a796c0aa33`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StrLitRange.Variantc4d7c818a9f5246af230c25b59b1d207436e821cd2d6d083a1f38d000fa85699","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c4d7c818a9f5246af230c25b59b1d207436e821cd2d6d083a1f38d000fa85699","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.StrLitRange.Variantc4d7c818a9f5246af230c25b59b1d207436e821cd2d6d083a1f38d000fa85699","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c4d7c818a9f5246af230c25b59b1d207436e821cd2d6d083a1f38d000fa85699","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/DocString/Builtin/Parsing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: David Thrane Christiansen
-/
module
prelude
public import Lean.Parser.Extension
public import Init.While
import Init.Data.Array.Attach
import Init.Data.Array.Mem


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StrLitRange.Variantc4d7c818a9f5246af230c25b59b1d207436e821cd2d6d083a1f38d000fa85699

namespace Lean.Doc
open Lean.Parser

public section

private def strLitRange [Monad m] [MonadFileMap m] (s : StrLit) : m Lean.Syntax.Range := do
  let pos := (s.raw.getPos? (canonicalOnly := true)).get!
  let endPos := s.raw.getTailPos? true |>.get!
  return ⟨pos, endPos⟩

variable [Monad m] [MonadFileMap m] [MonadEnv m]
variable [MonadError m] [AddMessageContext m] [MonadLog m] [MonadOptions m]

/--
Parses a string literal's contents directly from its decoded value rather than from the source file.
This is used when the literal has no source position, as in a docstring that came from a macro.
-/
private def parseFromContents (p : ParserFn) (contents : String) : m Syntax := do
  let env ← getEnv
  let ictx := mkInputContext contents (← getFileName)
  let s := p.run ictx { env, options := ← getOptions } (getTokenTable env) (mkParserState contents)
  if !s.allErrors.isEmpty then
    throwError (s.toErrorMsg ictx)
  else if ictx.atEnd s.pos then
    pure s.stxStack.back
  else
    throwError ((s.mkError "end of input").toErrorMsg ictx)

def parseStrLit (p : ParserFn) (s : StrLit) : m Syntax := do
  if (s.raw.getPos? (canonicalOnly := true)).isNone then
    return ← parseFromContents p s.getString
  let text ← getFileMap
  let env ← getEnv
  let ⟨pos, endPos⟩ ← strLitRange s
  let endPos := if endPos ≤ text.source.rawEndPos then endPos else text.source.rawEndPos
  let ictx :=
    mkInputContext text.source (← getFileName)
      (endPos := endPos) (endPos_valid := by simp only [endPos]; split <;> simp [*])
  -- TODO fallback for non-original syntax
  let s := (mkParserState text.source).setPos pos
  let s := p.run ictx { env, options := ← getOptions } (getTokenTable env) s

  if !s.allErrors.isEmpty  then
    throwError (s.toErrorMsg ictx)
  else if ictx.atEnd s.pos then
    pure s.stxStack.back
  else
    throwError ((s.mkError "end of input").toErrorMsg ictx)

def parseQuotedStrLit (p : ParserFn) (strLit : StrLit) : m Syntax := do
  if (strLit.raw.getPos? (canonicalOnly := true)).isNone then
    return ← parseFromContents p strLit.getString
  let text ← getFileMap
  let env ← getEnv
  let ⟨pos, _⟩ ← strLitRange strLit
  let pos ← do
    let mut pos := pos
    if pos.get text.source == 'r' then
      pos := pos.next text.source
      while pos.get text.source == '#' do
        pos := pos.next text.source
    if pos.get text.source == '"' then
      pure <| pos.next text.source
    else
      throwErrorAt strLit "Not a quoted string literal"
  let str := strLit.getString
  let ictx := mkInputContext str (← getFileName)
  let s := mkParserState str
  let s := p.run ictx { env, options := ← getOptions } (getTokenTable env) s

  if !s.allErrors.isEmpty then
    let s := { s with
        pos := reposition text pos str s.pos
        recoveredErrors := s.recoveredErrors.map fun
        | (ePos, stk, err) => (reposition text pos str ePos, stk, err)
        errorMsg := s.errorMsg.map fun (e : Error) =>
          { e with unexpectedTk := repositionSyntax text pos str e.unexpectedTk }
      }
    throwError (s.toErrorMsg ictx)
  else if ictx.atEnd s.pos then
    pure <| repositionSyntax text pos str s.stxStack.back
  else
    throwError ((s.mkError "end of input").toErrorMsg ictx)
where
  reposition (text : FileMap) (posOfStr : String.Pos.Raw) (str : String) (posInStr : String.Pos.Raw) : String.Pos.Raw :=
    nextn text.source (posIndex str posInStr) posOfStr
  repositionSyntax (text : FileMap) (posOfStr : String.Pos.Raw) (str : String) : Syntax → Syntax
    | .node info k args => .node (repositionInfo text posOfStr str info) k (args.map (repositionSyntax text posOfStr str))
    | .ident info sub x pre => .ident (repositionInfo text posOfStr str info) sub x pre
    | .atom info s => .atom (repositionInfo text posOfStr str info) s
    | .missing => .missing
  repositionInfo (text : FileMap) (posOfStr : String.Pos.Raw) (str : String) : SourceInfo → SourceInfo
    | .original _ pos _ endPos =>
      .synthetic (reposition text posOfStr str pos) (reposition text posOfStr str endPos) true
    | .synthetic pos endPos c =>
      .synthetic (reposition text posOfStr str pos) (reposition text posOfStr str endPos) c
    | .none => .none

  nextn (str : String) (n : Nat) (p : String.Pos.Raw) : String.Pos.Raw :=
    n.fold (init := p) fun _ _ _ => p.next str
  posIndex (str : String) (p : String.Pos.Raw) : Nat := Id.run do
    let mut p := p
    let mut n := 0
    while p > 0 do
      p := p.prev str
      n := n + 1
    return n

def parseStrLit' (p : ParserFn) (s : StrLit) : m (Syntax × Bool) := do
  if (s.raw.getPos? (canonicalOnly := true)).isNone then
    let contents := s.getString
    let env ← getEnv
    let ictx := mkInputContext contents (← getFileName)
    let st := p.run ictx { env, options := ← getOptions } (getTokenTable env) (mkParserState contents)
    let err ←
      if !st.allErrors.isEmpty then
        logError (st.toErrorMsg ictx); pure true
      else if !ictx.atEnd st.pos then
        logError ((st.mkError "end of input").toErrorMsg ictx); pure true
      else pure false
    return (st.stxStack.back, err)
  let text ← getFileMap
  let env ← getEnv
  let endPos := s.raw.getTailPos? true |>.get!
  let endPos := if endPos ≤ text.source.rawEndPos then endPos else text.source.rawEndPos
  let ictx :=
    mkInputContext text.source (← getFileName)
      (endPos := endPos) (endPos_valid := by simp only [endPos]; split <;> simp [*])
  -- TODO fallback for non-original syntax
  let s := (mkParserState text.source).setPos (s.raw.getPos? (canonicalOnly := true)).get!
  let s := p.run ictx { env, options := ← getOptions } (getTokenTable env) s

  let err ←
    if !s.allErrors.isEmpty then
      logError (s.toErrorMsg ictx)
      pure true
    else if !ictx.atEnd s.pos then
      logError ((s.mkError "end of input").toErrorMsg ictx)
      pure true
    else pure false
  pure (s.stxStack.back, err)
```
