# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SyntheticNullHypersurfaces.Variant88ba48c80cd4c78cd8216d28e94d2af859b1888e928504a1d1fdd9e1818ebba5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2cf3db03d1b015cbe39331a6f1718580e8c8ee5` · SHA-256 `dd98a6dfced34d850f93c7833310e7f0fd8bb911024237efc5cf0ea346e04427`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Context.Variant6b3290b13817670ce607dbec28ac0e7da254302e564458be759d0cbaaad5fdb5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6b3290b13817670ce607dbec28ac0e7da254302e564458be759d0cbaaad5fdb5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Context.Variant6b3290b13817670ce607dbec28ac0e7da254302e564458be759d0cbaaad5fdb5","mathematical_subject":"Computation.DataStructures","original_sha256":"6b3290b13817670ce607dbec28ac0e7da254302e564458be759d0cbaaad5fdb5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/ResearchSurvey/Sources/SyntheticNullHypersurfaces.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.ResearchSurvey.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Context.Variant6b3290b13817670ce607dbec28ac0e7da254302e564458be759d0cbaaad5fdb5

set_option autoImplicit false

namespace Think.ResearchSurvey.Sources.SyntheticNullHypersurfaces

/-
Survey target: 2506.04934v3, Theorem 4.6, gauge and measure invariance for
synthetic null hypersurfaces.

This file records the theorem target as external causal, measure-theoretic,
and geometric infrastructure. It does not import synthetic null energy,
gauge-invariance, convergence stability, Hawking-area, or Penrose-type
conclusions as authority for the finite residue pipeline.
-/

structure Context where
  TopologicalCausalSpace : Type
  ClosedAchronalSet : Type
  Gauge : Type
  RadonMeasure : Type
  DimensionParameter : Type
  IsTopologicalCausalSpace : TopologicalCausalSpace -> Prop
  IsClosedAchronalSet : TopologicalCausalSpace -> ClosedAchronalSet -> Prop
  IsTightGauge : ClosedAchronalSet -> Gauge -> Prop
  IsRadonMeasureOn : ClosedAchronalSet -> RadonMeasure -> Prop
  PositiveDimension : DimensionParameter -> Prop
  MeasureEquivalent : RadonMeasure -> RadonMeasure -> Prop
  GaugeEquivalent : Gauge -> Gauge -> Prop
  IsSyntheticNullHypersurface :
    TopologicalCausalSpace -> ClosedAchronalSet -> Gauge -> RadonMeasure -> Prop
  SatisfiesSyntheticNullEnergyCondition :
    ClosedAchronalSet -> Gauge -> RadonMeasure -> DimensionParameter -> Prop
  StableUnderConvergence : Prop
  HawkingAreaOrPenroseTransfer : Prop

inductive Atom where
  | topologicalCausalSpace
  | closedAchronalSet
  | gaugeFunction
  | radonMeasure
  | syntheticNullHypersurface
  | syntheticNullEnergyCondition
  | gaugeInvariance
  | stabilityUnderConvergence
  | hawkingAreaOrPenroseTransferNotImported
deriving DecidableEq, Repr

def Atom.id : Atom -> String
  | .topologicalCausalSpace => "topological_causal_space"
  | .closedAchronalSet => "closed_achronal_set"
  | .gaugeFunction => "gauge_function"
  | .radonMeasure => "radon_measure"
  | .syntheticNullHypersurface => "synthetic_null_hypersurface"
  | .syntheticNullEnergyCondition => "synthetic_null_energy_condition"
  | .gaugeInvariance => "gauge_invariance"
  | .stabilityUnderConvergence => "stability_under_convergence"
  | .hawkingAreaOrPenroseTransferNotImported =>
      "hawking_area_or_penrose_transfer_not_imported"

def Atom.kind : Atom -> FWR.ResidueKind
  | .topologicalCausalSpace => FWR.ResidueKind.missingDefinition
  | .closedAchronalSet => FWR.ResidueKind.missingDefinition
  | .gaugeFunction => FWR.ResidueKind.missingDefinition
  | .radonMeasure => FWR.ResidueKind.missingDefinition
  | .syntheticNullHypersurface => FWR.ResidueKind.missingDefinition
  | .syntheticNullEnergyCondition =>
      FWR.ResidueKind.missingGeometricMeasureEstimate
  | .gaugeInvariance => FWR.ResidueKind.externalTheoremNotImported
  | .stabilityUnderConvergence => FWR.ResidueKind.missingContinuumLimit
  | .hawkingAreaOrPenroseTransferNotImported =>
      FWR.ResidueKind.externalTheoremNotImported

