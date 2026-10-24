# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ContextConservative.Variant581d78bcf9f6963d79ec6ce9e66d47a90a51f875362d1515069b0d8c1a823fa8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aea9c131f5f1628fd42b5d05a7ca4e8de1e16246` · SHA-256 `512d525441449ed27fc7b75742def00a92cc04d8c67f557498b5a85f9459c347`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ContextSolutionSound.Variantdb1491fda7ff899831b3ff982cb48105dfff249febdf50bd8d3020b5eb0a0cd2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"db1491fda7ff899831b3ff982cb48105dfff249febdf50bd8d3020b5eb0a0cd2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.ContextSolutionSound.Variantdb1491fda7ff899831b3ff982cb48105dfff249febdf50bd8d3020b5eb0a0cd2","mathematical_subject":"Algebra.OrderTheory","original_sha256":"db1491fda7ff899831b3ff982cb48105dfff249febdf50bd8d3020b5eb0a0cd2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Resolution/ContextConservative.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Resolution.ContextResolver
import Mathematics.Resolution.Projection
import Mathematics.Resolution.Conservative

/-!
# Context-bound conservative laws
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ContextSolutionSound.Variantdb1491fda7ff899831b3ff982cb48105dfff249febdf50bd8d3020b5eb0a0cd2

namespace Mathematics.Resolution

theorem context_solution_sound
    [DecidableEq Obligation]
    [DecidableEq Proof]
    {obligations : Finset Obligation}
    {checker : TrustedChecker Obligation Proof}
    {registry : Obligation → Finset Proof}
    (certificate :
      FixedCertificate obligations checker registry) :
    ∀ obligation ∈ obligations,
      checker.proposition obligation :=
  fixed_solution_sound certificate

theorem context_authority_view_noninterference
    (authority : AuthorityDecision Solution Obligation)
    (left right : ScheduleView Packet) :
    (present authority left).1 =
      (present authority right).1 :=
  authority_schedule_noninterference authority left right

theorem context_certificate_extension_monotone
    [DecidableEq Obligation]
    [DecidableEq Proof]
    (obligations : Finset Obligation)
    (checker : TrustedChecker Obligation Proof)
    {left right : Obligation → Finset Proof}
    (extension : ∀ obligation, left obligation ⊆ right obligation) :
    unresolved obligations checker right ⊆
      unresolved obligations checker left :=
  certificate_extension_monotone
    obligations checker extension

theorem resolveCut_rejected_exactly_when_context_invalid
    [DecidableEq Obligation]
    [LinearOrder Proof]
    [DecidableEq Event]
    {checker : TrustedChecker Obligation Proof}
    (validator : ContextCutValidator Obligation Proof Event)
    (profile : ContextResolverProfile Obligation Proof Event checker)
    (cut : ContextBoundCut Obligation Proof Event) :
    (resolveCut validator profile cut).IsRejected ↔
      ¬ validator.Valid cut := by
  by_cases valid : validator.Valid cut
  · by_cases closed :
      unresolved cut.core.obligations checker
        cut.core.proofRegistry = ∅
    · simp [resolveCut, valid, closed,
        ContextResolution.IsRejected]
    · simp [resolveCut, valid, closed,
        ContextResolution.IsRejected]
  · simp [resolveCut, valid, ContextResolution.IsRejected]

theorem resolveCut_total
    [DecidableEq Obligation]
    [LinearOrder Proof]
    [DecidableEq Event]
    {checker : TrustedChecker Obligation Proof}
    (validator : ContextCutValidator Obligation Proof Event)
    (profile : ContextResolverProfile Obligation Proof Event checker)
    (cut : ContextBoundCut Obligation Proof Event) :
    ∃ result, result = resolveCut validator profile cut :=
  ⟨resolveCut validator profile cut, rfl⟩

end Mathematics.Resolution
```
