# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EllipticCurveTorsionAuthoritySpin.Variant5de50e79af59df3bc3bcd5f45e53132ebfd8b6314d35150a8b5050ec7298ab55

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `21abe7b7872c7838f15fc44d3c366531c9489fa1` · SHA-256 `b7f1075aa0fe64920740fc7aeaa7419525b56820dc7d981f5b55da05f0e3c6f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BertrandPostulateCertificate.Variant6de8fa78fcff97536279b1aa70bd78ed57bd11cf19faebc2e2a1b96bb7be2193","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6de8fa78fcff97536279b1aa70bd78ed57bd11cf19faebc2e2a1b96bb7be2193","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BertrandPostulateCertificate.Variant6de8fa78fcff97536279b1aa70bd78ed57bd11cf19faebc2e2a1b96bb7be2193","mathematical_subject":"Foundations.Unclassified","original_sha256":"6de8fa78fcff97536279b1aa70bd78ed57bd11cf19faebc2e2a1b96bb7be2193","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Analysis/EllipticCurveTorsionAuthoritySpin.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.Analysis.CurveTorsionGodelLoopCarrier
import Think.Kernel.AuthoritySpinCarrier


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BertrandPostulateCertificate.Variant6de8fa78fcff97536279b1aa70bd78ed57bd11cf19faebc2e2a1b96bb7be2193

set_option autoImplicit false

namespace Think.Analysis

open Think.Kernel

universe u v

/-
Elliptic-curve torsion and authority-spin closure.

This file formalizes the carrier relation:

  elliptic-curve torsion: finite repetition reaches the identity, mP = O
  authority spin: finite proof routing reaches proof-positive authority
  forwarding gate: theorem-like children may forward only after checkedProof or
    trustedImport is active.

No proof of Bertrand's postulate is introduced here. Instead, Bertrand's
postulate is represented as a theorem-shaped certificate whose proof must be
supplied by checkedProof or trustedImport authority.
-/

/-- Abstract Bertrand postulate shape for a chosen primality predicate. -/
def BertrandPostulateForm (Prime : Nat → Prop) : Prop :=
  ∀ n : Nat, 1 < n → ∃ p : Nat, Prime p ∧ n < p ∧ p < 2 * n

/-- A Bertrand postulate certificate must carry a proof and checked/import authority. -/
structure BertrandPostulateCertificate (Prime : Nat → Prop) where
  proof : BertrandPostulateForm Prime
  authority : AuthorityState
  authority_ok : authority = AuthorityState.checkedProof ∨
    authority = AuthorityState.trustedImport

/-- Projection of the certified Bertrand postulate statement. -/
theorem bertrand_postulate_certificate_proof
    {Prime : Nat → Prop}
    (B : BertrandPostulateCertificate Prime) :
    BertrandPostulateForm Prime :=
  B.proof

/-- A Bertrand certificate has proof-positive authority spin. -/
theorem bertrand_postulate_certificate_proof_spin
    {Prime : Nat → Prop}
    (B : BertrandPostulateCertificate Prime) :
    B.authority.toSpinSector = AuthoritySpinSector.proofPositive := by
  cases B.authority_ok with
  | inl h =>
      rw [h]
      rfl
  | inr h =>
      rw [h]
      rfl

/-- A statement surface may forward through the ring only with theorem-like kind and proof spin. -/
def AuthorityRingMayForward
    (S : StatementAuthorityFlipSurface) : Prop :=
  S.theoremLikeKindActive ∧ S.proofSpinActive

/-- A finite authority orbit closes at a proof-positive spin. -/
structure AuthorityProofClosedOrbit (N : Nat) where
  carrier : FiniteTransitionCarrier N
  stateAt : Fin N → StatementAuthorityFlipSurface
  start : Fin N
  period : Nat
  period_pos : 0 < period
  closed : transitionIterate carrier.transition period start = start
  theoremLikeAtReturn :
    (stateAt (transitionIterate carrier.transition period start)).theoremLikeKindActive
  proofSpinAtReturn :
    (stateAt (transitionIterate carrier.transition period start)).proofSpinActive

/-- The authority orbit returns to its start after its period. -/
theorem authority_proof_closed_orbit_returns
    {N : Nat} (O : AuthorityProofClosedOrbit N) :
    transitionIterate O.carrier.transition O.period O.start = O.start :=
  O.closed

/-- The return state of an authority orbit may forward through the ring. -/
theorem authority_proof_closed_orbit_may_forward_at_return
    {N : Nat} (O : AuthorityProofClosedOrbit N) :
    AuthorityRingMayForward
      (O.stateAt (transitionIterate O.carrier.transition O.period O.start)) :=
  ⟨O.theoremLikeAtReturn, O.proofSpinAtReturn⟩

/-- Only checkedProof and trustedImport map to the proof-positive authority sector. -/
theorem authority_state_proof_positive_iff_checked_or_trusted
    (a : AuthorityState) :
    a.toSpinSector = AuthoritySpinSector.proofPositive ↔
      a = AuthorityState.checkedProof ∨ a = AuthorityState.trustedImport := by
  cases a <;> simp [AuthorityState.toSpinSector, AuthorityState.toSpin,
    AuthoritySpin.toSector]

/-- The return state has an active checkedProof or trustedImport authority flip. -/
theorem authority_proof_closed_orbit_checked_or_trusted_at_return
    {N : Nat} (O : AuthorityProofClosedOrbit N) :
    (O.stateAt (transitionIterate O.carrier.transition O.period O.start)).authorityActive
        AuthorityState.checkedProof ∨
      (O.stateAt (transitionIterate O.carrier.transition O.period O.start)).authorityActive
        AuthorityState.trustedImport := by
  rcases O.proofSpinAtReturn with ⟨a, ha, hspin⟩
  have hcases :=
    (authority_state_proof_positive_iff_checked_or_trusted a).mp hspin
  cases hcases with
  | inl h =>
      rw [h] at ha
      exact Or.inl ha
  | inr h =>
      rw [h] at ha
      exact Or.inr ha

/-- Erdős-style binomial child progression gated by proof-positive authority. -/
structure ErdosBinomialAuthorityProgression (N : Nat) where
  childSurface : Fin N → StatementAuthorityFlipSurface
  monomialExponent : Fin N → Nat
  childTheoremLike : ∀ i : Fin N, (childSurface i).theoremLikeKindActive
  childCheckedOrTrusted : ∀ i : Fin N,
    (childSurface i).authorityActive AuthorityState.checkedProof ∨
      (childSurface i).authorityActive AuthorityState.trustedImport

/-- Each child in the Erdős progression has proof-positive spin. -/
theorem erdos_child_has_proof_spin
    {N : Nat} (E : ErdosBinomialAuthorityProgression N) (i : Fin N) :
    (E.childSurface i).proofSpinActive := by
  cases E.childCheckedOrTrusted i with
  | inl h =>
      exact checked_proof_authority_gives_proof_spin (E.childSurface i) h
  | inr h =>
      exact trusted_import_authority_gives_proof_spin (E.childSurface i) h

/-- Each child in the Erdős progression may forward through the ring. -/
theorem erdos_child_ring_may_forward
    {N : Nat} (E : ErdosBinomialAuthorityProgression N) (i : Fin N) :
    AuthorityRingMayForward (E.childSurface i) :=
  ⟨E.childTheoremLike i, erdos_child_has_proof_spin E i⟩

/-- Bridge elliptic-curve torsion closure to authority-spin proof closure. -/
structure EllipticCurveTorsionAuthoritySpinBridge
    (Curve : Type u) (Point : Type v) (torsionN authorityN : Nat) where
  torsionLoop : CurveTorsionClosedLoopCarrier Curve Point torsionN
  authorityOrbit : AuthorityProofClosedOrbit authorityN
  order_eq_authority_period : torsionLoop.torsion.order = authorityOrbit.period

/-- The bridge preserves the elliptic-curve torsion equation. -/
theorem elliptic_torsion_authority_torsion_eq_zero
    {Curve : Type u} {Point : Type v} {torsionN authorityN : Nat}
    (B : EllipticCurveTorsionAuthoritySpinBridge Curve Point torsionN authorityN) :
    B.torsionLoop.groupModel.nsmul
        B.torsionLoop.torsion.order
        B.torsionLoop.torsion.point =
      B.torsionLoop.groupModel.zero :=
  B.torsionLoop.torsion.nsmul_eq_zero

/-- The bridge preserves the authority closed-orbit equation. -/
theorem elliptic_torsion_authority_orbit_returns
    {Curve : Type u} {Point : Type v} {torsionN authorityN : Nat}
    (B : EllipticCurveTorsionAuthoritySpinBridge Curve Point torsionN authorityN) :
    transitionIterate
        B.authorityOrbit.carrier.transition
        B.authorityOrbit.period
        B.authorityOrbit.start =
      B.authorityOrbit.start :=
  B.authorityOrbit.closed

/-- The torsion order is identified with the authority proof-routing period. -/
theorem elliptic_torsion_authority_order_eq_period
    {Curve : Type u} {Point : Type v} {torsionN authorityN : Nat}
    (B : EllipticCurveTorsionAuthoritySpinBridge Curve Point torsionN authorityN) :
    B.torsionLoop.torsion.order = B.authorityOrbit.period :=
  B.order_eq_authority_period

/-- The authority return state in the bridge may forward through the ring. -/
theorem elliptic_torsion_authority_may_forward_at_return
    {Curve : Type u} {Point : Type v} {torsionN authorityN : Nat}
    (B : EllipticCurveTorsionAuthoritySpinBridge Curve Point torsionN authorityN) :
    AuthorityRingMayForward
      (B.authorityOrbit.stateAt
        (transitionIterate
          B.authorityOrbit.carrier.transition
          B.authorityOrbit.period
          B.authorityOrbit.start)) :=
  authority_proof_closed_orbit_may_forward_at_return B.authorityOrbit

/-- Combined bridge: Bertrand certificate, Erdős children, and elliptic torsion closure. -/
structure BertrandErdosTorsionAuthorityBridge
    (Prime : Nat → Prop)
    (Curve : Type u) (Point : Type v)
    (torsionN childN authorityN : Nat) where
  bertrand : BertrandPostulateCertificate Prime
  erdosProgression : ErdosBinomialAuthorityProgression childN
  torsionAuthority :
    EllipticCurveTorsionAuthoritySpinBridge Curve Point torsionN authorityN
  torsion_order_eq_child_count : torsionAuthority.torsionLoop.torsion.order = childN

/-- The combined bridge projects the certified Bertrand postulate. -/
theorem bertrand_erdos_torsion_bridge_bertrand
    {Prime : Nat → Prop}
    {Curve : Type u} {Point : Type v}
    {torsionN childN authorityN : Nat}
    (B : BertrandErdosTorsionAuthorityBridge
      Prime Curve Point torsionN childN authorityN) :
    BertrandPostulateForm Prime :=
  B.bertrand.proof

/-- Every child in the combined bridge may forward through the ring. -/
theorem bertrand_erdos_torsion_bridge_child_may_forward
    {Prime : Nat → Prop}
    {Curve : Type u} {Point : Type v}
    {torsionN childN authorityN : Nat}
    (B : BertrandErdosTorsionAuthorityBridge
      Prime Curve Point torsionN childN authorityN)
    (i : Fin childN) :
    AuthorityRingMayForward (B.erdosProgression.childSurface i) :=
  erdos_child_ring_may_forward B.erdosProgression i

/-- The combined bridge preserves torsion closure. -/
theorem bertrand_erdos_torsion_bridge_torsion_eq_zero
    {Prime : Nat → Prop}
    {Curve : Type u} {Point : Type v}
    {torsionN childN authorityN : Nat}
    (B : BertrandErdosTorsionAuthorityBridge
      Prime Curve Point torsionN childN authorityN) :
    B.torsionAuthority.torsionLoop.groupModel.nsmul
        B.torsionAuthority.torsionLoop.torsion.order
        B.torsionAuthority.torsionLoop.torsion.point =
      B.torsionAuthority.torsionLoop.groupModel.zero :=
  B.torsionAuthority.torsionLoop.torsion.nsmul_eq_zero

end Think.Analysis
```
