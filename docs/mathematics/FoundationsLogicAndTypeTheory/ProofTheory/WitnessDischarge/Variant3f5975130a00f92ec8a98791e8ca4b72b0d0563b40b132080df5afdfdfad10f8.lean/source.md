# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.WitnessDischarge.Variant3f5975130a00f92ec8a98791e8ca4b72b0d0563b40b132080df5afdfdfad10f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `49186bd91a02f760839cee65874772e4da7a983f` · SHA-256 `3f5975130a00f92ec8a98791e8ca4b72b0d0563b40b132080df5afdfdfad10f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.ProofStrategy.CertifiedRoute

/-!
# Witness-bearing least discharge

`Derivation` is an inductive proof tree.  A seedless cycle cannot construct a
value because every finite branch must terminate in an accepted seed.  Seed
acceptance is explicitly sound for the represented proposition, and every
route node applies a proposition-level implication.
-/

namespace Mathematics.ProofStrategy

open Mathematics.Projection

universe u v

/-- Accepted seeds together with the proof that acceptance is mathematically sound. -/
structure AcceptedSeedRegistry
    (Obligation : Type u)
    (Statement : Obligation → Prop) where
  accepted : Obligation → Prop
  sound :
    ∀ {obligation}, accepted obligation → Statement obligation

inductive Derivation
    {Obligation : Type u}
    {Certificate : Type v}
    [DecidableEq Obligation]
    {snapshot : ProjectionSnapshot}
    (Statement : Obligation → Prop)
    (Seeds : AcceptedSeedRegistry Obligation Statement)
    (Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop) :
    Obligation → Type (max u v)
  | seed
      {obligation : Obligation}
      (accepted : Seeds.accepted obligation) :
      Derivation Statement Seeds Usable obligation
  | apply
      (route : CertifiedRoute Obligation Certificate Statement snapshot)
      (usable : Usable route)
      (premises :
        ∀ premise, premise ∈ route.premises →
          Derivation Statement Seeds Usable premise) :
      Derivation Statement Seeds Usable route.conclusion

namespace Derivation

/-- Every derivation exposes the proposition it proves. -/
theorem proves
    {Obligation : Type u}
    {Certificate : Type v}
    [DecidableEq Obligation]
    {snapshot : ProjectionSnapshot}
    {Statement : Obligation → Prop}
    {Seeds : AcceptedSeedRegistry Obligation Statement}
    {Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop}
    {obligation : Obligation}
    (derivation : Derivation Statement Seeds Usable obligation) :
    Statement obligation := by
  induction derivation with
  | seed accepted =>
      exact Seeds.sound accepted
  | apply route _ _ premiseProofs =>
      exact route.proves premiseProofs

end Derivation

def Discharged
    {Obligation : Type u}
    {Certificate : Type v}
    [DecidableEq Obligation]
    {snapshot : ProjectionSnapshot}
    (Statement : Obligation → Prop)
    (Seeds : AcceptedSeedRegistry Obligation Statement)
    (Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop)
    (obligation : Obligation) : Prop :=
  Nonempty (Derivation Statement Seeds Usable obligation)

theorem acceptedSeed_discharged
    {Obligation : Type u}
    {Certificate : Type v}
    [DecidableEq Obligation]
    {snapshot : ProjectionSnapshot}
    {Statement : Obligation → Prop}
    {Seeds : AcceptedSeedRegistry Obligation Statement}
    {Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop}
    {obligation : Obligation}
    (accepted : Seeds.accepted obligation) :
    Discharged Statement Seeds Usable obligation :=
  ⟨.seed accepted⟩

theorem usableRoute_discharged
    {Obligation : Type u}
    {Certificate : Type v}
    [DecidableEq Obligation]
    {snapshot : ProjectionSnapshot}
    {Statement : Obligation → Prop}
    {Seeds : AcceptedSeedRegistry Obligation Statement}
    {Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop}
    (route : CertifiedRoute Obligation Certificate Statement snapshot)
    (usable : Usable route)
    (premises :
      ∀ premise, premise ∈ route.premises →
        Discharged Statement Seeds Usable premise) :
    Discharged Statement Seeds Usable route.conclusion := by
  refine ⟨.apply route usable ?_⟩
  intro premise member
  exact (premises premise member).some

/-- Discharge is sound; it cannot be manufactured from digests alone. -/
theorem discharged_proves
    {Obligation : Type u}
    {Certificate : Type v}
    [DecidableEq Obligation]
    {snapshot : ProjectionSnapshot}
    {Statement : Obligation → Prop}
    {Seeds : AcceptedSeedRegistry Obligation Statement}
    {Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop}
    {obligation : Obligation}
    (discharged : Discharged Statement Seeds Usable obligation) :
    Statement obligation :=
  discharged.some.proves

/-- A false represented statement is excluded from the discharge relation. -/
theorem rejectedStatement_not_discharged
    {Obligation : Type u}
    {Certificate : Type v}
    [DecidableEq Obligation]
    {snapshot : ProjectionSnapshot}
    {Statement : Obligation → Prop}
    {Seeds : AcceptedSeedRegistry Obligation Statement}
    {Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop}
    {obligation : Obligation}
    (rejected : ¬ Statement obligation) :
    ¬ Discharged Statement Seeds Usable obligation := by
  intro discharged
  exact rejected (discharged_proves discharged)

end Mathematics.ProofStrategy
```
