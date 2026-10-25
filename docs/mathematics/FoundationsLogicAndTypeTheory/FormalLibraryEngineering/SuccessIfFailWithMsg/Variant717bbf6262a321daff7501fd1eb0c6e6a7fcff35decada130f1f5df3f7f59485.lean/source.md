# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SuccessIfFailWithMsg.Variant717bbf6262a321daff7501fd1eb0c6e6a7fcff35decada130f1f5df3f7f59485

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d627ee9ce4a88e2466972b2e219475944327a09` · SHA-256 `717bbf6262a321daff7501fd1eb0c6e6a7fcff35decada130f1f5df3f7f59485`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.SuccessIfFailWithMsg

example : True := by
  success_if_fail_with_msg "no goals to be solved" trivial; trivial
  trivial

example : Nat → Nat → True := by
  success_if_fail_with_msg "no goals to be solved"
    intro
    intro
    trivial
    trivial
  intros; trivial

def err (t : Bool) := if t then
  "tactic 'rewrite' failed, equality or iff proof expected
  n ≤ Nat.succ n
n : Nat
⊢ True"
  else
    "not that message
⊢ True"

example (n : Nat) : True := by
  success_if_fail_with_msg (err true) rw [Nat.le_succ n]
  trivial

example : True := by
  success_if_fail_with_msg (err false) fail "not that message"
  trivial

/- In the following, we use `success_if_fail_with_msg` to write tests for
`success_if_fail_with_msg`, since the inner one should fail with a certain message. -/

example : True := by
  success_if_fail_with_msg "tactic 'trivial' succeeded, but was expected to fail"
    success_if_fail_with_msg "message" trivial
  trivial

def err₂ := "tactic 'fail \"different message!\"' failed, but got different error message:

different message!
⊢ True"

example : True := by
  success_if_fail_with_msg err₂
    success_if_fail_with_msg "message" fail "different message!"
  trivial

open Lean Meta Mathlib Tactic

def alwaysFails : MetaM Unit := do throwError "I failed!"

def doesntFail : MetaM Unit := do
  try successIfFailWithMessage "I failed!" alwaysFails
  catch _ => throwError "I *really* failed."

#eval doesntFail
```
