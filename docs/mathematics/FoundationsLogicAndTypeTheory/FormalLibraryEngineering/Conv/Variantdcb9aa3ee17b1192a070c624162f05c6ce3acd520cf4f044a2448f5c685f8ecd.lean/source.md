# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Conv.Variantdcb9aa3ee17b1192a070c624162f05c6ce3acd520cf4f044a2448f5c685f8ecd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `56369c6fc1b54916799114597448d248d7a3f364` · SHA-256 `dcb9aa3ee17b1192a070c624162f05c6ce3acd520cf4f044a2448f5c685f8ecd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Conv

/-- Testing nested `conv in ... => ...` -/
example (a b c : Nat) : a + b + c = c + a + b := by
  conv =>
    conv in a + b =>
      rw [Nat.add_comm]
    guard_target = b + a + c = c + a + b
    rw [Nat.add_comm, Nat.add_assoc]
    conv in (occs := 4) _ + _ =>
      guard_target = a + b
      rw [Nat.add_comm]

/-- Testing nested `conv in ... => ...` -/
example (a b : Nat) : (a + b) + (a + b) = (b + a) + (b + a) := by
  conv =>
    lhs
    conv in (occs := *) a + b =>
      rw [Nat.add_comm]
    guard_target = b + a + (b + a)
```
