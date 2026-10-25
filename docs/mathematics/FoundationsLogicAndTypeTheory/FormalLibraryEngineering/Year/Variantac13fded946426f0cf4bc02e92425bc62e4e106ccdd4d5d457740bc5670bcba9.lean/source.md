# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Year.Variantac13fded946426f0cf4bc02e92425bc62e4e106ccdd4d5d457740bc5670bcba9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `810d6f3c78c9d984958a4c2dcb48c8dd2779f06a` · SHA-256 `8ea47bf1feabab8387ffbd324082a4fda6fbb67bd792bc942c7377c1a17bef94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Era.Variant4cde92a7d02b8423cb97eb8d4a8d1e2082a73e59d7fe7c6be3a8411d179995e1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4cde92a7d02b8423cb97eb8d4a8d1e2082a73e59d7fe7c6be3a8411d179995e1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Era.Variant4cde92a7d02b8423cb97eb8d4a8d1e2082a73e59d7fe7c6be3a8411d179995e1","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"4cde92a7d02b8423cb97eb8d4a8d1e2082a73e59d7fe7c6be3a8411d179995e1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Time/Date/Unit/Year.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Time.Date.Unit.Month


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Era.Variant4cde92a7d02b8423cb97eb8d4a8d1e2082a73e59d7fe7c6be3a8411d179995e1

public section

namespace Std
namespace Time
namespace Year
open Internal

set_option linter.all true

/--
Defines the different eras.
-/
inductive Era
  /-- The era before the Common Era (BCE), always represents a date before year 0. -/
  | bce

  /-- The Common Era (CE), represents dates from year 0 onwards. -/
  | ce
deriving Repr, Inhabited

instance : ToString Era where
  toString
    | .bce => "BCE"
    | .ce => "CE"

/--
`Offset` represents a year offset, defined as an `Int`.
-/
@[expose, implicit_reducible] def Offset : Type := Int
deriving Repr, DecidableEq, Inhabited, Add, Sub, Neg, LE, LT, ToString

set_option backward.inferInstanceAs.wrap.instances false in
instance {x y : Offset} : Decidable (x ≤ y) :=
  let x : Int := x
  inferInstanceAs (Decidable (x ≤ y))

set_option backward.inferInstanceAs.wrap.instances false in
instance {x y : Offset} : Decidable (x < y) :=
  let x : Int := x
  inferInstanceAs (Decidable (x < y))

instance : OfNat Offset n := ⟨Int.ofNat n⟩

instance : Ord Offset := inferInstanceAs <| Ord Int

instance : TransOrd Offset := inferInstanceAs <| TransOrd Int

instance : LawfulEqOrd Offset := inferInstanceAs <| LawfulEqOrd Int

namespace Offset

/--
Creates an `Offset` from a natural number.
-/
@[inline]
def ofNat (data : Nat) : Offset :=
  Int.ofNat data

/--
Creates an `Offset` from an integer.
-/
@[inline]
def ofInt (data : Int) : Offset :=
  data

/--
Converts the `Year` offset to an `Int`.
-/
@[inline]
def toInt (offset : Offset) : Int :=
  offset

/--
Converts the `Year` offset to a `Month` offset.
-/
@[inline]
def toMonths (val : Offset) : Month.Offset :=
  val.mul 12

/--
Determines if a year is a leap year in the proleptic Gregorian calendar.
-/
@[inline]
def isLeap (y : Offset) : Bool :=
  y.toInt.tmod 4 = 0 ∧ (y.toInt.tmod 100 ≠ 0 ∨ y.toInt.tmod 400 = 0)

/--
Returns the `Era` of the `Year`.
-/
def era (year : Offset) : Era :=
  if year.toInt ≥ 1
    then .ce
    else .bce

/--
Calculates the number of days in the specified `year`.
-/
def days (year : Offset) : Bounded.LE 365 366 :=
  if year.isLeap
    then .mk 366 (by decide)
    else .mk 365 (by decide)

/--
Calculates the number of weeks in the specified `year`.
-/
def weeks (year : Offset) : Bounded.LE 52 53 :=
  let p (year : Offset) := Bounded.LE.byEmod (year.toInt + year.toInt/4 - year.toInt/100 + year.toInt/400) 7 (by decide)

  let add : Bounded.LE 0 1 :=
    if (p year).val = 4 ∨ (p (year - 1)).val = 3
      then Bounded.LE.ofNat 1 (by decide)
      else Bounded.LE.ofNat 0 (by decide)

  Bounded.LE.exact 52 |>.addBounds add

/--
Checks if the given date is valid for the specified year, month, and day.
-/
@[inline]
abbrev Valid (year : Year.Offset) (month : Month.Ordinal) (day : Day.Ordinal) : Prop :=
  day ≤ month.days year.isLeap

end Offset
end Year
end Time
end Std
```
