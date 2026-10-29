-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Context.Variant5e5af069966232e26a19ba90b92b451346b0dc0750b62f651321718ab08eaa13","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5e5af069966232e26a19ba90b92b451346b0dc0750b62f651321718ab08eaa13","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Context.Variant5e5af069966232e26a19ba90b92b451346b0dc0750b62f651321718ab08eaa13","mathematical_subject":"Computation.DataStructures","original_sha256":"5e5af069966232e26a19ba90b92b451346b0dc0750b62f651321718ab08eaa13","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit0/Bit1/Bit1/Bit0/Bit1/Bit0/Bit0/M546172676574732f416e616c79746963436f6e74696e756174696f6e2e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit1.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.M4b65726e656c2f436865636b65642e6c65616e


/- source-tree-label: STL1|L|addr=10110100|role=proof_code_atom|slug=targets-analyticcontinuation|owner=canonical_owner|core=Targets/AnalyticContinuation.lean|leaf=M546172676574732f416e616c79746963436f6e74696e756174696f6e2e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Context.Variant5e5af069966232e26a19ba90b92b451346b0dc0750b62f651321718ab08eaa13

set_option autoImplicit false

namespace FWR.Targets.AnalyticContinuation

/-
This file formalizes the relationship between the finite-witness framework
and the named target theorem. It does not prove the target theorem.

The final claim is intentionally returned as `Checked.residue`.
Each residue atom records a distinct missing bridge, estimate, continuation,
uniformity argument, or authority transfer.

Finite witness data may be formalized internally, but no finite witness is
allowed to imply the target-level theorem without an explicit transfer theorem.
-/

structure Context where
  Domain : Type
  ExtendedDomain : Type
  Value : Type
  FunctionOnDomain : Domain -> Value
  CandidateExtension : ExtendedDomain -> Value
  DomainEmbeds : Domain -> ExtendedDomain
  AgreesOnOriginalDomain : Prop
  IsAnalyticOnOriginalDomain : Prop
  IsAnalyticOnExtendedDomain : Prop
  HasUniformCompactConvergence : Prop
  HasSingularityControl : Prop
  HasFiniteTruncatedSeries : Prop
  HasCoefficientDomain : Prop
  HasCandidateExtendedDomain : Prop
  HasCandidateExtensionDefinition : Prop

inductive Atom where
  | finiteTruncatedSeries
  | coefficientDomain
  | originalDomainOfConvergence
  | candidateExtendedDomain
  | candidateExtensionDefinition
  | uniformCompactConvergence
  | localHolomorphicCharts
  | identityOnOverlap
  | singularityClassification
  | poleResidueAnnotations
  | monodromyControl
  | finalAnalyticContinuation
deriving DecidableEq, Repr

def Atom.id : Atom -> String
  | .finiteTruncatedSeries => "finiteTruncatedSeries"
  | .coefficientDomain => "coefficientDomain"
  | .originalDomainOfConvergence => "originalDomainOfConvergence"
  | .candidateExtendedDomain => "candidateExtendedDomain"
  | .candidateExtensionDefinition => "candidateExtensionDefinition"
  | .uniformCompactConvergence => "uniformCompactConvergence"
  | .localHolomorphicCharts => "localHolomorphicCharts"
  | .identityOnOverlap => "identityOnOverlap"
  | .singularityClassification => "singularityClassification"
  | .poleResidueAnnotations => "poleResidueAnnotations"
  | .monodromyControl => "monodromyControl"
  | .finalAnalyticContinuation => "finalAnalyticContinuation"

def finalClaim (ctx : Context) : Prop :=
  ctx.IsAnalyticOnExtendedDomain ∧ ctx.AgreesOnOriginalDomain

def Atom.claim (ctx : Context) : Atom -> Prop
  | .finiteTruncatedSeries => ctx.HasFiniteTruncatedSeries
  | .coefficientDomain => ctx.HasCoefficientDomain
  | .originalDomainOfConvergence => ctx.IsAnalyticOnOriginalDomain
  | .candidateExtendedDomain => ctx.HasCandidateExtendedDomain
  | .candidateExtensionDefinition => ctx.HasCandidateExtensionDefinition
  | .uniformCompactConvergence => ctx.HasUniformCompactConvergence
  | .localHolomorphicCharts => ctx.IsAnalyticOnExtendedDomain
  | .identityOnOverlap => ctx.AgreesOnOriginalDomain
  | .singularityClassification => ctx.HasSingularityControl
  | .poleResidueAnnotations => ctx.HasSingularityControl
  | .monodromyControl => ctx.HasSingularityControl
  | .finalAnalyticContinuation => finalClaim ctx

