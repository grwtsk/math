-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.TargetKind.Variant9334017f9f6a290a6d7952747f0a767ca2d2322b3f417e446e0d24c9e14d3797","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9334017f9f6a290a6d7952747f0a767ca2d2322b3f417e446e0d24c9e14d3797","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.TargetKind.Variant9334017f9f6a290a6d7952747f0a767ca2d2322b3f417e446e0d24c9e14d3797","mathematical_subject":"Topology.GeneralTopology","original_sha256":"9334017f9f6a290a6d7952747f0a767ca2d2322b3f417e446e0d24c9e14d3797","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/ResearchSurvey/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Pipeline.Basic


namespace GRWTSK.Topology.GeneralTopology.TargetKind.Variant9334017f9f6a290a6d7952747f0a767ca2d2322b3f417e446e0d24c9e14d3797

set_option autoImplicit false

namespace Think.ResearchSurvey

/-- The survey records theorem-like labels as finite residue tasks, not as proved targets. -/
inductive TargetKind where
  | thm
  | proposition
  | lemma
  | corollary
  | claim
  | observation
  | question
  | problem
deriving DecidableEq, Repr

inductive PrimitiveKind where
  | definition
  | remark
  | example
deriving DecidableEq, Repr

def TargetKind.isOpen : TargetKind -> Bool
  | TargetKind.question => true
  | TargetKind.problem => true
  | _ => false

structure SurveyTarget where
  targetId : String
  paperId : String
  kind : TargetKind
  leanFile : String
  suggestedLeanName : String
deriving Repr, DecidableEq

structure FrameworkPrimitive where
  targetId : String
  paperId : String
  kind : PrimitiveKind
  leanFile : String
  suggestedLeanName : String
deriving Repr, DecidableEq

structure OpenMention where
  paperId : String
  page : String
  matchedText : String
deriving Repr, DecidableEq

structure PaperSource where
  paperId : String
  pdfPath : String
  theoremLikeTargets : Nat
  frameworkPrimitives : Nat
  openMentions : Nat
deriving Repr, DecidableEq

inductive StatementTranslationStatus where
  | inventoryOnly
  | statementSurface
  | proofPending
  | proofComplete
deriving Repr, DecidableEq

def SurveyTarget.statementSurface (t : SurveyTarget) : Prop :=
  t.targetId ≠ "" ∧
    t.paperId ≠ "" ∧
    t.leanFile ≠ "" ∧
    t.suggestedLeanName ≠ ""

structure SurveyTargetStatement where
  source : SurveyTarget
  status : StatementTranslationStatus
  statementSurface : Prop
  residue : Think.Residue

def noProofHolePolicy : Bool := true

def targetResidue (t : SurveyTarget) : Think.Residue :=
  { target := FWR.Target.ResearchSurvey
    atomId := t.targetId
    kind := FWR.ResidueKind.conjecturalAtom
    blocks := "research-survey target recorded without proof authority"
    clearsBy := "formal definitions, exact statement translation, and proof artifact" }

def targetChecked (t : SurveyTarget) : Think.Checked True :=
  FWR.Checked.residue [targetResidue t]

theorem targetChecked_hasResidue (t : SurveyTarget) :
    (targetChecked t).hasResidue = true := by
  rfl

def targetStatement (t : SurveyTarget) : SurveyTargetStatement :=
  { source := t
    status := StatementTranslationStatus.statementSurface
    statementSurface := t.statementSurface
    residue := targetResidue t }

def targetStatementChecked (t : SurveyTarget) :
    Think.Checked (targetStatement t).statementSurface :=
  FWR.Checked.residue [(targetStatement t).residue]

theorem targetStatementChecked_hasResidue (t : SurveyTarget) :
    (targetStatementChecked t).hasResidue = true := by
  rfl

theorem targetStatement_status (t : SurveyTarget) :
    (targetStatement t).status =
      StatementTranslationStatus.statementSurface := by
  rfl

def primitiveResidue (p : FrameworkPrimitive) : Think.Residue :=
  { target := FWR.Target.ResearchSurvey
    atomId := p.targetId
    kind := FWR.ResidueKind.missingDefinition
    blocks := "framework primitive required before target statement translation"
    clearsBy := "Lean structure, predicate, notation, or imported library object" }

def mentionResidue (m : OpenMention) : Think.Residue :=
  { target := FWR.Target.ResearchSurvey
    atomId := m.paperId ++ ":" ++ m.page ++ ":" ++ m.matchedText
    kind := FWR.ResidueKind.conjecturalAtom
    blocks := "open question or conjectural reference remains boundary data"
    clearsBy := "explicit solved theorem source or retained open-status annotation" }

end Think.ResearchSurvey
