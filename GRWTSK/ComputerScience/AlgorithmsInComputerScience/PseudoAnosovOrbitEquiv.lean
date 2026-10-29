import Think.SourceTree.Legacy.ResearchSurvey.Basic

set_option autoImplicit false

namespace Think.ResearchSurvey.Sources.PseudoAnosovOrbitEquiv

/-
Survey target: 2211.10505v1, Theorem 1.1, orbit equivalences of
pseudo-Anosov flows.

This file records the theorem target as external three-dimensional dynamics
infrastructure. It does not import pseudo-Anosov flow classification,
bifoliated-plane rigidity, scalloped-region sign data, or orbit-equivalence
theorems as authority for the finite residue pipeline.
-/

structure Context where
  Closed3Manifold : Type
  Flow : Type
  FundamentalGroup : Type
  FreeHomotopyClassSet : Type
  ScallopedRegionTree : Type
  SignData : Type
  BifoliatedPlane : Type
  AnosovLikeAction : Type
  IsClosed3Manifold : Closed3Manifold -> Prop
  Pi1 : Closed3Manifold -> FundamentalGroup
  IsTransitiveAnosovFlow : Closed3Manifold -> Flow -> Prop
  IsPseudoAnosovFlow : Closed3Manifold -> Flow -> Prop
  IsTransitive : Closed3Manifold -> Flow -> Prop
  HasNoTreeOfScallopedRegions : Closed3Manifold -> Flow -> Prop
  PInvariant : Closed3Manifold -> Flow -> FreeHomotopyClassSet
  IsotopicallyEquivalent : Closed3Manifold -> Flow -> Flow -> Prop
  HasTreeOfScallopedRegions :
    Closed3Manifold -> Flow -> ScallopedRegionTree -> Prop
  SignsAgree : SignData -> SignData -> Prop
  HasBifoliatedPlane : Flow -> BifoliatedPlane -> Prop
  HasAnosovLikeAction : FundamentalGroup -> BifoliatedPlane -> AnosovLikeAction -> Prop
  OrbitEquivalent : Closed3Manifold -> Flow -> Flow -> Prop

inductive Atom where
  | transitiveAnosovFlow
  | pseudoAnosovFlow
  | closed3Manifold
  | freeHomotopyClassSet
  | treeOfScallopedRegions
  | signData
  | bifoliatedPlane
  | anosovLikeAction
  | orbitEquivalenceClassification
deriving DecidableEq, Repr

def Atom.id : Atom -> String
  | .transitiveAnosovFlow => "transitive_anosov_flow"
  | .pseudoAnosovFlow => "pseudo_anosov_flow"
  | .closed3Manifold => "closed_3_manifold"
  | .freeHomotopyClassSet => "free_homotopy_class_set"
  | .treeOfScallopedRegions => "tree_of_scalloped_regions"
  | .signData => "sign_data"
  | .bifoliatedPlane => "bifoliated_plane"
  | .anosovLikeAction => "anosov_like_action"
  | .orbitEquivalenceClassification => "orbit_equivalence_classification"

def Atom.kind : Atom -> FWR.ResidueKind
  | .transitiveAnosovFlow => FWR.ResidueKind.missingDefinition
  | .pseudoAnosovFlow => FWR.ResidueKind.missingDefinition
  | .closed3Manifold => FWR.ResidueKind.missingDefinition
  | .freeHomotopyClassSet => FWR.ResidueKind.missingDefinition
  | .treeOfScallopedRegions => FWR.ResidueKind.missingGeometricMeasureEstimate
  | .signData => FWR.ResidueKind.missingDefinition
  | .bifoliatedPlane => FWR.ResidueKind.missingDefinition
  | .anosovLikeAction => FWR.ResidueKind.missingDefinition
  | .orbitEquivalenceClassification => FWR.ResidueKind.externalTheoremNotImported

def Atom.blocks : Atom -> String
  | .transitiveAnosovFlow =>
      "transitive Anosov-flow and transitivity predicates used by the source"
  | .pseudoAnosovFlow =>
      "pseudo-Anosov flow object on a closed three-manifold"
  | .closed3Manifold =>
      "closed three-manifold and fundamental group interface"
  | .freeHomotopyClassSet =>
      "free-homotopy-class invariant P(phi)"
  | .treeOfScallopedRegions =>
      "tree of scalloped regions in the orbit space"
  | .signData =>
      "sign data for group orbits of scalloped-region trees"
  | .bifoliatedPlane =>
      "bifoliated plane associated to the orbit-space action"
  | .anosovLikeAction =>
      "Anosov-like action of the fundamental group on a bifoliated plane"
  | .orbitEquivalenceClassification =>
      "classification of isotopy or orbit equivalence from invariant data"

