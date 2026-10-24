# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Coupling.Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a299685ac41e75d56f3163c9aeb93e987389058` · SHA-256 `3319262cdc66bb3157cda7d8db1b4d725ddd332a87ca79843f00fc7ba076488b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CouplingWeightState.Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CouplingWeightState.Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"e2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/WorldModel/Coupling.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Algebra.BigOperators.Field
import Surface.ContinuousAssurance.Transformation
import Surface.ContinuousAssurance.WorldModel.ActiveRegion

/-!
# Bounded admissible coupling and sub-diffusive displacement

Coupling weights live on an exact finite active graph.  Nonnegativity, row
normalization, upper bounds, and support legality are fields of the accepted
state, so a raw (including neural) proposal cannot mutate accepted weights.

The displacement theorem is deliberately conditional on an explicit finite
`SqrtStepBoundCertificate`.  This certificate contains the cumulative
inequality for the selected finite horizon.  The theorem proves a sublinear
displacement bound; it does not claim convergence.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CouplingWeightState.Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978

open scoped BigOperators

namespace Surface.ContinuousAssurance.WorldModel

/-- A finite row-stochastic coupling state over an exact active model set. -/
structure CouplingWeightState (Model : Type*) [Fintype Model] [DecidableEq Model] where
  activeModels : Finset Model
  activeRegionIdentity : ArtifactIdentity
  policyIdentity : ArtifactIdentity
  maximumWeight : Model → Model → ℝ
  admittedCoupling : Model → Model → Prop
  weight : Model → Model → ℝ
  nonnegative : ∀ i j, 0 ≤ weight i j
  upperBound : ∀ i j, weight i j ≤ maximumWeight i j
  normalized : ∀ i ∈ activeModels, ∑ j ∈ activeModels, weight i j = 1
  supportAllowed : ∀ i j, weight i j ≠ 0 → admittedCoupling i j

namespace CouplingWeightState

variable {Model : Type*} [Fintype Model] [DecidableEq Model]

theorem weight_nonnegative
    (state : CouplingWeightState Model)
    (i j : Model) :
    0 ≤ state.weight i j :=
  state.nonnegative i j

theorem weight_le_maximum
    (state : CouplingWeightState Model)
    (i j : Model) :
    state.weight i j ≤ state.maximumWeight i j :=
  state.upperBound i j

theorem row_normalized
    (state : CouplingWeightState Model)
    (i : Model)
    (active : i ∈ state.activeModels) :
    ∑ j ∈ state.activeModels, state.weight i j = 1 :=
  state.normalized i active

/-- Prohibited edges carry exactly zero weight. -/
theorem prohibited_edge_zero
    (state : CouplingWeightState Model)
    (i j : Model)
    (prohibited : ¬ state.admittedCoupling i j) :
    state.weight i j = 0 := by
  by_contra nonzero
  exact prohibited (state.supportAllowed i j nonzero)

end CouplingWeightState

/-- Coupling weights tied to the exact typed active region. -/
structure RegistryCouplingWeightState
    (registry : WorldModelRegistry)
    (region : ActiveModelRegion registry) where
  weights : CouplingWeightState registry.ModelId
  exactActiveModels : weights.activeModels = region.activeModels
  exactAttentionIdentity :
    weights.activeRegionIdentity = region.attentionIdentity

/-- Typed region coupling is row-normalized over exactly its active set. -/
theorem RegistryCouplingWeightState.row_normalized
    {registry : WorldModelRegistry}
    {region : ActiveModelRegion registry}
    (state : RegistryCouplingWeightState registry region)
    (i : registry.ModelId)
    (active : i ∈ region.activeModels) :
    ∑ j ∈ region.activeModels, state.weights.weight i j = 1 := by
  rw [← state.exactActiveModels] at active ⊢
  exact state.weights.normalized i active

/-- A raw weight table has no admissibility or authority fields. -/
abbrev RawWeightState (Model : Type*) := Model → Model → ℝ

/-- A proposed table is advisory data and cannot itself inhabit accepted state. -/
structure ProposedCouplingWeights (Model : Type*) where
  identity : ArtifactIdentity
  proposed : RawWeightState Model
  proposerAuthority : AuthorityClass

