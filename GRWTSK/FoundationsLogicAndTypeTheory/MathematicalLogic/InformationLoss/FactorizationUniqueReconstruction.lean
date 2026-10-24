/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
Standalone leaf, not imported by GRWTSK.lean.
-/
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InformationLoss.FactorizationDecoderUniqueness

/-!
# Exact unique reconstruction on the observed image

Fiber constancy is equivalent to existence of a unique total decoder whose
domain is the actual range of the observable. The decoder is uniquely
determined as a function on this subtype, even when the original declared
observable codomain has unused elements.

Existence uses classical choice through the existing completeness supplier.
No computable inverse, regularity, norm bound, Weil positivity or RH follows.
-/

set_option autoImplicit false

universe u v w

namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InformationLoss

/-- Fiber constancy exactly characterizes unique reconstruction on the
attained observable subtype. Uniqueness is functional extensionality on
this subtype, not an inverse theorem for the original observable. -/
theorem existsUnique_decoder_observedProfile_iff
    {X : Type u} {Y : Type v} {Z : Type w}
    (profile : X → Y) (readout : X → Z) :
    (∃! decode : Set.range profile → Z,
      readout = decode ∘ observedProfile profile) ↔
      ∀ x y : X, profile x = profile y → readout x = readout y := by
  constructor
  · rintro ⟨decode, hdecode, _⟩
    exact (factorsThrough_observedProfile_iff profile readout).1
      ⟨decode, hdecode⟩
  · intro hconstant
    obtain ⟨decode, hdecode⟩ :=
      (factorsThrough_observedProfile_iff profile readout).2 hconstant
    refine ⟨decode, hdecode, ?_⟩
    intro other hother
    exact observedProfile_decoder_unique profile readout
      other decode hother hdecode

end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InformationLoss
