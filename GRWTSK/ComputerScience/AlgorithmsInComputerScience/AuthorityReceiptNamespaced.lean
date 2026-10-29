-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AuthorityReceipt.Variantbab6fd53849eed87ace45b6030d71d2ea4ac0b6e8c69f617f380cf1768c90a61","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bab6fd53849eed87ace45b6030d71d2ea4ac0b6e8c69f617f380cf1768c90a61","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AuthorityReceipt.Variantbab6fd53849eed87ace45b6030d71d2ea4ac0b6e8c69f617f380cf1768c90a61","mathematical_subject":"Computation.DataStructures","original_sha256":"bab6fd53849eed87ace45b6030d71d2ea4ac0b6e8c69f617f380cf1768c90a61","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit0/Bit1/Bit1/Bit0/Bit1/Bit0/Bit1/M496d706f7274732f417574686f72697479526563656970742e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit0.Bit1.Bit1.Bit0.Bit1.Bit0.Bit1.M496d706f7274732f417574686f726974794c6576656c2e6c65616e
import Think.Bit0.Bit1.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.M4b65726e656c2f436865636b65642e6c65616e


/- source-tree-label: STL1|L|addr=10110101|role=proof_code_atom|slug=imports-authorityreceipt|owner=canonical_owner|core=Imports/AuthorityReceipt.lean|leaf=M496d706f7274732f417574686f72697479526563656970742e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AuthorityReceipt.Variantbab6fd53849eed87ace45b6030d71d2ea4ac0b6e8c69f617f380cf1768c90a61

set_option autoImplicit false

namespace Think.Imports

structure AuthorityReceipt where
  target : FWR.Target
  authorityLevel : AuthorityLevel
  importedModule : Option String
  importedTheorem : Option String
  clearsResidues : List String
  retainedResidues : List String
  forbidsTargetSettlement : Bool
deriving DecidableEq, Repr

namespace AuthorityReceipt

def targetBoundaryCheck
    (_receipt : AuthorityReceipt) (P : Prop) (r : FWR.Residue) :
    FWR.Checked P :=
  FWR.Checked.residue [r]

theorem targetBoundaryCheck_not_proved
    (receipt : AuthorityReceipt) (_h : receipt.forbidsTargetSettlement = true)
    (P : Prop) (r : FWR.Residue) :
    (receipt.targetBoundaryCheck P r).isProved = false := by
  rfl

theorem targetBoundaryCheck_hasResidue
    (receipt : AuthorityReceipt) (_h : receipt.forbidsTargetSettlement = true)
    (P : Prop) (r : FWR.Residue) :
    (receipt.targetBoundaryCheck P r).hasResidue = true := by
  rfl

theorem targetBoundaryCheck_ne_proved
    (receipt : AuthorityReceipt) (_h : receipt.forbidsTargetSettlement = true)
    (P : Prop) (r : FWR.Residue) :
    ¬ ∃ proof : P,
      receipt.targetBoundaryCheck P r = FWR.Checked.proved proof := by
  intro hProved
  rcases hProved with ⟨proof, hEq⟩
  cases hEq

def doesNotSettleTarget (receipt : AuthorityReceipt) : Prop :=
  receipt.forbidsTargetSettlement = true

theorem forbidsTargetSettlement_doesNotSettleTarget
    (receipt : AuthorityReceipt) :
    receipt.forbidsTargetSettlement = true ->
      receipt.doesNotSettleTarget := by
  intro h
  exact h

end AuthorityReceipt

end Think.Imports
