-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ModelTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Version.Variantf7344b70e5164e09bece22dbcd15b27d3fbb754f6b323d0a5c39399fb4fddec4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f7344b70e5164e09bece22dbcd15b27d3fbb754f6b323d0a5c39399fb4fddec4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ModelTheory.SourceCorpus.Version.Variantf7344b70e5164e09bece22dbcd15b27d3fbb754f6b323d0a5c39399fb4fddec4","mathematical_subject":"Logic.ModelTheory","original_sha256":"f7344b70e5164e09bece22dbcd15b27d3fbb754f6b323d0a5c39399fb4fddec4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/docs/theorem-transfer/audits/internal-lean-semantic-correction-cycle-7/reproductions/03_interpreter_and_proof_object_boundaries.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.TheoremTransfer.Derivation


namespace GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Version.Variantf7344b70e5164e09bece22dbcd15b27d3fbb754f6b323d0a5c39399fb4fddec4

namespace FCRS.TheoremTransfer.Cycle7.InterpreterProofObjects

def version (name : String) : VersionId :=
  .atomic ⟨"https://w3id.org/reflexive/theorem-transfer/cycle-7", name,
    "1.0.0", "sha256:" ++ name⟩

/-- A theory whose proof objects retain an observable Boolean tag. -/
def taggedTheory : Theory where
  Object := Unit
  Proposition := Prop
  Holds := id
  ProofObject := fun proposition => Bool × PLift proposition
  proofObjectSound := fun proof => proof.2.down
  reifyProofObject := fun proof => (false, ⟨proof⟩)
  propositionSupport := fun _ => .universal
  propositionProperty := fun proposition _ => proposition

def taggedSourceProposition (_index : Bool) : taggedTheory.Proposition := True

/-- A nested interpreter must propagate the exact tagged child proof object. -/
def nestedTaggedExpression : MultiSourceInferenceExpression Bool
    taggedSourceProposition True :=
  .inference
    (PremiseIndex := Unit)
    (premiseProposition := fun _ => True)
    (version "nested-tagged-rule")
    (fun _ => .source false)
    (fun proofs => proofs ())

def taggedSourceProof (index : Bool) :
    taggedTheory.ProofObject (taggedSourceProposition index) :=
  (index, ⟨True.intro⟩)

theorem recursive_interpreter_preserves_tag :
    nestedTaggedExpression.interpret taggedSourceProof =
      (false, ⟨True.intro⟩) := rfl

/-- Proof-object equality rejects an observably different theorem proof tag. -/
example : True := by
  fail_if_success
    exact (show
      (true, ⟨True.intro⟩) =
        nestedTaggedExpression.interpret taggedSourceProof from rfl)
  trivial

/-- A legal theory may intentionally alias all semantic proofs to `Unit`. -/
def aliasTheory : Theory where
  Object := Unit
  Proposition := Prop
  Holds := fun _ => True
  ProofObject := fun _ => Unit
  proofObjectSound := by intros; trivial
  reifyProofObject := by intros; exact ()
  propositionSupport := fun _ => .universal
  propositionProperty := fun proposition _ => proposition

def aliasSourceProposition (_index : Bool) : aliasTheory.Proposition := True

def aliasExpression : MultiSourceInferenceExpression Bool
    aliasSourceProposition True :=
  .inference
    (PremiseIndex := Bool)
    (premiseProposition := fun _ => True)
    (version "alias-rule")
    (fun index => .source index)
    (fun _proofs => ())

theorem alias_expression_still_has_structural_leaves :
    aliasExpression.UsesSource false ∧ aliasExpression.UsesSource true := by
  exact ⟨⟨false, rfl⟩, ⟨true, rfl⟩⟩

theorem alias_interpretation_is_exact :
    aliasExpression.interpret (fun _ => ()) = () := rfl

#check recursive_interpreter_preserves_tag
#check alias_expression_still_has_structural_leaves
#check alias_interpretation_is_exact

end FCRS.TheoremTransfer.Cycle7.InterpreterProofObjects
