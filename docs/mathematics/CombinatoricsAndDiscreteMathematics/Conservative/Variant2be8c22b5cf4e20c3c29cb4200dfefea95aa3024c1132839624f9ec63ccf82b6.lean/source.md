# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Conservative.Variant2be8c22b5cf4e20c3c29cb4200dfefea95aa3024c1132839624f9ec63ccf82b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `729da47ed2c7bf5d968b454c246590608e295064` · SHA-256 `2be8c22b5cf4e20c3c29cb4200dfefea95aa3024c1132839624f9ec63ccf82b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Resolution.Result

/-!
# Certified conservative-resolution laws
-/

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