def Atom.clearsBy : Atom -> String
  | .transitiveAnosovFlow =>
      "source-compatible Lean predicates for transitive Anosov-style flows"
  | .pseudoAnosovFlow =>
      "formal pseudo-Anosov flow structure and orbit-space data"
  | .closed3Manifold =>
      "Lean manifold and fundamental-group infrastructure for closed 3-manifolds"
  | .freeHomotopyClassSet =>
      "formal P(phi) invariant built from periodic-orbit free homotopy classes"
  | .treeOfScallopedRegions =>
      "formal tree-of-scalloped-regions predicate and absence condition"
  | .signData =>
      "checked sign data and agreement relation for tree orbits"
  | .bifoliatedPlane =>
      "Lean structure for bifoliated planes and ideal-boundary data"
  | .anosovLikeAction =>
      "formal Anosov-like action satisfying the source hypotheses"
  | .orbitEquivalenceClassification =>
      "kernel-checked proof of the classification theorem with all hypotheses exposed"

def atomResidue (a : Atom) : Think.Residue :=
  { target := FWR.Target.ResearchSurvey
    atomId := "2211.10505v1:" ++ a.id
    kind := a.kind
    blocks := a.blocks
    clearsBy := a.clearsBy }

def finalClaim (ctx : Context) : Prop :=
  (∀ M : ctx.Closed3Manifold,
      ∀ phi psi : ctx.Flow,
        ctx.IsClosed3Manifold M ->
          ctx.IsPseudoAnosovFlow M phi ->
            ctx.IsPseudoAnosovFlow M psi ->
              (ctx.IsTransitive M phi ∨ ctx.IsTransitive M psi) ->
                (ctx.HasNoTreeOfScallopedRegions M phi ∨
                  ctx.HasNoTreeOfScallopedRegions M psi) ->
                  (ctx.IsotopicallyEquivalent M phi psi ↔
                    ctx.PInvariant M phi = ctx.PInvariant M psi)) ∧
  (∀ M : ctx.Closed3Manifold,
      ∀ phi psi : ctx.Flow,
        ∀ tree : ctx.ScallopedRegionTree,
          ∀ signsPhi signsPsi : ctx.SignData,
            ∀ plane : ctx.BifoliatedPlane,
              ∀ action : ctx.AnosovLikeAction,
                ctx.IsClosed3Manifold M ->
                  ctx.IsPseudoAnosovFlow M phi ->
                    ctx.IsPseudoAnosovFlow M psi ->
                      ctx.HasTreeOfScallopedRegions M phi tree ->
                        ctx.SignsAgree signsPhi signsPsi ->
                          ctx.HasBifoliatedPlane phi plane ->
                            ctx.HasAnosovLikeAction (ctx.Pi1 M) plane action ->
                              ctx.OrbitEquivalent M phi psi)

def finalResidues (_ctx : Context) : List Think.Residue :=
  [ atomResidue Atom.transitiveAnosovFlow
  , atomResidue Atom.pseudoAnosovFlow
  , atomResidue Atom.closed3Manifold
  , atomResidue Atom.freeHomotopyClassSet
  , atomResidue Atom.treeOfScallopedRegions
  , atomResidue Atom.signData
  , atomResidue Atom.bifoliatedPlane
  , atomResidue Atom.anosovLikeAction
  , atomResidue Atom.orbitEquivalenceClassification
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
  { targetId := "2211.10505v1:Theorem:1.1"
    paperId := "2211.10505v1"
    kind := TargetKind.thm
    leanFile := "ResearchSurvey/PseudoAnosovOrbitEquiv.lean"
    suggestedLeanName := "PseudoAnosovOrbitEquiv.theorem_1_1" }

theorem surveyTarget_checked_hasResidue :
    (targetChecked surveyTarget).hasResidue = true := by
  rfl

end Think.ResearchSurvey.Sources.PseudoAnosovOrbitEquiv
