# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.125.Variante2f6ef196ee810833055c96ff1750cfa0ed7a13d051a6d849a055916471a9001

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82a400c72c2ffc4703d377937ad65f338f197dd9` · SHA-256 `e2f6ef196ee810833055c96ff1750cfa0ed7a13d051a6d849a055916471a9001`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

@[aesop 90%]
def myTacGen : Aesop.TacGen := fun _ => do
  return #[("exact ⟨val - f { val := val, property := property }, fun a ha => by simpa⟩",
            0.9)]

/-- error: Tactic `aesop` failed, made no progress -/
#guard_msgs in
theorem foo (f : { x // 0 < x } → { x // 0 < x }) (val : Nat)
    (property : 0 < val) :
    ∃ w x, ∀ (a : Nat) (b : 0 < a), ↑(f { val := a, property := b }) = w * a + x := by
  constructor
  aesop
```
