# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ProofHorizon.Variant856178a07398d3077591cc6ab66573f01399ad27d176685ac2e52303b1b996da

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c338b0f763a09aad35ea28363b7060d6839f1c30` · SHA-256 `856178a07398d3077591cc6ab66573f01399ad27d176685ac2e52303b1b996da`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finset.Basic

/-!
# Complete finite proof apertures

Local unresolvedness says exactly that neither polarity is accepted in this
finite inventory. It is independent of absolute truth or undecidability.
-/

namespace FormalResearch.SUCAS

/-- Object-level polarity requested from a checker; unsuccessful search has neither polarity. -/
inductive Polarity where
  /-- The candidate asserts the proposition. -/
  | positive
  /-- The candidate asserts its negation. -/
  | negative
  deriving DecidableEq, Repr

/-- A proof aperture includes an explicit inventory and proof that it lists its whole domain. -/
structure FiniteProofAperture (Certificate : Type*) where
  /-- Complete declared finite certificate inventory. -/
  certificates : Finset Certificate
  /-- The scoped proof-cost/domain predicate covered by the inventory. -/
  inAperture : Certificate → Prop
  /-- No member of the declared finite proof aperture is omitted. -/
  complete : ∀ certificate, inAperture certificate ↔ certificate ∈ certificates
  /-- Local checker observation; mathematical soundness is a separate obligation. -/
  accepts : Polarity → Certificate → Bool

/-- Existence of an accepted certificate at a particular polarity inside the complete aperture. -/
def FiniteProofAperture.HasAccepted {Certificate : Type*}
    (aperture : FiniteProofAperture Certificate) (polarity : Polarity) : Prop :=
  ∃ certificate ∈ aperture.certificates, aperture.accepts polarity certificate = true

/-- A complete finite search reports no accepted certificate at either polarity. -/
def LocallyUnresolved {Certificate : Type*} (aperture : FiniteProofAperture Certificate) : Prop :=
  ¬aperture.HasAccepted .positive ∧ ¬aperture.HasAccepted .negative

/-- Executable whole-aperture search checks both polarities without conflating their failures. -/
def FiniteProofAperture.checkUnresolved {Certificate : Type*}
    (aperture : FiniteProofAperture Certificate) : Bool :=
  decide ((¬∃ certificate ∈ aperture.certificates,
    aperture.accepts .positive certificate = true) ∧
    (¬∃ certificate ∈ aperture.certificates, aperture.accepts .negative certificate = true))

/-- Exact reflection of finite unresolvedness; it does not reflect object-level truth. -/
theorem FiniteProofAperture.checkUnresolved_eq_true {Certificate : Type*}
    (aperture : FiniteProofAperture Certificate) :
    aperture.checkUnresolved = true ↔ LocallyUnresolved aperture := by
  simp [FiniteProofAperture.checkUnresolved, LocallyUnresolved,
    FiniteProofAperture.HasAccepted]

/-- Checker soundness binds accepted polarity to a separately supplied object proposition. -/
def FiniteProofAperture.SoundFor {Certificate : Type*}
    (aperture : FiniteProofAperture Certificate) (proposition : Prop) : Prop :=
  (aperture.HasAccepted .positive → proposition) ∧
    (aperture.HasAccepted .negative → ¬proposition)

/-- Completeness of the inventory makes unresolvedness equivalent to whole-aperture failure. -/
theorem locallyUnresolved_iff_all_rejected {Certificate : Type*}
    (aperture : FiniteProofAperture Certificate) :
    LocallyUnresolved aperture ↔
      ∀ certificate, aperture.inAperture certificate →
        aperture.accepts .positive certificate ≠ true ∧
        aperture.accepts .negative certificate ≠ true := by
  constructor
  · rintro ⟨hp, hn⟩ certificate hc
    exact ⟨fun h => hp ⟨certificate, (aperture.complete certificate).mp hc, h⟩,
      fun h => hn ⟨certificate, (aperture.complete certificate).mp hc, h⟩⟩
  · intro h
    constructor
    · rintro ⟨certificate, hc, ha⟩
      exact (h certificate ((aperture.complete certificate).mpr hc)).1 ha
    · rintro ⟨certificate, hc, ha⟩
      exact (h certificate ((aperture.complete certificate).mpr hc)).2 ha

/-- A sound checker cannot accept both mathematical polarities in the same scope. -/
theorem FiniteProofAperture.not_both {Certificate : Type*}
    (aperture : FiniteProofAperture Certificate) {proposition : Prop}
    (sound : aperture.SoundFor proposition) :
    ¬(aperture.HasAccepted .positive ∧ aperture.HasAccepted .negative) := by
  rintro ⟨hp, hn⟩
  exact sound.2 hn (sound.1 hp)

/-- The empty proof aperture is a genuine complete finite inventory. -/
def emptyProofAperture : FiniteProofAperture ℕ where
  certificates := ∅
  inAperture := fun _ => False
  complete := by simp
  accepts := fun _ _ => false

/-- The empty finite aperture is locally unresolved. -/
theorem emptyProofAperture_unresolved : LocallyUnresolved emptyProofAperture := by
  simp [LocallyUnresolved, FiniteProofAperture.HasAccepted, emptyProofAperture]

/-- Empty local search is sound for every proposition and supplies no proof of it. -/
theorem emptyProofAperture_sound (proposition : Prop) :
    emptyProofAperture.SoundFor proposition := by
  simp [FiniteProofAperture.SoundFor, FiniteProofAperture.HasAccepted, emptyProofAperture]

/-- Even sound, complete finite unresolvedness cannot entail the positive object polarity. -/
theorem local_unresolvedness_does_not_imply_truth :
    ¬(∀ (proposition : Prop) (aperture : FiniteProofAperture ℕ),
      aperture.SoundFor proposition → LocallyUnresolved aperture → proposition) := by
  intro h
  exact h False emptyProofAperture (emptyProofAperture_sound False) emptyProofAperture_unresolved

/-- Even sound, complete finite unresolvedness cannot entail the negative object polarity. -/
theorem local_unresolvedness_does_not_imply_falsehood :
    ¬(∀ (proposition : Prop) (aperture : FiniteProofAperture ℕ),
      aperture.SoundFor proposition → LocallyUnresolved aperture → ¬proposition) := by
  intro h
  exact h True emptyProofAperture (emptyProofAperture_sound True)
    emptyProofAperture_unresolved trivial

end FormalResearch.SUCAS
```
