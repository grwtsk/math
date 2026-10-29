import Think.SourceTree.Legacy.ResearchSurvey.Basic

set_option autoImplicit false

namespace Think.ResearchSurvey.Sources.NonlinearDAlembertMMS

/-
Survey target: 2408.15968v2, Theorem 2.21, nonlinear d'Alembert
comparison and causal differential calculus on metric measure spacetimes.

This file records the theorem as external analytic infrastructure. It does not
import causal Sobolev calculus, timelike measure contraction, or nonlinear
d'Alembert comparison as proof authority for the finite residue pipeline.
-/

structure Context where
  Space : Type
  Measure : Type
  FunctionLike : Type
  ComparisonData : Type
  IsMetricMeasureSpacetime : Space -> Measure -> Prop
  IsCausalFunction : FunctionLike -> Prop
  HasMaximalWeakSubslope : FunctionLike -> Prop
  LocalityHolds : Prop
  ChainRuleHolds : Prop
  LeibnizRuleHolds : Prop
  InfinitesimalMinkowskian : Space -> Measure -> Prop
  TimelikeMeasureContractionProperty : Space -> Measure -> Prop
  WeakPDalembertComparison : ComparisonData -> Prop

inductive Atom where
  | metricMeasureSpacetime
  | causalFunction
  | maximalWeakSubslope
  | locality
  | chainRule
  | leibnizRule
  | infinitesimalMinkowskianity
  | timelikeMCP
  | weakPDalembertComparison
deriving DecidableEq, Repr

def Atom.id : Atom -> String
  | .metricMeasureSpacetime => "metric_measure_spacetime"
  | .causalFunction => "causal_function"
  | .maximalWeakSubslope => "maximal_weak_subslope"
  | .locality => "locality"
  | .chainRule => "chain_rule"
  | .leibnizRule => "leibniz_rule"
  | .infinitesimalMinkowskianity => "infinitesimal_minkowskianity"
  | .timelikeMCP => "timelike_mcp"
  | .weakPDalembertComparison => "weak_p_dalembert_comparison"

def Atom.kind : Atom -> FWR.ResidueKind
  | .metricMeasureSpacetime => FWR.ResidueKind.missingDefinition
  | .causalFunction => FWR.ResidueKind.missingDefinition
  | .maximalWeakSubslope => FWR.ResidueKind.missingDefinition
  | .locality => FWR.ResidueKind.externalTheoremNotImported
  | .chainRule => FWR.ResidueKind.externalTheoremNotImported
  | .leibnizRule => FWR.ResidueKind.externalTheoremNotImported
  | .infinitesimalMinkowskianity => FWR.ResidueKind.missingDefinition
  | .timelikeMCP => FWR.ResidueKind.missingPDEEstimate
  | .weakPDalembertComparison => FWR.ResidueKind.externalTheoremNotImported

def Atom.blocks : Atom -> String
  | .metricMeasureSpacetime =>
      "metric measure spacetime object is not locally represented"
  | .causalFunction =>
      "causal function predicate is not locally formalized"
  | .maximalWeakSubslope =>
      "maximal weak subslope is not locally defined"
  | .locality =>
      "locality theorem for the causal Sobolev calculus"
  | .chainRule =>
      "chain rule theorem for the causal differential calculus"
  | .leibnizRule =>
      "Leibniz rule theorem for weak causal gradients or subslopes"
  | .infinitesimalMinkowskianity =>
      "infinitesimal Minkowskianity condition for the metric measure spacetime"
  | .timelikeMCP =>
      "timelike measure contraction property and required analytic estimates"
  | .weakPDalembertComparison =>
      "weak nonlinear p-dAlembert comparison theorem"

def Atom.clearsBy : Atom -> String
  | .metricMeasureSpacetime =>
      "source-compatible Lean structure for metric measure spacetimes"
  | .causalFunction =>
      "checked predicate for causal functions"
  | .maximalWeakSubslope =>
      "local definition and measurable calculus for maximal weak subslope"
  | .locality =>
      "kernel-checked locality proof or scoped certified import"
  | .chainRule =>
      "kernel-checked chain-rule proof or scoped certified import"
  | .leibnizRule =>
      "kernel-checked Leibniz-rule proof or scoped certified import"
  | .infinitesimalMinkowskianity =>
      "Lean structure for the infinitesimal Minkowskianity hypothesis"
  | .timelikeMCP =>
      "formal timelike MCP hypothesis plus analytic estimate interface"
  | .weakPDalembertComparison =>
      "all prerequisites plus kernel-checked comparison proof"

def atomResidue (a : Atom) : Think.Residue :=
  { target := FWR.Target.ResearchSurvey
    atomId := "2408.15968v2:" ++ a.id
    kind := a.kind
    blocks := a.blocks
    clearsBy := a.clearsBy }

def finalClaim (ctx : Context) : Prop :=
  (∀ X : ctx.Space,
      ∀ m : ctx.Measure,
        ctx.IsMetricMeasureSpacetime X m ->
          ctx.InfinitesimalMinkowskian X m ->
          ctx.TimelikeMeasureContractionProperty X m) ∧
  (∀ f : ctx.FunctionLike,
      ctx.IsCausalFunction f -> ctx.HasMaximalWeakSubslope f) ∧
  ctx.LocalityHolds ∧
  ctx.ChainRuleHolds ∧
  ctx.LeibnizRuleHolds ∧
  (∀ data : ctx.ComparisonData,
      ctx.WeakPDalembertComparison data)

def finalResidues (_ctx : Context) : List Think.Residue :=
  [ atomResidue Atom.metricMeasureSpacetime
  , atomResidue Atom.causalFunction
  , atomResidue Atom.maximalWeakSubslope
  , atomResidue Atom.locality
  , atomResidue Atom.chainRule
  , atomResidue Atom.leibnizRule
  , atomResidue Atom.infinitesimalMinkowskianity
  , atomResidue Atom.timelikeMCP
  , atomResidue Atom.weakPDalembertComparison
  ]

def finalWitness (ctx : Context) : Think.Checked (finalClaim ctx) :=
  FWR.Checked.residue (finalResidues ctx)

theorem finalWitness_hasResidue (ctx : Context) :
    (finalWitness ctx).hasResidue = true := by
  rfl

theorem finalResidue_count (ctx : Context) :
    (finalResidues ctx).length = 9 := by
  rfl

def surveyTarget : SurveyTarget :=
  { targetId := "2408.15968v2:Theorem:2.21"
    paperId := "2408.15968v2"
    kind := TargetKind.thm
    leanFile := "ResearchSurvey/NonlinearDAlembertMMS.lean"
    suggestedLeanName := "NonlinearDAlembertMMS.theorem_2_21" }

theorem surveyTarget_checked_hasResidue :
    (targetChecked surveyTarget).hasResidue = true := by
  rfl

end Think.ResearchSurvey.Sources.NonlinearDAlembertMMS
