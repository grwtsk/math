# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variant6f563c7f97ba282521bf98aff83ea6865c7187cd7973f730b2721075e878d62d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f531743e455eb20e7be6665455e2d463c68ad07` · SHA-256 `6f563c7f97ba282521bf98aff83ea6865c7187cd7973f730b2721075e878d62d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Logic.Bridge.Continuous

namespace Think.Logic

/-! Single adjacent layer equivalence. -/

structure LayerEquivalence where
  Source : Type
  Target : Type
  forward : Source → Target
  reverse : Target → Source
  sourceRoundTrip : ∀ x : Source, reverse (forward x) = x
  targetRoundTrip : ∀ y : Target, forward (reverse y) = y
  continuity : ContinuityCertificate
  receiptHash : String
  claimBearing : Bool

theorem LayerEquivalence.forward_injective
  (E : LayerEquivalence) :
  Injective E.forward :=
by
  intro x y h
  calc
    x = E.reverse (E.forward x) := (E.sourceRoundTrip x).symm
    _ = E.reverse (E.forward y) := by rw [h]
    _ = y := E.sourceRoundTrip y

theorem LayerEquivalence.forward_surjective
  (E : LayerEquivalence) :
  Surjective E.forward :=
by
  intro y
  exact ⟨E.reverse y, E.targetRoundTrip y⟩

theorem LayerEquivalence.forward_bijective
  (E : LayerEquivalence) :
  Bijective E.forward :=
by
  exact ⟨LayerEquivalence.forward_injective E,
         LayerEquivalence.forward_surjective E⟩

end Think.Logic
```
