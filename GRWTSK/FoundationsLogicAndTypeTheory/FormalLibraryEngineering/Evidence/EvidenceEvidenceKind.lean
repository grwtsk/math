import Mathematics.Concept.Authority

/-!
# Evidence hierarchy

Contract-shaped propositions remain payloads. Theorem authority is reserved
for fixed predicates checked by Lean or reviewed imported theorems.
-/

namespace Mathematics.Authority

universe u

inductive EvidenceKind
  | fixedLeanPredicate
  | reviewedImportedTheorem
  | checkedNumericalCertificate
  | contractProposition
  | runtimeObservation
  | modelInference
  deriving DecidableEq, Repr

def contributesTheoremAuthority : EvidenceKind → Bool
  | .fixedLeanPredicate => true
  | .reviewedImportedTheorem => true
  | .checkedNumericalCertificate => false
  | .contractProposition => false
  | .runtimeObservation => false
  | .modelInference => false

/-- The proposition is fixed by the framework as a function of the payload. -/
structure FixedPredicateCertificate
    (Payload : Type u) (predicate : Payload → Prop) where
  payload : Payload
  proof : predicate payload

/-- A caller-selected proposition is retained without theorem promotion. -/
structure ContractPayload where
  proposition : Prop
  witness : proposition

@[simp] theorem no_promotion_from_model :
    contributesTheoremAuthority .modelInference = false := rfl

@[simp] theorem no_promotion_from_runtime_trace :
    contributesTheoremAuthority .runtimeObservation = false := rfl

@[simp] theorem no_promotion_from_contract :
    contributesTheoremAuthority .contractProposition = false := rfl

end Mathematics.Authority