/-- Supremum-style distance used by the abstract projection contract. -/
structure WeightDistance (Model : Type*) where
  distance : RawWeightState Model → RawWeightState Model → ℝ
  nonnegative : ∀ x y, 0 ≤ distance x y
  self : ∀ x, distance x x = 0
  triangle : ∀ x y z, distance x z ≤ distance x y + distance y z

/-- An admissible projection capability, with fixed-point and nonexpansive laws. -/
structure AdmissibleProjection
    (Model : Type*) [Fintype Model] [DecidableEq Model]
    (template : CouplingWeightState Model)
    (metric : WeightDistance Model) where
  project : RawWeightState Model → CouplingWeightState Model
  sameActive : ∀ raw, (project raw).activeModels = template.activeModels
  sameRegion : ∀ raw, (project raw).activeRegionIdentity = template.activeRegionIdentity
  samePolicy : ∀ raw, (project raw).policyIdentity = template.policyIdentity
  fixedOnAdmissible : ∀ accepted, project accepted.weight = accepted
  nonexpansive :
    ∀ left right,
      metric.distance (project left).weight (project right).weight ≤
        metric.distance left right

/-- Projection always produces an admissible coupling state by construction. -/
theorem projection_preserves_admissibility
    {Model : Type*} [Fintype Model] [DecidableEq Model]
    {template : CouplingWeightState Model}
    {metric : WeightDistance Model}
    (projection : AdmissibleProjection Model template metric)
    (raw : RawWeightState Model) :
    (∀ i j, 0 ≤ (projection.project raw).weight i j) ∧
      (∀ i ∈ (projection.project raw).activeModels,
        ∑ j ∈ (projection.project raw).activeModels,
          (projection.project raw).weight i j = 1) :=
  ⟨(projection.project raw).nonnegative,
    (projection.project raw).normalized⟩

/-- The projection cannot enlarge the declared weight-table distance. -/
theorem projection_nonexpansive
    {Model : Type*} [Fintype Model] [DecidableEq Model]
    {template : CouplingWeightState Model}
    {metric : WeightDistance Model}
    (projection : AdmissibleProjection Model template metric)
    (left right : RawWeightState Model) :
    metric.distance (projection.project left).weight (projection.project right).weight ≤
      metric.distance left right :=
  projection.nonexpansive left right

/-- A finite checked witness of the selected square-root cumulative step law. -/
structure SqrtStepBoundCertificate where
  horizon : Nat
  cumulativeStep : Nat → ℝ
  cumulativeStep_nonnegative : ∀ t, 0 ≤ cumulativeStep t
  cumulativeStep_bound :
    ∀ t, t ≤ horizon → cumulativeStep t ≤ 2 * Real.sqrt t

/-- One inverse-square-root step is bounded by a telescoping square-root increment. -/
theorem inv_sqrt_step_le_telescoping (s : Nat) :
    1 / Real.sqrt (s + 1 : ℝ) ≤
      2 * (Real.sqrt (s + 1 : ℝ) - Real.sqrt (s : ℝ)) := by
  have hs_nonneg : (0 : ℝ) ≤ s := by positivity
  have hs1_pos : (0 : ℝ) < s + 1 := by positivity
  have hs1_nonneg : (0 : ℝ) ≤ s + 1 := hs1_pos.le
  have hsqrt_pos : 0 < Real.sqrt (s + 1 : ℝ) := Real.sqrt_pos.2 hs1_pos
  have hsqrt_mono : Real.sqrt (s : ℝ) ≤ Real.sqrt (s + 1 : ℝ) := by
    exact Real.sqrt_le_sqrt (by norm_num)
  have hdiff_nonneg :
      0 ≤ Real.sqrt (s + 1 : ℝ) - Real.sqrt (s : ℝ) :=
    sub_nonneg.2 hsqrt_mono
  have hsquare : Real.sqrt (s : ℝ) ^ 2 = s :=
    Real.sq_sqrt hs_nonneg
  have hsquare1 : Real.sqrt (s + 1 : ℝ) ^ 2 = s + 1 :=
    Real.sq_sqrt hs1_nonneg
  have hproduct :
      (Real.sqrt (s + 1 : ℝ) - Real.sqrt (s : ℝ)) *
        (Real.sqrt (s + 1 : ℝ) + Real.sqrt (s : ℝ)) = 1 := by
    nlinarith
  rw [div_le_iff₀ hsqrt_pos]
  calc
    1 =
        (Real.sqrt (s + 1 : ℝ) - Real.sqrt (s : ℝ)) *
          (Real.sqrt (s + 1 : ℝ) + Real.sqrt (s : ℝ)) := hproduct.symm
    _ ≤ (Real.sqrt (s + 1 : ℝ) - Real.sqrt (s : ℝ)) *
          (2 * Real.sqrt (s + 1 : ℝ)) := by
      apply mul_le_mul_of_nonneg_left _ hdiff_nonneg
      linarith
    _ = 2 * (Real.sqrt (s + 1 : ℝ) - Real.sqrt (s : ℝ)) *
          Real.sqrt (s + 1 : ℝ) := by ring

