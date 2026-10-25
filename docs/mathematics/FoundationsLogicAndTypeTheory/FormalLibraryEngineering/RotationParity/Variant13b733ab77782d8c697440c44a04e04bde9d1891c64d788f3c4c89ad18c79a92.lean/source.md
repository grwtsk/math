# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RotationParity.Variant13b733ab77782d8c697440c44a04e04bde9d1891c64d788f3c4c89ad18c79a92

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4426c9bf35d52b939f7af517a1017a9bf257dd05` · SHA-256 `13b733ab77782d8c697440c44a04e04bde9d1891c64d788f3c4c89ad18c79a92`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Noeoueue.Modular.RotationParity

def orientationStep (C : Nat) (epsilon : Bool) : Bool := epsilon.xor (C % 2 == 1)

theorem orientation_step (C : Nat) (epsilon : Bool) :
    orientationStep C epsilon = epsilon.xor (C % 2 == 1) := rfl

theorem even_ceiling_preserves (C : Nat) (epsilon : Bool) (h : C % 2 = 0) :
    orientationStep C epsilon = epsilon := by
  simp [orientationStep, h]

theorem odd_ceiling_toggles (C : Nat) (epsilon : Bool) (h : C % 2 = 1) :
    orientationStep C epsilon = !epsilon := by
  cases epsilon <;> simp [orientationStep, h]

end Noeoueue.Modular.RotationParity
```
