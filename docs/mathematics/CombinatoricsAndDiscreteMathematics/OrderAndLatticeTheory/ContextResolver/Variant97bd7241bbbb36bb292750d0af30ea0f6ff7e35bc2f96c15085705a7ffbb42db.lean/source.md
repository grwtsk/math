# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ContextResolver.Variant97bd7241bbbb36bb292750d0af30ea0f6ff7e35bc2f96c15085705a7ffbb42db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `728a3f9e76477bfd82bd25ced65b62e818efe73b` · SHA-256 `bdfbd11972b6cb78a224fd5992848ff40972527a2a8d7ede3991a37f7b0eaf85`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ContextCutValidator.Variante487370bbe14c39a7224e99255987652144d8231118c86b08015b119303b1e88","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e487370bbe14c39a7224e99255987652144d8231118c86b08015b119303b1e88","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.ContextCutValidator.Variante487370bbe14c39a7224e99255987652144d8231118c86b08015b119303b1e88","mathematical_subject":"Algebra.OrderTheory","original_sha256":"e487370bbe14c39a7224e99255987652144d8231118c86b08015b119303b1e88","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Resolution/ContextResolver.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Resolution.Context
import Mathematics.Resolution.Continuation

/-!
# Context-bound total conservative resolver

The context validator owns every top-level rejection.  Proof-object rejection
remains inside the finite proof registry and therefore produces unknownness.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ContextCutValidator.Variante487370bbe14c39a7224e99255987652144d8231118c86b08015b119303b1e88

namespace Mathematics.Resolution

universe u v w x

structure ContextCutValidator
    (Obligation : Type u)
    (Proof : Type v)
    (Event : Type w)
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event] where
  Valid : ContextBoundCut Obligation Proof Event → Prop
  decidableValid : ∀ cut, Decidable (Valid cut)
  classifyFailure :
    ContextBoundCut Obligation Proof Event → CutFailure

attribute [instance] ContextCutValidator.decidableValid

structure ContextResolverProfile
    (Obligation : Type u)
    (Proof : Type v)
    (Event : Type w)
    [DecidableEq Obligation]
    [LinearOrder Proof]
    [DecidableEq Event]
    (checker : TrustedChecker Obligation Proof) where
  Solution : Type x
  Packet : Type x
  Token : Type x
  authenticator : ContinuationAuthenticator Token
  buildSolution :
    ∀ cut : ContextBoundCut Obligation Proof Event,
      FixedCertificate
        cut.core.obligations checker cut.core.proofRegistry →
      Solution
  firstPacket :
    ∀ cut : ContextBoundCut Obligation Proof Event,
      (unresolved
        cut.core.obligations checker
        cut.core.proofRegistry).Nonempty →
      Packet
  continuation :
    ∀ cut : ContextBoundCut Obligation Proof Event,
      (unresolved
        cut.core.obligations checker
        cut.core.proofRegistry).Nonempty →
      Continuation (AuthenticatedToken authenticator)

inductive ContextResolution
    [DecidableEq Obligation]
    [LinearOrder Proof]
    [DecidableEq Event]
    {checker : TrustedChecker Obligation Proof}
    (validator : ContextCutValidator Obligation Proof Event)
    (profile : ContextResolverProfile Obligation Proof Event checker)
    (cut : ContextBoundCut Obligation Proof Event)
  | solved
      (valid : validator.Valid cut)
      (solution : profile.Solution)
      (certificate :
        FixedCertificate
          cut.core.obligations checker cut.core.proofRegistry)
  | unknown
      (valid : validator.Valid cut)
      (packet : profile.Packet)
      (next :
        Continuation
          (AuthenticatedToken profile.authenticator))
      (certificate :
        FrontierCertificate
          (unresolved cut.core.obligations checker
            cut.core.proofRegistry))
  | rejected
      (failure : CutFailure)
      (invalid : ¬ validator.Valid cut)

def ContextResolution.IsRejected
    {Obligation : Type u}
    {Proof : Type v}
    {Event : Type w}
    [DecidableEq Obligation]
    [LinearOrder Proof]
    [DecidableEq Event]
    {checker : TrustedChecker Obligation Proof}
    {validator : ContextCutValidator Obligation Proof Event}
    {profile :
      ContextResolverProfile Obligation Proof Event checker}
    {cut : ContextBoundCut Obligation Proof Event} :
    ContextResolution validator profile cut → Prop
  | .solved _ _ _ => False
  | .unknown _ _ _ _ => False
  | .rejected _ _ => True

def resolveCut
    [DecidableEq Obligation]
    [LinearOrder Proof]
    [DecidableEq Event]
    {checker : TrustedChecker Obligation Proof}
    (validator : ContextCutValidator Obligation Proof Event)
    (profile : ContextResolverProfile Obligation Proof Event checker)
    (cut : ContextBoundCut Obligation Proof Event) :
    ContextResolution validator profile cut :=
  if valid : validator.Valid cut then
    if closed :
        unresolved cut.core.obligations checker
          cut.core.proofRegistry = ∅ then
      let certificate :=
        fixedCertificateOfUnresolvedEmpty
          cut.core.obligations checker
          cut.core.proofRegistry closed
      .solved valid
        (profile.buildSolution cut certificate) certificate
    else
      let nonempty := Finset.nonempty_iff_ne_empty.mpr closed
      .unknown valid
        (profile.firstPacket cut nonempty)
        (profile.continuation cut nonempty)
        ⟨nonempty, True, True.intro⟩
  else
    .rejected (validator.classifyFailure cut) valid

end Mathematics.Resolution
```
