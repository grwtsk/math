import FCRS.TheoremTransfer.NegativeChecks

namespace FCRS.TheoremTransfer.Cycle6.QuantifierExactMap

open FCRS.TheoremTransfer.NegativeChecks.OD

def v (name : String) : VersionId :=
  .atomic ⟨"https://example.invalid/cycle-6", name, "1", "sha256:" ++ name⟩

def unknownProfile : QuantifierProfile := QuantifierProfile.unspecified (v "unknown")
def constantBoolMap : Bool → Bool := fun _ => false

/-- The exact map index rejects an unrelated identity carrier equivalence. -/
example : True := by
  fail_if_success
    exact (.evidenced (QuantifierCarrierEquivalence.refl Bool) rfl
      [v "unrelated-identity"] (by simp) :
      QuantifierUnspecifiedCompatibility
        (carrierTheory Bool) (carrierTheory Bool) constantBoolMap
        unknownProfile unknownProfile)
  trivial

/-- Fully specified Bool-to-Nat transport has no admissible map evidence. -/
example : ¬ Nonempty (QuantifierSpecifiedMapEvidence
    boolSensitiveTheory natSensitiveTheory boolToNat) := by
  rintro ⟨evidence⟩
  exact finiteToInfiniteSpecifiedMapEvidenceImpossible evidence

/-- Unknown Bool-to-Nat profiles cannot be certified by nominal artifacts. -/
example : ¬ Nonempty (QuantifierUnspecifiedCompatibility
    (carrierTheory Bool) (carrierTheory Nat)
    (fun value : Bool => if value then (1 : Nat) else 0)
    unknownCarrierProfile unknownCarrierProfile) := by
  rintro ⟨compatibility⟩
  exact boolNatUnknownCompatibilityImpossible compatibility

end FCRS.TheoremTransfer.Cycle6.QuantifierExactMap
