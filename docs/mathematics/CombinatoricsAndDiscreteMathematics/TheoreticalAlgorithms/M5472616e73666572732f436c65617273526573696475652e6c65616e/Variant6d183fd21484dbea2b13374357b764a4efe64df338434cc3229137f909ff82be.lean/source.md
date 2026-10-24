# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M5472616e73666572732f436c65617273526573696475652e6c65616e.Variant6d183fd21484dbea2b13374357b764a4efe64df338434cc3229137f909ff82be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e74ccdbeb93c2fda509c65563ad68e8dc2c687d7` · SHA-256 `6d183fd21484dbea2b13374357b764a4efe64df338434cc3229137f909ff82be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit1.Bit1.Bit0.Bit0.Bit1.Bit0.Bit0.M496d706f7274732f496d706f727465645468656f72656d2e6c65616e
import Think.Bit0.Bit0.Bit0.Bit0.Bit1.Bit0.Bit1.Bit0.M5472616e73666572732f416461707465722e6c65616e
import Think.Bit1.Bit1.Bit1.Bit0.Bit1.Bit1.Bit0.Bit0.M5472616e73666572732f526573696475654f626c69676174696f6e2e6c65616e
import Think.Bit0.Bit1.Bit0.Bit0.Bit1.Bit1.Bit1.M5472616e73666572732f43616e646964617465526573696475654f626c69676174696f6e2e6c65616e
import Think.Bit0.Bit0.Bit1.Bit0.Bit1.Bit0.Bit1.Bit1.M4b65726e656c2f526573696475652e6c65616e


/- source-tree-label: STL1|L|addr=01001100|role=proof_code_atom|slug=transfers-clearsresidue|owner=canonical_owner|core=Transfers/ClearsResidue.lean|leaf=M5472616e73666572732f436c65617273526573696475652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Transfers

structure ClearsResidue (r : FWR.Residue) where
  obligation : ResidueObligation r
  imported : Think.Imports.ImportedTheorem
  adapter :
    TransferAdapter obligation.localClaim imported.importedProp
  proof : obligation.localClaim
  nonconjectural : r.kind ≠ FWR.ResidueKind.conjecturalAtom
  notReplacementOverclaim : r.kind ≠ FWR.ResidueKind.replacementOverclaim
  doesNotSettleTarget : Bool
  nonsettling : doesNotSettleTarget = true

def ClearsResidue.fromImportedTheorem
    (r : FWR.Residue)
    (obligation : ResidueObligation r)
    (imported : Think.Imports.ImportedTheorem)
    (adapter :
      TransferAdapter obligation.localClaim imported.importedProp)
    (nonconjectural : r.kind ≠ FWR.ResidueKind.conjecturalAtom)
    (notReplacementOverclaim :
      r.kind ≠ FWR.ResidueKind.replacementOverclaim) :
    ClearsResidue r :=
  { obligation := obligation
    imported := imported
    adapter := adapter
    proof := adapter.bridge imported.proof
    nonconjectural := nonconjectural
    notReplacementOverclaim := notReplacementOverclaim
    doesNotSettleTarget := true
    nonsettling := rfl }

def ClearsResidue.fromCandidateImportedTheorem
    (r : FWR.Residue)
    (candidate : Think.Targets.ImportPlan.TargetImportCandidate)
    (candidateObligation : CandidateResidueObligation candidate r)
    (imported : Think.Imports.ImportedTheorem)
    (adapter :
      TransferAdapter
        candidateObligation.obligation.localClaim
        imported.importedProp)
    (nonconjectural : r.kind ≠ FWR.ResidueKind.conjecturalAtom)
    (notReplacementOverclaim :
      r.kind ≠ FWR.ResidueKind.replacementOverclaim) :
    ClearsResidue r :=
  ClearsResidue.fromImportedTheorem
    r
    candidateObligation.obligation
    imported
    adapter
    nonconjectural
    notReplacementOverclaim

theorem clearsResidue_requires_nonconjectural
    (r : FWR.Residue)
    (h : ClearsResidue r) :
    r.kind ≠ FWR.ResidueKind.conjecturalAtom := by
  exact h.nonconjectural

theorem clearsResidue_requires_not_replacementOverclaim
    (r : FWR.Residue)
    (h : ClearsResidue r) :
    r.kind ≠ FWR.ResidueKind.replacementOverclaim := by
  exact h.notReplacementOverclaim

theorem clearsResidue_proves_local_obligation
    (r : FWR.Residue)
    (h : ClearsResidue r) :
    h.obligation.localClaim := by
  exact h.proof

theorem clearsResidue_does_not_settle_target
    (r : FWR.Residue)
    (h : ClearsResidue r) :
    h.doesNotSettleTarget = true := by
  exact h.nonsettling

theorem conjecturalResidue_has_no_clearance
    (r : FWR.Residue)
    (hkind : r.kind = FWR.ResidueKind.conjecturalAtom) :
    (∀ _h : ClearsResidue r, False) := by
  intro h
  exact h.nonconjectural hkind

theorem replacementOverclaim_has_no_generic_clearance
    (r : FWR.Residue)
    (hkind : r.kind = FWR.ResidueKind.replacementOverclaim) :
    (∀ _h : ClearsResidue r, False) := by
  intro h
  exact h.notReplacementOverclaim hkind

structure TheoremSubsumptionEntry where
  sourceTheoremId : String
  localTheoremId : String
  sourceStatement : Prop
  localStatement : Prop
  adapter : sourceStatement -> localStatement
  proof : sourceStatement

def TheoremSubsumptionEntry.localProof
    (entry : TheoremSubsumptionEntry) :
    entry.localStatement :=
  entry.adapter entry.proof

structure TheoremByTheoremSubsumption (r : FWR.Residue) where
  entries : List TheoremSubsumptionEntry
  completeForInventory : Prop
  completeProof : completeForInventory

structure ClearsReplacementOverclaim (r : FWR.Residue) where
  kindIsReplacement : r.kind = FWR.ResidueKind.replacementOverclaim
  subsumption : TheoremByTheoremSubsumption r
  proofObject : Prop
  proof : proofObject
  doesNotSettleTarget : Bool

theorem replacementOverclaim_clearance_requires_subsumption
    {r : FWR.Residue}
    (h : ClearsReplacementOverclaim r) :
    ∃ subsumption : TheoremByTheoremSubsumption r,
      subsumption = h.subsumption := by
  exact ⟨h.subsumption, rfl⟩

theorem replacementOverclaim_clearance_requires_complete_inventory
    {r : FWR.Residue}
    (h : ClearsReplacementOverclaim r) :
    h.subsumption.completeForInventory := by
  exact h.subsumption.completeProof

end Think.Transfers
```
