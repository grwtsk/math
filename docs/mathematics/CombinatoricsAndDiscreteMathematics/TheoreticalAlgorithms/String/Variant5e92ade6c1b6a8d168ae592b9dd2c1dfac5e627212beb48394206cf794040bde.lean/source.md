# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.String.Variant5e92ade6c1b6a8d168ae592b9dd2c1dfac5e627212beb48394206cf794040bde

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dbc268dc087503d035167af2b3edf7c0e4f87899` · SHA-256 `2f0f908fad80eef62ffac40e40d8e8c79124457f748c398b43cb3135df17b049`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Parser.Variante04894bf2e55d93785c2294a9447910c436c205b4ecefe889fc67bc5d202e24e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e04894bf2e55d93785c2294a9447910c436c205b4ecefe889fc67bc5d202e24e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Parser.Variante04894bf2e55d93785c2294a9447910c436c205b4ecefe889fc67bc5d202e24e","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"e04894bf2e55d93785c2294a9447910c436c205b4ecefe889fc67bc5d202e24e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Internal/Parsec/String.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Dany Fabian, Henrik Böving
-/
module

prelude
public import Std.Internal.Parsec.Basic
public import Init.Data.String.Slice
public import Init.Data.String.Termination
import Init.Data.String.Length


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Parser.Variante04894bf2e55d93785c2294a9447910c436c205b4ecefe889fc67bc5d202e24e

public section

namespace Std.Internal
namespace Parsec
namespace String

instance : Input (Sigma String.Pos) Char String.Pos.Raw where
  pos it := it.2.offset
  next it := ⟨it.1, it.2.next!⟩
  curr it := it.2.get!
  hasNext it := ¬it.2.IsAtEnd
  next' it h := ⟨it.1, it.2.next (by simpa using h)⟩
  curr' it h := it.2.get (by simpa using h)

/--
`Parser α` is a parser that consumes a `String` input using a `Sigma String.Pos` and returns a result of type `α`.
-/
abbrev Parser (α : Type) : Type := Parsec (Sigma String.Pos) α

/--
Run a `Parser` on a `String`, returns either the result or an error string with offset.
-/
protected def Parser.run (p : Parser α) (s : String) : Except String α :=
  match p ⟨s, s.startPos⟩ with
  | .success _ res => Except.ok res
  | .error it err => Except.error s!"offset {repr it.2.offset.byteIdx}: {err}"

/--
Parses the given string.
-/
def pstring (s : String) : Parser String := fun it =>
  if (it.1.sliceFrom it.2).startsWith s then
    .success ⟨_, it.2.nextn s.length⟩ s
  else
    .error it (.other s!"expected: {s}")

/--
Skips the given string.
-/
@[inline]
def skipString (s : String) : Parser Unit := pstring s *> pure ()

/--
Parses the given char.
-/
@[inline]
def pchar (c : Char) : Parser Char := attempt do
  if (← any) = c then pure c else fail s!"expected: '{c}'"

/--
Skips the given char.
-/
@[inline]
def skipChar (c : Char) : Parser Unit := pchar c *> pure ()

/--
Parse an ASCII digit `0-9` as a `Char`.
-/
@[inline]
def digit : Parser Char := attempt do
  let c ← any
  if '0' ≤ c ∧ c ≤ '9' then return c else fail s!"digit expected"

/--
Convert a byte representing `'0'..'9'` to a `Nat`.
-/
@[inline]
private def digitToNat (b : Char) : Nat := b.toNat - '0'.toNat

@[inline]
private def digitsCore (acc : Nat) : Parser Nat := fun it =>
  /-
  With this design instead of combinators we can avoid allocating and branching over .success values
  all of the time.
  -/
  let ⟨res, it⟩ := go it.2 acc
  .success ⟨_, it⟩ res
where
  go {s : String} (it : s.Pos) (acc : Nat) : (Nat × s.Pos) :=
    if h : ¬it.IsAtEnd then
      let candidate := it.get h
      if '0' ≤ candidate ∧ candidate ≤ '9' then
        let digit := digitToNat candidate
        let acc := acc * 10 + digit
        go (it.next h) acc
      else
        (acc, it)
    else
      (acc, it)
  termination_by it

/--
Parse one or more ASCII digits into a `Nat`.
-/
@[inline]
def digits : Parser Nat := do
  let d ← digit
  digitsCore (digitToNat d)

/--
Parse a hex digit `0-9`, `a-f`, or `A-F` as a `Char`.
-/
@[inline]
def hexDigit : Parser Char := attempt do
  let c ← any
  if ('0' ≤ c ∧ c ≤ '9')
   ∨ ('a' ≤ c ∧ c ≤ 'f')
   ∨ ('A' ≤ c ∧ c ≤ 'F') then return c else fail s!"hex digit expected"

/--
Parse an ASCII letter `a-z` or `A-Z` as a `Char`.
-/
@[inline]
def asciiLetter : Parser Char := attempt do
  let c ← any
  if ('A' ≤ c ∧ c ≤ 'Z') ∨ ('a' ≤ c ∧ c ≤ 'z') then return c else fail s!"ASCII letter expected"

private def skipWs {s : String} (it : s.Pos) : s.Pos :=
  if h : ¬it.IsAtEnd then
    let c := it.get h
    if c = '\u0009' ∨ c = '\u000a' ∨ c = '\u000d' ∨ c = '\u0020' then
      skipWs (it.next h)
    else
      it
  else
   it
termination_by it

/--
Skip whitespace: tabs, newlines, carriage returns, and spaces.
-/
@[inline]
def ws : Parser Unit := fun it =>
  .success ⟨_, skipWs it.2⟩ ()

/--
Takes a fixed amount of chars from the iterator.
-/
def take (n : Nat) : Parser String := fun it =>
  let right := it.2.nextn n
  let substr := String.Slice.mk it.1 it.2 right String.Pos.le_nextn |>.copy
  if substr.length != n then
    .error it .eof
  else
    .success ⟨_, right⟩ substr

end String
end Parsec
end Std.Internal
```
