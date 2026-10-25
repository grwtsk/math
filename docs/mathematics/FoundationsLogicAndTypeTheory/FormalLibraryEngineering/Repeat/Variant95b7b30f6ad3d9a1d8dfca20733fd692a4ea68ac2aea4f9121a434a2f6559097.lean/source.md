# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Repeat.Variant95b7b30f6ad3d9a1d8dfca20733fd692a4ea68ac2aea4f9121a434a2f6559097

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ca3b70469f133fe06833f5c51290e9cc45ff695` · SHA-256 `340a2c395fa02057384208a4587f45565774f442bff69dbd9cbd3a30aa086b08`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BuiltinDo.Variantab2ffe48efe0696c39fbc45ad82b8954135746e2ed0691aa702527cc9b49e307","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab2ffe48efe0696c39fbc45ad82b8954135746e2ed0691aa702527cc9b49e307","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.BuiltinDo.Variantab2ffe48efe0696c39fbc45ad82b8954135746e2ed0691aa702527cc9b49e307","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ab2ffe48efe0696c39fbc45ad82b8954135746e2ed0691aa702527cc9b49e307","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/BuiltinDo/Repeat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Lean.Elab.BuiltinDo.Basic
meta import Lean.Parser.Do
import Lean.Elab.BuiltinDo.For


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BuiltinDo.Variantab2ffe48efe0696c39fbc45ad82b8954135746e2ed0691aa702527cc9b49e307

public section

namespace Lean.Elab.Do

open Lean.Parser.Term

/--
Builtin do-element elaborator for `repeat` (syntax kind `Lean.Parser.Term.doRepeat`).

Expands to `for _ in Loop.mk do ...`. When the body cannot `break`, the loop's own expression
type is fixed to `PUnit`, yet the surrounding do block may require a different result type;
we append an `unreachable!` so the continuation has a polymorphic value of any type. The
`unreachable!` is never actually executed (the loop never terminates normally), and any
dead-code warning that fires on the surrounding continuation is actionable — the user can
remove the following code without breaking the do block's type.
-/
@[builtin_doElem_elab Lean.Parser.Term.doRepeat] def elabDoRepeat : DoElab := fun stx dec => do
  let `(doElem| repeat%$tk $seq) := stx | throwUnsupportedSyntax
  let mut expanded ← `(doElem| for%$tk _ in Loop.mk do $seq)
  let info ← inferControlInfoSeq seq
  if !info.breaks then
    if !(← Meta.isDefEqGuarded dec.resultType (← mkPUnit)) then
      expanded ← `(doElem| do $expanded:doElem; unreachable!)
  Term.withMacroExpansion stx expanded <|
    withRef expanded <| elabDoElem ⟨expanded⟩ dec

@[builtin_macro Lean.Parser.Term.doWhile] def expandDoWhile : Macro
  | `(doElem| while%$tk $cond:doIfCond do $seq) => `(doElem| repeat%$tk if $cond:doIfCond then $seq else break)
  | _ => Macro.throwUnsupported

@[builtin_macro Lean.Parser.Term.doRepeatUntil] def expandDoRepeatUntil : Macro
  | `(doElem| repeat%$tk $seq until $cond) => `(doElem| repeat%$tk do $seq:doSeq; if $cond then break)
  | _ => Macro.throwUnsupported

end Lean.Elab.Do
```
