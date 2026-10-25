# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Boundary.Variant0e559bd0547b8bf93664d12b81cb43904301775ef383892054c6174879ac87e4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `071f2d17377cdb151e0f64d9abcbe8d8d521c79b` · SHA-256 `0e559bd0547b8bf93664d12b81cb43904301775ef383892054c6174879ac87e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.TensorNetwork.Interval

/-!
# Typed three-plane Möbius boundary

Activation, validity, and ambiguity are separate Boolean planes.  The protocol
involution complements activation only where reversed validity is true.
-/

namespace Mathematics.TensorNetwork

/-- Exact finite boundary carrier. -/
structure TypedMobiusCarrier (width : Nat) where
  activation : Fin width → Bool
  validity : Fin width → Bool
  ambiguity : Fin width → Bool
  ambiguityExcludesValidity :
    ∀ index,
      ambiguity index = true →
      validity index = false

def reversePlane
    (plane : Fin width → Bool) :
    Fin width → Bool :=
  fun index ↦ plane index.rev

/-- Reverse all planes and complement activation only through validity. -/
def mobiusTwist
    (carrier : TypedMobiusCarrier width) :
    TypedMobiusCarrier width where
  activation := fun index ↦
    Bool.xor
      (reversePlane carrier.activation index)
      (reversePlane carrier.validity index)
  validity := reversePlane carrier.validity
  ambiguity := reversePlane carrier.ambiguity
  ambiguityExcludesValidity := by
    intro index ambiguous
    exact
      carrier.ambiguityExcludesValidity index.rev
        (by simpa [reversePlane] using ambiguous)

/-- The typed boundary protocol is exactly involutive. -/
theorem mobiusTwist_involutive
    (carrier : TypedMobiusCarrier width) :
    mobiusTwist (mobiusTwist carrier) = carrier := by
  cases carrier with
  | mk activation validity ambiguity excludes =>
      simp only [mobiusTwist, reversePlane, Fin.rev_rev]
      congr
      · funext index
        simp
      · funext index
        simp [reversePlane]
      · funext index
        simp [reversePlane]

end Mathematics.TensorNetwork
```
