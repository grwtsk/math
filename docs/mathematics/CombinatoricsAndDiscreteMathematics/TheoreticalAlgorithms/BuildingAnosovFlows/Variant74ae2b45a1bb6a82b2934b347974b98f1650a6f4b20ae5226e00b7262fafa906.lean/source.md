# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BuildingAnosovFlows.Variant74ae2b45a1bb6a82b2934b347974b98f1650a6f4b20ae5226e00b7262fafa906

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3509e63db39a98af44c9de6d2f0854415f321257` · SHA-256 `74ae2b45a1bb6a82b2934b347974b98f1650a6f4b20ae5226e00b7262fafa906`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.ResearchSurvey.Basic

set_option autoImplicit false

namespace Think.ResearchSurvey.Sources.BuildingAnosovFlows

/-
Survey target: 1408.3951v1, Proposition 1.1 and Theorem 1.5, building
Anosov flows from hyperbolic plugs.

This file records the theorem target as external low-dimensional dynamics and
plug-gluing infrastructure. It does not import hyperbolic plug theory,
filtrating neighborhoods, strong transversality, Anosov construction,
transitivity, nontransitivity, prescribed entrance foliations, or gluing
theorems as authority for the finite residue pipeline.
-/

structure Context where
  HyperbolicPlug : Type
  FiltratingNeighborhood : Type
  BoundaryComponent : Type
  Lamination : Type
  GluingMap : Type
  ThreeManifold : Type
  VectorField : Type
  Foliation : Type
  IsHyperbolicPlug : HyperbolicPlug -> Prop
  HasFiltratingNeighborhood :
    HyperbolicPlug -> FiltratingNeighborhood -> Prop
  ExitBoundary :
    HyperbolicPlug -> BoundaryComponent -> Prop
  EntranceBoundary :
    HyperbolicPlug -> BoundaryComponent -> Prop
  UnstableExitLamination :
    HyperbolicPlug -> BoundaryComponent -> Lamination -> Prop
  StableEntranceLamination :
    HyperbolicPlug -> BoundaryComponent -> Lamination -> Prop
  GluesBoundary :
    GluingMap -> BoundaryComponent -> BoundaryComponent -> Prop
  PushforwardTransverse :
    GluingMap -> Lamination -> Lamination -> Prop
  PushforwardStronglyTransverse :
    GluingMap -> Lamination -> Lamination -> Prop
  HasFillingMSLaminations : HyperbolicPlug -> Prop
  NoAttractorOrRepellerInMaximalInvariantSet : HyperbolicPlug -> Prop
  GluedManifold : HyperbolicPlug -> HyperbolicPlug -> GluingMap -> ThreeManifold
  InducedVectorField : HyperbolicPlug -> HyperbolicPlug -> GluingMap -> VectorField
  IsHyperbolicPlugOn : ThreeManifold -> VectorField -> Prop
  IsAnosovVectorField : ThreeManifold -> VectorField -> Prop
  IsTransitiveAnosovVectorField : ThreeManifold -> VectorField -> Prop
  IsNontransitiveAnosovVectorField : ThreeManifold -> VectorField -> Prop
  PrescribesEntranceFoliation : HyperbolicPlug -> Foliation -> Prop
  IsotopicGluing : GluingMap -> GluingMap -> Prop
  ConstructedPlugEquivalent : HyperbolicPlug -> HyperbolicPlug -> Prop

inductive Atom where
  | hyperbolicPlug
  | filtratingNeighborhood
  | entranceExitBoundary
  | gluingMap
  | transitiveAnosovVectorField
  | nontransitiveAnosovVectorField
  | prescribedEntranceFoliation
  | gluingTheoremNotImported
deriving DecidableEq, Repr

def Atom.id : Atom -> String
  | .hyperbolicPlug => "hyperbolic_plug"
  | .filtratingNeighborhood => "filtrating_neighborhood"
  | .entranceExitBoundary => "entrance_exit_boundary"
  | .gluingMap => "gluing_map"
  | .transitiveAnosovVectorField => "transitive_anosov_vector_field"
  | .nontransitiveAnosovVectorField => "nontransitive_anosov_vector_field"
  | .prescribedEntranceFoliation => "prescribed_entrance_foliation"
  | .gluingTheoremNotImported => "gluing_theorem_not_imported"

def Atom.kind : Atom -> FWR.ResidueKind
  | .hyperbolicPlug => FWR.ResidueKind.missingDefinition
  | .filtratingNeighborhood => FWR.ResidueKind.missingDefinition
  | .entranceExitBoundary => FWR.ResidueKind.missingDefinition
  | .gluingMap => FWR.ResidueKind.missingTransition
  | .transitiveAnosovVectorField => FWR.ResidueKind.externalTheoremNotImported
  | .nontransitiveAnosovVectorField =>
      FWR.ResidueKind.externalTheoremNotImported
  | .prescribedEntranceFoliation =>
      FWR.ResidueKind.externalTheoremNotImported
  | .gluingTheoremNotImported => FWR.ResidueKind.externalTheoremNotImported

def Atom.blocks : Atom -> String
  | .hyperbolicPlug =>
      "hyperbolic plug carrier and maximal invariant-set data"
  | .filtratingNeighborhood =>
      "filtrating neighborhood used to define the plug structure"
  | .entranceExitBoundary =>
      "entrance and exit boundary components with stable and unstable laminations"
  | .gluingMap =>
      "boundary diffeomorphism plus transversality of pushed laminations"
  | .transitiveAnosovVectorField =>
      "construction of transitive Anosov vector fields from the plug data"
  | .nontransitiveAnosovVectorField =>
      "construction of nontransitive Anosov vector fields on closed manifolds"
  | .prescribedEntranceFoliation =>
      "realization of prescribed entrance foliations by attracting plugs"
  | .gluingTheoremNotImported =>
      "use of plug-gluing or Anosov construction theorem as finite-pipeline authority"

def Atom.clearsBy : Atom -> String
  | .hyperbolicPlug =>
      "source-compatible Lean structure for hyperbolic plugs"
  | .filtratingNeighborhood =>
      "formal filtrating-neighborhood predicate and boundary orientation data"
  | .entranceExitBoundary =>
      "Lean entrance and exit boundary API with lamination restrictions"
  | .gluingMap =>
      "checked gluing map, pushforward operation, and transversality theorem"
  | .transitiveAnosovVectorField =>
      "kernel-checked transitive Anosov construction with hypotheses exposed"
  | .nontransitiveAnosovVectorField =>
      "kernel-checked nontransitive Anosov construction with hypotheses exposed"
  | .prescribedEntranceFoliation =>
      "formal MS-foliation realization theorem for entrance foliations"
  | .gluingTheoremNotImported =>
      "scoped certified import or local proof artifact for Proposition 1.1 and Theorem 1.5"

def atomResidue (a : Atom) : Think.Residue :=
  { target := FWR.Target.ResearchSurvey
    atomId := "1408.3951v1:" ++ a.id
    kind := a.kind
    blocks := a.blocks
    clearsBy := a.clearsBy }

def propositionOneOneClaim (ctx : Context) : Prop :=
  ∀ U V : ctx.HyperbolicPlug,
    ∀ Tout Tin : ctx.BoundaryComponent,
      ∀ Lu Ls : ctx.Lamination,
        ∀ phi : ctx.GluingMap,
          ctx.IsHyperbolicPlug U ->
            ctx.IsHyperbolicPlug V ->
              ctx.ExitBoundary U Tout ->
                ctx.EntranceBoundary V Tin ->
                  ctx.UnstableExitLamination U Tout Lu ->
                    ctx.StableEntranceLamination V Tin Ls ->
                      ctx.GluesBoundary phi Tout Tin ->
                        ctx.PushforwardTransverse phi Lu Ls ->
                          ctx.IsHyperbolicPlugOn
                            (ctx.GluedManifold U V phi)
                            (ctx.InducedVectorField U V phi)

def theoremOneFiveClaim (ctx : Context) : Prop :=
  ∀ U : ctx.HyperbolicPlug,
    ∀ phi : ctx.GluingMap,
      ctx.IsHyperbolicPlug U ->
        ctx.HasFillingMSLaminations U ->
          ctx.NoAttractorOrRepellerInMaximalInvariantSet U ->
            (∀ Tout Tin : ctx.BoundaryComponent,
                ∀ Lu Ls : ctx.Lamination,
                  ctx.ExitBoundary U Tout ->
                    ctx.EntranceBoundary U Tin ->
                      ctx.UnstableExitLamination U Tout Lu ->
                        ctx.StableEntranceLamination U Tin Ls ->
                          ctx.GluesBoundary phi Tout Tin ->
                            ctx.PushforwardStronglyTransverse phi Lu Ls) ->
              ∃ Y : ctx.HyperbolicPlug,
                ∃ psi : ctx.GluingMap,
                  ctx.ConstructedPlugEquivalent U Y ∧
                  ctx.HasFillingMSLaminations Y ∧
                  ctx.IsotopicGluing phi psi ∧
                  ctx.IsAnosovVectorField
                    (ctx.GluedManifold Y Y psi)
                    (ctx.InducedVectorField Y Y psi)

def finalClaim (ctx : Context) : Prop :=
  propositionOneOneClaim ctx ∧
  theoremOneFiveClaim ctx ∧
  (∀ M : ctx.ThreeManifold,
      ∃ Z : ctx.VectorField,
        ctx.IsTransitiveAnosovVectorField M Z) ∧
  (∃ M : ctx.ThreeManifold,
      ∃ Z : ctx.VectorField,
        ctx.IsNontransitiveAnosovVectorField M Z) ∧
  (∀ F : ctx.Foliation,
      ∃ U : ctx.HyperbolicPlug,
        ctx.IsHyperbolicPlug U ∧
        ctx.PrescribesEntranceFoliation U F)

def finalResidues (_ctx : Context) : List Think.Residue :=
  [ atomResidue Atom.hyperbolicPlug
  , atomResidue Atom.filtratingNeighborhood
  , atomResidue Atom.entranceExitBoundary
  , atomResidue Atom.gluingMap
  , atomResidue Atom.transitiveAnosovVectorField
  , atomResidue Atom.nontransitiveAnosovVectorField
  , atomResidue Atom.prescribedEntranceFoliation
  , atomResidue Atom.gluingTheoremNotImported
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
  { targetId := "1408.3951v1:Proposition:1.1/Theorem:1.5"
    paperId := "1408.3951v1"
    kind := TargetKind.thm
    leanFile := "ResearchSurvey/BuildingAnosovFlows.lean"
    suggestedLeanName := "BuildingAnosovFlows.proposition_1_1_theorem_1_5" }

theorem surveyTarget_checked_hasResidue :
    (targetChecked surveyTarget).hasResidue = true := by
  rfl

end Think.ResearchSurvey.Sources.BuildingAnosovFlows
```
