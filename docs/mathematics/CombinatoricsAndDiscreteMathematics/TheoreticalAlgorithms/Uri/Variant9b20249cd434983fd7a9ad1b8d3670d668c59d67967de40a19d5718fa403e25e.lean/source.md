# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Uri.Variant9b20249cd434983fd7a9ad1b8d3670d668c59d67967de40a19d5718fa403e25e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0104841acf63c6c5dcfd3417e9da9437edb6463e` · SHA-256 `4e65d43feb639bf423eb4afa4f1dc635f580cef7684209eaeb2cf0558052fd14`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DecodeUri.Variant067918bb0cb2dab744e27f7d9e77e8f4178832d1f5ec830774a7f11c5b18dd7f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"067918bb0cb2dab744e27f7d9e77e8f4178832d1f5ec830774a7f11c5b18dd7f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.DecodeUri.Variant067918bb0cb2dab744e27f7d9e77e8f4178832d1f5ec830774a7f11c5b18dd7f","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"067918bb0cb2dab744e27f7d9e77e8f4178832d1f5ec830774a7f11c5b18dd7f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/System/Uri.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Lovett
-/
module

prelude
public import Init.System.FilePath
import Init.Data.String.TakeDrop
import Init.Data.String.Modify
import Init.Data.String.Search
import Init.Omega
import Init.System.Platform
import Init.While
import Init.Data.String.Length
import Init.Data.Iterators.Combinators.Take


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DecodeUri.Variant067918bb0cb2dab744e27f7d9e77e8f4178832d1f5ec830774a7f11c5b18dd7f

public section

namespace System
namespace Uri
namespace UriEscape

/- https://www.ietf.org/rfc/rfc3986.txt -/
@[inline] def zero : UInt8 := '0'.toNat.toUInt8
@[inline] def nine : UInt8 := '9'.toNat.toUInt8
@[inline] def lettera : UInt8 := 'a'.toNat.toUInt8
@[inline] def letterf : UInt8 := 'f'.toNat.toUInt8
@[inline] def letterA : UInt8 := 'A'.toNat.toUInt8
@[inline] def letterF : UInt8 := 'F'.toNat.toUInt8

/-- Decode %HH escapings in the given string. Note that sometimes a consecutive
sequence of multiple escapings can represent a utf-8 encoded sequence for
a single unicode code point and these will also be decoded correctly. -/
def decodeUri (uri : String) : String := Id.run do
  let mut decoded : ByteArray := ByteArray.empty
  let rawBytes := uri.toUTF8
  let len := rawBytes.size
  let mut i := 0
  let percent := '%'.toNat.toUInt8
  while h : i < len do
    let c := rawBytes[i]
    (decoded, i) := if h₁ : c == percent ∧ i + 1 < len then
      let h1 := rawBytes[i + 1]
      if let some hd1 := hexDigitToUInt8? h1 then
        if h₂ : i + 2 < len then
          let h2 := rawBytes[i + 2]
          if let some hd2 := hexDigitToUInt8? h2 then
            -- decode the hex digits into a byte.
            (decoded.push (hd1 * 16 + hd2), i + 3)
          else
            -- not a valid second hex digit so keep the original bytes
            (((decoded.push c).push h1).push h2, i + 3)
        else
          -- hit end of string, there is no h2.
          ((decoded.push c).push h1, i + 2)
      else
        -- not a valid hex digit so keep the original bytes
        ((decoded.push c).push h1, i + 2)
    else
      (decoded.push c, i + 1)
  return String.fromUTF8! decoded
where hexDigitToUInt8? (c : UInt8) : Option UInt8 :=
  if zero ≤ c ∧ c ≤ nine then some (c - zero)
  else if lettera ≤ c ∧ c ≤ letterf then some (c - lettera + 10)
  else if letterA ≤ c ∧ c ≤ letterF then some (c - letterA + 10)
  else none

def rfc3986ReservedChars : List Char := [ ';', ':', '?', '#', '[', ']', '@', '&', '=', '+', '$', ',', '!', '\'', '(', ')', '*', '%', ' ' ]

def uriEscapeAsciiChar (c : Char) : String :=
  if rfc3986ReservedChars.contains c || c < ' ' then
    "%" ++ uInt8ToHex c.toNat.toUInt8
  else if (Char.toNat c) < 127 then
    c.toString
  else
    c.toString.toUTF8.foldl (fun s b => s ++ "%" ++ (uInt8ToHex b)) ""
where
  uInt8ToHex (c : UInt8) : String :=
    let d2 := c / 16;
    let d1 := c % 16;
    (hexDigitRepr d2.toNat ++ hexDigitRepr d1.toNat).toUpper
end UriEscape

/-- Replaces special characters in the given Uri with %HH Uri escapings. -/
def escapeUri (uri: String) : String :=
  uri.foldl (fun s c => s ++ UriEscape.uriEscapeAsciiChar c) ""

/-- Replaces all %HH Uri escapings in the given string with their
corresponding unicode code points.  Note that sometimes a consecutive
sequence of multiple escapings can represent a utf-8 encoded sequence for
a single unicode code point and these will also be decoded correctly. -/
def unescapeUri (s: String) : String :=
  UriEscape.decodeUri s

private def normalizeDriveLetter (uri : String) : String :=
  -- lower-case drive letters seem to be preferred in URIs
  match (uri.chars.take 2).toList with
  | [driveLetter, ':'] => if driveLetter.isUpper then uri.decapitalize else uri
  | _ => uri

/-- Convert the given FilePath to a "file:///encodedpath" Uri. -/
def pathToUri (fname : System.FilePath) : String := Id.run do
  let mut uri := fname.normalize.toString
  if System.Platform.isWindows then
    uri := normalizeDriveLetter uri
    uri := uri.map (fun c => if c == '\\' then '/' else c)
  uri := uri.foldl (fun s c => s ++ UriEscape.uriEscapeAsciiChar c) ""
  let result := if uri.startsWith "/" then "file://" ++ uri else "file:///" ++ uri
  result

-- On Windows, the path "/c:/temp" needs to become "C:/temp"
private def normalizeDriveExpression (p : String.Slice) : String :=
  match (p.chars.take 3).toList with
  | ['/', driveLetter, ':'] =>
    if driveLetter.isAlpha then
      (p.drop 1).copy.capitalize
    else p.copy
  | _ => p.copy

/-- Convert the given uri to a FilePath stripping the 'file://' prefix,
ignoring the optional host name. -/
def fileUriToPath? (uri : String) : Option System.FilePath :=
  match (unescapeUri uri).dropPrefix? "file://" with
  | none => none
  | some p =>
    let p := p.dropWhile (fun c => c != '/') -- drop the hostname.
    if System.Platform.isWindows then
      some ((normalizeDriveExpression p).map (fun c => if c == '/' then '\\' else c))
    else
      some p.copy

end Uri
end System
```
