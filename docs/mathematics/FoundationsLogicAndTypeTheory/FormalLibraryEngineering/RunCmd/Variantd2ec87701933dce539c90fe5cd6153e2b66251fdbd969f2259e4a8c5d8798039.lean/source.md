# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RunCmd.Variantd2ec87701933dce539c90fe5cd6153e2b66251fdbd969f2259e4a8c5d8798039

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eeefab07d7cec77bef77584818a25228ee156dfc` · SHA-256 `d2ec87701933dce539c90fe5cd6153e2b66251fdbd969f2259e4a8c5d8798039`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean.Elab.Tactic.ElabTerm
import Std.Tactic.RunCmd
import Std.Tactic.GuardMsgs

open Lean Elab Tactic

/-- info: hello world -/
#guard_msgs in
run_cmd logInfo m!"hello world"

example : True := by
  run_tac
    evalApplyLikeTactic MVarId.apply (← `(True.intro))

example : True := by_elab
  Term.elabTerm (← `(True.intro)) none
```
