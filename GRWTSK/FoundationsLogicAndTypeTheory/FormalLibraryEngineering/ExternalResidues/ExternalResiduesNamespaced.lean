-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExternalTargetKind.Variant45ec9c47c92e21af97b0ebc64dfe96d7c93f01d8ff01ee7bf5f86ce65c03ad81","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"45ec9c47c92e21af97b0ebc64dfe96d7c93f01d8ff01ee7bf5f86ce65c03ad81","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ExternalTargetKind.Variant45ec9c47c92e21af97b0ebc64dfe96d7c93f01d8ff01ee7bf5f86ce65c03ad81","mathematical_subject":"Foundations.Unclassified","original_sha256":"45ec9c47c92e21af97b0ebc64dfe96d7c93f01d8ff01ee7bf5f86ce65c03ad81","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/Targets/ExternalResidues.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.Residues.CompactProfile
import Think.Imports.AuthorityReceipt
import Think.Imports.ImportedTheorem
import Think.Imports.NonsettlingAuthorityReceipt
import Think.Transfers.ClearsResidue


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExternalTargetKind.Variant45ec9c47c92e21af97b0ebc64dfe96d7c93f01d8ff01ee7bf5f86ce65c03ad81

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
