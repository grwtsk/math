import Mathematics.Prismatic.ExternalObligation

/-!
# Exact theorem-input gaps

The gap engine computes `required \\ available` over immutable object
addresses.  It does not estimate nearness to a theorem and does not convert
evidence into a dependency.
-/

namespace Mathematics.Prismatic

/-- Exact dependency inputs required and presently available for an obligation. -/
structure TheoremInputGap where
  obligationId : StableId
  required : List ObjectAddress
  available : List ObjectAddress
  requirementDigest : Digest
  availabilityDigest : Digest
  gapAddress : ObjectAddress

namespace TheoremInputGap

/-- Required addresses absent from the accepted state. -/
def missing (gap : TheoremInputGap) : List ObjectAddress :=
  gap.required.filter (fun address ↦ address ∉ gap.available)

/-- Closure means every exact required address is accepted and available. -/
def Closed (gap : TheoremInputGap) : Prop :=
  ∀ address ∈ gap.required, address ∈ gap.available

@[simp]
theorem mem_missing_iff
    (gap : TheoremInputGap) (address : ObjectAddress) :
    address ∈ gap.missing ↔
      address ∈ gap.required ∧ address ∉ gap.available := by
  simp [missing]

theorem closed_iff_missing_nil
    (gap : TheoremInputGap) :
    gap.Closed ↔ gap.missing = [] := by
  constructor
  · intro closed
    apply List.eq_nil_iff_forall_not_mem.mpr
    intro address membership
    have parts := (gap.mem_missing_iff address).mp membership
    exact parts.2 (closed address parts.1)
  · intro noMissing address required
    by_contra unavailable
    have membership : address ∈ gap.missing :=
      (gap.mem_missing_iff address).mpr ⟨required, unavailable⟩
    rw [noMissing] at membership
    simp at membership

end TheoremInputGap

end Mathematics.Prismatic
