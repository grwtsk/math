# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantfab2e3636fa03a91bda19ac809d86a85f238acaa6309d3715f5caa087a6886c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `56ea4309c38110887d09031a6af719a5404380ef` · SHA-256 `dfd78ba7a68a69d7edb7c793322e6e0c7ba8ffd479223240172d6e5ea01c3fc8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToDays.Variantbeb48e8069e5265e9cfd40a16add4931fe4f530cf4f64d7bce98d7dd585c13e4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"beb48e8069e5265e9cfd40a16add4931fe4f530cf4f64d7bce98d7dd585c13e4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ToDays.Variantbeb48e8069e5265e9cfd40a16add4931fe4f530cf4f64d7bce98d7dd585c13e4","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"beb48e8069e5265e9cfd40a16add4931fe4f530cf4f64d7bce98d7dd585c13e4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Time/Date/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Time.Date.Unit.Basic
public import Std.Time.Date.ValidDate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToDays.Variantbeb48e8069e5265e9cfd40a16add4931fe4f530cf4f64d7bce98d7dd585c13e4

public section

namespace Std
namespace Time

namespace Nanosecond
namespace Offset

/--
Convert `Nanosecond.Offset` into `Day.Offset`.
-/
@[inline]
def toDays (nanoseconds : Nanosecond.Offset) : Day.Offset :=
  nanoseconds.div 86400000000000 |>.cast (by decide +kernel)

/--
Convert `Day.Offset` into `Nanosecond.Offset`.
-/
@[inline]
def ofDays (days : Day.Offset) : Nanosecond.Offset :=
  days.mul 86400000000000 |>.cast (by decide +kernel)

/--
Convert `Nanosecond.Offset` into `Week.Offset`.
-/
@[inline]
def toWeeks (nanoseconds : Nanosecond.Offset) : Week.Offset :=
  nanoseconds.div 604800000000000 |>.cast (by decide +kernel)

/--
Convert `Week.Offset` into `Nanosecond.Offset`.
-/
@[inline]
def ofWeeks (weeks : Week.Offset) : Nanosecond.Offset :=
  weeks.mul 604800000000000 |>.cast (by decide +kernel)

end Offset
end Nanosecond

namespace Millisecond
namespace Offset

/--
Convert `Millisecond.Offset` into `Day.Offset`.
-/
@[inline]
def toDays (milliseconds : Millisecond.Offset) : Day.Offset :=
  milliseconds.div 86400000 |>.cast (by decide +kernel)

/--
Convert `Day.Offset` into `Millisecond.Offset`.
-/
@[inline]
def ofDays (days : Day.Offset) : Millisecond.Offset :=
  days.mul 86400000 |>.cast (by decide +kernel)

/--
Convert `Millisecond.Offset` into `Week.Offset`.
-/
@[inline]
def toWeeks (milliseconds : Millisecond.Offset) : Week.Offset :=
  milliseconds.div 604800000 |>.cast (by decide +kernel)

/--
Convert `Week.Offset` into `Millisecond.Offset`.
-/
@[inline]
def ofWeeks (weeks : Week.Offset) : Millisecond.Offset :=
  weeks.mul 604800000 |>.cast (by decide +kernel)

end Offset
end Millisecond

namespace Second
namespace Offset

/--
Convert `Second.Offset` into `Day.Offset`.
-/
@[inline]
def toDays (seconds : Second.Offset) : Day.Offset :=
  seconds.div 86400 |>.cast (by decide +kernel)

/--
Convert `Day.Offset` into `Second.Offset`.
-/
@[inline]
def ofDays (days : Day.Offset) : Second.Offset :=
  days.mul 86400 |>.cast (by decide +kernel)

/--
Convert `Second.Offset` into `Week.Offset`.
-/
@[inline]
def toWeeks (seconds : Second.Offset) : Week.Offset :=
  seconds.div 604800 |>.cast (by decide +kernel)

/--
Convert `Week.Offset` into `Second.Offset`.
-/
@[inline]
def ofWeeks (weeks : Week.Offset) : Second.Offset :=
  weeks.mul 604800 |>.cast (by decide +kernel)

end Offset
end Second

namespace Minute
namespace Offset

/--
Convert `Minute.Offset` into `Day.Offset`.
-/
@[inline]
def toDays (minutes : Minute.Offset) : Day.Offset :=
  minutes.div 1440 |>.cast (by decide +kernel)

/--
Convert `Day.Offset` into `Minute.Offset`.
-/
@[inline]
def ofDays (days : Day.Offset) : Minute.Offset :=
  days.mul 1440 |>.cast (by decide +kernel)

