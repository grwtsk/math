# Complete source: GRWTSK.Analysis.SpecialFunctions.Coverage.Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b915dbe52c7868b466769375e7034b752107e300` · SHA-256 `ef2a0a4b94c71ece11367b0c43c89751396d420f431c5f1aeb94483d3c51aeef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.SpecialFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpecialFunctions.RepresentsDeclaredAt.Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.SpecialFunctions.SourceCorpus.RepresentsDeclaredAt.Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb","mathematical_subject":"Analysis.SpecialFunctions","original_sha256":"8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Coverage.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.ExtendedEML


namespace GRWTSK.Analysis.SpecialFunctions.RepresentsDeclaredAt.Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb

namespace Surface.Legacy


def classicalWitness : ClassicalSmoothAnalyticFunction -> ExtendedEML
  | .one => ExtendedEML.finite emlOneTree
  | .pi => ExtendedEML.constPi
  | .e => ExtendedEML.constE
  | .I => ExtendedEML.constI
  | .var _ => ExtendedEML.finite emlVarTree
  | .neg f => ExtendedEML.neg (classicalWitness f)
  | .inv f => ExtendedEML.inv (classicalWitness f)
  | .add a b => ExtendedEML.add (classicalWitness a) (classicalWitness b)
  | .sub a b => ExtendedEML.sub (classicalWitness a) (classicalWitness b)
  | .mul a b => ExtendedEML.mul (classicalWitness a) (classicalWitness b)
  | .div a b => ExtendedEML.div (classicalWitness a) (classicalWitness b)
  | .pow a b => ExtendedEML.pow (classicalWitness a) (classicalWitness b)
  | .exp f => ExtendedEML.compose (ExtendedEML.finite emlExpTree) (classicalWitness f)
  | .log f => ExtendedEML.compose (ExtendedEML.finite emlLogTree) (classicalWitness f)
  | .sqrt f => ExtendedEML.sqrt (classicalWitness f)
  | .sin f => ExtendedEML.sin (classicalWitness f)
  | .cos f => ExtendedEML.cos (classicalWitness f)
  | .tan f => ExtendedEML.tan (classicalWitness f)
  | .compose a b => ExtendedEML.compose (classicalWitness a) (classicalWitness b)
  | .finiteSum _ => ExtendedEML.finiteSum []
  | .finiteProduct _ => ExtendedEML.finiteProduct []

