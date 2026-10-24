# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LiouvilleConformalBootstrap.Variant98edf6f56c9bf5fd7eab9fd9e63b62cc0b9be90305cc50dfaf17930e759b4aaa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `92ad4653fb27dc871b5c4278e12554c8d3f90528` · SHA-256 `98edf6f56c9bf5fd7eab9fd9e63b62cc0b9be90305cc50dfaf17930e759b4aaa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.ResearchSurvey.Basic

set_option autoImplicit false

namespace Think.ResearchSurvey.Sources.LiouvilleConformalBootstrap

/-
Survey target: 2005.11530v2, Theorem 1.1, conformal bootstrap in
Liouville theory.

This file records the theorem target as external probability, spectral,
representation-theoretic, and conformal-field-theoretic infrastructure. It does
not import Gaussian multiplicative chaos, Virasoro representation theory,
self-adjoint spectral analysis, structure constants, four-point functions,
bootstrap identities, or crossing symmetry as authority for the finite residue
pipeline.
-/

structure Context where
  Parameter : Type
  InsertionPoint : Type
  LiouvilleField : Type
  GMCMeasure : Type
  VirasoroModule : Type
  SpectralOperator : Type
  StructureConstants : Type
  Correlation : Type
  BootstrapCorrelation : Type
  GammaInOpenInterval : Parameter -> Prop
  AlphaBelowQ : Parameter -> Prop
  PairSumAboveQ : Parameter -> Parameter -> Prop
  PointInConfigurationDomain : InsertionPoint -> Prop
  IsLiouvilleField : Parameter -> LiouvilleField -> Prop
  HasGMCConstruction : LiouvilleField -> GMCMeasure -> Prop
  HasVirasoroHighestWeightModule : Parameter -> VirasoroModule -> Prop
  HasSelfAdjointSpectralAnalysis : SpectralOperator -> Prop
  HasThreePointStructureConstants : StructureConstants -> Prop
  ProbabilisticFourPoint :
    Parameter -> Parameter -> Parameter -> Parameter -> Parameter ->
      InsertionPoint -> LiouvilleField -> GMCMeasure -> Correlation -> Prop
  BootstrapFourPoint :
    Parameter -> Parameter -> Parameter -> Parameter -> Parameter ->
      InsertionPoint -> VirasoroModule -> SpectralOperator -> StructureConstants ->
        BootstrapCorrelation -> Prop
  CorrelationsAgree : Correlation -> BootstrapCorrelation -> Prop
  CrossingAssociativity : BootstrapCorrelation -> Prop

inductive Atom where
  | liouvilleFieldDefinition
  | gaussianMultiplicativeChaos
  | virasoroHighestWeightModule
  | selfAdjointOperatorSpectralAnalysis
  | threePointStructureConstants
  | fourPointCorrelation
  | bootstrapHypothesis
  | crossingAssociativity
  | externalCFTTheoremNotImported
deriving DecidableEq, Repr

def Atom.id : Atom -> String
  | .liouvilleFieldDefinition => "liouville_field_definition"
  | .gaussianMultiplicativeChaos => "gaussian_multiplicative_chaos"
  | .virasoroHighestWeightModule => "virasoro_highest_weight_module"
  | .selfAdjointOperatorSpectralAnalysis =>
      "self_adjoint_operator_spectral_analysis"
  | .threePointStructureConstants => "three_point_structure_constants"
  | .fourPointCorrelation => "four_point_correlation"
  | .bootstrapHypothesis => "bootstrap_hypothesis"
  | .crossingAssociativity => "crossing_associativity"
  | .externalCFTTheoremNotImported => "external_cft_theorem_not_imported"

def Atom.kind : Atom -> FWR.ResidueKind
  | .liouvilleFieldDefinition => FWR.ResidueKind.missingDefinition
  | .gaussianMultiplicativeChaos => FWR.ResidueKind.missingAnalyticContinuation
  | .virasoroHighestWeightModule => FWR.ResidueKind.missingDefinition
  | .selfAdjointOperatorSpectralAnalysis =>
      FWR.ResidueKind.externalTheoremNotImported
  | .threePointStructureConstants => FWR.ResidueKind.missingDefinition
  | .fourPointCorrelation => FWR.ResidueKind.missingDefinition
  | .bootstrapHypothesis => FWR.ResidueKind.conjecturalAtom
  | .crossingAssociativity => FWR.ResidueKind.externalTheoremNotImported
  | .externalCFTTheoremNotImported =>
      FWR.ResidueKind.externalTheoremNotImported

