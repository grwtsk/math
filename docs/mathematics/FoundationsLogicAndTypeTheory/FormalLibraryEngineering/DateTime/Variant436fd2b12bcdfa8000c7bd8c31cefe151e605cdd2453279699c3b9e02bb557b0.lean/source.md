# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DateTime.Variant436fd2b12bcdfa8000c7bd8c31cefe151e605cdd2453279699c3b9e02bb557b0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe066ffabaa7762c812159149bc08f142f07beaa` · SHA-256 `59df4cad5e4a13fde3e7027a8e6a10ddf268534622f6db8fcf209ca7806e9ff4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Time.Variant3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Time.Variant3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Toml/Data/DateTime.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Util.Date
import Lake.Util.String
import Init.Data.String.Search
import Init.Data.Iterators.Consumers.Collect
import Init.Data.Iterators.Consumers.Loop
import Init.Data.ToString.Macro

/-!
# TOML Date-Time

Defines data types for representing a TOML [date-time][1].
TOML date-times are based on [IETF RFC 3339][2] with some components
optionally left out, creating four distinct variants.

* **Offset Date-Time**: A full RFC 3339 date-time.
* **Local Date-Time**: An RFC 3339 date-time without the time zone.
* **Local Date**: The date portion of an RFC 3339 date-time (year-month-day).
* **Local Time**: The time portion of an RFC 3339 date-time (without time zone).

[1]: https://toml.io/en/v1.0.0#offset-date-time
[2]: https://datatracker.ietf.org/doc/html/rfc3339
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Time.Variant3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078

namespace Lake.Toml

/--
A TOML time (hour:minute:second.fraction).

We do not represent the whole time as seconds to due to the possibility
of leap seconds in RFC 3339 times.
-/
public structure Time where
  hour : Nat
  minute : Nat
  second : Nat
  fracExponent : Nat := 0
  fracMantissa : Nat := 0
  deriving Inhabited, DecidableEq

namespace Time

public abbrev IsValidHour (h : Nat) : Prop :=
  h ≤ 23

public abbrev IsValidMinute (m : Nat) : Prop :=
  m ≤ 59

public abbrev IsValidSecond (s : Nat) : Prop :=
  s ≤ 60

public def zero : Time :=
  {hour := 0, minute := 0, second := 0}

public instance : OfNat Time (nat_lit 0) := ⟨Time.zero⟩

public def ofValid? (hour minute second : Nat) : Option Time := do
  guard (IsValidHour hour ∧ IsValidMinute minute ∧ IsValidSecond second)
  return {hour, minute, second}

public def ofString? (t : String) : Option Time := do
  match t.split ':' |>.toList with
  | [h,m,s] =>
    match s.split '.' |>.toList with
    | [s,f] =>
      let time ← ofValid? (← h.toNat?) (← m.toNat?) (← s.toNat?)
      return {time with fracExponent := f.positions.length-1, fracMantissa := ← f.toNat?}
    | [s] =>
      ofValid? (← h.toNat?) (← m.toNat?) (← s.toNat?)
    | _ => none
  | [h,m] =>
    ofValid? (← h.toNat?) (← m.toNat?) 0
  | _ => none

public protected def toString (t : Time) : String :=
  let s := s!"{zpad t.hour 2}:{zpad t.minute 2}:{zpad t.second 2}"
  if t.fracMantissa = 0 then
    s
  else
    s!"{s}.{rpadAscii (zpad t.fracMantissa t.fracExponent) '0' 3}"

public instance : ToString Time := ⟨Time.toString⟩

end Time

/-- A TOML date-time. -/
public inductive DateTime
| offsetDateTime (date : Date) (time : Time) (offset? : Option (Bool × Time) := none)
| localDateTime (date : Date) (time : Time)
| localDate (date : Date)
| localTime (time : Time)
deriving Inhabited, DecidableEq

public instance : Coe Date DateTime := ⟨DateTime.localDate⟩
public instance : Coe Time DateTime := ⟨DateTime.localTime⟩

namespace DateTime

public def ofString? (dt : String) : Option DateTime := do
  match dt.split (fun c => c == 'T' || c == 't' || c == ' ') |>.toList with
  | [d,t] =>
    let d ← Date.ofString? d.copy
    if t.back == 'Z' || t.back == 'z' then
      return offsetDateTime d (← Time.ofString? <| t.dropEnd 1 |>.copy)
    else if let [t,o] := t.split '+' |>.toStringList then
      return offsetDateTime d (← Time.ofString? t) <| some (false, ← Time.ofString? o)
    else if let [t,o] := t.split '-' |>.toStringList then
      return offsetDateTime d (← Time.ofString? t) <| some (true, ← Time.ofString? o)
    else
      return localDateTime d (← Time.ofString? t.copy)
  | [x] =>
    if x.contains ':' then
      return localTime (← Time.ofString? x.copy)
    else
      return localDate (← Date.ofString? x.copy)
  | _ => none

public protected def toString (dt : DateTime) : String :=
  match dt with
  | .offsetDateTime d t o? =>
    if let some (s,o) := o? then
      if s then
        s!"{d}T{t}-{zpad o.hour 2}:{zpad o.minute 2}"
      else
        s!"{d}T{t}+{zpad o.hour 2}:{zpad o.minute 2}"
    else
      s!"{d}T{t}Z"
  | .localDateTime d t => s!"{d}T{t}"
  | .localDate d => d.toString
  | .localTime t => t.toString

public instance : ToString DateTime := ⟨DateTime.toString⟩

end DateTime
```
