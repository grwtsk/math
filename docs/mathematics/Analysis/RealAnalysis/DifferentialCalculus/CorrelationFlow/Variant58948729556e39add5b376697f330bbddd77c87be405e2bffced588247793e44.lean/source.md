# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CorrelationFlow.Variant58948729556e39add5b376697f330bbddd77c87be405e2bffced588247793e44

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f72744b754f359171a8e33954b3c731b8d883c4` · SHA-256 `138cca0019766f93504b6f43f09e5135fdc027103b22ea4c7e6d3481a2816398`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CorrelationCompatibleFlow.Variant6f2de65a24512e5b67e9bc92660d7f399682e5d0a0eaf23ae56d69653e8377c2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6f2de65a24512e5b67e9bc92660d7f399682e5d0a0eaf23ae56d69653e8377c2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.CorrelationCompatibleFlow.Variant6f2de65a24512e5b67e9bc92660d7f399682e5d0a0eaf23ae56d69653e8377c2","mathematical_subject":"Analysis.Calculus","original_sha256":"6f2de65a24512e5b67e9bc92660d7f399682e5d0a0eaf23ae56d69653e8377c2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/TypeII/CorrelationFlow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Mathlib.Analysis.InnerProductSpace.Adjoint
public import Mathlib.Analysis.InnerProductSpace.Calculus
public import Mathlib.Analysis.Calculus.Deriv.Add
public import Mathlib.Analysis.Calculus.Deriv.Mul
public import Mathlib.Analysis.Calculus.MeanValue
import Mathlib.Tactic

/-!
# Correlation-compatible finite incidence flow

This module supplies the analytic coupling missing from a metric-only
interaction flow.  The evolving left vector, right vector, and incidence
operator satisfy compatible differential equations.  Consequently the
derivative of their scalar correlation is exactly the defect pairing.

The finite process is called `IncidenceCurvatureFlow`.  No smooth Ricci-flow,
DeTurck, manifold-existence, or surgery theorem is asserted here.  A global
bound on the defect is a separate proposition, not a structural field.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CorrelationCompatibleFlow.Variant6f2de65a24512e5b67e9bc92660d7f399682e5d0a0eaf23ae56d69653e8377c2

public section

namespace Surface.Core.TypeII

noncomputable section

open scoped InnerProduct

variable {Left Right : Type*}
variable [NormedAddCommGroup Left] [InnerProductSpace ℂ Left]
variable [NormedAddCommGroup Right] [InnerProductSpace ℂ Right]
variable [CompleteSpace Left]

/-- The operator derivative prescribed by the compatibility equation. -/
@[expose]
def compatibleIncidenceDerivative
    (leftGenerator : Left →L[ℂ] Left)
    (rightGenerator : Right →L[ℂ] Right)
    (incidence : Right →L[ℂ] Left)
    (defect : Right →L[ℂ] Left) : Right →L[ℂ] Left :=
  -leftGenerator.adjoint.comp incidence -
    incidence.comp rightGenerator + defect

/-- A finite incidence evolution coupled to its correlation operator.

The flow carries no decay estimate.  It records only the exact local
differential equations and endpoint identification. -/
structure CorrelationCompatibleFlow where
  finalTime : ℝ
  finalTime_pos : 0 < finalTime

  leftEvolution : ℝ → Left
  rightEvolution : ℝ → Right
  incidenceEvolution : ℝ → ℕ → Right →L[ℂ] Left

  leftGenerator : ℝ → Left →L[ℂ] Left
  rightGenerator : ℝ → Right →L[ℂ] Right
  defect : ℝ → ℕ → Right →L[ℂ] Left

  left_equation : ∀ t,
    HasDerivAt leftEvolution
      (leftGenerator t (leftEvolution t)) t
  right_equation : ∀ t,
    HasDerivAt rightEvolution
      (rightGenerator t (rightEvolution t)) t
  incidence_equation : ∀ t x,
    HasDerivAt (fun s ↦ incidenceEvolution s x)
      (compatibleIncidenceDerivative
        (leftGenerator t) (rightGenerator t)
        (incidenceEvolution t x) (defect t x)) t
  /-- Real-parameter product rule for applying the evolving complex-linear
  operator to the evolving right vector.  It is explicit because the
  operator is complex-linear while the time derivative is real-linear. -/
  applied_incidence_equation : ∀ t x,
    HasDerivAt
      (fun s ↦ incidenceEvolution s x (rightEvolution s))
      (compatibleIncidenceDerivative
          (leftGenerator t) (rightGenerator t)
          (incidenceEvolution t x) (defect t x)
          (rightEvolution t) +
        incidenceEvolution t x
          (rightGenerator t (rightEvolution t))) t

/-- The finite curvature label is deliberately abstracted from the analytic
transport law.  A consumer must choose and verify a concrete Forman-,
Ollivier-, or Regge-type curvature separately. -/
structure IncidenceCurvatureFlow extends
    CorrelationCompatibleFlow (Left := Left) (Right := Right) where
  Edge : Type
  edgeFintype : Fintype Edge
  edgeMetric : ℝ → Edge → ℝ
  /-- A fixed, explicitly chosen finite curvature functional (for example a
  Forman-, Ollivier-, or Regge-type rule). -/
  curvatureFunctional : (Edge → ℝ) → Edge → ℝ
  curvature : ℝ → Edge → ℝ
  curvature_from_metric : ∀ t edge,
    curvature t edge = curvatureFunctional (edgeMetric t) edge
  metric_equation : ∀ t edge,
    HasDerivAt (fun s ↦ edgeMetric s edge) (-2 * curvature t edge) t
  metric_positive : ∀ t edge, 0 ≤ t → t ≤ finalTime → 0 < edgeMetric t edge

/-! The exact local correlation transport identity.

All generator terms cancel because the incidence derivative contains the
two adjoint transport terms.  Only the explicitly supplied defect remains.
-/
@[surface_novel, surface_published]
theorem correlation_derivative_eq_defect
    (flow : CorrelationCompatibleFlow (Left := Left) (Right := Right))
    (t : ℝ) (x : ℕ) :
    HasDerivAt
      (fun s ↦ inner ℂ (flow.leftEvolution s)
        (flow.incidenceEvolution s x (flow.rightEvolution s)))
      (inner ℂ (flow.leftEvolution t)
        (flow.defect t x (flow.rightEvolution t))) t := by
  have hinner := (flow.left_equation t).inner ℂ
    (flow.applied_incidence_equation t x)
  apply hinner.congr_deriv
  simp only [compatibleIncidenceDerivative, add_apply, sub_apply, neg_apply,
    ContinuousLinearMap.comp_apply, inner_add_right, inner_sub_right,
    inner_neg_right]
  rw [ContinuousLinearMap.adjoint_inner_right]
  abel

/-! ## Full signed correlation, including factorization residual -/

/-- A correlation-compatible flow together with the scalar residual pairing
from an exact bilinear packet factorization.

The residual is carried as a differentiable scalar because it is the already
contracted quantity `matrixPairing leftCoefficient residualMatrix
rightCoefficient`.  No estimate on it or on its derivative is part of this
structure. -/
structure ResidualAwareCorrelationFlow extends
    CorrelationCompatibleFlow (Left := Left) (Right := Right) where
  residualPairing : ℝ → ℕ → ℂ
  residualDerivative : ℝ → ℕ → ℂ
  residual_equation : ∀ t x,
    HasDerivAt (fun s ↦ residualPairing s x)
      (residualDerivative t x) t

/-- The full signed Type II correlation transported by the flow: the
negative packet incidence pairing minus the exact factorization residual. -/
@[expose]
def ResidualAwareCorrelationFlow.fullSignedCorrelation
    (flow : ResidualAwareCorrelationFlow (Left := Left) (Right := Right))
    (t : ℝ) (x : ℕ) : ℂ :=
  -inner ℂ (flow.leftEvolution t)
      (flow.incidenceEvolution t x (flow.rightEvolution t)) -
    flow.residualPairing t x

/-- The derivative prescribed by the local transport identity: only the
incidence defect and the differentiated residual remain after the generator
terms cancel. -/
@[expose]
def ResidualAwareCorrelationFlow.fullSignedDerivative
    (flow : ResidualAwareCorrelationFlow (Left := Left) (Right := Right))
    (t : ℝ) (x : ℕ) : ℂ :=
  -inner ℂ (flow.leftEvolution t)
      (flow.defect t x (flow.rightEvolution t)) -
    flow.residualDerivative t x

/-- Residual-aware signed correlation transport.

This theorem is an exact product-rule calculation.  It adds no defect,
residual, terminal, or maximal bound assumption. -/
@[surface_novel, surface_published]
theorem fullSignedCorrelation_derivative
    (flow : ResidualAwareCorrelationFlow (Left := Left) (Right := Right))
    (t : ℝ) (x : ℕ) :
    HasDerivAt (fun s ↦ flow.fullSignedCorrelation s x)
      (flow.fullSignedDerivative t x) t := by
  have hpacket := correlation_derivative_eq_defect
    flow.toCorrelationCompatibleFlow t x
  have hnegative :
      HasDerivAt
        (fun s ↦ -inner ℂ (flow.leftEvolution s)
          (flow.incidenceEvolution s x (flow.rightEvolution s)))
        (-inner ℂ (flow.leftEvolution t)
          (flow.defect t x (flow.rightEvolution t))) t :=
    HasDerivAt.neg hpacket
  have hfull := HasDerivAt.sub hnegative (flow.residual_equation t x)
  have hfunction :
      (fun s ↦ flow.fullSignedCorrelation s x) =ᶠ[nhds t]
        ((-fun s ↦ inner ℂ (flow.leftEvolution s)
          (flow.incidenceEvolution s x (flow.rightEvolution s))) -
          fun s ↦ flow.residualPairing s x) := by
    filter_upwards with s
    rfl
  have htransported := hfull.congr_of_eventuallyEq hfunction
  apply htransported.congr_deriv
  rfl

/-- A bound for the derivative of the complete signed correlation, including
the residual derivative.  It is an independent analytic proposition rather
than data used to construct a flow. -/
@[expose]
def FullSignedDefectBudget
    (flow : ResidualAwareCorrelationFlow (Left := Left) (Right := Right))
    (budget : ℝ) : Prop :=
  0 ≤ budget ∧ ∀ t x, 0 ≤ t → t ≤ flow.finalTime →
    ‖flow.fullSignedDerivative t x‖ ≤ budget

/-- The endpoint change is derived from the exact differential equation and
a derivative budget by the Banach-valued mean-value inequality. -/
@[surface_novel, surface_published]
theorem ResidualAwareCorrelationFlow.endpoint_change_norm_le
    (flow : ResidualAwareCorrelationFlow (Left := Left) (Right := Right))
    {budget : ℝ} (hbudget : FullSignedDefectBudget flow budget) (x : ℕ) :
    ‖flow.fullSignedCorrelation flow.finalTime x -
        flow.fullSignedCorrelation 0 x‖ ≤ budget * flow.finalTime := by
  have hbound := norm_image_sub_le_of_norm_deriv_le_segment'
    (a := (0 : ℝ)) (b := flow.finalTime)
    (f := fun t ↦ flow.fullSignedCorrelation t x)
    (f' := fun t ↦ flow.fullSignedDerivative t x)
    (C := budget)
    (fun t _ ↦ (fullSignedCorrelation_derivative flow t x).hasDerivWithinAt)
    (fun t ht ↦ hbudget.2 t x ht.1 (le_of_lt ht.2))
    flow.finalTime
    ⟨le_of_lt flow.finalTime_pos, le_rfl⟩
  simpa using hbound

/-- A global defect estimate is an independent analytic obligation.  It is
not bundled into `CorrelationCompatibleFlow`. -/
@[expose]
def FlowDefectBudget
    (flow : CorrelationCompatibleFlow (Left := Left) (Right := Right))
    (budget : ℝ) : Prop :=
  0 ≤ budget ∧ ∀ t x, 0 ≤ t → t ≤ flow.finalTime →
    ‖inner ℂ (flow.leftEvolution t)
      (flow.defect t x (flow.rightEvolution t))‖ ≤ budget

end

end Surface.Core.TypeII
```
