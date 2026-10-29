-- corpus-organization-transform:v1
-- Mathematical subject: Topology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.IsLyapunovStable.Variant618b3dddf41f01d10175dcc900d858699be8c9208d7bccb8a54c914322de1ea6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"618b3dddf41f01d10175dcc900d858699be8c9208d7bccb8a54c914322de1ea6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.IsLyapunovStable.Variant618b3dddf41f01d10175dcc900d858699be8c9208d7bccb8a54c914322de1ea6","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"618b3dddf41f01d10175dcc900d858699be8c9208d7bccb8a54c914322de1ea6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Operational/Stability.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Topology.MetricSpace.Contracting
import Mathematics.Operational.DiscreteFixedPoint

/-!
# Operator-relative metric stability

Exact fixedness, Lyapunov stability, attraction, asymptotic stability, and
exponential stability are distinct predicates.  Every predicate is indexed by
the same invariant-domain operator and exact fixed point.
-/


namespace GRWTSK.Topology.IsLyapunovStable.Variant618b3dddf41f01d10175dcc900d858699be8c9208d7bccb8a54c914322de1ea6

namespace Mathematics.Operational

open Filter
open scoped NNReal

universe u v

variable {State : Type u}

/-- Every sufficiently close state stays close under every finite iterate. -/
def IsLyapunovStable
    [PseudoMetricSpace State]
    (operator : VersionedOperator State)
    (fixedPoint : CertifiedFixedPoint operator) : Prop :=
  ∀ ε > 0,
    ∃ δ > 0,
      ∀ state : operator.domain,
        dist state fixedPoint.point < δ →
        ∀ iteration : Nat,
          dist ((operator.step^[iteration]) state)
              fixedPoint.point < ε

/-- Every state in some metric neighborhood converges to the fixed point. -/
def IsLocallyAttractive
    [PseudoMetricSpace State]
    (operator : VersionedOperator State)
    (fixedPoint : CertifiedFixedPoint operator) : Prop :=
  ∃ radius > 0,
    ∀ state : operator.domain,
      dist state fixedPoint.point < radius →
      Tendsto
        (fun iteration ↦ (operator.step^[iteration]) state)
        atTop
        (nhds fixedPoint.point)

/-- Stability and attraction are both required. -/
def IsLocallyAsymptoticallyStable
    [PseudoMetricSpace State]
    (operator : VersionedOperator State)
    (fixedPoint : CertifiedFixedPoint operator) : Prop :=
  IsLyapunovStable operator fixedPoint ∧
    IsLocallyAttractive operator fixedPoint

/-- A local geometric convergence estimate with explicit constants. -/
def IsExponentiallyStable
    [PseudoMetricSpace State]
    (operator : VersionedOperator State)
    (fixedPoint : CertifiedFixedPoint operator) : Prop :=
  ∃ bound factor radius : ℝ,
    1 ≤ bound ∧
    0 ≤ factor ∧
    factor < 1 ∧
    0 < radius ∧
    ∀ state : operator.domain,
      dist state fixedPoint.point < radius →
      ∀ iteration : Nat,
        dist ((operator.step^[iteration]) state) fixedPoint.point ≤
          bound * factor ^ iteration * dist state fixedPoint.point

/-- Distance to a nonempty finite exact fixed-point family. -/
noncomputable def fixedFamilyDistance
    [PseudoMetricSpace State]
    {operator : VersionedOperator State}
    (family : CertifiedFixedFamily operator)
    [Nonempty family.Point]
    (state : operator.domain) : ℝ := by
  letI : Fintype family.Point := family.pointFintype
  letI : DecidableEq family.Point := family.pointDecidableEq
  exact
    Finset.univ.inf' Finset.univ_nonempty
      (fun index ↦
        dist state (family.point index).point)

/-- Stability of a finite fixed set, distinct from stability of any member. -/
def IsSetStable
    [PseudoMetricSpace State]
    {operator : VersionedOperator State}
    (family : CertifiedFixedFamily operator)
    [Nonempty family.Point] : Prop :=
  ∀ ε > 0,
    ∃ δ > 0,
      ∀ state : operator.domain,
        fixedFamilyDistance family state < δ →
        ∀ iteration : Nat,
          fixedFamilyDistance family
              ((operator.step^[iteration]) state) < ε

