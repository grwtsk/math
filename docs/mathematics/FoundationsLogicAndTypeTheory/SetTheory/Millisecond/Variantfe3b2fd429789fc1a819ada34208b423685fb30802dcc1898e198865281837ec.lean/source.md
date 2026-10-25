# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Millisecond.Variantfe3b2fd429789fc1a819ada34208b423685fb30802dcc1898e198865281837ec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0aef8e3b032198210e486332a75e54e65e5ff212` · SHA-256 `e75cb8f198ba8f6806812ec85cdf80ccd9a608f6ba0094f3459e6be186c6fe8e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.OfNat.Variant41dfadd98a02e2368d7412c7cf838a0b8291a10f9d09380d102dfdd1679bb12b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"41dfadd98a02e2368d7412c7cf838a0b8291a10f9d09380d102dfdd1679bb12b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.OfNat.Variant41dfadd98a02e2368d7412c7cf838a0b8291a10f9d09380d102dfdd1679bb12b","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"41dfadd98a02e2368d7412c7cf838a0b8291a10f9d09380d102dfdd1679bb12b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Time/Time/Unit/Millisecond.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Time.Time.Unit.Nanosecond


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.OfNat.Variant41dfadd98a02e2368d7412c7cf838a0b8291a10f9d09380d102dfdd1679bb12b

public section

namespace Std
namespace Time
namespace Millisecond
open Internal

set_option linter.all true

/--
`Ordinal` represents a bounded value for milliseconds, ranging from 0 to 999 milliseconds.
-/
@[expose] def Ordinal := Bounded.LE 0 999
deriving Repr, DecidableEq, LE, LT

instance : OfNat Ordinal n :=
  inferInstanceAs (OfNat (Bounded.LE 0 (0 + (999 : Nat))) n)

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
`Offset` represents a duration offset in milliseconds.
-/
@[expose] def Offset : Type := UnitVal (1 / 1000)
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
namespace Ordinal

/--
Creates an `Ordinal` from an integer, ensuring the value is within bounds.
-/
@[inline]
def ofInt (data : Int) (h : 0 ≤ data ∧ data ≤ 999) : Ordinal :=
  Bounded.LE.mk data h

/--
Creates an `Ordinal` from a natural number, ensuring the value is within bounds.
-/
@[inline]
def ofNat (data : Nat) (h : data ≤ 999) : Ordinal :=
  Bounded.LE.ofNat data h

/--
Creates an `Ordinal` from a `Fin`, ensuring the value is within bounds.
-/
@[inline]
def ofFin (data : Fin 1000) : Ordinal :=
  Bounded.LE.ofFin data

/--
Converts an `Ordinal` to an `Offset`.
-/
@[inline]
def toOffset (ordinal : Ordinal) : Offset :=
  UnitVal.ofInt ordinal.val

end Ordinal
end Millisecond
end Time
end Std
```
