# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Challenge.Variant3130ae1cd994683288d33afbf6458d4478a13cbcfea94b1f3f9661f09b289049

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `079e30a89c88469901c7fd284b3f0521ad3f234a` · SHA-256 `3130ae1cd994683288d33afbf6458d4478a13cbcfea94b1f3f9661f09b289049`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean
open Lean Elab Term

/-- The structure the statement is really about. -/
structure S : Type where
  a : Nat

/-- The definition hole: the solver supplies the carrier. -/
def T : Type := S

/-- Elaborates to a raw `Expr.proj`. Ordinary elaborator, nothing unchecked. -/
elab "pr% " s:term : term => do
  return Expr.proj `S 0 (← elabTerm s none)

theorem tgt : ∀ (s : T), (pr% s) = (0 : Nat) := sorry
```