/-- Exact compatibility of a finite group action with one operator. -/
def OperatorOrbitCompatible
    [PseudoMetricSpace State]
    {operator : VersionedOperator State}
    (Symmetry : Type v)
    [Group Symmetry]
    [MulAction Symmetry operator.domain] : Prop :=
  ∀ (groupElement : Symmetry)
    (state : operator.domain),
    operator.step (groupElement • state) =
      groupElement • operator.step state

/-- Distance to a finite group orbit. -/
noncomputable def orbitDistance
    [PseudoMetricSpace State]
    {operator : VersionedOperator State}
    (Symmetry : Type v)
    [Group Symmetry]
    [Fintype Symmetry]
    [MulAction Symmetry operator.domain]
    (point state : operator.domain) : ℝ := by
  classical
  exact
    (Finset.univ : Finset Symmetry).inf'
      (by simp)
      (fun groupElement ↦
        dist state (groupElement • point))

/--
Orbit stability names its group action and operator-compatibility proof.  It
does not follow from point stability.
-/
def IsOrbitStable
    [PseudoMetricSpace State]
    {operator : VersionedOperator State}
    (fixedPoint : CertifiedFixedPoint operator)
    (Symmetry : Type v)
    [Group Symmetry]
    [Fintype Symmetry]
    [MulAction Symmetry operator.domain]
    (_compatible :
      OperatorOrbitCompatible
        (operator := operator) Symmetry) : Prop :=
  ∀ ε > 0,
    ∃ δ > 0,
      ∀ state : operator.domain,
        orbitDistance (operator := operator)
            Symmetry fixedPoint.point state < δ →
        ∀ iteration : Nat,
          orbitDistance (operator := operator)
              Symmetry fixedPoint.point
              ((operator.step^[iteration]) state) < ε

/--
Structural stability is continuity of an exact fixed-point continuation over
an explicit operator neighborhood.
-/
def IsStructurallyStable
    [PseudoMetricSpace State]
    {operator : VersionedOperator State}
    (fixedPoint : CertifiedFixedPoint operator)
    (operatorDistance :
      VersionedOperator State →
      VersionedOperator State → ℝ)
    (operatorRadius : ℝ) : Prop :=
  0 < operatorRadius ∧
    ∃ pointRadius > 0,
      ∀ candidate : VersionedOperator State,
        operatorDistance operator candidate <
            operatorRadius →
        ∃ candidatePoint : CertifiedFixedPoint candidate,
          dist (candidatePoint.point : State)
              (fixedPoint.point : State) <
            pointRadius

/-- Discrete input-driven trajectory. -/
def inputTrajectory
    {Input : Type v}
    {operator : VersionedOperator State}
    (inputStep :
      Input → operator.domain → operator.domain)
    (inputs : Nat → Input)
    (initial : operator.domain) :
    Nat → operator.domain
  | 0 => initial
  | iteration + 1 =>
      inputStep (inputs iteration)
        (inputTrajectory inputStep inputs initial iteration)

/--
Input-to-state stability with an explicit decaying homogeneous channel and a
discrete convolution gain for the input sequence.
-/
def IsInputToStateStable
    [PseudoMetricSpace State]
    {Input : Type v}
    {operator : VersionedOperator State}
    (fixedPoint : CertifiedFixedPoint operator)
    (inputStep :
      Input → operator.domain → operator.domain)
    (inputSize : Input → ℝ)
    (decay gain : Nat → ℝ) : Prop :=
  (∀ iteration, 0 ≤ decay iteration) ∧
  (∀ iteration, 0 ≤ gain iteration) ∧
  Tendsto decay atTop (nhds 0) ∧
  ∀ (inputs : Nat → Input)
    (initial : operator.domain)
    (iteration : Nat),
    dist (inputTrajectory inputStep inputs initial iteration)
        fixedPoint.point ≤
      decay iteration * dist initial fixedPoint.point +
        ∑ inputIndex ∈ Finset.range iteration,
          gain (iteration - 1 - inputIndex) *
            inputSize (inputs inputIndex)

