# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Invariants.Variant9d64beca05c09d597f6a32cf0f19b987ae008e96f9f8b79d63c814cc4c6024fd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec7a29f2eb47a39b9c8a96f609acb33fb1e31bad` · SHA-256 `9d64beca05c09d597f6a32cf0f19b987ae008e96f9f8b79d63c814cc4c6024fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic
import CompositeElements.StaticSnapshot

/-! # Static closure and authority-separation theorems. -/

namespace URSM.Composite

def PackageImportAcyclic : Prop :=
  ∃ rank : Fin projectCount → Nat,
    ∀ i j, importsBits i j = true → rank j < rank i

theorem packageImportAcyclic :
    PackageImportAcyclic :=
  ⟨projectRank, fun _ _ imported ↦
    imports_rank_decreases imported⟩

theorem declared_zero_off_diagonal
    {i j : Fin projectCount}
    (different : i ≠ j) :
    declaredBits i j = false :=
  BitMatrix.diagonal_off (fun _ ↦ true) different

theorem formalEligible_zero_off_diagonal
    {i j : Fin projectCount}
    (different : i ≠ j) :
    formalEligibleBits i j = false :=
  BitMatrix.diagonal_off (fun _ ↦ true) different

theorem no_known_conflict
    (i j : Fin projectCount) :
    conflictBits i j = false :=
  rfl

theorem unresolved_conflict_is_not_negative
    (i j : Fin projectCount)
    (unresolved : conflictValidityBits i j = false) :
    staticPlanes.conflict.square.read? i j = none := by
  simp [staticPlanes, conflictResolvedSquare,
    URSM.Contracts.ResolvedSquare.read?, unresolved]

theorem analyzed_conflicts_are_negative
    (i j : Fin projectCount)
    (_analyzed : conflictValidityBits i j = true) :
    conflictBits i j = false := by
  rfl

theorem contract_bitMatrix_inverse_laws
    (n : Nat) :
    Function.LeftInverse
        (URSM.Bridge.asBitMatrix n)
        (URSM.Bridge.asContractSquare n) ∧
      Function.RightInverse
        (URSM.Bridge.asBitMatrix n)
        (URSM.Bridge.asContractSquare n) := by
  constructor
  · intro matrix
    exact URSM.Bridge.roundTripBitMatrix matrix
  · intro square
    exact URSM.Bridge.roundTripContractSquare square

theorem exactBridge_registry_certificate :
    (∀ i j,
      exactBridgeBits i j = true →
        transportBits i j = true ∧
        transportBits j i = true) ∧
      exactBridgeBits 0 1 = true ∧
      (∀ n, Function.LeftInverse
          (URSM.Bridge.asBitMatrix n)
          (URSM.Bridge.asContractSquare n)) := by
  exact
    ⟨exactBridge_implies_transport,
      by decide,
      fun n ↦ (contract_bitMatrix_inverse_laws n).1⟩

theorem phaseOneStaticComposite_valid :
    PackageImportAcyclic ∧
      Function.Injective
        (fun index ↦
          (phaseOneStaticComposite.projects index).projectId) ∧
      (∀ i j,
        exactBridgeBits i j = true →
          transportBits i j = true ∧
          transportBits j i = true) ∧
      (∀ i j k,
        transportBits i j = true →
          transportBits j k = true →
          transportBits i k = true) := by
  exact
    ⟨packageImportAcyclic,
      phaseOneStaticComposite.projectIdsUnique,
      exactBridge_implies_transport,
      transport_composes⟩

/-- Operational observations and formal proofs remain disjoint constructors. -/
inductive PlaneEvidence (statement : Prop)
  | formal (proof : statement)
  | operational (evidenceRoot : String)

theorem operational_is_not_formal
    {statement : Prop}
    (root : String)
    (proof : statement) :
    PlaneEvidence.operational (statement := statement) root ≠
      PlaneEvidence.formal proof := by
  intro equality
  cases equality

end URSM.Composite
```
