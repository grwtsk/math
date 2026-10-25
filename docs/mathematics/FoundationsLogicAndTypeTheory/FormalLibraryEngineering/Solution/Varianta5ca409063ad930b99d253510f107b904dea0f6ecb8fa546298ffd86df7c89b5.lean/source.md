# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Solution.Varianta5ca409063ad930b99d253510f107b904dea0f6ecb8fa546298ffd86df7c89b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `858fb52dcc60ca4b7579724de2deb60b9d0509ea` · SHA-256 `a5ca409063ad930b99d253510f107b904dea0f6ecb8fa546298ffd86df7c89b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean
open Lean Elab Term

/-- Same name, never compared: now uninhabited. -/
structure S : Type where
  a : Nat
  h : False

def T : Type := S

elab "pr% " s:term : term => do
  return Expr.proj `S 0 (← elabTerm s none)

theorem tgt : ∀ (s : T), (pr% s) = (0 : Nat) := by
  intro s
  exact (S.h s).elim
```