/--
Convert `Minute.Offset` into `Week.Offset`.
-/
@[inline]
def toWeeks (minutes : Minute.Offset) : Week.Offset :=
  minutes.div 10080 |>.cast (by decide +kernel)

/--
Convert `Week.Offset` into `Minute.Offset`.
-/
@[inline]
def ofWeeks (weeks : Week.Offset) : Minute.Offset :=
  weeks.mul 10080 |>.cast (by decide +kernel)

end Offset
end Minute

namespace Hour
namespace Offset

/--
Convert `Hour.Offset` into `Day.Offset`.
-/
@[inline]
def toDays (hours : Hour.Offset) : Day.Offset :=
  hours.div 24 |>.cast (by decide +kernel)

/--
Convert `Day.Offset` into `Hour.Offset`.
-/
@[inline]
def ofDays (days : Day.Offset) : Hour.Offset :=
  days.mul 24 |>.cast (by decide +kernel)

/--
Convert `Hour.Offset` into `Week.Offset`.
-/
@[inline]
def toWeeks (hours : Hour.Offset) : Week.Offset :=
  hours.div 168 |>.cast (by decide +kernel)

/--
Convert `Week.Offset` into `Hour.Offset`.
-/
@[inline]
def ofWeeks (weeks : Week.Offset) : Hour.Offset :=
  weeks.mul 168 |>.cast (by decide +kernel)

end Offset
end Hour

instance : HAdd Nanosecond.Offset Nanosecond.Offset Nanosecond.Offset where
  hAdd x y := x.add y

instance : HAdd Nanosecond.Offset Millisecond.Offset Nanosecond.Offset where
  hAdd x y := x.add y.toNanoseconds

instance : HAdd Nanosecond.Offset Second.Offset Nanosecond.Offset where
  hAdd x y := x.add y.toNanoseconds

instance : HAdd Nanosecond.Offset Minute.Offset Nanosecond.Offset where
  hAdd x y := x.add y.toNanoseconds

instance : HAdd Nanosecond.Offset Hour.Offset Nanosecond.Offset where
  hAdd x y := x.add y.toNanoseconds

instance : HAdd Nanosecond.Offset Day.Offset Nanosecond.Offset where
  hAdd x y := x.add y.toNanoseconds

instance : HAdd Nanosecond.Offset Week.Offset Nanosecond.Offset where
  hAdd x y := x.add y.toNanoseconds

instance : HAdd Millisecond.Offset Nanosecond.Offset Nanosecond.Offset where
  hAdd x y := x.toNanoseconds.add y

instance : HAdd Millisecond.Offset Millisecond.Offset Millisecond.Offset where
  hAdd x y := x.add y

instance : HAdd Millisecond.Offset Second.Offset Millisecond.Offset where
  hAdd x y := x.add y.toMilliseconds

instance : HAdd Millisecond.Offset Minute.Offset Millisecond.Offset where
  hAdd x y := x.add y.toMilliseconds

instance : HAdd Millisecond.Offset Hour.Offset Millisecond.Offset where
  hAdd x y := x.add y.toMilliseconds

instance : HAdd Millisecond.Offset Day.Offset Millisecond.Offset where
  hAdd x y := x.add y.toMilliseconds

instance : HAdd Millisecond.Offset Week.Offset Millisecond.Offset where
  hAdd x y := x.add y.toMilliseconds

instance : HAdd Second.Offset Nanosecond.Offset Nanosecond.Offset where
  hAdd x y := x.toNanoseconds.add y

instance : HAdd Second.Offset Millisecond.Offset Millisecond.Offset where
  hAdd x y := x.toMilliseconds.add y

instance : HAdd Second.Offset Second.Offset Second.Offset where
  hAdd x y := x.add y

instance : HAdd Second.Offset Minute.Offset Second.Offset where
  hAdd x y := x.add y.toSeconds

instance : HAdd Second.Offset Hour.Offset Second.Offset where
  hAdd x y := x.add y.toSeconds

instance : HAdd Second.Offset Day.Offset Second.Offset where
  hAdd x y := x.add y.toSeconds

instance : HAdd Second.Offset Week.Offset Second.Offset where
  hAdd x y := x.add y.toSeconds

instance : HAdd Minute.Offset Nanosecond.Offset Nanosecond.Offset where
  hAdd x y := x.toNanoseconds.add y

instance : HAdd Minute.Offset Millisecond.Offset Millisecond.Offset where
  hAdd x y := x.toMilliseconds.add y

instance : HAdd Minute.Offset Second.Offset Second.Offset where
  hAdd x y := x.toSeconds.add y

