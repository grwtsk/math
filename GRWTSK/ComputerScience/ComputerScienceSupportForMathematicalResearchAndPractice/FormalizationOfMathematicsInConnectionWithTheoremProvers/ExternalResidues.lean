import Think.SourceTree.Legacy.Residues.CompactProfile
import Think.Imports.AuthorityReceipt
import Think.Imports.ImportedTheorem
import Think.Imports.NonsettlingAuthorityReceipt
import Think.Transfers.ClearsResidue

set_option autoImplicit false

namespace Think.Compact

inductive ExternalTargetKind where
  | rh
  | modularity
  | primeGaps
  | navierStokes
  | kakeya
  | analyticContinuation
  | automorphicForms
  | sieveTheory
  | finiteDataAsymptotics
deriving DecidableEq, Repr

def ExternalTargetKind.residue :
    ExternalTargetKind → ActiveResidueFamily
  | ExternalTargetKind.finiteDataAsymptotics =>
      ActiveResidueFamily.finiteToAsymptoticTransferMissing
  | _ =>
      ActiveResidueFamily.externalTheoremNotImported

def ExternalTargetKind.importsAuthority :
    ExternalTargetKind → Bool
  | _ => false

theorem externalTargets_import_no_authority
    (t : ExternalTargetKind) :
    t.importsAuthority = false := by
  cases t <;> rfl

def importedTheoremAdapterClearance
    (r : FWR.Residue)
    (candidate : Think.Targets.ImportPlan.TargetImportCandidate)
    (candidateObligation :
      Think.Transfers.CandidateResidueObligation candidate r)
    (imported : Think.Imports.ImportedTheorem)
    (adapter :
      Think.Transfers.TransferAdapter
        candidateObligation.obligation.localClaim
        imported.importedProp)
    (nonconjectural : r.kind ≠ FWR.ResidueKind.conjecturalAtom)
    (notReplacementOverclaim :
      r.kind ≠ FWR.ResidueKind.replacementOverclaim) :
    Think.Transfers.ClearsResidue r :=
  Think.Transfers.ClearsResidue.fromCandidateImportedTheorem
    r
    candidate
    candidateObligation
    imported
    adapter
    nonconjectural
    notReplacementOverclaim

private def authorityReceiptForClearance
    (r : FWR.Residue)
    (clearance : Think.Transfers.ClearsResidue r) :
    Think.Imports.AuthorityReceipt :=
  { target := r.target
    authorityLevel := Think.Imports.AuthorityLevel.adaptedTheorem
    importedModule := some clearance.imported.sourceModule
    importedTheorem := some clearance.imported.theoremName
    clearsResidues := [r.atomId]
    retainedResidues := ["target-level residue boundary"]
    forbidsTargetSettlement := true }

def importedTheoremAdapterReceipt
    (r : FWR.Residue)
    (clearance : Think.Transfers.ClearsResidue r) :
    Think.Imports.NonsettlingAuthorityReceipt :=
  { receipt := authorityReceiptForClearance r clearance
    forbids := rfl }

theorem importedTheoremAdapterReceipt_forbidsTargetSettlement
    (r : FWR.Residue)
    (clearance : Think.Transfers.ClearsResidue r) :
    (importedTheoremAdapterReceipt r clearance).receipt.forbidsTargetSettlement =
      true := by
  rfl

theorem importedTheoremAdapterClearance_not_conjectural
    (r : FWR.Residue)
    (clearance : Think.Transfers.ClearsResidue r) :
    r.kind ≠ FWR.ResidueKind.conjecturalAtom := by
  exact
    Think.Transfers.clearsResidue_requires_nonconjectural r
      clearance

end Think.Compact
