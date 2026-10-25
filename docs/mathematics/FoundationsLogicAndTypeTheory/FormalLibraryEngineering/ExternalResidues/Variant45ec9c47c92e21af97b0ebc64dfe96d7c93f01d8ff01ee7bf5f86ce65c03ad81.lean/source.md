# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExternalResidues.Variant45ec9c47c92e21af97b0ebc64dfe96d7c93f01d8ff01ee7bf5f86ce65c03ad81

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d62b4a892403e3cea6e03b047a7aa978c657374` · SHA-256 `45ec9c47c92e21af97b0ebc64dfe96d7c93f01d8ff01ee7bf5f86ce65c03ad81`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