inductive RepresentsDeclaredAt :
    Gamma -> ExtendedEML -> DeclaredSurfaceObject -> Prop where
  | finiteEML (Γ : Gamma) (f : FiniteEMLObject) :
      RepresentsDeclaredAt Γ (ExtendedEML.finite emlOneTree)
        (DeclaredSurfaceObject.finiteEML f)
  | matrix (Γ : Gamma) (M : BinaryLogicMatrix rows cols) :
      RepresentsDeclaredAt Γ (ExtendedEML.binaryMatrixWitness M)
        (DeclaredSurfaceObject.matrix M)
  | bijectiveFlow (Γ : Gamma) (F : BinaryLogicMatrixFlow rows cols) :
      RepresentsDeclaredAt Γ (ExtendedEML.bijectiveFlowWitness F)
        (DeclaredSurfaceObject.bijectiveFlow F)
  | classical (Γ : Gamma) (f : ClassicalSmoothAnalyticFunction) :
      RepresentsDeclaredAt Γ (classicalWitness f)
        (DeclaredSurfaceObject.classical f)
  | measurable (Γ : Gamma) (f : CertifiedMeasurableFunction) :
      RepresentsDeclaredAt Γ (ExtendedEML.measurableAtom f)
        (DeclaredSurfaceObject.measurable f)
  | fractal (Γ : Gamma) (f : CertifiedNowhereDifferentiableFractalFunction) :
      RepresentsDeclaredAt Γ (ExtendedEML.fractalWitness f)
        (DeclaredSurfaceObject.fractal f)
  | zetaMobiusFractal (Γ : Gamma) (f : ZetaMobiusFractalFunction) :
      RepresentsDeclaredAt Γ (ExtendedEML.zetaMobiusFractalWitness f)
        (DeclaredSurfaceObject.zetaMobiusFractal f)
  | oracle (Γ : Gamma) (f : OracleRepresentableFunction) :
      RepresentsDeclaredAt Γ (ExtendedEML.oracleWitness f)
        (DeclaredSurfaceObject.oracle f)
  | heatFlow (Γ : Gamma) (f : HeatFlowRepresentableObject) :
      RepresentsDeclaredAt Γ (ExtendedEML.heatFlowWitness f)
        (DeclaredSurfaceObject.heatFlow f)
  | heatAveraging (Γ : Gamma) (f : HeatAveragingRepresentableObject) :
      RepresentsDeclaredAt Γ (ExtendedEML.heatAveragingWitness f)
        (DeclaredSurfaceObject.heatAveraging f)
  | chainComplex (Γ : Gamma) (f : ChainComplexRepresentableObject) :
      RepresentsDeclaredAt Γ (ExtendedEML.chainComplexWitness f)
        (DeclaredSurfaceObject.chainComplex f)
  | homologyStable (Γ : Gamma) (f : HomologyStableFlowObject) :
      RepresentsDeclaredAt Γ (ExtendedEML.homologyStabilityWitness f)
        (DeclaredSurfaceObject.homologyStable f)
  | ricciFlow (Γ : Gamma) (f : RicciFlowRepresentableObject) :
      RepresentsDeclaredAt Γ (ExtendedEML.ricciFlowWitness f)
        (DeclaredSurfaceObject.ricciFlow f)
  | ricciSurgery (Γ : Gamma) (f : RicciSurgeryRepresentableObject) :
      RepresentsDeclaredAt Γ (ExtendedEML.ricciSurgeryWitness f)
        (DeclaredSurfaceObject.ricciSurgery f)
  | extinctionTopology (Γ : Gamma) (f : ExtinctionTopologyObject) :
      RepresentsDeclaredAt Γ (ExtendedEML.extinctionTopologyWitness f)
        (DeclaredSurfaceObject.extinctionTopology f)
  | infiniteTime (Γ : Gamma) (f : InfiniteTimeRepresentableFunction) :
      RepresentsDeclaredAt Γ (ExtendedEML.infiniteTimeWitness f)
        (DeclaredSurfaceObject.infiniteTime f)
  | choice (Γ : Gamma) (f : ChoiceDependentObject) :
      RepresentsDeclaredAt Γ (ExtendedEML.choiceWitness f)
        (DeclaredSurfaceObject.choice f)

inductive CoveredByExtendedEMLAt
    (Γ : Gamma) (f : DeclaredSurfaceObject) : Prop where
  | intro (witness : ExtendedEML) (kind : CoverageWitnessKind) :
      RepresentsDeclaredAt Γ witness f ->
        f.requiredFoundation ≤ Γ.logicalFoundation ->
          CoveredByExtendedEMLAt Γ f

theorem classicalWitness_requiredFoundation
    (f : ClassicalSmoothAnalyticFunction) :
    LogicalFoundation.classical ≤ (classicalWitness f).requiredFoundation := by
  cases f <;> rfl

theorem coverage_requires_sufficient_foundation
    {Γ : Gamma} {f : DeclaredSurfaceObject} :
    CoveredByExtendedEMLAt Γ f ->
      f.requiredFoundation ≤ Γ.logicalFoundation := by
  intro h
  cases h with
  | intro _ _ _ hfoundation => exact hfoundation

theorem insufficient_foundation_cannot_cover
    {Γ : Gamma} {f : DeclaredSurfaceObject} :
    ¬ f.requiredFoundation ≤ Γ.logicalFoundation ->
      ¬ CoveredByExtendedEMLAt Γ f := by
  intro hnot hcov
  exact hnot (coverage_requires_sufficient_foundation hcov)

