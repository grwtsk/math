# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PseudoAnosovOrbitEquiv.Variant4e91560ddb287018254c8d274a0023b48eeff2e696570feb605e2f0fe9ccab9f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ef30cd8c64a9a3a1cafc7804d185778248bd3bd` · SHA-256 `0d81d4dade60f42f30a068ea4d47cb78dfc5c549025ef81721f505ce48037fc6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Context.Variantce06ed086c28c40cc8d335b5002914410bbfc60ad3a01583e786a9b92b25c34f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ce06ed086c28c40cc8d335b5002914410bbfc60ad3a01583e786a9b92b25c34f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Context.Variantce06ed086c28c40cc8d335b5002914410bbfc60ad3a01583e786a9b92b25c34f","mathematical_subject":"Computation.DataStructures","original_sha256":"ce06ed086c28c40cc8d335b5002914410bbfc60ad3a01583e786a9b92b25c34f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/ResearchSurvey/Sources/PseudoAnosovOrbitEquiv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.ResearchSurvey.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Context.Variantce06ed086c28c40cc8d335b5002914410bbfc60ad3a01583e786a9b92b25c34f

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
```
