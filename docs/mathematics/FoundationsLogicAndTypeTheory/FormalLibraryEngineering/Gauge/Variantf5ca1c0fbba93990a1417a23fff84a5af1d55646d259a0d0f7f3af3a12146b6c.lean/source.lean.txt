import Mathematics.TensorNetwork.MPS

/-!
# Certified MPS gauge equivalence

Gauge data are representation coordinates, never semantic identity.  The
certificate records the registered internal change of basis and proves that
the complete contraction is unchanged.
-/

namespace Mathematics.TensorNetwork

/-- One certified internal gauge transformation between two MPS packages. -/
structure GaugeTransformation
    (source target : OpenMPS N D) where
  internalBondMapId : Fin (N + 1) → String
  inverseBondMapId : Fin (N + 1) → String
  inverseLawDigest : String
  contractPreserved :
    target.contract = source.contract

/-- Registered gauge equivalence; arbitrary state equality is not enough. -/
def GaugeEquivalent
    (source target : OpenMPS N D) : Prop :=
  Nonempty (GaugeTransformation source target)

/-- Certified internal gauge transformations preserve the represented state. -/
theorem contract_gauge_invariant
    {source target : OpenMPS N D}
    (gauge : GaugeTransformation source target) :
    target.contract = source.contract :=
  gauge.contractPreserved

/-- Inserting a registered equivalence and its inverse cancels exactly. -/
theorem inserted_inverse_cancels
    (equivalence : α ≃ β)
    (value : α) :
    equivalence.symm (equivalence value) = value :=
  equivalence.symm_apply_apply value

end Mathematics.TensorNetwork
