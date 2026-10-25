# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Nanosecond.Variant57c57afe1b59201645f768d06e6d30a9fcd3751b6cbfa871d32361de1210fa36

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5f8bb36c193e8ff798b395216a240d8a934ed6e` · SHA-256 `d18c7ed6269a9cd847d4bebdde0ed3755bbd739f56a2c6ccff097f1e320bd22d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.OfNat.Variant03563cc3ac4b27744ce308126e11e8d10a40af0f7c11b7e801a7e4f1914dc831","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"03563cc3ac4b27744ce308126e11e8d10a40af0f7c11b7e801a7e4f1914dc831","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.OfNat.Variant03563cc3ac4b27744ce308126e11e8d10a40af0f7c11b7e801a7e4f1914dc831","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"03563cc3ac4b27744ce308126e11e8d10a40af0f7c11b7e801a7e4f1914dc831","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Time/Time/Unit/Nanosecond.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Time.Internal


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.OfNat.Variant03563cc3ac4b27744ce308126e11e8d10a40af0f7c11b7e801a7e4f1914dc831

public section

namespace Std
namespace Time
namespace Nanosecond
open Internal

set_option linter.all true

/--
`Ordinal` represents a nanosecond value that is bounded between 0 and 999,999,999 nanoseconds.
-/
@[expose] def Ordinal := Bounded.LE 0 999999999
deriving Repr, DecidableEq, LE, LT

instance : OfNat Ordinal n where
  ofNat := Bounded.LE.ofFin (Fin.ofNat _ n)

instance : Inhabited Ordinal where
  default := 0

instance {x y : Ordinal} : Decidable (x ≤ y) :=
  inferInstanceAs (Decidable (x.val ≤ y.val))

instance {x y : Ordinal} : Decidable (x < y) :=
  inferInstanceAs (Decidable (x.val < y.val))

instance : Ord Ordinal := inferInstanceAs <| Ord (Bounded.LE 0 _)

instance : TransOrd Ordinal := inferInstanceAs <| TransOrd (Bounded.LE 0 _)

instance : LawfulEqOrd Ordinal := inferInstanceAs <| LawfulEqOrd (Bounded.LE 0 _)

/--
`Offset` represents a time offset in nanoseconds.
-/
@[expose] def Offset : Type := UnitVal (1 / 1000000000)
deriving Repr, DecidableEq, Inhabited, Add, Sub, Neg, LE, LT, ToString

instance {x y : Offset} : Decidable (x ≤ y) :=
  inferInstanceAs (Decidable (x.val ≤ y.val))

instance {x y : Offset} : Decidable (x < y) :=
  inferInstanceAs (Decidable (x.val < y.val))

instance : OfNat Offset n :=
  ⟨UnitVal.ofNat n⟩

instance : Ord Offset := inferInstanceAs <| Ord (UnitVal _)

instance : TransOrd Offset := inferInstanceAs <| TransOrd (UnitVal _)

instance : LawfulEqOrd Offset := inferInstanceAs <| LawfulEqOrd (UnitVal _)

namespace Offset

/--
Creates an `Offset` from a natural number.
-/
@[inline]
def ofNat (data : Nat) : Offset :=
  UnitVal.ofInt data

/--
Creates an `Offset` from an integer.
-/
@[inline]
def ofInt (data : Int) : Offset :=
  UnitVal.ofInt data

end Offset

/--
`Span` represents a bounded value for nanoseconds, ranging between -999999999 and 999999999.
This can be used for operations that involve differences or adjustments within this range.
-/
@[expose] def Span := Bounded.LE (-999999999) 999999999
deriving Repr, DecidableEq, LE, LT

instance : Inhabited Span where default := Bounded.LE.mk 0 (by decide)

instance {x y : Span} : Decidable (x ≤ y) :=
  inferInstanceAs (Decidable (x.val ≤ y.val))

instance {x y : Span} : Decidable (x < y) :=
  inferInstanceAs (Decidable (x.val < y.val))

instance : Ord Span := inferInstanceAs <| Ord (Bounded.LE _ _)

instance : TransOrd Span := inferInstanceAs <| TransOrd (Bounded.LE _ _)

instance : LawfulEqOrd Span := inferInstanceAs <| LawfulEqOrd (Bounded.LE _ _)

namespace Span

/--
Creates a new `Offset` out of a `Span`.
-/
def toOffset (span : Span) : Offset :=
  UnitVal.ofInt span.val

end Span

namespace Ordinal

/--
`Ordinal` represents a bounded value for nanoseconds in a day, which ranges between 0 and 86400000000000.
-/
@[expose] def OfDay := Bounded.LE 0 86400000000000
deriving Repr, DecidableEq, LE, LT

instance : Inhabited OfDay where default := Bounded.LE.mk 0 (by decide)

instance {x y : OfDay} : Decidable (x ≤ y) :=
  inferInstanceAs (Decidable (x.val ≤ y.val))

instance {x y : OfDay} : Decidable (x < y) :=
  inferInstanceAs (Decidable (x.val < y.val))

instance : Ord OfDay := inferInstanceAs <| Ord (Bounded.LE _ _)

instance : TransOrd OfDay := inferInstanceAs <| TransOrd (Bounded.LE _ _)

instance : LawfulEqOrd OfDay := inferInstanceAs <| LawfulEqOrd (Bounded.LE _ _)

/--
Creates an `Ordinal` from an integer, ensuring the value is within bounds.
-/
@[inline]
def ofInt (data : Int) (h : 0 ≤ data ∧ data ≤ 999999999) : Ordinal :=
  Bounded.LE.mk data h

/--
Creates an `Ordinal` from a natural number, ensuring the value is within bounds.
-/
@[inline]
def ofNat (data : Nat) (h : data ≤ 999999999) : Ordinal :=
  Bounded.LE.ofNat data h

/--
Creates an `Ordinal` from a `Fin`, ensuring the value is within bounds.
-/
@[inline]
def ofFin (data : Fin 1000000000) : Ordinal :=
  Bounded.LE.ofFin data

/--
Converts an `Ordinal` to an `Offset`.
-/
@[inline]
def toOffset (ordinal : Ordinal) : Offset :=
  UnitVal.ofInt ordinal.val

end Ordinal
end Nanosecond
end Time
end Std
```
