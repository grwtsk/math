# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BoundaryActionsAnosov.Variant0b2f4360764946b622dd939c660701ff681e8cb22c1f28e4880613e8ad6f36b7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce97f4dd284b1e96d8fdae689b3a21c73728e30c` · SHA-256 `0b2f4360764946b622dd939c660701ff681e8cb22c1f28e4880613e8ad6f36b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.ResearchSurvey.Basic

set_option autoImplicit false

namespace Think.ResearchSurvey.Sources.BoundaryActionsAnosov

/-
Survey target: 1909.02324v3, Theorem 1.1, topological stability of boundary
actions and inequivalent Anosov flows.

This file records the theorem target as external low-dimensional dynamics and
boundary-action infrastructure. It does not import negative-curvature boundary
rigidity, semiconjugacy, slithering actions, or global rigidity as authority
for the finite residue pipeline.
-/

structure Context where
  CompactManifold : Type
  BoundaryAtInfinity : Type
  FundamentalGroup : Type
  HomeomorphismAction : Type
  FactorMap : Type
  SlitheringAction : Type
  IsNegativeCurvatureCompactManifold : CompactManifold -> Prop
  Pi1 : CompactManifold -> FundamentalGroup
  IsBoundaryAtInfinity : CompactManifold -> BoundaryAtInfinity -> Prop
  IsStandardBoundaryAction :
    FundamentalGroup -> BoundaryAtInfinity -> HomeomorphismAction -> Prop
  IsNearbyHomeomorphismAction :
    HomeomorphismAction -> HomeomorphismAction -> Prop
  IsSemiconjugacy :
    FactorMap -> HomeomorphismAction -> HomeomorphismAction -> Prop
  IsSlitheringAction : CompactManifold -> SlitheringAction -> Prop
  GloballyRigid : SlitheringAction -> Prop

inductive Atom where
  | negativeCurvatureCompactManifold
  | boundaryAtInfinity
  | standardBoundaryAction
  | nearbyHomeomorphismAction
  | semiconjugacy
  | slitheringAction
  | globalRigidity
  | externalRigidityNotImported
deriving DecidableEq, Repr

def Atom.id : Atom -> String
  | .negativeCurvatureCompactManifold => "negative_curvature_compact_manifold"
  | .boundaryAtInfinity => "boundary_at_infinity"
  | .standardBoundaryAction => "standard_boundary_action"
  | .nearbyHomeomorphismAction => "nearby_homeomorphism_action"
  | .semiconjugacy => "semiconjugacy"
  | .slitheringAction => "slithering_action"
  | .globalRigidity => "global_rigidity"
  | .externalRigidityNotImported => "external_rigidity_not_imported"

def Atom.kind : Atom -> FWR.ResidueKind
  | .negativeCurvatureCompactManifold => FWR.ResidueKind.missingDefinition
  | .boundaryAtInfinity => FWR.ResidueKind.missingDefinition
  | .standardBoundaryAction => FWR.ResidueKind.missingDefinition
  | .nearbyHomeomorphismAction => FWR.ResidueKind.missingDefinition
  | .semiconjugacy => FWR.ResidueKind.missingTransition
  | .slitheringAction => FWR.ResidueKind.missingDefinition
  | .globalRigidity => FWR.ResidueKind.externalTheoremNotImported
  | .externalRigidityNotImported => FWR.ResidueKind.externalTheoremNotImported

def Atom.blocks : Atom -> String
  | .negativeCurvatureCompactManifold =>
      "compact orientable negative-curvature manifold hypotheses"
  | .boundaryAtInfinity =>
      "boundary at infinity of the universal cover"
  | .standardBoundaryAction =>
      "natural action of the fundamental group on the boundary at infinity"
  | .nearbyHomeomorphismAction =>
      "nearby representation into homeomorphisms of the boundary sphere"
  | .semiconjugacy =>
      "topological factor or semiconjugacy from the standard boundary action"
  | .slitheringAction =>
      "slithering action used in the global rigidity framework"
  | .globalRigidity =>
      "global rigidity conclusion for the boundary or slithering action"
  | .externalRigidityNotImported =>
      "use of boundary-action rigidity as local finite-pipeline authority"

def Atom.clearsBy : Atom -> String
  | .negativeCurvatureCompactManifold =>
      "source-compatible Lean structure for compact negative-curvature manifolds"
  | .boundaryAtInfinity =>
      "formal boundary-at-infinity construction and topology"
  | .standardBoundaryAction =>
      "checked fundamental-group boundary action"
  | .nearbyHomeomorphismAction =>
      "formal topology on the representation space of homeomorphism actions"
  | .semiconjugacy =>
      "kernel-checked factor map satisfying the action compatibility law"
  | .slitheringAction =>
      "Lean structure for slithering actions and their hypotheses"
  | .globalRigidity =>
      "kernel-checked global rigidity theorem with all hypotheses exposed"
  | .externalRigidityNotImported =>
      "scoped certified import or local proof artifact for the rigidity theorem"

def atomResidue (a : Atom) : Think.Residue :=
  { target := FWR.Target.ResearchSurvey
    atomId := "1909.02324v3:" ++ a.id
    kind := a.kind
    blocks := a.blocks
    clearsBy := a.clearsBy }

def finalClaim (ctx : Context) : Prop :=
  (∀ M : ctx.CompactManifold,
      ∀ boundary : ctx.BoundaryAtInfinity,
        ∀ rho0 rho : ctx.HomeomorphismAction,
          ctx.IsNegativeCurvatureCompactManifold M ->
            ctx.IsBoundaryAtInfinity M boundary ->
              ctx.IsStandardBoundaryAction (ctx.Pi1 M) boundary rho0 ->
                ctx.IsNearbyHomeomorphismAction rho0 rho ->
                  ∃ h : ctx.FactorMap,
                    ctx.IsSemiconjugacy h rho0 rho) ∧
  (∀ M : ctx.CompactManifold,
      ∀ sigma : ctx.SlitheringAction,
        ctx.IsNegativeCurvatureCompactManifold M ->
          ctx.IsSlitheringAction M sigma ->
            ctx.GloballyRigid sigma)

def finalResidues (_ctx : Context) : List Think.Residue :=
  [ atomResidue Atom.negativeCurvatureCompactManifold
  , atomResidue Atom.boundaryAtInfinity
  , atomResidue Atom.standardBoundaryAction
  , atomResidue Atom.nearbyHomeomorphismAction
  , atomResidue Atom.semiconjugacy
  , atomResidue Atom.slitheringAction
  , atomResidue Atom.globalRigidity
  , atomResidue Atom.externalRigidityNotImported
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
  { targetId := "1909.02324v3:Theorem:1.1"
    paperId := "1909.02324v3"
    kind := TargetKind.thm
    leanFile := "ResearchSurvey/BoundaryActionsAnosov.lean"
    suggestedLeanName := "BoundaryActionsAnosov.theorem_1_1" }

theorem surveyTarget_checked_hasResidue :
    (targetChecked surveyTarget).hasResidue = true := by
  rfl

end Think.ResearchSurvey.Sources.BoundaryActionsAnosov
```
