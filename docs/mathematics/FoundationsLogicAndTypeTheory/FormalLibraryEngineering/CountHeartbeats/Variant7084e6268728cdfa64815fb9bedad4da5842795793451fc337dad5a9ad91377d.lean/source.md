# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CountHeartbeats.Variant7084e6268728cdfa64815fb9bedad4da5842795793451fc337dad5a9ad91377d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33f1107255bb8e36ebeec314e205da1a77876266` · SHA-256 `7084e6268728cdfa64815fb9bedad4da5842795793451fc337dad5a9ad91377d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Util.CountHeartbeats
import Mathlib.Util.SleepHeartbeats

/-- info: Used approximately 0 heartbeats, which is less than the current maximum of 200000. -/
#guard_msgs in
#count_heartbeats approximately in
example (a : Nat) : a = a := rfl

/-- info: Used approximately 0 heartbeats, which is less than the minimum of 200000. -/
#guard_msgs in
guard_min_heartbeats approximately in
example (a : Nat) : a = a := rfl

/-- info: Used approximately 0 heartbeats, which is less than the minimum of 2000. -/
#guard_msgs in
guard_min_heartbeats approximately 2000 in
example (a : Nat) : a = a := rfl

guard_min_heartbeats approximately 1 in
example (a : Nat) : a = a := rfl

/-!
# Tests for the `countHeartbeats` linter
-/

section using_count_heartbeats

-- sets the `countHeartbeats` both linter option and the `approximate` option to `true`
#count_heartbeats approximately

mutual -- mutual declarations get ignored
theorem XY : True := trivial
end

/-- info: Used approximately 1000 heartbeats, which is less than the current maximum of 200000. -/
#guard_msgs in
-- we use two nested `set_option ... in` to test that the `heartBeats` linter enters both.
set_option linter.unusedTactic false in
set_option linter.unusedTactic false in
example : True := by
  sleep_heartbeats 1000 -- on top of these heartbeats, a few more are used by the rest of the proof
  trivial

/-- info: Used approximately 0 heartbeats, which is less than the current maximum of 200000. -/
#guard_msgs in
example : True := trivial

/-- info: 'YX' used approximately 0 heartbeats, which is less than the current maximum of 200000. -/
#guard_msgs in
set_option linter.unusedTactic false in
set_option linter.unusedTactic false in
theorem YX : True := trivial

end using_count_heartbeats

section using_linter_option

set_option linter.countHeartbeats true
set_option linter.countHeartbeatsApprox true

mutual -- mutual declarations get ignored
theorem XY' : True := trivial
end

/-- info: Used approximately 0 heartbeats, which is less than the current maximum of 200000. -/
#guard_msgs in
-- we use two nested `set_option ... in` to test that the `heartBeats` linter enters both.
set_option linter.unusedTactic false in
set_option linter.unusedTactic false in
example : True := trivial

/-- info: Used approximately 0 heartbeats, which is less than the current maximum of 200000. -/
#guard_msgs in
example : True := trivial

/--
info: 'YX'' used approximately 0 heartbeats, which is less than the current maximum of 200000.
-/
#guard_msgs in
set_option linter.unusedTactic false in
set_option linter.unusedTactic false in
theorem YX' : True := trivial

end using_linter_option
```
