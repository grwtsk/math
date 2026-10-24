# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Unified.Variant2db1060ba6a236a78b5d7059c00e4389f3a682a7e1e2debd8fc305bd4116c9d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19b982eb3591d2dce6e577b0ebd9796385281b7b` · SHA-256 `5dd024c070115aeb23fc0b30fee12db1ba9d6f2398019c47ee379fafec2e0c3b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.UnifiedUnknownKind.Variant2b6a7521e8a04d75b0fcfa2e2f8040dcf4bf6b38a3c7f3de1fcd219dee6d69b5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b6a7521e8a04d75b0fcfa2e2f8040dcf4bf6b38a3c7f3de1fcd219dee6d69b5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.UnifiedUnknownKind.Variant2b6a7521e8a04d75b0fcfa2e2f8040dcf4bf6b38a3c7f3de1fcd219dee6d69b5","mathematical_subject":"Algebra.OrderTheory","original_sha256":"2b6a7521e8a04d75b0fcfa2e2f8040dcf4bf6b38a3c7f3de1fcd219dee6d69b5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/AbelReynolds/Unified.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.AbelReynolds.Focus
import Mathematics.Resolution.ContextResolver

/-!
# Unified conservative Abel--Reynolds resolver

The existing context resolver decides top-level rejection and supplied-proof
closure.  The domain layer may only promote a proof-bearing unified candidate;
otherwise it returns a typed unknown boundary.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.UnifiedUnknownKind.Variant2b6a7521e8a04d75b0fcfa2e2f8040dcf4bf6b38a3c7f3de1fcd219dee6d69b5

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
```
