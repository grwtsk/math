# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.RouteClosure.Variantd2b7ebb510a2106b2aec9209df9b726f252925588f223f605860ba3f7f7fd81c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78e73afd0135c4dddfefcd90e5a88be2abb5c4ab` · SHA-256 `eb21d3a90a7045e83d420b159a5fea55493a20efe3065323b6a7a61865361704`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.RouteCandidateDisposition.Variant8bc8f9e3cb7f32387bdc2cfc0d6da279edc9409a270940b11635bac3fff95613","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8bc8f9e3cb7f32387bdc2cfc0d6da279edc9409a270940b11635bac3fff95613","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.RouteCandidateDisposition.Variant8bc8f9e3cb7f32387bdc2cfc0d6da279edc9409a270940b11635bac3fff95613","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"8bc8f9e3cb7f32387bdc2cfc0d6da279edc9409a270940b11635bac3fff95613","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/ProofStrategy/RouteClosure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.ProofStrategy.CertifiedRoute

/-!
# Registry-relative route closure

Exact, bounded, and continuing-enumeration claims are different constructors.
An exact finite claim carries an explicit finite eligible universe, proves that
the universe is both sound and complete, and proves that its included subset
is exact relative to eligibility.  Digests identify the frozen inputs; they do
not establish any of these facts.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.RouteCandidateDisposition.Variant8bc8f9e3cb7f32387bdc2cfc0d6da279edc9409a270940b11635bac3fff95613

namespace Mathematics.ProofStrategy

open Mathematics.Projection

universe u v

inductive RouteCandidateDisposition
    (Included Inapplicable PolicyDecision Equivalence ScopeProof : Type u)
  | included (proof : Included)
  | inapplicable (proof : Inapplicable)
  | policyRejected (proof : PolicyDecision)
  | equivalent (proof : Equivalence)
  | outOfScope (proof : ScopeProof)

structure ExactFiniteRouteClosure
    (Candidate : Type u)
    [DecidableEq Candidate]
    (Eligible Included : Candidate → Prop)
    (Disposition : Candidate → Type v)
    (snapshot : ProjectionSnapshot) where
  activeSnapshot : VerifiedActiveSnapshot snapshot
  eligibleUniverse : Finset Candidate
  eligible_sound :
    ∀ {candidate}, candidate ∈ eligibleUniverse → Eligible candidate
  eligible_complete :
    ∀ {candidate}, Eligible candidate → candidate ∈ eligibleUniverse
  includedCandidates : Finset Candidate
  included_sound :
    ∀ {candidate}, candidate ∈ includedCandidates →
      Eligible candidate ∧ Included candidate
  included_complete :
    ∀ {candidate}, Eligible candidate → Included candidate →
      candidate ∈ includedCandidates
  disposition :
    ∀ candidate, candidate ∈ eligibleUniverse → Disposition candidate
  registryDigest : String
  scopeDigest : String
  environmentDigest : String

namespace ExactFiniteRouteClosure

theorem eligible_iff_mem
    {Candidate : Type u}
    [DecidableEq Candidate]
    {Eligible Included : Candidate → Prop}
    {Disposition : Candidate → Type v}
    {snapshot : ProjectionSnapshot}
    (closure :
      ExactFiniteRouteClosure Candidate Eligible Included Disposition snapshot)
    {candidate : Candidate} :
    Eligible candidate ↔ candidate ∈ closure.eligibleUniverse :=
  ⟨closure.eligible_complete, closure.eligible_sound⟩

theorem included_iff_mem
    {Candidate : Type u}
    [DecidableEq Candidate]
    {Eligible Included : Candidate → Prop}
    {Disposition : Candidate → Type v}
    {snapshot : ProjectionSnapshot}
    (closure :
      ExactFiniteRouteClosure Candidate Eligible Included Disposition snapshot)
    {candidate : Candidate} :
    Eligible candidate ∧ Included candidate ↔
      candidate ∈ closure.includedCandidates :=
  ⟨fun facts => closure.included_complete facts.1 facts.2,
    closure.included_sound⟩

/-- Mutation exclusion: an omitted candidate cannot secretly remain eligible. -/
theorem omitted_is_ineligible
    {Candidate : Type u}
    [DecidableEq Candidate]
    {Eligible Included : Candidate → Prop}
    {Disposition : Candidate → Type v}
    {snapshot : ProjectionSnapshot}
    (closure :
      ExactFiniteRouteClosure Candidate Eligible Included Disposition snapshot)
    {candidate : Candidate}
    (omitted : candidate ∉ closure.eligibleUniverse) :
    ¬ Eligible candidate := by
  intro eligible
  exact omitted (closure.eligible_complete eligible)

end ExactFiniteRouteClosure

structure BoundedRouteClosure
    (snapshot : ProjectionSnapshot) where
  activeSnapshot : VerifiedActiveSnapshot snapshot
  registryDigest : String
  scopeDigest : String
  environmentDigest : String
  boundDigest : String

structure EnumerativeRouteClosure
    (snapshot : ProjectionSnapshot) where
  activeSnapshot : VerifiedActiveSnapshot snapshot
  registryDigest : String
  scopeDigest : String
  environmentDigest : String
  stage : Nat

inductive RouteClosureClaim
    (Candidate : Type u)
    [DecidableEq Candidate]
    (Eligible Included : Candidate → Prop)
    (Disposition : Candidate → Type v)
    (snapshot : ProjectionSnapshot)
  | exactFinite
      (closure :
        ExactFiniteRouteClosure
          Candidate Eligible Included Disposition snapshot)
  | bounded (closure : BoundedRouteClosure snapshot)
  | enumerative (closure : EnumerativeRouteClosure snapshot)

end Mathematics.ProofStrategy
```
