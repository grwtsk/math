# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.RouteFrontier.Variantb25d1e93d2c12bf5d0030fec3ec107d053160f29592278fad7954b5f34b14e82

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5364dcd1ddcbd76d1f804abda98801228ad1e1dc` · SHA-256 `b25d1e93d2c12bf5d0030fec3ec107d053160f29592278fad7954b5f34b14e82`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.ProofStrategy.FrontierAntichain
import Mathematics.ProofStrategy.WitnessDischarge

/-!
# Certified route-frontier fixed points

Raw frontier classification is representational only.  An authoritative
frontier is indexed by an active snapshot, records an exact optional
derivation for completion, and proves that every represented open leaf is
genuinely undischarged.
-/

namespace Mathematics.ProofStrategy

open Mathematics.Projection

universe u v

inductive RemainderShape
    (Obligation : Type u)
    [DecidableEq Obligation]
  | noRoute
  | complete
  | open (frontiers : FrontierFamily Obligation)

/-- Pure classification only; authority is supplied by `CertifiedRouteFrontier`. -/
def classifyFrontier
    {Obligation : Type u}
    [DecidableEq Obligation]
    (family : FrontierFamily Obligation) :
    RemainderShape Obligation :=
  if family = frontierZero Obligation then
    .noRoute
  else if (∅ : Requirement Obligation) ∈ family then
    .complete
  else
    .open family

@[simp] theorem classifyFrontier_zero
    (Obligation : Type u)
    [DecidableEq Obligation] :
    classifyFrontier (frontierZero Obligation) = .noRoute := by
  simp [classifyFrontier]

@[simp] theorem classifyFrontier_one
    (Obligation : Type u)
    [DecidableEq Obligation] :
    classifyFrontier (frontierOne Obligation) = .complete := by
  simp [classifyFrontier, frontierOne, frontierZero]

structure CertifiedRouteFrontier
    (Obligation : Type u)
    (Certificate : Type v)
    [DecidableEq Obligation]
    (snapshot : ProjectionSnapshot)
    (Statement : Obligation → Prop)
    (Seeds : AcceptedSeedRegistry Obligation Statement)
    (Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop)
    (target : Obligation) where
  activeSnapshot : VerifiedActiveSnapshot snapshot
  family : FrontierFamily Obligation
  completion : Option (Derivation Statement Seeds Usable target)
  completion_exact :
    completion.isSome ↔ Discharged Statement Seeds Usable target
  complete_family_exact :
    completion.isSome ↔ family = frontierOne Obligation
  unresolved : Finset Obligation
  unresolved_exact :
    ∀ obligation, obligation ∈ unresolved ↔
      (∃ requirement ∈ family, obligation ∈ requirement) ∧
      ¬ Discharged Statement Seeds Usable obligation

namespace CertifiedRouteFrontier

/-- Any completion retained by a certified frontier proves its target. -/
theorem completion_proves
    {Obligation : Type u}
    {Certificate : Type v}
    [DecidableEq Obligation]
    {snapshot : ProjectionSnapshot}
    {Statement : Obligation → Prop}
    {Seeds : AcceptedSeedRegistry Obligation Statement}
    {Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop}
    {target : Obligation}
    (frontier :
      CertifiedRouteFrontier
        Obligation Certificate snapshot Statement Seeds Usable target)
    {derivation : Derivation Statement Seeds Usable target}
    (_retained : frontier.completion = some derivation) :
    Statement target :=
  derivation.proves

/-- A represented unresolved leaf cannot also possess a derivation. -/
theorem unresolved_not_discharged
    {Obligation : Type u}
    {Certificate : Type v}
    [DecidableEq Obligation]
    {snapshot : ProjectionSnapshot}
    {Statement : Obligation → Prop}
    {Seeds : AcceptedSeedRegistry Obligation Statement}
    {Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop}
    {target obligation : Obligation}
    (frontier :
      CertifiedRouteFrontier
        Obligation Certificate snapshot Statement Seeds Usable target)
    (member : obligation ∈ frontier.unresolved) :
    ¬ Discharged Statement Seeds Usable obligation :=
  (frontier.unresolved_exact obligation).mp member |>.2

end CertifiedRouteFrontier

structure LeastFrontierFixedPoint
    {State : Type u}
    (snapshot : ProjectionSnapshot)
    (step : State → State)
    (Below : State → State → Prop) where
  activeSnapshot : VerifiedActiveSnapshot snapshot
  value : State
  fixed : step value = value
  least :
    ∀ candidate, step candidate = candidate →
      Below value candidate

end Mathematics.ProofStrategy
```
