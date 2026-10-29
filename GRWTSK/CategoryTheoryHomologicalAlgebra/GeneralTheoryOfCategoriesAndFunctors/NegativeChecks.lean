import FCRS.RepositoryPersistentResidual

/-!
Kernel-elaborated negative controls for the cyclotomic persistent-residual
sibling theory.  Every `fail_if_success` block passes only when Lean rejects
the forbidden identification; the two scalar examples are finite
countermodels rather than naming-convention checks.
-/

namespace FCRS.PersistentResidual.NegativeChecks

set_option linter.unusedVariables false

open FCRS.TheoremGraph
open FCRS.CyclotomicTraversal
open FCRS.TheoremBarycenter
open FCRS.ControlledComplex
open FCRS.RepositoryPersistentResidual
open FCRS.ControlledPlane
open FCRS.ControlledSpherical

/-- A jointly affine scalar transition has identically zero mixed difference. -/
theorem affineTransition_mixedDifference_zero
    (a b c state₁ state₀ residual₁ residual₀ : ℝ) :
    (a * state₁ + b * residual₁ + c) -
        (a * state₁ + b * residual₀ + c) -
        (a * state₀ + b * residual₁ + c) +
        (a * state₀ + b * residual₀ + c) = 0 := by
  ring

/-- Two steps of an affine recurrence are still jointly affine.  Merely adding
time depth cannot supply the nonzero mixed difference required by PRD-04. -/
theorem twoStepAffineTransition_mixedDifference_zero
    (a b c state₁ state₀ input₁ input₀ : ℝ) :
    (a * (a * state₁ + b * input₁ + c) + b * input₁ + c) -
        (a * (a * state₁ + b * input₀ + c) + b * input₀ + c) -
        (a * (a * state₀ + b * input₁ + c) + b * input₁ + c) +
        (a * (a * state₀ + b * input₀ + c) + b * input₀ + c) = 0 := by
  ring

/-- Hiding a threshold behind another name does not make it linear. -/
noncomputable def thresholdAlias (value : ℝ) : ℝ :=
  if value ≤ 0 then 0 else value

theorem thresholdAlias_not_linear :
    ¬ ∃ map : ℝ →ₗ[ℝ] ℝ, ∀ value, map value = thresholdAlias value := by
  rintro ⟨map, exactValue⟩
  have additive := map.map_add (-1 : ℝ) 1
  rw [exactValue, exactValue, exactValue] at additive
  norm_num [thresholdAlias] at additive

/-- An exact root occurrence cannot be supplied where proof identity is required. -/
example (root : CyclotomicRootOccurrence) : True := by
  fail_if_success
    exact (root : ProofIdentity)
  trivial

/-- An injective root index is not an intrinsic-expression proof. -/
example (indexing : RootIndexing Bool) : True := by
  fail_if_success
    exact (indexing : CyclotomicIntrinsic .externalSignature)
  trivial

/-- A typed prediction cannot be retyped as an accepted bridge. -/
example (prediction : TypedPrediction) : True := by
  fail_if_success
    exact (prediction : AcceptedBridge)
  trivial

/-- Forward preservation cannot be reused as independent reflection. -/
example (forward : ForwardPreservationCertificate) : True := by
  fail_if_success
    exact (forward : IndependentReflectionCertificate)
  trivial

/-- Signature compactness cannot be retyped as a Lyapunov certificate. -/
example {carrier : Carrier2D} (compact : CompactCarrier carrier) : True := by
  fail_if_success
    exact (compact : LyapunovDecreaseCertificate ℝ)
  trivial

/-- Coordinate persistence cannot be retyped as residual persistence. -/
example {Coord Stage : Type}
    {refines : Stage → Stage → Prop} {observedAt : Coord → Stage → Prop}
    (coverage : PersistentCoverage Coord Stage refines observedAt) : True := by
  fail_if_success
    exact (coverage : ActivationFreeNormalForm ℝ)
  trivial

/-- Decoder injectivity is not an unrestricted observability certificate. -/
example {Entity Control Point : Type}
    {observation : ControlledObservation Entity Control Point}
    (decoder : LosslessDecoder observation) : True := by
  fail_if_success
    exact (decoder : ObservabilityCertificate Entity (Point × Control))
  trivial

/-- Categorical essential surjectivity is not control-theoretic reachability. -/
example {C D : CategoryLike} {functor : FunctorLike C D}
    {State Action : Type} (essential : EssentiallySurjective functor) : True := by
  fail_if_success
    exact (essential : ReachabilityCertificate State Action)
  trivial

/-- An opaque spherical carrier is not an actual Riemann-sphere adapter. -/
example (sphere : Sphere2Carrier) : True := by
  fail_if_success
    exact (sphere : ControlledRiemannSphereAdapter Unit Unit sphere.Point
      trivialComplexObservation)
  trivial

/-- An arbitrary self-map is not a metric similarity certificate. -/
example (mobiusLike : ℂ → ℂ) : True := by
  fail_if_success
    exact (mobiusLike : MetricSimilarity ℂ)
  trivial

/-- Critical-line membership is not zeta-zero evidence. -/
example {value : ℂ} (line : OnClassicalCriticalLine value) : True := by
  fail_if_success
    exact (line : IsZetaZero value)
  trivial

/-- A barycentric fixed-point equation cannot be retyped as an RH proof. -/
example {count : Nat} (embedding : WeightedComplexEmbedding count)
    (fixed : centeredEmbedding embedding = embedding) : True := by
  fail_if_success
    exact (fixed : RiemannHypothesisProof)
  trivial

/-- Numerical approximation evidence is not an exact root occurrence. -/
example (approximation : RootApproximationArtifact) : True := by
  fail_if_success
    exact (approximation : CyclotomicRootOccurrence)
  trivial

/-- An unclassified placeholder cannot enter a closed positive path. -/
structure UnclassifiedCell where
  source : TheoremOccurrence
  target : PRDIdentifier

example (cell : UnclassifiedCell) : True := by
  fail_if_success
    exact (cell : ClosedPRDPath)
  trivial

end FCRS.PersistentResidual.NegativeChecks
