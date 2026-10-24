# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.ControlledComplex.Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41b53fe54794716fecb8d96347f22173743c6fb5` · SHA-256 `123c28905d2d720a2a61fce48c8a1dd080df34b73100da8f2eb5d63777f79210`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.CCIdentifier.Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.LFunctions.SourceCorpus.CCIdentifier.Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060","mathematical_subject":"NumberTheory.LFunctions","original_sha256":"f4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledComplex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Topology.Compactification.OnePoint.Basic
import FCRS.TheoremBarycenter

/-!
Adapters from controlled observations to the classical complex plane and the
Riemann sphere.  The legacy carriers remain opaque and distinct.  Critical
loci are inverse images; no geometry theorem proves a zeta-zero statement.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.CCIdentifier.Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060

namespace FCRS.ControlledComplex

open FCRS.TheoremTransfer
open FCRS.ControlledPlane
open FCRS.ControlledSpherical
open FCRS.TheoremBarycenter

/-- CC catalog for the compact controlled-complex sibling. -/
inductive CCIdentifier where
  | cc01ComplexPlaneAdapter
  | cc02TrivialControlRecovery
  | cc03ComplexAffineSimilarity
  | cc04RiemannSphereAdapterBoundary
  | cc05ControlledCriticalStrip
  | cc06ControlledCriticalLine
  | cc07ReflectionInvolution
  | cc08ReflectionFixedLocus
  | cc09FixedLocusSubsetGeometricLine
  | cc10ControlFixedEquality
  | cc11ZetaBoundarySeparation
deriving Repr, DecidableEq

/-- A controlled observation with an explicit complex geometric denotation. -/
structure ControlledComplexPlane
    (Entity Control Point : Type*)
    (observation : ControlledObservation Entity Control Point) where
  metricObservation : MetricControlledObservation Entity Control Point observation
  realizationVersion : VersionId
  geometricDenotation : Point → ℂ

/-- Classical complex plane as the trivial-control controlled observation. -/
def trivialComplexObservation : ControlledObservation ℂ Unit ℂ where
  project := id
  control := fun _ => ()

/-- The paired image of the trivial-control specialization is exactly `ℂ`. -/
def trivialComplexObservationImageEquiv :
    ObservationImage trivialComplexObservation ≃ ℂ where
  toFun := fun point => point.val.1
  invFun := fun value => ⟨(value, ()), ⟨value, rfl⟩⟩
  left_inv := by
    intro point
    apply Subtype.ext
    rcases point with ⟨⟨value, control⟩, witness⟩
    cases control
    rfl
  right_inv := by intro value; rfl

/-- Trivial control recovers the complex value without identifying all planes. -/
theorem complexPlane_trivialControlRecovery (value : ℂ) :
    trivialComplexObservationImageEquiv
      (trivialComplexObservationImageEquiv.symm value) = value := by
  simp

/-- Exact affine similarity law; arbitrary automorphisms are not covered. -/
theorem complexAffine_scalesDistance (a b z w : ℂ) (aNonzero : a ≠ 0) :
    ‖(a * z + b) - (a * w + b)‖ = ‖a‖ * ‖z - w‖ := by
  have _scalePositive : 0 < ‖a‖ := norm_pos_iff.mpr aNonzero
  rw [show (a * z + b) - (a * w + b) = a * (z - w) by ring, norm_mul]

/-- The classical Riemann-sphere carrier is the one-point compactification. -/
abbrev RiemannSphere := OnePoint ℂ

/-- A bridge from an opaque CS carrier requires an actual exact-carrier witness
and retains the controlled observation and every specialization/compatibility
obligation instead of treating the carrier's name as evidence. -/
structure ControlledRiemannSphereAdapter
    (Entity Control OpaquePoint : Type*)
    (observation : ControlledObservation Entity Control OpaquePoint) where
  adapterVersion : VersionId
  controlledObservationVersion : VersionId
  exactCarrierEquivalence : OpaquePoint ≃ RiemannSphere
  chordalMetric : MetricSpace RiemannSphere
  topologyCompatibility : Prop
  topologyCompatibilityEvidence : topologyCompatibility
  stereographicVersion : VersionId
  stereographicCompatibility : Prop
  stereographicCompatibilityEvidence : stereographicCompatibility
  trivialControlSpecialization : Prop
  trivialControlSpecializationEvidence : trivialControlSpecialization
  controlledSphericalRelationshipVersion : VersionId
  controlledSphericalRelationship : Prop
  controlledSphericalRelationshipEvidence : controlledSphericalRelationship

/-- Classical critical strip. -/
def InClassicalCriticalStrip (value : ℂ) : Prop :=
  0 < value.re ∧ value.re < 1

/-- Classical critical line. -/
def OnClassicalCriticalLine (value : ℂ) : Prop :=
  value.re = (1 / 2 : ℝ)

def OnClassicalLeftBoundary (value : ℂ) : Prop := value.re = 0
def OnClassicalRightBoundary (value : ℂ) : Prop := value.re = 1

