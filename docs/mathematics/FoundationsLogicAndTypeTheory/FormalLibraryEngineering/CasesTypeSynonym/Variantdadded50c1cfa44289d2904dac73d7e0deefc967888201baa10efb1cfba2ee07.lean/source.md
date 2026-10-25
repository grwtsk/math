# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CasesTypeSynonym.Variantdadded50c1cfa44289d2904dac73d7e0deefc967888201baa10efb1cfba2ee07

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `53ed3af7773381bce4ad07e9a746c30053916272` · SHA-256 `dadded50c1cfa44289d2904dac73d7e0deefc967888201baa10efb1cfba2ee07`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Aesop

inductive T

abbrev U := T

def V := T
abbrev W := V
def X := V

example (h : T) : False := by
  fail_if_success aesop (config := { terminal := true })
  aesop (add safe cases T)

example (h : T) : False := by
  aesop (add safe cases U)

example (h : U) : False := by
  aesop (add safe cases U)

example (h : V) : False := by
  fail_if_success aesop (config := { terminal := true })
  fail_if_success aesop (add safe cases T) (config := { terminal := true })
  fail_if_success aesop (add safe cases U) (config := { terminal := true })
  aesop (add safe cases V)

example (h : W) : False := by
  fail_if_success aesop (config := { terminal := true })
  fail_if_success aesop (add safe cases T) (config := { terminal := true })
  fail_if_success aesop (add safe cases U) (config := { terminal := true })
  aesop (add safe cases V)

example (h : V) : False := by
  aesop (add safe cases W)

example (h : X) : False := by
  fail_if_success aesop (config := { terminal := true })
  fail_if_success aesop (add safe cases T) (config := { terminal := true })
  fail_if_success aesop (add safe cases U) (config := { terminal := true })
  fail_if_success aesop (add safe cases V) (config := { terminal := true })
  fail_if_success aesop (add safe cases W) (config := { terminal := true })
  aesop (add safe cases X)

example (h : T) : False := by
  aesop (add safe cases (transparency! := default) X)

inductive A (α : Type) : Prop

abbrev B β := A β

example (h : A Unit) : False := by
  fail_if_success aesop (config := { terminal := true })
  aesop (add safe cases A)

example (h : A Unit) : False := by
  aesop (add safe cases B)

example (h : B Unit) : False := by
  fail_if_success aesop (config := { terminal := true })
  aesop (add safe cases A)

example (h : B Unit) : False := by
  aesop (add safe cases B)
```