/--
An iterate-wise nonexpansive estimate around an exact fixed point is enough
for Lyapunov stability.  It does not establish attraction.
-/
theorem isLyapunovStable_of_iterate_nonexpansive
    [PseudoMetricSpace State]
    {operator : VersionedOperator State}
    (fixedPoint : CertifiedFixedPoint operator)
    (nonexpansive :
      ∀ iteration state,
        dist ((operator.step^[iteration]) state)
            ((operator.step^[iteration]) fixedPoint.point) ≤
          dist state fixedPoint.point) :
    IsLyapunovStable operator fixedPoint := by
  intro ε εPositive
  refine ⟨ε, εPositive, ?_⟩
  intro state stateClose iteration
  have estimate := nonexpansive iteration state
  rw [fixedPoint.iterate_eq iteration] at estimate
  exact lt_of_le_of_lt estimate stateClose

/-- A strict contraction is in particular Lyapunov stable at an exact fixed point. -/
theorem isLyapunovStable_of_contraction
    [MetricSpace State]
    {operator : VersionedOperator State}
    (fixedPoint : CertifiedFixedPoint operator)
    {factor : ℝ≥0}
    (contracting : ContractingWith factor operator.step) :
    IsLyapunovStable operator fixedPoint := by
  apply isLyapunovStable_of_iterate_nonexpansive fixedPoint
  intro iteration state
  have nonexpansive :
      LipschitzWith 1 operator.step :=
    contracting.toLipschitzWith.weaken
      (le_of_lt contracting.1)
  have iterateBound :=
    (nonexpansive.iterate iteration).dist_le_mul
      state fixedPoint.point
  simpa using iterateBound

/--
On a complete invariant domain, a strict contraction attracts every state to
any exact fixed point.  Completeness is a real typeclass premise.
-/
theorem isLocallyAttractive_of_contraction
    [MetricSpace State]
    {operator : VersionedOperator State}
    [CompleteSpace operator.domain]
    (fixedPoint : CertifiedFixedPoint operator)
    {factor : ℝ≥0}
    (contracting : ContractingWith factor operator.step) :
    IsLocallyAttractive operator fixedPoint := by
  letI : Nonempty operator.domain := ⟨fixedPoint.point⟩
  refine ⟨1, one_pos, ?_⟩
  intro state _
  have canonicalLimit :=
    contracting.tendsto_iterate_fixedPoint state
  have fixedPoint_eq :
      fixedPoint.point =
        contracting.fixedPoint operator.step :=
    contracting.fixedPoint_unique fixedPoint.fixed
  rw [← fixedPoint_eq] at canonicalLimit
  exact canonicalLimit

/-- Strict contraction plus completeness yields local asymptotic stability. -/
theorem isLocallyAsymptoticallyStable_of_contraction
    [MetricSpace State]
    {operator : VersionedOperator State}
    [CompleteSpace operator.domain]
    (fixedPoint : CertifiedFixedPoint operator)
    {factor : ℝ≥0}
    (contracting : ContractingWith factor operator.step) :
    IsLocallyAsymptoticallyStable operator fixedPoint :=
  ⟨isLyapunovStable_of_contraction fixedPoint contracting,
    isLocallyAttractive_of_contraction fixedPoint contracting⟩

/-- An explicit escaping perturbation refutes Lyapunov stability. -/
theorem not_isLyapunovStable_of_escape
    [PseudoMetricSpace State]
    {operator : VersionedOperator State}
    (fixedPoint : CertifiedFixedPoint operator)
    (ε : ℝ)
    (ε_positive : 0 < ε)
    (escape :
      ∀ δ > 0,
        ∃ state : operator.domain,
          dist state fixedPoint.point < δ ∧
          ∃ iteration : Nat,
            ε ≤
              dist ((operator.step^[iteration]) state)
                fixedPoint.point) :
    ¬ IsLyapunovStable operator fixedPoint := by
  intro stable
  obtain ⟨δ, δ_positive, remainsClose⟩ :=
    stable ε ε_positive
  obtain ⟨state, stateClose, iteration, escaped⟩ :=
    escape δ δ_positive
  exact
    (not_lt_of_ge escaped)
      (remainsClose state stateClose iteration)

end Mathematics.Operational