/-- The exact finite cumulative inverse-square-root bound. -/
theorem cumulative_inv_sqrt_le (t : Nat) :
    (∑ s ∈ Finset.range t, 1 / Real.sqrt (s + 1 : ℝ)) ≤
      2 * Real.sqrt (t : ℝ) := by
  calc
    (∑ s ∈ Finset.range t, 1 / Real.sqrt (s + 1 : ℝ))
        ≤ ∑ s ∈ Finset.range t,
            2 * (Real.sqrt (s + 1 : ℝ) - Real.sqrt (s : ℝ)) := by
      exact Finset.sum_le_sum fun s _ ↦ inv_sqrt_step_le_telescoping s
    _ = 2 * Real.sqrt (t : ℝ) := by
      induction t with
      | zero => simp
      | succ t ih =>
          rw [Finset.sum_range_succ]
          simp only [Nat.cast_add, Nat.cast_one]
          rw [ih]
          ring

/-- Canonical finite-horizon certificate for `ηₜ = η₀ / √(t+1)`. -/
noncomputable def inverseSqrtStepSchedule
    (horizon : Nat) : SqrtStepBoundCertificate where
  horizon := horizon
  cumulativeStep := fun t ↦
    ∑ s ∈ Finset.range t, 1 / Real.sqrt (s + 1 : ℝ)
  cumulativeStep_nonnegative := by
    intro t
    exact Finset.sum_nonneg fun s _ ↦
      div_nonneg (by norm_num) (Real.sqrt_nonneg _)
  cumulativeStep_bound := by
    intro t _
    exact cumulative_inv_sqrt_le t

/-- A bounded trajectory whose telescoping estimate is made explicit. -/
structure SubdiffusiveTrajectory
    (State : Type*)
    (distance : State → State → ℝ)
    (schedule : SqrtStepBoundCertificate) where
  state : Nat → State
  gradientBound : ℝ
  initialStep : ℝ
  gradientBound_nonnegative : 0 ≤ gradientBound
  initialStep_nonnegative : 0 ≤ initialStep
  displacement_le_cumulative :
    ∀ t, t ≤ schedule.horizon →
      distance (state t) (state 0) ≤
        gradientBound * initialStep * schedule.cumulativeStep t

/--
Finite-horizon sub-diffusive displacement.  This is a bound, not a convergence
result, and its cumulative square-root inequality is an explicit certificate.
-/
theorem subdiffusive_displacement_le
    {State : Type*}
    {distance : State → State → ℝ}
    {schedule : SqrtStepBoundCertificate}
    (trajectory : SubdiffusiveTrajectory State distance schedule)
    {t : Nat}
    (withinHorizon : t ≤ schedule.horizon) :
    distance (trajectory.state t) (trajectory.state 0) ≤
      2 * trajectory.gradientBound * trajectory.initialStep * Real.sqrt t := by
  calc
    distance (trajectory.state t) (trajectory.state 0)
        ≤ trajectory.gradientBound * trajectory.initialStep * schedule.cumulativeStep t :=
      trajectory.displacement_le_cumulative t withinHorizon
    _ ≤ trajectory.gradientBound * trajectory.initialStep * (2 * Real.sqrt t) := by
      exact mul_le_mul_of_nonneg_left
        (schedule.cumulativeStep_bound t withinHorizon)
        (mul_nonneg trajectory.gradientBound_nonnegative
          trajectory.initialStep_nonnegative)
    _ = 2 * trajectory.gradientBound * trajectory.initialStep * Real.sqrt t := by ring