def Atom.blocks : Atom -> String
  | .liouvilleFieldDefinition =>
      "Liouville random field and insertion operators"
  | .gaussianMultiplicativeChaos =>
      "Gaussian multiplicative chaos construction used in the probabilistic side"
  | .virasoroHighestWeightModule =>
      "Virasoro highest-weight module and descendant-state semantics"
  | .selfAdjointOperatorSpectralAnalysis =>
      "self-adjoint Hamiltonian, spectral resolution, and scattering inputs"
  | .threePointStructureConstants =>
      "DOZZ-style or source-compatible three-point structure constants"
  | .fourPointCorrelation =>
      "probabilistic and bootstrap four-point correlation objects"
  | .bootstrapHypothesis =>
      "translation of the bootstrap formula and its parameter hypotheses"
  | .crossingAssociativity =>
      "crossing or associativity consistency for the bootstrap channel"
  | .externalCFTTheoremNotImported =>
      "use of Liouville conformal-bootstrap authority inside the finite pipeline"

def Atom.clearsBy : Atom -> String
  | .liouvilleFieldDefinition =>
      "source-compatible Lean object for Liouville fields and vertex insertions"
  | .gaussianMultiplicativeChaos =>
      "measure-theoretic construction of the GMC measure with integrability data"
  | .virasoroHighestWeightModule =>
      "Lean structure for Virasoro modules, weights, and descendants"
  | .selfAdjointOperatorSpectralAnalysis =>
      "kernel-checked operator theory and spectral theorem infrastructure"
  | .threePointStructureConstants =>
      "formal structure constants with source hypotheses and normalization"
  | .fourPointCorrelation =>
      "formal probabilistic and bootstrap four-point functions"
  | .bootstrapHypothesis =>
      "checked statement translation of Theorem 1.1 with all bounds exposed"
  | .crossingAssociativity =>
      "kernel-checked crossing theorem or retained corollary-level residue"
  | .externalCFTTheoremNotImported =>
      "scoped certified import or local proof artifact for the CFT theorem"

def atomResidue (a : Atom) : Think.Residue :=
  { target := FWR.Target.ResearchSurvey
    atomId := "2005.11530v2:" ++ a.id
    kind := a.kind
    blocks := a.blocks
    clearsBy := a.clearsBy }

def finalClaim (ctx : Context) : Prop :=
  ∀ gamma alpha1 alpha2 alpha3 alpha4 : ctx.Parameter,
    ∀ z : ctx.InsertionPoint,
      ∀ field : ctx.LiouvilleField,
        ∀ gmc : ctx.GMCMeasure,
          ∀ module : ctx.VirasoroModule,
            ∀ op : ctx.SpectralOperator,
              ∀ constants : ctx.StructureConstants,
                ctx.GammaInOpenInterval gamma ->
                  ctx.AlphaBelowQ alpha1 ->
                    ctx.AlphaBelowQ alpha2 ->
                      ctx.AlphaBelowQ alpha3 ->
                        ctx.AlphaBelowQ alpha4 ->
                          ctx.PairSumAboveQ alpha1 alpha2 ->
                            ctx.PairSumAboveQ alpha3 alpha4 ->
                              ctx.PointInConfigurationDomain z ->
                                ctx.IsLiouvilleField gamma field ->
                                  ctx.HasGMCConstruction field gmc ->
                                    ctx.HasVirasoroHighestWeightModule gamma module ->
                                      ctx.HasSelfAdjointSpectralAnalysis op ->
                                        ctx.HasThreePointStructureConstants constants ->
                                          ∃ probabilistic : ctx.Correlation,
                                            ∃ bootstrap : ctx.BootstrapCorrelation,
                                              ctx.ProbabilisticFourPoint
                                                gamma alpha1 alpha2 alpha3 alpha4
                                                z field gmc probabilistic ∧
                                              ctx.BootstrapFourPoint
                                                gamma alpha1 alpha2 alpha3 alpha4
                                                z module op constants bootstrap ∧
                                              ctx.CorrelationsAgree probabilistic bootstrap ∧
                                              ctx.CrossingAssociativity bootstrap

def finalResidues (_ctx : Context) : List Think.Residue :=
  [ atomResidue Atom.liouvilleFieldDefinition
  , atomResidue Atom.gaussianMultiplicativeChaos
  , atomResidue Atom.virasoroHighestWeightModule
  , atomResidue Atom.selfAdjointOperatorSpectralAnalysis
  , atomResidue Atom.threePointStructureConstants
  , atomResidue Atom.fourPointCorrelation
  , atomResidue Atom.bootstrapHypothesis
  , atomResidue Atom.crossingAssociativity
  , atomResidue Atom.externalCFTTheoremNotImported
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
  { targetId := "2005.11530v2:Theorem:1.1"
    paperId := "2005.11530v2"
    kind := TargetKind.thm
    leanFile := "ResearchSurvey/LiouvilleConformalBootstrap.lean"
    suggestedLeanName := "LiouvilleConformalBootstrap.theorem_1_1" }

theorem surveyTarget_checked_hasResidue :
    (targetChecked surveyTarget).hasResidue = true := by
  rfl

end Think.ResearchSurvey.Sources.LiouvilleConformalBootstrap
```
