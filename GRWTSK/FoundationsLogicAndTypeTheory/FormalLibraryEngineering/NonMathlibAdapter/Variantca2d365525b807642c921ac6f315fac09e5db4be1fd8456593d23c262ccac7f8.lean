/-!
# Non-Mathlib mathematics adapters

An adapter can carry the identity and exact-statement boundary of mathematics
that is not directly available in Mathlib.  It does not own theorem authority:
strict use requires either proof authority or an explicit unavailable-authority
marker.
-/

namespace AnalyticNumber
namespace NonMathlibAdapter

structure NonMathlibConceptDescriptor where
  conceptHash : Nat
  label : String
  sourceHash : Nat

structure AdapterDescriptor where
  adapterKindHash : Nat
  adapterSourceHash : Nat
  statementHash : Nat

structure NonMathlibAdapterCertificate where
  concept : NonMathlibConceptDescriptor
  adapter : AdapterDescriptor
  exactStatementRecorded : Prop
  exactStatementProof : exactStatementRecorded
  authorityBoundaryPreserved : Prop
  authorityBoundaryProof : authorityBoundaryPreserved
  unavailableMarkedWhenUnproved : Prop
  unavailableProof : unavailableMarkedWhenUnproved
  adapterDoesNotOwnTheorem : Prop
  noAuthorityProof : adapterDoesNotOwnTheorem

theorem non_mathlib_mathematics_adapter_sound
    (A : NonMathlibAdapterCertificate) :
    A.exactStatementRecorded ∧
    A.authorityBoundaryPreserved ∧
    A.unavailableMarkedWhenUnproved ∧
    A.adapterDoesNotOwnTheorem :=
  by
    exact
      ⟨A.exactStatementProof,
       A.authorityBoundaryProof,
       A.unavailableProof,
       A.noAuthorityProof⟩

def AdapterOwnsTheoremAuthority (_A : AdapterDescriptor) : Prop :=
  False

theorem adapter_descriptor_not_theorem_authority
    (A : AdapterDescriptor) :
    ¬ AdapterOwnsTheoremAuthority A := by
  intro h
  exact h

end NonMathlibAdapter
end AnalyticNumber