/-!
## Derived projected-gradient trajectory

The generic `SubdiffusiveTrajectory` above is useful for importing an existing
telescoping certificate.  The following stronger interface derives that
certificate from the selected update rule, a nonexpansive projection, and the
gradient bound, so the prototype theorem is not merely a restatement of its
conclusion.
-/

/-- Finite projected updates `wₛ₊₁ = Π(wₛ - ηₛ Gₛ)` in a real normed space. -/
structure ProjectedGradientTrajectory
    (State : Type*) [NormedAddCommGroup State] [NormedSpace ℝ State] where
  horizon : Nat
  state : Nat → State
  gradient : Nat → State
  project : State → State
  gradientBound : ℝ
  initialStep : ℝ
  gradientBound_nonnegative : 0 ≤ gradientBound
  initialStep_nonnegative : 0 ≤ initialStep
  gradient_norm_le : ∀ s, s < horizon → ‖gradient s‖ ≤ gradientBound
  project_nonexpansive : ∀ left right,
    dist (project left) (project right) ≤ dist left right
  state_admissible : ∀ s, s ≤ horizon → project (state s) = state s
  update : ∀ s, s < horizon →
    state (s + 1) = project
      (state s - (initialStep / Real.sqrt (s + 1 : ℝ)) • gradient s)

namespace ProjectedGradientTrajectory

variable {State : Type*} [NormedAddCommGroup State] [NormedSpace ℝ State]

/-- One projected update moves by at most the scheduled gradient budget. -/
theorem one_step_le
    (trajectory : ProjectedGradientTrajectory State)
    {s : Nat} (within : s < trajectory.horizon) :
    dist (trajectory.state (s + 1)) (trajectory.state s) ≤
      trajectory.gradientBound * trajectory.initialStep /
        Real.sqrt (s + 1 : ℝ) := by
  have hsqrt_nonneg : 0 ≤ Real.sqrt (s + 1 : ℝ) := Real.sqrt_nonneg _
  have hsqrt_pos : 0 < Real.sqrt (s + 1 : ℝ) := by positivity
  have hstep_nonneg :
      0 ≤ trajectory.initialStep / Real.sqrt (s + 1 : ℝ) :=
    div_nonneg trajectory.initialStep_nonnegative hsqrt_nonneg
  rw [trajectory.update s within]
  have hadmissible :=
    trajectory.state_admissible s (Nat.le_of_lt within)
  calc
    dist (trajectory.project
        (trajectory.state s -
          (trajectory.initialStep / Real.sqrt (s + 1 : ℝ)) •
            trajectory.gradient s))
        (trajectory.state s)
        = dist (trajectory.project
            (trajectory.state s -
              (trajectory.initialStep / Real.sqrt (s + 1 : ℝ)) •
                trajectory.gradient s))
            (trajectory.project (trajectory.state s)) := by
          rw [hadmissible]
    _
        ≤ dist
          (trajectory.state s -
            (trajectory.initialStep / Real.sqrt (s + 1 : ℝ)) •
              trajectory.gradient s)
          (trajectory.state s) :=
      trajectory.project_nonexpansive _ _
    _ = (trajectory.initialStep / Real.sqrt (s + 1 : ℝ)) *
          ‖trajectory.gradient s‖ := by
      rw [dist_eq_norm]
      have :
          trajectory.state s -
              (trajectory.initialStep / Real.sqrt (s + 1 : ℝ)) •
                trajectory.gradient s -
            trajectory.state s =
          -((trajectory.initialStep / Real.sqrt (s + 1 : ℝ)) •
            trajectory.gradient s) := by abel
      rw [this, norm_neg, norm_smul, Real.norm_eq_abs,
        abs_of_nonneg hstep_nonneg]
    _ ≤ (trajectory.initialStep / Real.sqrt (s + 1 : ℝ)) *
          trajectory.gradientBound := by
      exact mul_le_mul_of_nonneg_left
        (trajectory.gradient_norm_le s within) hstep_nonneg
    _ = trajectory.gradientBound * trajectory.initialStep /
          Real.sqrt (s + 1 : ℝ) := by
      field_simp

