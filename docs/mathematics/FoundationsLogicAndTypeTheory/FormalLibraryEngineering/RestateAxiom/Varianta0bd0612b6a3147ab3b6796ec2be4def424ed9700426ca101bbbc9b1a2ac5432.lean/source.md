# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RestateAxiom.Varianta0bd0612b6a3147ab3b6796ec2be4def424ed9700426ca101bbbc9b1a2ac5432

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7811bb0f4484f1a2c4d4668b0ca0c68fd71ed18` · SHA-256 `a0bd0612b6a3147ab3b6796ec2be4def424ed9700426ca101bbbc9b1a2ac5432`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.RestateAxiom

structure A :=
  (x : Nat)
  (a' : x = 1 := by rfl)
  (borp : x = 2 := by rfl)

#check A.a'
restate_axiom A.a'
#check A.a
restate_axiom A.a' foo
#check A.foo
restate_axiom A.borp
#check A.borp_lemma
```