theorem witness_foundation_sound
    {Γ : Gamma} {w : ExtendedEML} {f : DeclaredSurfaceObject} :
    RepresentsDeclaredAt Γ w f ->
      f.requiredFoundation ≤ w.requiredFoundation := by
  intro h
  cases h with
  | finiteEML =>
      exact LogicalFoundation.foundation_trans
        LogicalFoundation.constructive_le_bijectiveFiniteFlow
        LogicalFoundation.bijectiveFiniteFlow_le_classical
  | matrix =>
      rfl
  | bijectiveFlow =>
      rfl
  | classical Γ f =>
      exact classicalWitness_requiredFoundation f
  | measurable =>
      rfl
  | fractal =>
      rfl
  | zetaMobiusFractal =>
      rfl
  | oracle =>
      rfl
  | heatFlow =>
      rfl
  | heatAveraging =>
      rfl
  | chainComplex =>
      rfl
  | homologyStable =>
      rfl
  | ricciFlow =>
      rfl
  | ricciSurgery =>
      rfl
  | extinctionTopology =>
      rfl
  | infiniteTime =>
      rfl
  | choice =>
      rfl

def coveredClassical (Γ : Gamma) (f : ClassicalSmoothAnalyticFunction)
    (h : LogicalFoundation.classical ≤ Γ.logicalFoundation) :
    CoveredByExtendedEMLAt Γ (DeclaredSurfaceObject.classical f) :=
  CoveredByExtendedEMLAt.intro (classicalWitness f)
    (classicalWitness f).witnessKind (RepresentsDeclaredAt.classical Γ f) h

def coveredMeasurable (Γ : Gamma) (f : CertifiedMeasurableFunction)
    (h : LogicalFoundation.measurable ≤ Γ.logicalFoundation) :
    CoveredByExtendedEMLAt Γ (DeclaredSurfaceObject.measurable f) :=
  CoveredByExtendedEMLAt.intro (ExtendedEML.measurableAtom f)
    CoverageWitnessKind.measurableAtom (RepresentsDeclaredAt.measurable Γ f) h

def coveredFractal (Γ : Gamma) (f : CertifiedNowhereDifferentiableFractalFunction)
    (h : LogicalFoundation.fractal ≤ Γ.logicalFoundation) :
    CoveredByExtendedEMLAt Γ (DeclaredSurfaceObject.fractal f) :=
  CoveredByExtendedEMLAt.intro (ExtendedEML.fractalWitness f)
    CoverageWitnessKind.certifiedFractal (RepresentsDeclaredAt.fractal Γ f) h

def coveredZetaMobiusFractal (Γ : Gamma) (f : ZetaMobiusFractalFunction)
    (h : LogicalFoundation.fractal ≤ Γ.logicalFoundation) :
    CoveredByExtendedEMLAt Γ (DeclaredSurfaceObject.zetaMobiusFractal f) :=
  CoveredByExtendedEMLAt.intro (ExtendedEML.zetaMobiusFractalWitness f)
    CoverageWitnessKind.zetaMobiusFractal (RepresentsDeclaredAt.zetaMobiusFractal Γ f) h

