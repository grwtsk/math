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