/-- Controlled strip is exactly the inverse image of the classical strip. -/
def InControlledCriticalStrip
    {Entity Control Point : Type*}
    {observation : ControlledObservation Entity Control Point}
    (plane : ControlledComplexPlane Entity Control Point observation)
    (point : ObservationImage observation) : Prop :=
  InClassicalCriticalStrip (plane.geometricDenotation point.val.1)

/-- Controlled geometric line is exactly the inverse image of the classical line. -/
def OnControlledGeometricCriticalLine
    {Entity Control Point : Type*}
    {observation : ControlledObservation Entity Control Point}
    (plane : ControlledComplexPlane Entity Control Point observation)
    (point : ObservationImage observation) : Prop :=
  OnClassicalCriticalLine (plane.geometricDenotation point.val.1)

/-- Classical involution `J(s)=1-conj(s)`. -/
def criticalReflection (value : ℂ) : ℂ :=
  1 - star value

theorem criticalReflection_involutive (value : ℂ) :
    criticalReflection (criticalReflection value) = value := by
  apply Complex.ext <;> simp [criticalReflection]

/-- The fixed locus of classical reflection is exactly `Re(s)=1/2`. -/
theorem criticalReflection_fixed_iff (value : ℂ) :
    criticalReflection value = value ↔ OnClassicalCriticalLine value := by
  constructor
  · intro fixed
    have realPart := congrArg Complex.re fixed
    simp [criticalReflection] at realPart
    unfold OnClassicalCriticalLine
    linarith
  · intro line
    apply Complex.ext
    · simp [criticalReflection]
      unfold OnClassicalCriticalLine at line
      linarith
    · simp [criticalReflection]

/-- A controlled lift carries both its exact map and geometric commuting law. -/
structure ControlledReflectionLift
    {Entity Control Point : Type*}
    {observation : ControlledObservation Entity Control Point}
    (plane : ControlledComplexPlane Entity Control Point observation) where
  liftVersion : VersionId
  lift : ObservationImage observation → ObservationImage observation
  geometricCommutes : ∀ point,
    plane.geometricDenotation (lift point).val.1 =
      criticalReflection (plane.geometricDenotation point.val.1)

def OnControlledFixedCriticalLine
    {Entity Control Point : Type*}
    {observation : ControlledObservation Entity Control Point}
    {plane : ControlledComplexPlane Entity Control Point observation}
    (lift : ControlledReflectionLift plane)
    (point : ObservationImage observation) : Prop :=
  lift.lift point = point

/-- Every controlled fixed point lies over the geometric critical line. -/
theorem controlledFixedLine_subset_geometricLine
    {Entity Control Point : Type*}
    {observation : ControlledObservation Entity Control Point}
    {plane : ControlledComplexPlane Entity Control Point observation}
    (lift : ControlledReflectionLift plane)
    {point : ObservationImage observation}
    (fixed : OnControlledFixedCriticalLine lift point) :
    OnControlledGeometricCriticalLine plane point := by
  apply (criticalReflection_fixed_iff
    (plane.geometricDenotation point.val.1)).mp
  rw [← lift.geometricCommutes point, fixed]

/-- Equality needs the extra hypothesis that control is fixed over the line. -/
theorem controlledFixedLine_eq_geometricLine_of_controlFixed
    {Entity Control Point : Type*}
    {observation : ControlledObservation Entity Control Point}
    {plane : ControlledComplexPlane Entity Control Point observation}
    (lift : ControlledReflectionLift plane)
    (controlFixed : ∀ point,
      OnControlledGeometricCriticalLine plane point → lift.lift point = point) :
    {point | OnControlledFixedCriticalLine lift point} =
      {point | OnControlledGeometricCriticalLine plane point} := by
  ext point
  constructor
  · exact controlledFixedLine_subset_geometricLine lift
  · exact controlFixed point

/-- The Euclidean barycentric axis of strip boundary real coordinates. -/
theorem criticalStripBoundary_barycenter :
    ((0 : ℝ) + 1) / 2 = (1 / 2 : ℝ) := by norm_num

/-- Zeta-zero predicates are separate from geometric critical-line membership. -/
def IsZetaZero (value : ℂ) : Prop :=
  riemannZeta value = 0

def IsNontrivialZetaZero (value : ℂ) : Prop :=
  IsZetaZero value ∧
    (¬ ∃ n : Nat, value = -2 * (n + 1)) ∧ value ≠ 1

/-- The statement is defined, never proved by the controlled geometry. -/
def RiemannHypothesisStatement : Prop :=
  ∀ value, IsNontrivialZetaZero value → OnClassicalCriticalLine value

/-- A proof, if supplied, is a separate type from the statement and geometry. -/
structure RiemannHypothesisProof where
  proof : RiemannHypothesisStatement

/-- Thin exact adapter to the pinned Mathlib statement. -/
theorem riemannHypothesisStatement_iff_mathlib :
    RiemannHypothesisStatement ↔ RiemannHypothesis := by
  constructor
  · intro controlled value zero nontrivial notPole
    exact controlled value ⟨zero, nontrivial, notPole⟩
  · intro mathlib value nontrivial
    exact mathlib value nontrivial.1 nontrivial.2.1 nontrivial.2.2

end FCRS.ControlledComplex
```
