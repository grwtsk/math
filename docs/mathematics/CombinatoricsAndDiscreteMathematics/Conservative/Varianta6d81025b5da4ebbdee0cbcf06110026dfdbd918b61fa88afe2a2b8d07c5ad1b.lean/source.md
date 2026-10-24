# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Conservative.Varianta6d81025b5da4ebbdee0cbcf06110026dfdbd918b61fa88afe2a2b8d07c5ad1b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4771898fa859f6b71924e6adaf3b81c40f29943` · SHA-256 `21d70456c19ae06853bd02613c7d193898534f880e7af4f0435e3f6daef7f2a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FixedSolutionSound.Variant2be8c22b5cf4e20c3c29cb4200dfefea95aa3024c1132839624f9ec63ccf82b6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2be8c22b5cf4e20c3c29cb4200dfefea95aa3024c1132839624f9ec63ccf82b6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FixedSolutionSound.Variant2be8c22b5cf4e20c3c29cb4200dfefea95aa3024c1132839624f9ec63ccf82b6","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"2be8c22b5cf4e20c3c29cb4200dfefea95aa3024c1132839624f9ec63ccf82b6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Resolution/Conservative.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Resolution.Result

/-!
# Certified conservative-resolution laws
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FixedSolutionSound.Variant2be8c22b5cf4e20c3c29cb4200dfefea95aa3024c1132839624f9ec63ccf82b6

namespace Mathematics.Resolution

universe u v w

theorem fixed_solution_sound
    [DecidableEq Obligation]
    [DecidableEq Proof]
    {obligations : Finset Obligation}
    {checker : TrustedChecker Obligation Proof}
    {registry : Obligation → Finset Proof}
    (certificate :
      FixedCertificate obligations checker registry) :
    ∀ obligation ∈ obligations,
      checker.proposition obligation := by
  intro obligation required
  exact accepted_proves checker registry
    (certificate.accepted obligation required)

theorem unknown_is_nonempty
    [DecidableEq Obligation]
    {unresolvedSet : Finset Obligation}
    (certificate : FrontierCertificate unresolvedSet) :
    unresolvedSet.Nonempty :=
  certificate.nonempty

theorem authority_schedule_noninterference
    (authority : AuthorityDecision Solution Obligation)
    (left right : ScheduleView Packet) :
    (present authority left).1 =
      (present authority right).1 :=
  rfl

theorem certificate_extension_monotone
    [DecidableEq Obligation]
    [DecidableEq Proof]
    (obligations : Finset Obligation)
    (checker : TrustedChecker Obligation Proof)
    {left right : Obligation → Finset Proof}
    (extension : ∀ obligation, left obligation ⊆ right obligation) :
    unresolved obligations checker right ⊆
      unresolved obligations checker left :=
  unresolved_antitone obligations checker extension

theorem continuation_count_finite
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    (cut : InvocationCut Obligation Proof Event)
    (unresolvedSet : Finset Obligation) :
    (frequencyValues cut unresolvedSet).card ≤
      unresolvedSet.card :=
  finite_grade_bound cut unresolvedSet

/--
Every fixed input has an authority decision and a schedule view because both
are ordinary finite values.  No search process occurs in this factorization.
-/
theorem total_factorization
    (authority : AuthorityDecision Solution Obligation)
    (schedule : ScheduleView Packet) :
    ∃ output,
      output = present authority schedule :=
  ⟨present authority schedule, rfl⟩

end Mathematics.Resolution
```
