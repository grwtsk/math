# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.LorentzianSyntheticOT.Variantfbec3d63419a04091b014ba6f6744131bce8566c51eedadc5cbdcfceb5a08f1a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a49b58197fd539ed7d47d7ee56d9e066c2994472` · SHA-256 `22211a9b87b5d5e9dd1b615f0300d7a3e2c39c1b6f60a09c2af41b27a68b628e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Context.Variant81c2dd7c9f8fa37f12a6f9a4e4da69d64db5d8d01fefa7aa419b7c116609ae5e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"81c2dd7c9f8fa37f12a6f9a4e4da69d64db5d8d01fefa7aa419b7c116609ae5e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.ProbabilityMeasures.SourceCorpus.Context.Variant81c2dd7c9f8fa37f12a6f9a4e4da69d64db5d8d01fefa7aa419b7c116609ae5e","mathematical_subject":"Probability.ProbabilityMeasures","original_sha256":"81c2dd7c9f8fa37f12a6f9a4e4da69d64db5d8d01fefa7aa419b7c116609ae5e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/ResearchSurvey/Sources/LorentzianSyntheticOT.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.ResearchSurvey.Basic


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Context.Variant81c2dd7c9f8fa37f12a6f9a4e4da69d64db5d8d01fefa7aa419b7c116609ae5e

set_option autoImplicit false

namespace Think.ResearchSurvey.Sources.LorentzianSyntheticOT

/-
Survey target: 2004.08934v3, Theorem 1.14 and surrounding foundational
Lorentzian synthetic optimal-transport results.

This file records the theorem target as external mathematical infrastructure.
It does not import Lorentzian optimal transport, synthetic Ricci curvature,
entropy convexity, volume comparison, or singularity theorems as authority for
the finite residue pipeline.
-/

structure Context where
  Space : Type
  Measure : Type
  ProbabilityMeasure : Type
  Coupling : Type
  GeodesicPlan : Type
  IsLorentzianPrelengthSpace : Space -> Prop
  CausalRelation : Space -> Space -> Prop
  TimeSeparation : Space -> Space -> Prop
  IsOptimalCoupling : Coupling -> ProbabilityMeasure -> ProbabilityMeasure -> Prop
  KantorovichDualityHolds : Prop
  EntropyConvexAlong : GeodesicPlan -> Prop
  SyntheticTimelikeRicciBound : Space -> Measure -> Prop
  StabilityUnderWeakConvergence : Prop

inductive Atom where
  | lorentzianPrelengthSpace
  | causalRelation
  | timeSeparation
  | optimalCoupling
  | kantorovichDuality
  | entropyConvexity
  | syntheticTimelikeRicciBound
  | externalTheoremNotImported
deriving DecidableEq, Repr

def Atom.id : Atom -> String
  | .lorentzianPrelengthSpace => "lorentzian_prelength_space"
  | .causalRelation => "causal_relation"
  | .timeSeparation => "time_separation"
  | .optimalCoupling => "optimal_coupling"
  | .kantorovichDuality => "kantorovich_duality"
  | .entropyConvexity => "entropy_convexity"
  | .syntheticTimelikeRicciBound => "synthetic_timelike_ricci_bound"
  | .externalTheoremNotImported => "external_theorem_not_imported"

def Atom.kind : Atom -> FWR.ResidueKind
  | .lorentzianPrelengthSpace => FWR.ResidueKind.missingDefinition
  | .causalRelation => FWR.ResidueKind.missingDefinition
  | .timeSeparation => FWR.ResidueKind.missingDefinition
  | .optimalCoupling => FWR.ResidueKind.missingDefinition
  | .kantorovichDuality => FWR.ResidueKind.externalTheoremNotImported
  | .entropyConvexity => FWR.ResidueKind.missingContinuumLimit
  | .syntheticTimelikeRicciBound => FWR.ResidueKind.externalTheoremNotImported
  | .externalTheoremNotImported => FWR.ResidueKind.externalTheoremNotImported

