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