instance : HAdd Minute.Offset Minute.Offset Minute.Offset where
  hAdd x y := x.add y

instance : HAdd Minute.Offset Hour.Offset Minute.Offset where
  hAdd x y := x.add y.toMinutes

instance : HAdd Minute.Offset Day.Offset Minute.Offset where
  hAdd x y := x.add y.toMinutes

instance : HAdd Minute.Offset Week.Offset Minute.Offset where
  hAdd x y := x.add y.toMinutes

instance : HAdd Hour.Offset Nanosecond.Offset Nanosecond.Offset where
  hAdd x y := x.toNanoseconds.add y

instance : HAdd Hour.Offset Millisecond.Offset Millisecond.Offset where
  hAdd x y := x.toMilliseconds.add y

instance : HAdd Hour.Offset Second.Offset Second.Offset where
  hAdd x y := x.toSeconds.add y

instance : HAdd Hour.Offset Minute.Offset Minute.Offset where
  hAdd x y := x.toMinutes.add y

instance : HAdd Hour.Offset Hour.Offset Hour.Offset where
  hAdd x y := x.add y

instance : HAdd Hour.Offset Day.Offset Hour.Offset where
  hAdd x y := x.add y.toHours

instance : HAdd Hour.Offset Week.Offset Hour.Offset where
  hAdd x y := x.add y.toHours

instance : HAdd Day.Offset Nanosecond.Offset Nanosecond.Offset where
  hAdd x y := x.toNanoseconds.add y

instance : HAdd Day.Offset Millisecond.Offset Millisecond.Offset where
  hAdd x y := x.toMilliseconds.add y

instance : HAdd Day.Offset Second.Offset Second.Offset where
  hAdd x y := x.toSeconds.add y

instance : HAdd Day.Offset Minute.Offset Minute.Offset where
  hAdd x y := x.toMinutes.add y

instance : HAdd Day.Offset Hour.Offset Hour.Offset where
  hAdd x y := x.toHours.add y

instance : HAdd Day.Offset Day.Offset Day.Offset where
  hAdd x y := x.add y

instance : HAdd Day.Offset Week.Offset Day.Offset where
  hAdd x y := x.add y.toDays

instance : HAdd Week.Offset Nanosecond.Offset Nanosecond.Offset where
  hAdd x y := x.toNanoseconds.add y

instance : HAdd Week.Offset Millisecond.Offset Millisecond.Offset where
  hAdd x y := x.toMilliseconds.add y

instance : HAdd Week.Offset Second.Offset Second.Offset where
  hAdd x y := x.toSeconds.add y

instance : HAdd Week.Offset Minute.Offset Minute.Offset where
  hAdd x y := x.toMinutes.add y

instance : HAdd Week.Offset Hour.Offset Hour.Offset where
  hAdd x y := x.toHours.add y

instance : HAdd Week.Offset Day.Offset Day.Offset where
  hAdd x y := x.toDays.add y

instance : HAdd Week.Offset Week.Offset Week.Offset where
  hAdd x y := x.add y

instance : HSub Nanosecond.Offset Nanosecond.Offset Nanosecond.Offset where
  hSub x y := x.sub y

instance : HSub Nanosecond.Offset Millisecond.Offset Nanosecond.Offset where
  hSub x y := x.sub y.toNanoseconds

instance : HSub Nanosecond.Offset Second.Offset Nanosecond.Offset where
  hSub x y := x.sub y.toNanoseconds

instance : HSub Nanosecond.Offset Minute.Offset Nanosecond.Offset where
  hSub x y := x.sub y.toNanoseconds

instance : HSub Nanosecond.Offset Hour.Offset Nanosecond.Offset where
  hSub x y := x.sub y.toNanoseconds

instance : HSub Nanosecond.Offset Day.Offset Nanosecond.Offset where
  hSub x y := x.sub y.toNanoseconds

instance : HSub Nanosecond.Offset Week.Offset Nanosecond.Offset where
  hSub x y := x.sub y.toNanoseconds

instance : HSub Millisecond.Offset Nanosecond.Offset Nanosecond.Offset where
  hSub x y := x.toNanoseconds.sub y

instance : HSub Millisecond.Offset Millisecond.Offset Millisecond.Offset where
  hSub x y := x.sub y

instance : HSub Millisecond.Offset Second.Offset Millisecond.Offset where
  hSub x y := x.sub y.toMilliseconds

instance : HSub Millisecond.Offset Minute.Offset Millisecond.Offset where
  hSub x y := x.sub y.toMilliseconds

