# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AsciiCasing.Variantd8f5ecf35bcb9809c5c7fe7e1256cb00c957f077a370c8f68e1d9a751009a218

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5789f44ebf49496ae5a3d8ef978ef75d1cf4e70` · SHA-256 `3f809608d10fd17385056e85e1504230215aab51ecd474a17373eb74d27ef771`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SourceUnit.Variant1bbd3e8f65ab51b873c36cf968ad4e96aaa0fe50f4c8707658ca28c2884380c7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1bbd3e8f65ab51b873c36cf968ad4e96aaa0fe50f4c8707658ca28c2884380c7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.Algorithms.SourceCorpus.SourceUnit.Variant1bbd3e8f65ab51b873c36cf968ad4e96aaa0fe50f4c8707658ca28c2884380c7","mathematical_subject":"Computation.Algorithms","original_sha256":"1bbd3e8f65ab51b873c36cf968ad4e96aaa0fe50f4c8707658ca28c2884380c7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Data/String/AsciiCasing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Christopher Bailey. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christopher Bailey, F. G. Dorais
-/
module
/- Failing on nightly-2025-12-18
public import Batteries.Data.Char
public import Batteries.Data.Char.AsciiCasing

@[expose] public section

namespace String

/-- Case folding for ASCII characters only.

Alphabetic ASCII characters are mapped to their lowercase form, all other characters are left
unchanged. This agrees with the Unicode case folding algorithm for ASCII characters.

```
#eval "ABC".caseFoldAsciiOnly == "abc" -- true
#eval "x".caseFoldAsciiOnly == "y" -- false
#eval "Àà".caseFoldAsciiOnly == "Àà" -- true
#eval "1$#!".caseFoldAsciiOnly == "1$#!" -- true
```
-/
abbrev caseFoldAsciiOnly (s : String) := s.map Char.caseFoldAsciiOnly

-- TODO: Reimplement with finite iterators/streams when available for `String`.
private partial def beqCaseInsensitiveAsciiOnlyImpl (s₁ s₂ : String) : Bool :=
  s₁.length == s₂.length && loop (ToStream.toStream s₁) (ToStream.toStream s₂)
where
  loop i₁ i₂ := match Stream.next? i₁, Stream.next? i₂ with
    | some (c₁, i₁), some (c₂, i₂) => c₁.beqCaseInsensitiveAsciiOnly c₂ && loop i₁ i₂
    | none, none => true
    | _, _ => false

/--
Bool-valued comparison of two `String`s for *ASCII*-case insensitive equality.

#eval "abc".beqCaseInsensitiveAsciiOnly "ABC" -- true
#eval "cba".beqCaseInsensitiveAsciiOnly "ABC" -- false
#eval "$".beqCaseInsensitiveAsciiOnly "$" -- true
#eval "a".beqCaseInsensitiveAsciiOnly "b" -- false
#eval "γ".beqCaseInsensitiveAsciiOnly "Γ" -- false
-/
@[implemented_by beqCaseInsensitiveAsciiOnlyImpl]
def beqCaseInsensitiveAsciiOnly (s₁ s₂ : String) : Bool :=
  s₁.caseFoldAsciiOnly == s₂.caseFoldAsciiOnly

theorem beqCaseInsensitiveAsciiOnly.eqv : Equivalence (beqCaseInsensitiveAsciiOnly · ·) := {
  refl _ := BEq.rfl
  trans _ _ := by simp_all [beqCaseInsensitiveAsciiOnly]
  symm := by simp_all [beqCaseInsensitiveAsciiOnly]
}

/--
Setoid structure on `String` usig `beqCaseInsensitiveAsciiOnly`
-/
def beqCaseInsensitiveAsciiOnly.isSetoid : Setoid String :=
  ⟨(beqCaseInsensitiveAsciiOnly · ·), beqCaseInsensitiveAsciiOnly.eqv⟩

-- TODO: Reimplement with finite iterators/streams when available for `String`.
private partial def cmpCaseInsensitiveAsciiOnlyImpl (s₁ s₂ : String) : Ordering :=
  loop (ToStream.toStream s₁) (ToStream.toStream s₂)
where
  loop i₁ i₂ := match Stream.next? i₁, Stream.next? i₂ with
    | some (c₁, i₁), some (c₂, i₂) => c₁.cmpCaseInsensitiveAsciiOnly c₂ |>.then (loop i₁ i₂)
    | some _, none => .gt
    | none, some _ => .lt
    | none, none => .eq

/--
ASCII-case insensitive implementation comparison returning an `Ordering`. Useful for sorting.

```
#eval cmpCaseInsensitiveAsciiOnly "a" "A" -- eq
#eval cmpCaseInsensitiveAsciiOnly "a" "a" -- eq
#eval cmpCaseInsensitiveAsciiOnly "$" "$" -- eq
#eval cmpCaseInsensitiveAsciiOnly "a" "b" -- lt
#eval cmpCaseInsensitiveAsciiOnly "γ" "Γ" -- gt
```
-/
@[implemented_by cmpCaseInsensitiveAsciiOnlyImpl]
def cmpCaseInsensitiveAsciiOnly (s₁ s₂ : String) : Ordering :=
  compare s₁.caseFoldAsciiOnly s₂.caseFoldAsciiOnly
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SourceUnit.Variant1bbd3e8f65ab51b873c36cf968ad4e96aaa0fe50f4c8707658ca28c2884380c7

````
