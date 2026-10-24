# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.String.Variantc9c36d64222fb627959386efe4ff45040d2080efc2c0a21d8bf0615897e0dda3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d72f4b4e1046a24a912f7f6de803ee8eab181577` · SHA-256 `b80a9caabe86fb2206d9d881413f7ab22566645f73a703b5cc9f4bb931edeb98`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.UnquoteState.Variant71963a74812cdaa9f816f800f0de63cf89a5cb25418e4d2973fbda931b6b91cc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"71963a74812cdaa9f816f800f0de63cf89a5cb25418e4d2973fbda931b6b91cc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.UnquoteState.Variant71963a74812cdaa9f816f800f0de63cf89a5cb25418e4d2973fbda931b6b91cc","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"71963a74812cdaa9f816f800f0de63cf89a5cb25418e4d2973fbda931b6b91cc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Http/Internal/String.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
import Init.Grind
public import Init.Data.String.TakeDrop
public import Std.Http.Internal.Char


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.UnquoteState.Variant71963a74812cdaa9f816f800f0de63cf89a5cb25418e4d2973fbda931b6b91cc

public section


/-!
# Internal String Helpers

Shared string utilities for HTTP: token validation and quoted-string encoding/decoding for header
parameter values and chunk extensions.
-/

namespace Std.Http.Internal

open Std.Http.Internal.Char

set_option linter.all true

/--
Core character quoting used by `quoteHttpString`.

Emits `qdtext` characters directly and `"` / `\\` as `quoted-pair`.
The proof `h₀ : quotedStringChar c` guarantees the impossible branch is unreachable.
-/
def quoteCore (c : Char) (h₀ : quotedStringChar c) : String :=
  if h : qdtext c then
    .singleton c
  else if h₁ : c = '\"' || c = '\\' then
    .append "\\" (.singleton c)
  else
    absurd h₀ (not_quotedStringChar_of_not_qdtext_not_dquote_backslash _ (quotedStringChar_lt_0x80 h₀) ⟨h, h₁⟩)

/--
Quotes `s` as an HTTP `quoted-string`: `DQUOTE *( qdtext / quoted-pair ) DQUOTE`.

If every character is a `tchar` and the string is non-empty, the string is returned as-is (it is
already a valid token). Otherwise the string is wrapped in double quotes, escaping `"` and `\`
as `quoted-pair`.

Requires a proof that every character passes `quotedStringChar`.
-/
@[expose]
def quoteHttpString (s : String) (h : s.toList.all quotedStringChar) : String :=
  let sl := s.toList.attach

  if sl.all (tchar ·.val) ∧ ¬sl.isEmpty then
    s
  else
    (.append
      (sl.foldl (fun acc x =>
        .append acc (quoteCore x.val (List.all_eq_true.mp h x.val x.2))) "\"")
      "\"")

/--
Attempts to quote `s` as an HTTP `quoted-string`.

Returns `some` with the quoted result when every character passes `quotedStringChar`, or `none`
when any character cannot be represented by the grammar.
-/
def quoteHttpString? (s : String) : Option String :=
  if h : s.toList.all quotedStringChar then
    some <| quoteHttpString s h
  else
    none

/--
Quotes `s` as an HTTP `quoted-string`, panicking if `s` contains characters that cannot be
represented by `qdtext`/`quoted-pair`.
-/
def quoteHttpString! (s : String) : String :=
  match quoteHttpString? s with
  | some res => res
  | none => panic! "invalid HTTP quoted-string content"

private inductive UnquoteState where
  | start
  | valid (escaped : Bool) (acc : String)
  | done (result : String)
  | invalid

/--
Parses an HTTP `quoted-string`, returning the unescaped content when valid.
-/
def unquoteHttpString? (s : String) : Option String :=
  if s.startsWith '"' then
    match s.foldl (fun (st : UnquoteState) c =>
      match st with
      | .start =>
          if c == '"' then .valid false "" else .invalid
      | .valid false acc =>
          if c == '\\' then .valid true acc
          else if c == '"' then .done acc
          else if qdtext c then .valid false (acc.push c)
          else .invalid
      | .valid true acc =>
          if quotedPairChar c then .valid false (acc.push c)
          else .invalid
      | .done _ | .invalid => .invalid) .start with
    | .done result => some result
    | _ => none
  else if s.all Char.tchar then
    some s
  else
    none

/--
Checks whether a string is a valid non-empty HTTP token.
-/
@[expose]
def isToken (s : String) : Bool :=
  let s := s.toList
  ¬s.isEmpty ∧ s.all Char.tchar

end Std.Http.Internal
```