instance : HSub Millisecond.Offset Hour.Offset Millisecond.Offset where
  hSub x y := x.sub y.toMilliseconds

instance : HSub Millisecond.Offset Day.Offset Millisecond.Offset where
  hSub x y := x.sub y.toMilliseconds

instance : HSub Millisecond.Offset Week.Offset Millisecond.Offset where
  hSub x y := x.sub y.toMilliseconds

instance : HSub Second.Offset Nanosecond.Offset Nanosecond.Offset where
  hSub x y := x.toNanoseconds.sub y

instance : HSub Second.Offset Millisecond.Offset Millisecond.Offset where
  hSub x y := x.toMilliseconds.sub y

instance : HSub Second.Offset Second.Offset Second.Offset where
  hSub x y := x.sub y

instance : HSub Second.Offset Minute.Offset Second.Offset where
  hSub x y := x.sub y.toSeconds

instance : HSub Second.Offset Hour.Offset Second.Offset where
  hSub x y := x.sub y.toSeconds

instance : HSub Second.Offset Day.Offset Second.Offset where
  hSub x y := x.sub y.toSeconds

instance : HSub Second.Offset Week.Offset Second.Offset where
  hSub x y := x.sub y.toSeconds

instance : HSub Minute.Offset Nanosecond.Offset Nanosecond.Offset where
  hSub x y := x.toNanoseconds.sub y

instance : HSub Minute.Offset Millisecond.Offset Millisecond.Offset where
  hSub x y := x.toMilliseconds.sub y

instance : HSub Minute.Offset Second.Offset Second.Offset where
  hSub x y := x.toSeconds.sub y

instance : HSub Minute.Offset Minute.Offset Minute.Offset where
  hSub x y := x.sub y

instance : HSub Minute.Offset Hour.Offset Minute.Offset where
  hSub x y := x.sub y.toMinutes

instance : HSub Minute.Offset Day.Offset Minute.Offset where
  hSub x y := x.sub y.toMinutes

instance : HSub Minute.Offset Week.Offset Minute.Offset where
  hSub x y := x.sub y.toMinutes

instance : HSub Hour.Offset Nanosecond.Offset Nanosecond.Offset where
  hSub x y := x.toNanoseconds.sub y

instance : HSub Hour.Offset Millisecond.Offset Millisecond.Offset where
  hSub x y := x.toMilliseconds.sub y

instance : HSub Hour.Offset Second.Offset Second.Offset where
  hSub x y := x.toSeconds.sub y

instance : HSub Hour.Offset Minute.Offset Minute.Offset where
  hSub x y := x.toMinutes.sub y

instance : HSub Hour.Offset Hour.Offset Hour.Offset where
  hSub x y := x.sub y

instance : HSub Hour.Offset Day.Offset Hour.Offset where
  hSub x y := x.sub y.toHours

instance : HSub Hour.Offset Week.Offset Hour.Offset where
  hSub x y := x.sub y.toHours

instance : HSub Day.Offset Nanosecond.Offset Nanosecond.Offset where
  hSub x y := x.toNanoseconds.sub y

instance : HSub Day.Offset Millisecond.Offset Millisecond.Offset where
  hSub x y := x.toMilliseconds.sub y

instance : HSub Day.Offset Second.Offset Second.Offset where
  hSub x y := x.toSeconds.sub y

instance : HSub Day.Offset Minute.Offset Minute.Offset where
  hSub x y := x.toMinutes.sub y

instance : HSub Day.Offset Hour.Offset Hour.Offset where
  hSub x y := x.toHours.sub y

instance : HSub Day.Offset Day.Offset Day.Offset where
  hSub x y := x.sub y

instance : HSub Day.Offset Week.Offset Day.Offset where
  hSub x y := x.sub y.toDays

instance : HSub Week.Offset Nanosecond.Offset Nanosecond.Offset where
  hSub x y := x.toNanoseconds.sub y

instance : HSub Week.Offset Millisecond.Offset Millisecond.Offset where
  hSub x y := x.toMilliseconds.sub y

instance : HSub Week.Offset Second.Offset Second.Offset where
  hSub x y := x.toSeconds.sub y

instance : HSub Week.Offset Minute.Offset Minute.Offset where
  hSub x y := x.toMinutes.sub y

instance : HSub Week.Offset Hour.Offset Hour.Offset where
  hSub x y := x.toHours.sub y

instance : HSub Week.Offset Day.Offset Day.Offset where
  hSub x y := x.toDays.sub y

instance : HSub Week.Offset Week.Offset Week.Offset where
  hSub x y := x.sub y
```
