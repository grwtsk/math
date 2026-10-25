# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Span.Variant497807dfefc67acb69c03d63e2a197f294df2bcb07d133f97f90000461d7491e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65b2d97e03d9a8fe8ebf0c754a4b1ef06da1f523` · SHA-256 `814732d2159bf3e012f1d1543f629337ace47b37488c9a2c88702bf22f0c2d32`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Span.Variantc8f839a69c113ff0c2a8e373cdb72ea15d28361da063e5598c935dedc52e8f3e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c8f839a69c113ff0c2a8e373cdb72ea15d28361da063e5598c935dedc52e8f3e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Span.Variantc8f839a69c113ff0c2a8e373cdb72ea15d28361da063e5598c935dedc52e8f3e","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"c8f839a69c113ff0c2a8e373cdb72ea15d28361da063e5598c935dedc52e8f3e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemanticTokenization/Span.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.TextCarrier

/-!
# Proof-bearing half-open source spans

Span identity includes offsets.  Equal extracted characters never identify two
spans at different locations.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Span.Variantc8f839a69c113ff0c2a8e373cdb72ea15d28361da063e5598c935dedc52e8f3e

namespace Mathematics.SemanticTokenization

structure Span (text : TextCarrier) where
  start : Nat
  stop : Nat
  start_lt_stop : start < stop
  stop_le_size : stop ≤ text.chars.size
deriving Repr

namespace Span

variable {text : TextCarrier}

def Valid (span : Span text) : Prop :=
  span.start < span.stop ∧
  span.stop ≤ text.chars.size

def length (span : Span text) : Nat :=
  span.stop - span.start

@[ext]
theorem ext {left right : Span text}
    (start : left.start = right.start)
    (stop : left.stop = right.stop) :
    left = right := by
  cases left
  cases right
  cases start
  cases stop
  rfl

instance : DecidableEq (Span text) := fun left right =>
  if hStart : left.start = right.start then
    if hStop : left.stop = right.stop then
      isTrue (Span.ext hStart hStop)
    else
      isFalse (fun equality => hStop (congrArg Span.stop equality))
  else
    isFalse (fun equality => hStart (congrArg Span.start equality))

theorem valid (span : Span text) :
    span.Valid :=
  ⟨span.start_lt_stop, span.stop_le_size⟩

theorem length_pos (span : Span text) :
    0 < span.length := by
  simp only [length]
  omega

/-- Exact extraction indexed by the certified span length. -/
def extract (span : Span text) : List Char :=
  List.ofFn fun index : Fin span.length =>
    text.chars[
      ⟨span.start + index.val, by
        have indexBound := index.isLt
        simp only [length] at indexBound
        omega⟩]

@[simp]
theorem extract_size (span : Span text) :
    span.extract.length = span.length := by
  simp [extract]

def Before (left right : Span text) : Prop :=
  left.stop ≤ right.start

def Overlaps (left right : Span text) : Prop :=
  left.start < right.stop ∧
  right.start < left.stop

def Contains (outer inner : Span text) : Prop :=
  outer.start ≤ inner.start ∧
  inner.stop ≤ outer.stop

/-- Directed surface adjacency: `left` ends where `right` starts. -/
def Adjacent (left right : Span text) : Prop :=
  left.stop = right.start

def CoversIndex (span : Span text) (index : Fin text.chars.size) : Prop :=
  span.start ≤ index.val ∧ index.val < span.stop

def positions (span : Span text) : Finset Nat :=
  (Finset.range text.chars.size).filter
    (fun index => span.start ≤ index ∧ index < span.stop)

theorem before_irrefl (span : Span text) :
    ¬ span.Before span := by
  intro before
  exact (not_lt_of_ge before) span.start_lt_stop

theorem overlaps_symm {left right : Span text} :
    left.Overlaps right ↔ right.Overlaps left :=
  and_comm

theorem adjacent_before {left right : Span text}
    (adjacent : left.Adjacent right) :
    left.Before right :=
  le_of_eq adjacent

theorem contains_trans {outer middle inner : Span text}
    (first : outer.Contains middle)
    (second : middle.Contains inner) :
    outer.Contains inner :=
  ⟨first.1.trans second.1, second.2.trans first.2⟩

end Span

end Mathematics.SemanticTokenization
```
