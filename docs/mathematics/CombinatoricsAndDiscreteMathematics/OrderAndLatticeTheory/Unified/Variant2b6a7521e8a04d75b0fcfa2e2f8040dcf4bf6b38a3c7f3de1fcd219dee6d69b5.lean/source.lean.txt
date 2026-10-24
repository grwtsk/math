import Mathematics.AbelReynolds.Focus
import Mathematics.Resolution.ContextResolver

/-!
# Unified conservative Abel--Reynolds resolver

The existing context resolver decides top-level rejection and supplied-proof
closure.  The domain layer may only promote a proof-bearing unified candidate;
otherwise it returns a typed unknown boundary.
-/

namespace Mathematics.AbelReynolds

open Mathematics.Resolution

universe u v w x y

inductive UnifiedUnknownKind
  | missingEvidence
  | stepUndetermined
  | localityBoundary
  | arithmeticOrbitSurgery
  | characterCoverageBoundary
  | contractivityBoundary
  | symmetryBoundary
  | transcriptBoundary
  | costBoundary
  deriving DecidableEq, Repr

structure UnifiedDomainProfile
    (Obligation : Type u)
    (Proof : Type v)
    (Event : Type w)
    [DecidableEq Obligation]
    [LinearOrder Proof]
    [DecidableEq Event]
    (checker : TrustedChecker Obligation Proof)
    (base : ContextResolverProfile Obligation Proof Event checker) where
  DomainPacket : Type y
  binding :
    ContextBoundCut Obligation Proof Event → UnifiedCutBinding
  candidate :
    ∀ cut : ContextBoundCut Obligation Proof Event,
      Option (UnifiedCandidate (binding cut))
  missingKind :
    ContextBoundCut Obligation Proof Event → UnifiedUnknownKind
  missingPacket :
    ContextBoundCut Obligation Proof Event → DomainPacket

inductive UnifiedResolution
    [DecidableEq Obligation]
    [LinearOrder Proof]
    [DecidableEq Event]
    {checker : TrustedChecker Obligation Proof}
    (validator : ContextCutValidator Obligation Proof Event)
    (base : ContextResolverProfile Obligation Proof Event checker)
    (domain :
      UnifiedDomainProfile Obligation Proof Event checker base)
    (cut : ContextBoundCut Obligation Proof Event)
  | solved
      (valid : validator.Valid cut)
      (baseSolution : base.Solution)
      (baseCertificate :
        FixedCertificate
          cut.core.obligations checker cut.core.proofRegistry)
      (candidate : UnifiedCandidate (domain.binding cut))
  | unknownAuthority
      (valid : validator.Valid cut)
      (packet : base.Packet)
      (next :
        Continuation (AuthenticatedToken base.authenticator))
      (certificate :
        FrontierCertificate
          (unresolved cut.core.obligations checker
            cut.core.proofRegistry))
  | unknownDomain
      (valid : validator.Valid cut)
      (kind : UnifiedUnknownKind)
      (packet : domain.DomainPacket)
  | rejected
      (failure : CutFailure)
      (invalid : ¬ validator.Valid cut)

def unifiedResolve
    [DecidableEq Obligation]
    [LinearOrder Proof]
    [DecidableEq Event]
    {checker : TrustedChecker Obligation Proof}
    (validator : ContextCutValidator Obligation Proof Event)
    (base : ContextResolverProfile Obligation Proof Event checker)
    (domain :
      UnifiedDomainProfile Obligation Proof Event checker base)
    (cut : ContextBoundCut Obligation Proof Event) :
    UnifiedResolution validator base domain cut :=
  match resolveCut validator base cut with
  | .rejected failure invalid =>
      .rejected failure invalid
  | .unknown valid packet next certificate =>
      .unknownAuthority valid packet next certificate
  | .solved valid solution certificate =>
      match domain.candidate cut with
      | some candidate =>
          .solved valid solution certificate candidate
      | none =>
          .unknownDomain valid
            (domain.missingKind cut)
            (domain.missingPacket cut)

def UnifiedResolution.IsPositive
    {Obligation : Type u}
    {Proof : Type v}
    {Event : Type w}
    [DecidableEq Obligation]
    [LinearOrder Proof]
    [DecidableEq Event]
    {checker : TrustedChecker Obligation Proof}
    {validator : ContextCutValidator Obligation Proof Event}
    {base :
      ContextResolverProfile Obligation Proof Event checker}
    {domain :
      UnifiedDomainProfile Obligation Proof Event checker base}
    {cut : ContextBoundCut Obligation Proof Event} :
    UnifiedResolution validator base domain cut → Prop
  | .solved _ _ _ _ => True
  | .unknownAuthority _ _ _ _ => False
  | .unknownDomain _ _ _ => False
  | .rejected _ _ => False

theorem unified_positive_sound
    [DecidableEq Obligation]
    [LinearOrder Proof]
    [DecidableEq Event]
    {checker : TrustedChecker Obligation Proof}
    {validator : ContextCutValidator Obligation Proof Event}
    {base :
      ContextResolverProfile Obligation Proof Event checker}
    {domain :
      UnifiedDomainProfile Obligation Proof Event checker base}
    {cut : ContextBoundCut Obligation Proof Event}
    (result : UnifiedResolution validator base domain cut)
    (positive : result.IsPositive) :
    ∃ candidate : UnifiedCandidate (domain.binding cut),
      CertifiedSymmetryFixedTallyLiftedSEAReuse
        (domain.binding cut) candidate.payload := by
  cases result with
  | solved _ _ _ candidate =>
      exact ⟨candidate, candidate.certificate⟩
  | unknownAuthority =>
      exact positive.elim
  | unknownDomain =>
      exact positive.elim
  | rejected =>
      exact positive.elim

theorem unifiedResolve_total
    [DecidableEq Obligation]
    [LinearOrder Proof]
    [DecidableEq Event]
    {checker : TrustedChecker Obligation Proof}
    (validator : ContextCutValidator Obligation Proof Event)
    (base : ContextResolverProfile Obligation Proof Event checker)
    (domain :
      UnifiedDomainProfile Obligation Proof Event checker base)
    (cut : ContextBoundCut Obligation Proof Event) :
    ∃ result, result = unifiedResolve validator base domain cut :=
  ⟨unifiedResolve validator base domain cut, rfl⟩

end Mathematics.AbelReynolds