def Atom.blocks : Atom -> String
  | .topologicalCausalSpace =>
      "topological causal space with preorder, timelike relation, and topology"
  | .closedAchronalSet =>
      "closed achronal subset used as the hypersurface carrier"
  | .gaugeFunction =>
      "tight gauge function and its equivalence relation"
  | .radonMeasure =>
      "positive Radon measure and measure-equivalence relation on the carrier"
  | .syntheticNullHypersurface =>
      "triple consisting of closed achronal set, gauge, and measure"
  | .syntheticNullEnergyCondition =>
      "synthetic null energy condition at dimension parameter N"
  | .gaugeInvariance =>
      "invariance of the synthetic null energy condition under equivalent gauges and measures"
  | .stabilityUnderConvergence =>
      "stability of synthetic null hypersurface data under convergence"
  | .hawkingAreaOrPenroseTransferNotImported =>
      "transfer to Hawking-area or Penrose-type conclusions"

def Atom.clearsBy : Atom -> String
  | .topologicalCausalSpace =>
      "source-compatible Lean structure for topological causal spaces"
  | .closedAchronalSet =>
      "checked closed-achronal-set predicate inside a topological causal space"
  | .gaugeFunction =>
      "formal tight gauge object plus equivalence predicate"
  | .radonMeasure =>
      "measure-theoretic Radon infrastructure over the hypersurface carrier"
  | .syntheticNullHypersurface =>
      "Lean structure matching the source triple and static-mass condition"
  | .syntheticNullEnergyCondition =>
      "formal entropy or curvature condition defining NCe(N)"
  | .gaugeInvariance =>
      "kernel-checked proof of Theorem 4.6 with all hypotheses exposed"
  | .stabilityUnderConvergence =>
      "formal convergence mode and stability theorem"
  | .hawkingAreaOrPenroseTransferNotImported =>
      "scoped certified import or local proof artifact for downstream theorems"

def atomResidue (a : Atom) : Think.Residue :=
  { target := FWR.Target.ResearchSurvey
    atomId := "2506.04934v3:" ++ a.id
    kind := a.kind
    blocks := a.blocks
    clearsBy := a.clearsBy }

def finalClaim (ctx : Context) : Prop :=
  (∀ X : ctx.TopologicalCausalSpace,
      ∀ H : ctx.ClosedAchronalSet,
        ∀ G1 G2 : ctx.Gauge,
          ∀ m1 m2 : ctx.RadonMeasure,
            ∀ N : ctx.DimensionParameter,
              ctx.IsTopologicalCausalSpace X ->
                ctx.IsClosedAchronalSet X H ->
                  ctx.PositiveDimension N ->
                    ctx.IsTightGauge H G1 ->
                      ctx.IsTightGauge H G2 ->
                        ctx.IsRadonMeasureOn H m1 ->
                          ctx.IsRadonMeasureOn H m2 ->
                            ctx.MeasureEquivalent m1 m2 ->
                              ctx.GaugeEquivalent G1 G2 ->
                                ctx.IsSyntheticNullHypersurface X H G1 m1 ->
                                  ctx.IsSyntheticNullHypersurface X H G2 m2 ->
                                    (ctx.SatisfiesSyntheticNullEnergyCondition H G1 m1 N ↔
                                      ctx.SatisfiesSyntheticNullEnergyCondition H G2 m2 N)) ∧
  ctx.StableUnderConvergence ∧
  ctx.HawkingAreaOrPenroseTransfer

def finalResidues (_ctx : Context) : List Think.Residue :=
  [ atomResidue Atom.topologicalCausalSpace
  , atomResidue Atom.closedAchronalSet
  , atomResidue Atom.gaugeFunction
  , atomResidue Atom.radonMeasure
  , atomResidue Atom.syntheticNullHypersurface
  , atomResidue Atom.syntheticNullEnergyCondition
  , atomResidue Atom.gaugeInvariance
  , atomResidue Atom.stabilityUnderConvergence
  , atomResidue Atom.hawkingAreaOrPenroseTransferNotImported
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
  { targetId := "2506.04934v3:Theorem:4.6"
    paperId := "2506.04934v3"
    kind := TargetKind.thm
    leanFile := "ResearchSurvey/SyntheticNullHypersurfaces.lean"
    suggestedLeanName := "SyntheticNullHypersurfaces.theorem_4_6" }

theorem surveyTarget_checked_hasResidue :
    (targetChecked surveyTarget).hasResidue = true := by
  rfl

end Think.ResearchSurvey.Sources.SyntheticNullHypersurfaces
```
