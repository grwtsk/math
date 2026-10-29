import Mathematics.Stability.FixedPoint

/-! # Certified contraction boundaries -/

namespace Mathematics.Stability

structure ContractionCertificate
    {X : Type}
    (construction : ReflectiveMap X)
    (metric : ResidualMetric X) where
  gainCertificate :
    ScaledDerivativeGainCertificate construction metric
  strictMargin :
    gainCertificate.numerator < gainCertificate.scale
  invariantDomain : construction.mapsDeclaredDomain

structure BanachFixedPointObligation
    {X : Type}
    (construction : ReflectiveMap X) where
  completeMetricDomain : Prop
  completeStatus : ProofDisposition
  fixedPointExistence : Prop
  existenceStatus : ProofDisposition
  fixedPointUniqueness : Prop
  uniquenessStatus : ProofDisposition
  globalBasinConvergence : Prop
  basinStatus : ProofDisposition

theorem certified_integral_traversal_obeys_affine_bound
    (actual : Nat → Nat)
    (gain localDefect initialDefect : Nat)
    (initial : actual 0 ≤ initialDefect)
    (step :
      ∀ n, actual (n + 1) ≤
        gain * actual n + localDefect) :
    ∀ n, actual n ≤
      constantAffineBound gain localDefect initialDefect n :=
  iterated_affine_defect_bound
    actual gain localDefect initialDefect initial step

/-!
This theorem is intentionally scoped to an integral gain.  In particular it
does not establish general sub-unit geometric convergence.  Such claims use a
`ScaledDerivativeGainCertificate` plus separately discharged completeness and
basin obligations.
-/

theorem exact_zero_gain_converges_after_one_step
    (initialDefect : Nat)
    (n : Nat) :
    constantAffineBound 0 0 initialDefect (n + 1) = 0 := by
  induction n with
  | zero => simp
  | succ n inductionHypothesis => simp

structure ResidualFloorObligation where
  gainNumerator : Nat
  gainScale : Nat
  localResidual : Nat
  asymptoticFloorStatement : Prop
  status : ProofDisposition

end Mathematics.Stability