/-- Telescoping the one-step estimates yields the cumulative scheduled bound. -/
theorem displacement_le_cumulative
    (trajectory : ProjectedGradientTrajectory State)
    {t : Nat} (within : t ≤ trajectory.horizon) :
    dist (trajectory.state t) (trajectory.state 0) ≤
      trajectory.gradientBound * trajectory.initialStep *
        (∑ s ∈ Finset.range t, 1 / Real.sqrt (s + 1 : ℝ)) := by
  induction t with
  | zero => simp
  | succ t ih =>
      have ht : t < trajectory.horizon := Nat.lt_of_succ_le within
      have ht_le : t ≤ trajectory.horizon := Nat.le_trans (Nat.le_succ t) within
      calc
        dist (trajectory.state (t + 1)) (trajectory.state 0)
            ≤ dist (trajectory.state (t + 1)) (trajectory.state t) +
                dist (trajectory.state t) (trajectory.state 0) :=
          dist_triangle _ _ _
        _ ≤ trajectory.gradientBound * trajectory.initialStep /
              Real.sqrt (t + 1 : ℝ) +
            trajectory.gradientBound * trajectory.initialStep *
              (∑ s ∈ Finset.range t, 1 / Real.sqrt (s + 1 : ℝ)) :=
          add_le_add (trajectory.one_step_le ht) (ih ht_le)
        _ = trajectory.gradientBound * trajectory.initialStep *
              (∑ s ∈ Finset.range (t + 1),
                1 / Real.sqrt (s + 1 : ℝ)) := by
          rw [Finset.sum_range_succ]
          ring

/-- The requested `2 L η₀ √t` law follows from the actual projected update. -/
theorem subdiffusive_displacement_le_of_projected_updates
    (trajectory : ProjectedGradientTrajectory State)
    {t : Nat} (within : t ≤ trajectory.horizon) :
    dist (trajectory.state t) (trajectory.state 0) ≤
      2 * trajectory.gradientBound * trajectory.initialStep * Real.sqrt t := by
  calc
    dist (trajectory.state t) (trajectory.state 0)
        ≤ trajectory.gradientBound * trajectory.initialStep *
            (∑ s ∈ Finset.range t, 1 / Real.sqrt (s + 1 : ℝ)) :=
      trajectory.displacement_le_cumulative within
    _ ≤ trajectory.gradientBound * trajectory.initialStep *
          (2 * Real.sqrt t) := by
      exact mul_le_mul_of_nonneg_left (cumulative_inv_sqrt_le t)
        (mul_nonneg trajectory.gradientBound_nonnegative
          trajectory.initialStep_nonnegative)
    _ = 2 * trajectory.gradientBound * trajectory.initialStep * Real.sqrt t := by
      ring

end ProjectedGradientTrajectory

/-- A coupling certificate is pinned to both active graph and policy. -/
structure CouplingCertificate where
  activeRegionIdentity : ArtifactIdentity
  policyIdentity : ArtifactIdentity
  evidence : ArtifactIdentity

def CouplingCertificate.ValidFor
    {Model : Type*} [Fintype Model] [DecidableEq Model]
    (certificate : CouplingCertificate)
    (state : CouplingWeightState Model) : Prop :=
  certificate.activeRegionIdentity = state.activeRegionIdentity ∧
    certificate.policyIdentity = state.policyIdentity

theorem changed_graph_rejects_coupling_certificate
    {Model : Type*} [Fintype Model] [DecidableEq Model]
    (certificate : CouplingCertificate)
    (state : CouplingWeightState Model)
    (changed : certificate.activeRegionIdentity ≠ state.activeRegionIdentity) :
    ¬ certificate.ValidFor state := by
  intro valid
  exact changed valid.1

theorem changed_policy_rejects_coupling_certificate
    {Model : Type*} [Fintype Model] [DecidableEq Model]
    (certificate : CouplingCertificate)
    (state : CouplingWeightState Model)
    (changed : certificate.policyIdentity ≠ state.policyIdentity) :
    ¬ certificate.ValidFor state := by
  intro valid
  exact changed valid.2

end Surface.ContinuousAssurance.WorldModel
```
