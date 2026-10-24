# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Defs.Variantc9674424480ab57915a6af73275e7a7c8b68d89974cc52f117a6482431973a62

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `391f4553ff1f7cec5fee76b36ff37ddf564fdc81` · SHA-256 `b81eb877d337b7cff6becf3203be69f8de2c22f2052ee1757c01dc6e3ce351e0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Leftpad.Variantff6a2fb50148787167a6906f329ca6be42e377178d10e7db63495159951ec364","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ff6a2fb50148787167a6906f329ca6be42e377178d10e7db63495159951ec364","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Leftpad.Variantff6a2fb50148787167a6906f329ca6be42e377178d10e7db63495159951ec364","mathematical_subject":"Computation.DataStructures","original_sha256":"ff6a2fb50148787167a6906f329ca6be42e377178d10e7db63495159951ec364","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/String/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon, Keeley Hoek, Floris van Doorn, Chris Bailey
-/

import Mathlib.Init
/-!
# Definitions for `String`

This file defines a bunch of functions for the `String` datatype.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Leftpad.Variantff6a2fb50148787167a6906f329ca6be42e377178d10e7db63495159951ec364

namespace String

/-- Pad `s : String` with repeated occurrences of `c : Char` until it's of length `n`.
  If `s` is initially larger than `n`, just return `s`. -/
def leftpad (n : Nat) (c : Char := ' ') (s : String) : String :=
  ⟨List.leftpad n c s.data⟩

/-- Construct the string consisting of `n` copies of the character `c`. -/
def replicate (n : Nat) (c : Char) : String :=
  ⟨List.replicate n c⟩

-- TODO bring this definition in line with the above, either by:
-- adding `List.rightpad` to Batteries and changing the definition of `rightpad` here to match
-- or by changing the definition of `leftpad` above to match this
/-- Pad `s : String` with repeated occurrences of `c : Char` on the right until it's of length `n`.
  If `s` is initially larger than `n`, just return `s`. -/
def rightpad (n : Nat) (c : Char := ' ') (s : String) : String :=
  s ++ String.replicate (n - s.length) c

/-- `s.IsPrefix t` checks if the string `s` is a prefix of the string `t`. -/
def IsPrefix : String → String → Prop
  | ⟨d1⟩, ⟨d2⟩ => List.IsPrefix d1 d2

/-- `s.IsSuffix t` checks if the string `s` is a suffix of the string `t`. -/
def IsSuffix : String → String → Prop
  | ⟨d1⟩, ⟨d2⟩ => List.IsSuffix d1 d2

/-- `String.mapTokens c f s` tokenizes `s : string` on `c : char`, maps `f` over each token, and
then reassembles the string by intercalating the separator token `c` over the mapped tokens. -/
def mapTokens (c : Char) (f : String → String) : String → String :=
  intercalate (singleton c) ∘ List.map f ∘ (·.split (· = c))

/-- Produce the head character from the string `s`, if `s` is not empty, otherwise `'A'`. -/
def head (s : String) : Char :=
  s.iter.curr

end String
```
