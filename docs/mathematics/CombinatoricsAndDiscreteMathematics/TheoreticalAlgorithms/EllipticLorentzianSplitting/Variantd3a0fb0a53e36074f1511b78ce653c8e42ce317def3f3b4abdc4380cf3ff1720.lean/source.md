# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EllipticLorentzianSplitting.Variantd3a0fb0a53e36074f1511b78ce653c8e42ce317def3f3b4abdc4380cf3ff1720

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d91ebd1cc8d9f8f53f5f9e7f2f7de6a18dd437a` · SHA-256 `d3a0fb0a53e36074f1511b78ce653c8e42ce317def3f3b4abdc4380cf3ff1720`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.ResearchSurvey.Basic

set_option autoImplicit false

namespace Think.ResearchSurvey.Sources.EllipticLorentzianSplitting

/-
Survey target: 2410.12632v1, Theorem 1, elliptic proof of the Lorentzian
splitting theorem.

This file records the theorem target as external analytic and geometric
infrastructure. It does not import Lorentzian splitting, p-dAlembert
regularization, timelike-line geometry, or Ricci-curvature conclusions as
authority for the finite residue pipeline.
-/

structure Context where
  Spacetime : Type
  LorentzMetric : Type
  TimelikeLine : Type
  RiemannianFactor : Type
  ProductModel : Type
  IsSpacetime : Spacetime -> LorentzMetric -> Prop
  GloballyHyperbolic : Spacetime -> LorentzMetric -> Prop
  TimelikeGeodesicallyComplete : Spacetime -> LorentzMetric -> Prop
  StrongEnergyCondition : Spacetime -> LorentzMetric -> Prop
  ContainsTimelikeLine : Spacetime -> LorentzMetric -> TimelikeLine -> Prop
  NegativeHomogeneityPDalembert : Spacetime -> LorentzMetric -> Prop
  EllipticRegularization : Spacetime -> LorentzMetric -> Prop
  IsLorentzianProductSplitting :
    Spacetime -> LorentzMetric -> RiemannianFactor -> ProductModel -> Prop
  FactorComplete : RiemannianFactor -> Prop
  FactorNonnegativeRicci : RiemannianFactor -> Prop

inductive Atom where
  | globallyHyperbolicSpacetime
  | timelikeLine
  | energyCondition
  | negativeHomogeneityPDalembert
  | ellipticRegularization
  | splittingConclusion
  | classicalSplittingTransferNotImported
deriving DecidableEq, Repr

def Atom.id : Atom -> String
  | .globallyHyperbolicSpacetime => "globally_hyperbolic_spacetime"
  | .timelikeLine => "timelike_line"
  | .energyCondition => "energy_condition"
  | .negativeHomogeneityPDalembert => "negative_homogeneity_p_dalembert"
  | .ellipticRegularization => "elliptic_regularization"
  | .splittingConclusion => "splitting_conclusion"
  | .classicalSplittingTransferNotImported =>
      "classical_splitting_transfer_not_imported"

def Atom.kind : Atom -> FWR.ResidueKind
  | .globallyHyperbolicSpacetime => FWR.ResidueKind.missingDefinition
  | .timelikeLine => FWR.ResidueKind.missingDefinition
  | .energyCondition => FWR.ResidueKind.missingPDEEstimate
  | .negativeHomogeneityPDalembert => FWR.ResidueKind.missingDefinition
  | .ellipticRegularization => FWR.ResidueKind.missingPDEEstimate
  | .splittingConclusion => FWR.ResidueKind.externalTheoremNotImported
  | .classicalSplittingTransferNotImported =>
      FWR.ResidueKind.externalTheoremNotImported

def Atom.blocks : Atom -> String
  | .globallyHyperbolicSpacetime =>
      "globally hyperbolic spacetime structure for the splitting theorem"
  | .timelikeLine =>
      "isometrically embedded timelike copy of the real line"
  | .energyCondition =>
      "strong energy condition and Ricci sign hypothesis"
  | .negativeHomogeneityPDalembert =>
      "negative-homogeneity p-dAlembert operator used by the elliptic proof"
  | .ellipticRegularization =>
      "elliptic regularization and Busemann-function regularity machinery"
  | .splittingConclusion =>
      "isometry to a product with complete nonnegative-Ricci factor"
  | .classicalSplittingTransferNotImported =>
      "transfer from external Lorentzian splitting literature to local proof authority"

def Atom.clearsBy : Atom -> String
  | .globallyHyperbolicSpacetime =>
      "source-compatible Lean structure for globally hyperbolic spacetimes"
  | .timelikeLine =>
      "checked predicate for complete timelike lines and isometric embedding"
  | .energyCondition =>
      "formal Ricci tensor, timelike vector, and strong-energy-condition interface"
  | .negativeHomogeneityPDalembert =>
      "local definition of the negative-homogeneity p-dAlembert operator"
  | .ellipticRegularization =>
      "kernel-checked elliptic regularization and Busemann regularity proof"
  | .splittingConclusion =>
      "kernel-checked product splitting theorem with exposed hypotheses"
  | .classicalSplittingTransferNotImported =>
      "scoped certified import or local proof artifact for the cited theorem"

def atomResidue (a : Atom) : Think.Residue :=
  { target := FWR.Target.ResearchSurvey
    atomId := "2410.12632v1:" ++ a.id
    kind := a.kind
    blocks := a.blocks
    clearsBy := a.clearsBy }

def finalClaim (ctx : Context) : Prop :=
  (∀ M : ctx.Spacetime,
      ∀ g : ctx.LorentzMetric,
        ∀ gamma : ctx.TimelikeLine,
          ctx.IsSpacetime M g ->
            ctx.StrongEnergyCondition M g ->
              ctx.ContainsTimelikeLine M g gamma ->
                (ctx.GloballyHyperbolic M g ∨
                  ctx.TimelikeGeodesicallyComplete M g) ->
                  ∃ S : ctx.RiemannianFactor,
                    ∃ model : ctx.ProductModel,
                      ctx.IsLorentzianProductSplitting M g S model ∧
                      ctx.FactorComplete S ∧
                      ctx.FactorNonnegativeRicci S) ∧
  (∀ M : ctx.Spacetime,
      ∀ g : ctx.LorentzMetric,
        ctx.NegativeHomogeneityPDalembert M g ->
          ctx.EllipticRegularization M g)

def finalResidues (_ctx : Context) : List Think.Residue :=
  [ atomResidue Atom.globallyHyperbolicSpacetime
  , atomResidue Atom.timelikeLine
  , atomResidue Atom.energyCondition
  , atomResidue Atom.negativeHomogeneityPDalembert
  , atomResidue Atom.ellipticRegularization
  , atomResidue Atom.splittingConclusion
  , atomResidue Atom.classicalSplittingTransferNotImported
  ]

def finalWitness (ctx : Context) : Think.Checked (finalClaim ctx) :=
  FWR.Checked.residue (finalResidues ctx)

theorem finalWitness_hasResidue (ctx : Context) :
    (finalWitness ctx).hasResidue = true := by
  rfl

theorem finalResidue_count (ctx : Context) :
    (finalResidues ctx).length = 7 := by
  rfl

def surveyTarget : SurveyTarget :=
  { targetId := "2410.12632v1:Theorem:1"
    paperId := "2410.12632v1"
    kind := TargetKind.thm
    leanFile := "ResearchSurvey/EllipticLorentzianSplitting.lean"
    suggestedLeanName := "EllipticLorentzianSplitting.theorem_1" }

theorem surveyTarget_checked_hasResidue :
    (targetChecked surveyTarget).hasResidue = true := by
  rfl

end Think.ResearchSurvey.Sources.EllipticLorentzianSplitting
```