def Atom.kind : Atom -> ResidueKind
  | .finiteTruncatedSeries => .missingFiniteWitness
  | .coefficientDomain => .missingDefinition
  | .originalDomainOfConvergence => .missingDefinition
  | .candidateExtendedDomain => .missingDefinition
  | .candidateExtensionDefinition => .missingDefinition
  | .uniformCompactConvergence => .missingUniformBound
  | .localHolomorphicCharts => .missingAnalyticContinuation
  | .identityOnOverlap => .missingAnalyticContinuation
  | .singularityClassification => .missingAnalyticContinuation
  | .poleResidueAnnotations => .missingAnalyticContinuation
  | .monodromyControl => .missingAnalyticContinuation
  | .finalAnalyticContinuation => .conjecturalAtom

def Atom.blocks : Atom -> String
  | .finiteTruncatedSeries => "finite truncation evidence for the source function"
  | .coefficientDomain => "definition of the coefficient domain"
  | .originalDomainOfConvergence => "analyticity on the original domain of convergence"
  | .candidateExtendedDomain => "definition of the extended domain"
  | .candidateExtensionDefinition => "definition of the candidate extension"
  | .uniformCompactConvergence => "uniform compact convergence needed for analytic transfer"
  | .localHolomorphicCharts => "local holomorphic chart verification on the extended domain"
  | .identityOnOverlap => "agreement of the candidate with the original function on overlap"
  | .singularityClassification => "classification of singularities in the extended domain"
  | .poleResidueAnnotations => "pole and residue annotations for singular points"
  | .monodromyControl => "monodromy control for global single-valued continuation"
  | .finalAnalyticContinuation => "the analytic continuation theorem-shaped claim"

def Atom.clearsBy : Atom -> String
  | .finiteTruncatedSeries => "a finite truncated-series witness"
  | .coefficientDomain => "a formal coefficient domain"
  | .originalDomainOfConvergence => "a proof of original-domain analyticity"
  | .candidateExtendedDomain => "a formal extended domain"
  | .candidateExtensionDefinition => "a formal candidate extension"
  | .uniformCompactConvergence => "a uniform compact convergence theorem"
  | .localHolomorphicCharts => "local holomorphicity proofs in charts"
  | .identityOnOverlap => "a proof of identity on overlap"
  | .singularityClassification => "a singularity classification theorem"
  | .poleResidueAnnotations => "formal pole and residue data with proofs"
  | .monodromyControl => "a monodromy theorem for the candidate"
  | .finalAnalyticContinuation => "a proof of the final analytic continuation claim"

def allAtoms : List Atom := [
  Atom.finiteTruncatedSeries,
  Atom.coefficientDomain,
  Atom.originalDomainOfConvergence,
  Atom.candidateExtendedDomain,
  Atom.candidateExtensionDefinition,
  Atom.uniformCompactConvergence,
  Atom.localHolomorphicCharts,
  Atom.identityOnOverlap,
  Atom.singularityClassification,
  Atom.poleResidueAnnotations,
  Atom.monodromyControl,
  Atom.finalAnalyticContinuation
]

def atomResidue (_ctx : Context) (a : Atom) : Residue :=
  { target := Target.AnalyticContinuation
    atomId := Atom.id a
    kind := Atom.kind a
    blocks := Atom.blocks a
    clearsBy := Atom.clearsBy a }

theorem atomResidue_target (ctx : Context) (a : Atom) :
    (atomResidue ctx a).target = Target.AnalyticContinuation := by
  rfl

def ledger : AtomLedger Context Atom :=
  { allAtoms := allAtoms
    claim := Atom.claim
    residue := atomResidue }

def finalResidues (ctx : Context) : List Residue :=
  allAtoms.map (atomResidue ctx)

theorem finalResidues_match_allAtoms (ctx : Context) :
    finalResidues ctx = allAtoms.map (atomResidue ctx) := by
  rfl

theorem finalResidues_match_ledger (ctx : Context) :
    finalResidues ctx = ledger.residues ctx := by
  rfl

theorem allAtoms_complete (a : Atom) :
    a ∈ allAtoms := by
  cases a <;> simp [allAtoms]

theorem allAtoms_nodup :
    allAtoms.Nodup := by
  decide

theorem atomId_injective :
    _root_.Function.Injective Atom.id := by
  intro a b h
  cases a <;> cases b <;> simp [Atom.id] at h ⊢

theorem finalResidues_atomIds_nodup (ctx : Context) :
    ((finalResidues ctx).map (fun r => r.atomId)).Nodup := by
  simp [finalResidues, allAtoms, atomResidue, Atom.id]

theorem finalResidues_targets_correct (ctx : Context) :
    ∀ r ∈ finalResidues ctx, r.target = Target.AnalyticContinuation := by
  intro r hr
  rw [finalResidues] at hr
  rcases List.mem_map.mp hr with ⟨a, _ha, rfl⟩
  exact atomResidue_target ctx a

def finalWitness (ctx : Context) : Checked (finalClaim ctx) :=
  Checked.residue (finalResidues ctx)

theorem finalWitness_hasResidue (ctx : Context) :
    (finalWitness ctx).hasResidue = true := by
  rfl

theorem finalResidue_count (ctx : Context) :
    (finalResidues ctx).length = 12 := by
  rfl

end FWR.Targets.AnalyticContinuation
