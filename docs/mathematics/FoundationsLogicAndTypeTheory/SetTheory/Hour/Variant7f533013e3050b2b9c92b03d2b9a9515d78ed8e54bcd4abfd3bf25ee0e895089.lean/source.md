# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Hour.Variant7f533013e3050b2b9c92b03d2b9a9515d78ed8e54bcd4abfd3bf25ee0e895089

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93e87c393b8fb81abc4ac19474192aef977f95b2` · SHA-256 `17047e2596a598965957a104d0c09c14a98666e7e883086587a4504bae6f212d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.OfInt.Variantc372f1cf3abcb8f23a4867e30996d8a54b9bb0eccb292182c1317e8d32073ad4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c372f1cf3abcb8f23a4867e30996d8a54b9bb0eccb292182c1317e8d32073ad4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.OfInt.Variantc372f1cf3abcb8f23a4867e30996d8a54b9bb0eccb292182c1317e8d32073ad4","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"c372f1cf3abcb8f23a4867e30996d8a54b9bb0eccb292182c1317e8d32073ad4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Time/Time/Unit/Hour.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Time.Time.Unit.Minute


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.OfInt.Variantc372f1cf3abcb8f23a4867e30996d8a54b9bb0eccb292182c1317e8d32073ad4

public section

namespace Std
namespace Time
namespace Hour
open Internal

set_option linter.all true

/--
`Ordinal` represents a bounded value for hours, ranging from 0 to 23.
-/
@[expose] def Ordinal := Bounded.LE 0 23
deriving Repr, DecidableEq, LE, LT

instance : OfNat Ordinal n :=
  inferInstanceAs (OfNat (Bounded.LE 0 (0 + (23 : Nat))) n)

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
`Offset` represents an offset in hours, defined as an `Int`. This can be used to express durations
or differences in hours.
-/
@[expose] def Offset : Type := UnitVal 3600
deriving Repr, DecidableEq, Inhabited, Add, Sub, Neg, ToString, LT, LE

instance {x y : Offset} : Decidable (x ≤ y) :=
  inferInstanceAs (Decidable (x.val ≤ y.val))

instance {x y : Offset} : Decidable (x < y) :=
  inferInstanceAs (Decidable (x.val < y.val))

instance : OfNat Offset n :=
  ⟨UnitVal.ofNat n⟩

instance : Ord Offset := inferInstanceAs <| Ord (UnitVal _)

instance : TransOrd Offset := inferInstanceAs <| TransOrd (UnitVal _)

instance : LawfulEqOrd Offset := inferInstanceAs <| LawfulEqOrd (UnitVal _)

namespace Ordinal

/--
Creates an `Ordinal` from an integer, ensuring the value is within bounds.
-/
@[inline]
def ofInt (data : Int) (h : 0 ≤ data ∧ data ≤ 23) : Ordinal :=
  Bounded.LE.mk data h

/--
Converts an `Ordinal` into a relative hour in the range of 1 to 12.
-/
def toRelative (ordinal : Ordinal) : Bounded.LE 1 12 :=
  (ordinal.add 11).emod 12 (by decide) |>.add 1

/--
Converts an Ordinal into a 1-based hour representation within the range of 1 to 24.
-/
def shiftTo1BasedHour (ordinal : Ordinal) : Bounded.LE 1 24 :=
  if h : ordinal.val < 1
    then Internal.Bounded.LE.ofNatWrapping 24 (by decide)
    else ordinal.truncateBottom (Int.not_lt.mp h) |>.expandTop (by decide)
/--
Creates an `Ordinal` from a natural number, ensuring the value is within the valid bounds for hours.
-/
@[inline]
def ofNat (data : Nat) (h : data ≤ 23) : Ordinal :=
  Bounded.LE.ofNat data h

/--
Creates an `Ordinal` from a `Fin` value.
-/
@[inline]
def ofFin (data : Fin 24) : Ordinal :=
  Bounded.LE.ofFin data

/--
Converts an `Ordinal` to an `Offset`, which represents the duration in hours as an integer value.
-/
@[inline]
def toOffset (ordinal : Ordinal) : Offset :=
  UnitVal.ofInt ordinal.val

end Ordinal
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
end Hour
end Time
end Std
```