def Atom.blocks : Atom -> String
  | .lorentzianPrelengthSpace =>
      "Lorentzian pre-length space structure is not locally represented"
  | .causalRelation =>
      "causal relation for the Lorentzian synthetic setting is not locally defined"
  | .timeSeparation =>
      "time-separation function or predicate is not locally formalized"
  | .optimalCoupling =>
      "optimal causal coupling object is not locally represented"
  | .kantorovichDuality =>
      "Kantorovich duality theorem for the Lorentzian setting"
  | .entropyConvexity =>
      "entropy convexity along future-directed timelike geodesics of measures"
  | .syntheticTimelikeRicciBound =>
      "synthetic timelike Ricci lower-bound and dimension upper-bound statement"
  | .externalTheoremNotImported =>
      "external Lorentzian OT theorem being treated as local proof authority"

def Atom.clearsBy : Atom -> String
  | .lorentzianPrelengthSpace =>
      "source-compatible Lean structure for Lorentzian pre-length spaces"
  | .causalRelation =>
      "checked causal preorder or relation compatible with the source"
  | .timeSeparation =>
      "local time-separation data and hypotheses matching the paper source"
  | .optimalCoupling =>
      "Lean object for causal couplings plus optimality predicate"
  | .kantorovichDuality =>
      "kernel-checked proof or certified import of the Lorentzian duality theorem"
  | .entropyConvexity =>
      "measure, entropy, and timelike geodesic-plan infrastructure"
  | .syntheticTimelikeRicciBound =>
      "certified theorem interface for synthetic timelike Ricci bounds"
  | .externalTheoremNotImported =>
      "local proof artifact or scoped certified import with all hypotheses exposed"

def atomResidue (a : Atom) : Think.Residue :=
  { target := FWR.Target.ResearchSurvey
    atomId := "2004.08934v3:" ++ a.id
    kind := a.kind
    blocks := a.blocks
    clearsBy := a.clearsBy }

def finalClaim (ctx : Context) : Prop :=
  (∀ X : ctx.Space,
      ∀ m : ctx.Measure,
        ctx.SyntheticTimelikeRicciBound X m ->
          ctx.IsLorentzianPrelengthSpace X) ∧
  (∀ μ ν : ctx.ProbabilityMeasure,
      ∃ γ : ctx.Coupling,
        ctx.IsOptimalCoupling γ μ ν) ∧
  ctx.KantorovichDualityHolds ∧
  (∀ γ : ctx.GeodesicPlan, ctx.EntropyConvexAlong γ) ∧
  ctx.StabilityUnderWeakConvergence

def finalResidues (_ctx : Context) : List Think.Residue :=
  [ atomResidue Atom.lorentzianPrelengthSpace
  , atomResidue Atom.causalRelation
  , atomResidue Atom.timeSeparation
  , atomResidue Atom.optimalCoupling
  , atomResidue Atom.kantorovichDuality
  , atomResidue Atom.entropyConvexity
  , atomResidue Atom.syntheticTimelikeRicciBound
  , atomResidue Atom.externalTheoremNotImported
  ]

def finalWitness (ctx : Context) : Think.Checked (finalClaim ctx) :=
  FWR.Checked.residue (finalResidues ctx)

theorem finalWitness_hasResidue (ctx : Context) :
    (finalWitness ctx).hasResidue = true := by
  rfl

theorem finalResidue_count (ctx : Context) :
    (finalResidues ctx).length = 8 := by
  rfl

def surveyTarget : SurveyTarget :=
  { targetId := "2004.08934v3:Theorem:1.14"
    paperId := "2004.08934v3"
    kind := TargetKind.thm
    leanFile := "ResearchSurvey/LorentzianSyntheticOT.lean"
    suggestedLeanName := "LorentzianSyntheticOT.theorem_1_14" }

theorem surveyTarget_checked_hasResidue :
    (targetChecked surveyTarget).hasResidue = true := by
  rfl

end Think.ResearchSurvey.Sources.LorentzianSyntheticOT
```
