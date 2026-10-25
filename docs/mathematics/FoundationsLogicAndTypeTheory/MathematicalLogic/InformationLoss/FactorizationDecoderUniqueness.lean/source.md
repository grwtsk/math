# Complete source: GRWTSK.Logic.InformationLoss.FactorizationDecoderUniqueness

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c568562742645c0bb1b8ae8d9ef89968a32918a` · SHA-256 `d8cd71217c4f167023512e75fd39ab5ba85a91d9257cfde5ecbd2b0d1d284195`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
This leaf is not imported by GRWTSK.lean. It requires exact-commit Lean,
fresh-kernel and transitive-axiom receipts before any promotion.
-/
import GRWTSK.Logic.InformationLoss.FactorizationFiberCompleteness

/-!
# Uniqueness of reconstruction on the attained observable range

Existence of a decoder need not give uniqueness on unused values of its
ambient codomain. Two exact decoders must agree on the attained range;
when the profile is surjective they agree everywhere. In particular, a
decoder of the observed-range profile is unique without any surjectivity
assumption on the original ambient observable.

No effective, continuous, bounded, measurable or analytic inverse follows.
-/

set_option autoImplicit false

universe u v w

namespace GRWTSK.Logic.InformationLoss

/-- Two total decoders that exactly reconstruct the same readout agree
on each attained observable value. This does not assert ambient uniqueness. -/
theorem decoder_eq_on_range
    {X : Type u} {Y : Type v} {Z : Type w}
    (profile : X → Y) (readout : X → Z)
    (decode₁ decode₂ : Y → Z)
    (h₁ : readout = decode₁ ∘ profile)
    (h₂ : readout = decode₂ ∘ profile)
    (y : Y) (hy : y ∈ Set.range profile) :
    decode₁ y = decode₂ y := by
  rcases hy with ⟨x, rfl⟩
  have ha : readout x = decode₁ (profile x) := by
    exact congrFun h₁ x
  have hb : readout x = decode₂ (profile x) := by
    exact congrFun h₂ x
  exact ha.symm.trans hb

/-- Surjectivity upgrades uniqueness on attained outputs to equality
of total ambient-codomain decoders. -/
theorem decoder_unique_of_surjective
    {X : Type u} {Y : Type v} {Z : Type w}
    (profile : X → Y) (readout : X → Z)
    (hsurj : Function.Surjective profile)
    (decode₁ decode₂ : Y → Z)
    (h₁ : readout = decode₁ ∘ profile)
    (h₂ : readout = decode₂ ∘ profile) :
    decode₁ = decode₂ := by
  funext y
  exact decoder_eq_on_range profile readout decode₁ decode₂
    h₁ h₂ y (hsurj y)

/-- Restricting an observable to its actual range makes its exact
decoder unique, even when the original profile omits ambient values. -/
theorem observedProfile_decoder_unique
    {X : Type u} {Y : Type v} {Z : Type w}
    (profile : X → Y) (readout : X → Z)
    (decode₁ decode₂ : Set.range profile → Z)
    (h₁ : readout = decode₁ ∘ observedProfile profile)
    (h₂ : readout = decode₂ ∘ observedProfile profile) :
    decode₁ = decode₂ := by
  exact decoder_unique_of_surjective (observedProfile profile)
    readout (observedProfile_surjective profile)
    decode₁ decode₂ h₁ h₂

end GRWTSK.Logic.InformationLoss
```