theorem declaredSurfaceObject_covered_by_extendedEML_at_sufficientGamma :
    ∀ Γ, Gamma.Valid Γ ->
      ∀ f : DeclaredSurfaceObject,
        f.requiredFoundation ≤ Γ.logicalFoundation ->
          CoveredByExtendedEMLAt Γ f := by
  intro Γ _ f hfoundation
  cases f with
  | finiteEML f =>
      exact CoveredByExtendedEMLAt.intro (ExtendedEML.finite emlOneTree)
        CoverageWitnessKind.finiteEMLTree (RepresentsDeclaredAt.finiteEML Γ f) hfoundation
  | matrix M =>
      exact CoveredByExtendedEMLAt.intro (ExtendedEML.binaryMatrixWitness M)
        CoverageWitnessKind.binaryMatrix (RepresentsDeclaredAt.matrix Γ M) hfoundation
  | bijectiveFlow F =>
      exact CoveredByExtendedEMLAt.intro (ExtendedEML.bijectiveFlowWitness F)
        CoverageWitnessKind.bijectiveFlow (RepresentsDeclaredAt.bijectiveFlow Γ F) hfoundation
  | classical f =>
      exact coveredClassical Γ f hfoundation
  | measurable f =>
      exact coveredMeasurable Γ f hfoundation
  | fractal f =>
      exact coveredFractal Γ f hfoundation
  | zetaMobiusFractal f =>
      exact coveredZetaMobiusFractal Γ f hfoundation
  | oracle f =>
      exact CoveredByExtendedEMLAt.intro (ExtendedEML.oracleWitness f)
        CoverageWitnessKind.oracle (RepresentsDeclaredAt.oracle Γ f) hfoundation
  | heatFlow f =>
      exact CoveredByExtendedEMLAt.intro (ExtendedEML.heatFlowWitness f)
        CoverageWitnessKind.heatFlow (RepresentsDeclaredAt.heatFlow Γ f) hfoundation
  | heatAveraging f =>
      exact CoveredByExtendedEMLAt.intro (ExtendedEML.heatAveragingWitness f)
        CoverageWitnessKind.heatAveraging (RepresentsDeclaredAt.heatAveraging Γ f) hfoundation
  | chainComplex f =>
      exact CoveredByExtendedEMLAt.intro (ExtendedEML.chainComplexWitness f)
        CoverageWitnessKind.chainComplex (RepresentsDeclaredAt.chainComplex Γ f) hfoundation
  | homologyStable f =>
      exact CoveredByExtendedEMLAt.intro (ExtendedEML.homologyStabilityWitness f)
        CoverageWitnessKind.homologyStability (RepresentsDeclaredAt.homologyStable Γ f) hfoundation
  | ricciFlow f =>
      exact CoveredByExtendedEMLAt.intro (ExtendedEML.ricciFlowWitness f)
        CoverageWitnessKind.ricciFlow (RepresentsDeclaredAt.ricciFlow Γ f) hfoundation
  | ricciSurgery f =>
      exact CoveredByExtendedEMLAt.intro (ExtendedEML.ricciSurgeryWitness f)
        CoverageWitnessKind.ricciSurgery (RepresentsDeclaredAt.ricciSurgery Γ f) hfoundation
  | extinctionTopology f =>
      exact CoveredByExtendedEMLAt.intro (ExtendedEML.extinctionTopologyWitness f)
        CoverageWitnessKind.extinctionTopology (RepresentsDeclaredAt.extinctionTopology Γ f)
        hfoundation
  | infiniteTime f =>
      exact CoveredByExtendedEMLAt.intro (ExtendedEML.infiniteTimeWitness f)
        CoverageWitnessKind.infiniteTime (RepresentsDeclaredAt.infiniteTime Γ f) hfoundation
  | choice f =>
      exact CoveredByExtendedEMLAt.intro (ExtendedEML.choiceWitness f)
        CoverageWitnessKind.choice (RepresentsDeclaredAt.choice Γ f) hfoundation

theorem matrix_covered_at_constructive
    (M : BinaryLogicMatrix rows cols) :
    CoveredByExtendedEMLAt Gamma.constructive
      (DeclaredSurfaceObject.matrix M) := by
  exact declaredSurfaceObject_covered_by_extendedEML_at_sufficientGamma
    Gamma.constructive Gamma.gamma_structural_valid
    (DeclaredSurfaceObject.matrix M)
    (LogicalFoundation.foundation_refl LogicalFoundation.constructive)

theorem bijectiveFlow_covered_at_bijectiveGamma
    (F : BinaryLogicMatrixFlow rows cols) :
    CoveredByExtendedEMLAt Gamma.bijectiveFlow
      (DeclaredSurfaceObject.bijectiveFlow F) := by
  exact declaredSurfaceObject_covered_by_extendedEML_at_sufficientGamma
    Gamma.bijectiveFlow trivial (DeclaredSurfaceObject.bijectiveFlow F)
    (LogicalFoundation.foundation_refl LogicalFoundation.bijectiveFiniteFlow)

theorem heatAveragingGamma_cannot_cover_bijectiveFlow_claim
    (F : BinaryLogicMatrixFlow rows cols) :
    ¬ LogicalFoundation.bijectiveFiniteFlow ≤ Gamma.heatAveraging.logicalFoundation ->
      ¬ CoveredByExtendedEMLAt Gamma.heatAveraging
        (DeclaredSurfaceObject.bijectiveFlow F) := by
  intro h
  exact insufficient_foundation_cannot_cover h

end Surface.Legacy
```
