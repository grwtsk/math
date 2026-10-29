import FormalResearch.RiemannHypothesis.SourceComparison

/-! Independent statement comparisons and a complex-square sign regression. -/

open MeasureTheory
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceComparison
open BridgeAdmissibility ZeroSideTargets ZeroObject
open ZeroSmoothing ZeroSmoothingTransform

example (A : ℝ) (hA : 1 ≤ A) : ActualFormAdmission A :=
  Admission.actual_form_admission A hA

example (A : ℝ) (hA : 1 ≤ A) :
    realArithmeticForm A (actualTest A) =
      sourceNormalization A * sourceQuadraticValue Realization.explicitSecondDerivative A :=
  Admission.unnormalized_form_eq_source A hA

example : ZeroSideIdentityObligation ↔
    (∀ A : ℝ, 1 ≤ A →
      HasSum (fun o : ZeroOccurrence ↦ bilateralTransform A (shiftedValue o) ^ 2)
        (realArithmeticForm A (actualTest A) : ℂ)) :=
  ZeroEquality.zero_side_identity_iff_arithmetic_zero_hasSum

example (h : ArithmeticLimit.SmoothSourceComparisonObligation) : ZeroSideIdentityObligation :=
  ArithmeticLimit.zero_side_identity_of_smooth_comparison h

example (hzero : ZeroEquality.ArithmeticZeroEqualityObligation)
    (hnot : ¬ _root_.RiemannHypothesis) (R : ℝ) (hR : 1 ≤ R) (M : ℝ) (hM : 0 < M) :
    ∃ A : ℝ, R ≤ A ∧ sourceQuadraticValue Realization.explicitSecondDerivative A < -M :=
  Consequences.negative_constant_excursions hzero hnot R hR M hM

-- No arithmetic-comparison, RH, simplicity, or lower-bound premise is supplied here.
example : ∀ A : ℝ, 1 ≤ A →
    ActualFormAdmission A ∧
    (∀ o : ZeroOccurrence, Integrable (fun x : ℝ ↦ (actualTest A x : ℂ) *
      Complex.exp (shiftedValue o * (x : ℂ)))) ∧
    Summable (fun o : ZeroOccurrence ↦ bilateralTransform A (shiftedValue o) ^ 2) ∧
    ((sourceNormalization A *
      sourceQuadraticValue Realization.explicitSecondDerivative A : ℝ) : ℂ) =
      (realArithmeticForm A (actualTest A) : ℂ) ∧
    (realArithmeticForm A (actualTest A) : ℂ) =
      ∑' o : ZeroOccurrence, bilateralTransform A (shiftedValue o) ^ 2 :=
  WeilComparison.zero_side_identity

example (A : ℝ) (hA : 1 ≤ A) :
    HasSum (fun o : ZeroOccurrence ↦ bilateralTransform A (shiftedValue o) ^ 2)
      ((sourceNormalization A *
        sourceQuadraticValue Realization.explicitSecondDerivative A : ℝ) : ℂ) :=
  WeilComparison.source_hasSum A hA

example (k : ℝ → ℂ) (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k) :
    Summable (fun p : ZeroPoint ↦ (multiplicity p : ℂ) *
      Zeta23.paperFT k ((p.val - 1 / 2) / Complex.I)) ∧
    (∑' p : ZeroPoint, (multiplicity p : ℂ) *
      Zeta23.paperFT k ((p.val - 1 / 2) / Complex.I)) = Zeta23.EF.literatureRHS k :=
  WeilInput.weil_formula k hk hkc

-- The second route must supply the smooth comparison, not take it as a premise.
example : ∀ A : ℝ, 1 ≤ A → ∀ (ε : ℝ) (hε : 0 < ε), ε ≤ 1 →
    HasSum (fun o : ZeroOccurrence ↦ smoothedBilateralTransform A ε hε (shiftedValue o) ^ 2)
      (realArithmeticForm (A + 1) (smoothedTest A ε hε) : ℂ) :=
  SmoothWeilComparison.smooth_source_comparison

example : ZeroSideIdentityObligation := SmoothWeilComparison.zero_side_identity_via_smoothing

-- This product integral is over the whole product measure, not iterated totalized zeros.
example (f : ℝ → ℝ) (hf : Continuous f) (hc : HasCompactSupport f) (z : ℂ) :
    Integrable (fun p : ℝ × ℝ ↦
      ((f p.2 : ℂ) * Complex.exp (z * (p.2 : ℂ))) *
      ((f (p.1 - p.2) : ℂ) * Complex.exp (z * ((p.1 - p.2 : ℝ) : ℂ))))
      (volume.prod volume) := Autocorrelation.weighted_product_integrable f hf hc z

example (A : ℝ) (hA : 1 ≤ A) (s : ℂ) :
    (∫ t : ℝ, (Autocorrelation.correlation (actualTest A) t : ℂ) *
      Complex.exp ((s - 1 / 2) * (t : ℂ))) = bilateralTransform A (s - 1 / 2) ^ 2 :=
  Autocorrelation.actual_logarithmicMellin A hA s

example (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    smoothedBilateralTransform A ε hε (1 / 2) = 0 ∧
    smoothedBilateralTransform A ε hε (-1 / 2) = 0 :=
  ⟨PoleCancellation.smoothed_positive_bilateral A ε hA hε,
    PoleCancellation.smoothed_negative_bilateral A ε hA hε⟩

example : Complex.I ^ 2 ≠ (Complex.normSq Complex.I : ℂ) := by norm_num

#print Admission.actual_form_admission
#print ZeroEquality.ArithmeticZeroEqualityObligation
#print ArithmeticLimit.SmoothSourceComparisonObligation
#print Consequences.riemann_hypothesis_of_smooth_comparison_and_signed_estimate
#print WeilComparison.zero_side_identity
#print WeilComparison.source_identity
#print SmoothWeilComparison.smooth_source_comparison
#print SmoothWeilComparison.zero_side_identity_via_smoothing

-- Exponential damping changes the spectral argument by +η, not -η.
example (sign η C : ℝ) (s : ℂ) :
    ExponentialShift.shiftedTransform sign η C s =
      (sign : ℂ) * SourceLaplacePole.spectralSum (s + (η : ℂ)) +
        (C : ℂ) * SourcePolynomialBound.correctionKernel 0 s := rfl

-- The complete pole theorem retains the strict rate guard and actual multiplicity-bearing point.
example (sign η C : ℝ) (hsign : sign ≠ 0) (hη : 0 ≤ η)
    (p : ZeroPoint) (hp : η < 2 * (p.val - 1 / 2).re) :
    MeromorphicAt (ExponentialShift.shiftedTransform sign η C)
        (2 * (p.val - 1 / 2) - (η : ℂ)) ∧
      meromorphicOrderAt (ExponentialShift.shiftedTransform sign η C)
        (2 * (p.val - 1 / 2) - (η : ℂ)) = (-9 : ℤ) :=
  ExponentialShift.shifted_transform_exact_pole sign η C hsign hη p hp

example (hzero : ZeroEquality.ArithmeticZeroEqualityObligation)
    (ρ : ℂ) (hρ : FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ)
    (η : ℝ) (hη : 0 ≤ η) (hrate : η < 2 * |ρ.re - 1 / 2|)
    (C R : ℝ) (hC : 0 ≤ C) (hR : 1 ≤ R) :
    ∃ A : ℝ, R ≤ A ∧ Real.exp (-η * A) *
      sourceQuadraticValue Realization.explicitSecondDerivative A < -C :=
  ExponentialConsequences.negative_excursions_of_actual_zero hzero ρ hρ η hη hrate C R hC hR

-- This checks all positive rates, with independently quantified constants and tail starts.
example (hzero : ZeroEquality.ArithmeticZeroEqualityObligation)
    (hbound : ∀ η : ℝ, 0 < η → ∃ C : ℝ, 0 ≤ C ∧ ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A → -C ≤ Real.exp (-η * A) *
        sourceQuadraticValue Realization.explicitSecondDerivative A) :
    _root_.RiemannHypothesis :=
  ExponentialConsequences.riemann_hypothesis_of_subexponential_tail hzero hbound

example (hzero : ZeroEquality.ArithmeticZeroEqualityObligation)
    (p : ZeroPoint) (η : ℝ) (hη : 0 ≤ η) (hrate : η < 2 * (p.val - 1 / 2).re) (M : ℝ) :
    ∃ A : ℝ, 1 ≤ A ∧ M < Real.exp (-η * A) *
      sourceQuadraticValue Realization.explicitSecondDerivative A :=
  ExponentialConsequences.positive_global_excursions hzero p η hη hrate M

example (h : CorrelationAssembly.UniformLowerBound) :
    ExponentialConsequences.TailSubexponentialLowerBound :=
  ExponentialConsequences.subexponential_tail_of_uniform h

example (η C A q : ℝ) : -C ≤ Real.exp (-η * A) * q ↔
    -C * Real.exp (η * A) ≤ q := ExponentialConsequences.damped_bound_iff η C A q

#print ExponentialShift.zero_real_part_le_of_signed_bound
#print ExponentialConsequences.negative_excursions_of_actual_zero
#print ExponentialConsequences.positive_global_excursions
#print ExponentialConsequences.TailSubexponentialLowerBound
#print ExponentialConsequences.riemann_hypothesis_of_subexponential_tail

-- The comparison is discharged in these public conclusions, with no equality premise.
example : _root_.RiemannHypothesis ↔
    ∃ L : ℝ, ∀ A : ℝ, 1 ≤ A →
      L ≤ sourceQuadraticValue Realization.explicitSecondDerivative A :=
  SourceCriterion.riemann_hypothesis_iff_uniform_lower_bound

example (hRH : _root_.RiemannHypothesis) (A : ℝ) (hA : 1 ≤ A) :
    0 ≤ sourceQuadraticValue Realization.explicitSecondDerivative A :=
  SourceCriterion.source_nonneg_of_rh hRH A hA

example (ρ : ℂ) (hz : riemannZeta ρ = 0) (h0 : 0 < ρ.re) (h1 : ρ.re < 1)
    (hoff : ρ.re ≠ 1 / 2) (R : ℝ) (hR : 1 ≤ R) (M : ℝ) (hM : 0 < M) :
    ∃ A : ℝ, R ≤ A ∧ sourceQuadraticValue Realization.explicitSecondDerivative A < -M :=
  SourceCriterion.negative_infinite_liminf ρ (point_nontrivial ⟨ρ, hz, h0, h1⟩)
    hoff R hR M hM

example (ρ : ℂ) (hz : riemannZeta ρ = 0) (h0 : 0 < ρ.re) (h1 : ρ.re < 1)
    (η : ℝ) (hη : 0 ≤ η) (hrate : η < 2 * |ρ.re - 1 / 2|)
    (C R : ℝ) (hC : 0 ≤ C) (hR : 1 ≤ R) :
    ∃ A : ℝ, R ≤ A ∧ Real.exp (-η * A) *
      sourceQuadraticValue Realization.explicitSecondDerivative A < -C :=
  SourceCriterion.negative_exponential_excursions ρ (point_nontrivial ⟨ρ, hz, h0, h1⟩)
    η hη hrate C R hC hR

#print SourceCriterion.riemann_hypothesis_iff_uniform_lower_bound
#print SourceCriterion.negative_infinite_liminf
#print SourceCriterion.negative_exponential_excursions

-- The new unconditional estimate is for the literal signed source integrand.
example (A : ℝ) (hA : 1 ≤ A) :
    -(2 * Real.log 4 + 16) * Real.exp A - 3 * Real.sqrt 2 ≤
      ∫ t in Real.log 2..2 * A,
        (chebyshevPrimePower (Real.exp t) - Real.exp t) *
          (Real.exp (-t / 2) *
            (deriv (sourceCorrelation Realization.explicitSecondDerivative A) t -
              sourceCorrelation Realization.explicitSecondDerivative A t / 2)) := by
  simpa only [signedPairing, lowerEndpoint, errorProfile, chebyshevError, sourceWeight] using
    SignedPairingGrowth.pairing_lower A hA

-- Exponential control is restricted to damping rates at least one.
example (η A : ℝ) (hη : 1 ≤ η) (hA : 1 ≤ A) :
    |Real.exp (-η * A) * signedPairing Realization.explicitSecondDerivative A| ≤
      2 * Real.log 4 + 16 + 3 * Real.sqrt 2 :=
  SignedPairingGrowth.damped_pairing_abs_le η A hη hA

example (A : ℝ) (hA : 1 ≤ A) :
    |signedPairing Realization.explicitSecondDerivative A +
      primePowerContribution Realization.explicitSecondDerivative A| ≤ 3 * Real.sqrt 2 :=
  SignedPairingReduction.abs_pairing_add_prime_le A hA

-- The higher powers retain the original strict cutoff; only prime indices are separated.
example (A : ℝ) : ProperPrimePowers.properPrimePowerContribution A =
    ∑ n ∈ ((Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊).filter
      (fun n : ℕ ↦ (n : ℝ) < Real.exp (2 * A))).filter (fun n : ℕ ↦ ¬n.Prime),
      ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
        sourceCorrelation Realization.explicitSecondDerivative A (Real.log n) := rfl

example (A : ℝ) (hA : 1 ≤ A) :
    |ProperPrimePowers.properPrimePowerContribution A| ≤ 4 * A + 2 * A ^ 2 :=
  ProperPrimePowers.proper_prime_power_contribution_abs_le A hA

-- The sign obstruction concerns the actual correlation at every admitted radius.
example (A : ℝ) (hA : 1 ≤ A) :
    ∃ t : ℝ, 0 < t ∧ t < 2 * A ∧
      sourceCorrelation Realization.explicitSecondDerivative A t < 0 :=
  CorrelationSign.actual_correlation_negative_interior A hA

#print SignedPairingReduction.signed_polynomial_lower_iff_prime_polynomial_upper
#print SignedPairingGrowth.pairing_lower
#print ProperPrimePowers.proper_prime_power_contribution_abs_le
#print CorrelationSign.actual_correlation_negative_interior

-- The remaining prime estimate uses log p, with the original strict cutoff and correlation.
example (A : ℝ) : PrimeSector.primeContribution A =
    ∑ n ∈ ((Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊).filter
      (fun n : ℕ ↦ (n : ℝ) < Real.exp (2 * A))).filter Nat.Prime,
      Real.log (n : ℝ) / Real.sqrt (n : ℝ) *
        sourceCorrelation Realization.explicitSecondDerivative A (Real.log n) := rfl

example (A : ℝ) : primePowerContribution Realization.explicitSecondDerivative A =
    PrimeSector.primeContribution A + ProperPrimePowers.properPrimePowerContribution A :=
  PrimeSector.prime_power_contribution_eq A

example (A : ℝ) (hA : 1 ≤ A) :
    |signedPairing Realization.explicitSecondDerivative A + PrimeSector.primeContribution A| ≤
      3 * Real.sqrt 2 + 4 * A + 2 * A ^ 2 :=
  PrimeSector.abs_pairing_add_prime_le A hA

-- The estimate is a proposition, and is still an explicit hypothesis of the RH implication.
example : SourceSignedEstimate.SignedPairingPolynomialLowerBound ↔
    (∃ C : ℝ, 0 ≤ C ∧ ∃ k : ℕ, ∀ A : ℝ, 1 ≤ A →
      PrimeSector.primeContribution A ≤ C * A ^ k) :=
  PrimeSector.signed_polynomial_lower_iff_prime_only

example (h : ∃ C : ℝ, 0 ≤ C ∧ ∃ k : ℕ, ∀ A : ℝ, 1 ≤ A →
    PrimeSector.primeContribution A ≤ C * A ^ k) : _root_.RiemannHypothesis :=
  PrimeSector.riemann_hypothesis_of_prime_only_polynomial_upper h

#print PrimeSector.signed_polynomial_lower_iff_prime_only
#print PrimeSector.riemann_hypothesis_of_prime_only_polynomial_upper

-- The new integral is the literal scaled negative part of the unchanged source.
-- Only rates strictly greater than one have an unconditional proof here.
example (σ : ℝ) (hσ : 1 < σ) :
    IntegrableOn (fun A : ℝ ↦ Real.exp (-σ * A) *
      (A ^ 17 * sourceNormalization A *
        max (-sourceQuadraticValue Realization.explicitSecondDerivative A) 0)) (Set.Ioi 1) :=
  NegativePartIntegrability.negativeSource_integrable_of_one_lt σ hσ

example : NegativePartIntegrability.AllPositiveRates ↔
    ∀ σ : ℝ, 0 < σ → IntegrableOn (fun A : ℝ ↦ Real.exp (-σ * A) *
      (A ^ 17 * sourceNormalization A *
        max (-sourceQuadraticValue Realization.explicitSecondDerivative A) 0)) (Set.Ioi 1) :=
  Iff.rfl

example (h : ∃ C : ℝ, 0 ≤ C ∧ ∃ k : ℕ, ∀ A : ℝ, 1 ≤ A →
    -C * A ^ k ≤ sourceQuadraticValue Realization.explicitSecondDerivative A) :
    NegativePartIntegrability.AllPositiveRates :=
  NegativePartIntegrability.allPositiveRates_of_polynomial_lower_bound h

-- The truncated coefficient is the actual Möbius value, including its sign.
example (N n : ℕ) : MobiusQuadratic.truncatedMoebius N n =
    if n ≤ N then (ArithmeticFunction.moebius n : ℝ) else 0 := rfl

example (N n : ℕ) :
    (MobiusQuadratic.truncatedMoebius N * ArithmeticFunction.log) n =
      ∑ p ∈ n.divisorsAntidiagonal,
        (if p.1 ≤ N then (ArithmeticFunction.moebius p.1 : ℝ) else 0) *
          Real.log (p.2 : ℝ) := MobiusQuadratic.linear_coefficient_eq N n

-- The source decomposition is checked after expanding the unchanged strict-cutoff sum.
open scoped ArithmeticFunction.zeta in
example (A : ℝ) : primePowerContribution Realization.explicitSecondDerivative A =
    2 * (∑ n ∈ (Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊).filter
        (fun n : ℕ ↦ (n : ℝ) < Real.exp (2 * A)),
      (MobiusQuadratic.truncatedMoebius ⌊Real.exp A⌋₊ * ArithmeticFunction.log) n /
        Real.sqrt (n : ℝ) *
          sourceCorrelation Realization.explicitSecondDerivative A (Real.log n)) -
    (∑ n ∈ (Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊).filter
        (fun n : ℕ ↦ (n : ℝ) < Real.exp (2 * A)),
      (MobiusQuadratic.truncatedMoebius ⌊Real.exp A⌋₊ ^ 2 * ArithmeticFunction.zeta *
        ArithmeticFunction.log) n / Real.sqrt (n : ℝ) *
          sourceCorrelation Realization.explicitSecondDerivative A (Real.log n)) :=
  MobiusQuadratic.source_prime_decomposition A

#print NegativePartIntegrability.negativeSource_integrable_of_one_lt
#print NegativePartIntegrability.AllPositiveRates
#print MobiusQuadratic.vonMangoldt_decomposition
#print MobiusQuadratic.source_prime_decomposition

-- Both moments are genuine source integrals; the first one uses the original correlation.
example (A σ : ℝ) (hA : 1 ≤ A) :
    Integrable (fun t : ℝ ↦ t * Real.exp (σ * t) *
      sourceCorrelation Realization.explicitSecondDerivative A t) :=
  CorrelationFirstMoment.weighted_correlation_firstMoment_integrable A σ hA

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ t : ℝ, t * Real.exp (t / 2) *
      sourceCorrelation Realization.explicitSecondDerivative A t) = 0 :=
  CorrelationFirstMoment.full_correlation_firstMoment_zero A hA

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ t : ℝ, Real.exp (t / 2) *
      (deriv (sourceCorrelation Realization.explicitSecondDerivative A) t -
        sourceCorrelation Realization.explicitSecondDerivative A t / 2)) = 0 ∧
    (∫ t : ℝ, t * Real.exp (t / 2) *
      (deriv (sourceCorrelation Realization.explicitSecondDerivative A) t -
        sourceCorrelation Realization.explicitSecondDerivative A t / 2)) = 0 :=
  CorrelationDifferenceMoments.difference_two_moments_zero A hA

-- The derivative is that of the actual normalized zero extension, with no C² hypothesis.
example (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x : ℝ ↦
      deriv (normalizedTest Realization.explicitSecondDerivative A) x ^ 2) :=
  DerivativeEnergy.normalized_derivative_square_integrable A hA

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ x : ℝ, deriv (normalizedTest Realization.explicitSecondDerivative A) x ^ 2) =
      ((65536 / 77 : ℝ) / A ^ 6 + (196608 / 5005 : ℝ) / (2 * A ^ 4) +
        (131072 / 45045 : ℝ) / (16 * A ^ 2)) / sourceNormalization A :=
  DerivativeEnergy.normalized_derivative_square_integral A hA

example (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (sourceCorrelation Realization.explicitSecondDerivative A) t| ≤
      Real.sqrt (65 / 3) / A :=
  DerivativeEnergy.sourceCorrelation_derivative_abs_le A t hA

-- Expand the exact log(k), sqrt(x*k), normalized source, and strict product cutoff.
example (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    |∑ k ∈ (Finset.Icc 1 ⌊Real.exp (2 * A) / x⌋₊).filter
        (fun k : ℕ ↦ x * (k : ℝ) < Real.exp (2 * A)),
      Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
        sourceCorrelation Realization.explicitSecondDerivative A (Real.log (x * (k : ℝ)))| ≤
      (8 + 4 * Real.sqrt (65 / 3) / A) / Real.sqrt x :=
  SourceSampling.sourceSamplingKernel_abs_le A x hA hx

example (A : ℝ) : primePowerContribution Realization.explicitSecondDerivative A =
    ∑ d ∈ Finset.Icc 1 ⌊Real.exp (2 * A)⌋₊, (ArithmeticFunction.moebius d : ℝ) *
      (∑ k ∈ (Finset.Icc 1 ⌊Real.exp (2 * A) / (d : ℝ)⌋₊).filter
          (fun k : ℕ ↦ (d : ℝ) * (k : ℝ) < Real.exp (2 * A)),
        Real.log (k : ℝ) / Real.sqrt ((d : ℝ) * (k : ℝ)) *
          sourceCorrelation Realization.explicitSecondDerivative A
            (Real.log ((d : ℝ) * (k : ℝ)))) :=
  MobiusSampling.source_moebius_reindex A

#print CorrelationFirstMoment.full_correlation_firstMoment_zero
#print DerivativeEnergy.normalized_derivative_square_integral
#print SourceSampling.sourceSamplingKernel_abs_le
#print MobiusSampling.source_moebius_split

-- The original arithmetic sum includes both sides of the closed-right divisor split.
example (A : ℝ) (hA : 1 ≤ A) :
    primePowerContribution Realization.explicitSecondDerivative A =
      (∑ d ∈ Finset.Icc 1 ⌊A ^ 2⌋₊, (ArithmeticFunction.moebius d : ℝ) *
        SourceSampling.sourceSamplingKernel A d) +
      (∑ d ∈ (Finset.Icc 1 ⌊Real.exp (2 * A)⌋₊).filter
          (fun d : ℕ ↦ A ^ 2 < (d : ℝ)),
        (ArithmeticFunction.moebius d : ℝ) * SourceSampling.sourceSamplingKernel A d) :=
  MobiusSampling.source_moebius_split A hA

example (A : ℝ) (hA : 1 ≤ A) :
    |∑ d ∈ Finset.Icc 1 ⌊A ^ 2⌋₊, (ArithmeticFunction.moebius d : ℝ) *
      SourceSampling.sourceSamplingKernel A d| ≤ 16 * A + 8 * Real.sqrt (65 / 3) :=
  SmallDivisorBudget.small_divisor_sum_abs_le A hA

-- This is the literal signed-pairing integrand, with its full remaining arithmetic sum.
example (A : ℝ) (hA : 1 ≤ A) :
    |(∫ t in Real.log 2..2 * A,
        (chebyshevPrimePower (Real.exp t) - Real.exp t) *
          (Real.exp (-t / 2) *
            (deriv (sourceCorrelation Realization.explicitSecondDerivative A) t -
              sourceCorrelation Realization.explicitSecondDerivative A t / 2))) +
      (∑ d ∈ (Finset.Icc 1 ⌊Real.exp (2 * A)⌋₊).filter
          (fun d : ℕ ↦ A ^ 2 < (d : ℝ)),
        (ArithmeticFunction.moebius d : ℝ) * SourceSampling.sourceSamplingKernel A d)| ≤
      3 * Real.sqrt 2 + 16 * A + 8 * Real.sqrt (65 / 3) := by
  simpa only [signedPairing, lowerEndpoint, errorProfile, chebyshevError, sourceWeight,
    MobiusSampling.largeDivisorContribution] using
    SmallDivisorBudget.abs_pairing_add_large_divisor_le A hA

#print SmallDivisorBudget.small_divisor_sum_abs_le
#print SmallDivisorBudget.abs_pairing_add_large_divisor_le

-- Differentiating opposite C1 convolution factors preserves the original zero extension.
example (A t : ℝ) (hA : 1 ≤ A) :
    deriv (deriv (sourceCorrelation Realization.explicitSecondDerivative A)) t =
      -(∫ x : ℝ, deriv (normalizedTest Realization.explicitSecondDerivative A) x *
        deriv (normalizedTest Realization.explicitSecondDerivative A) (x - t)) :=
  CorrelationSecondDerivative.sourceCorrelation_second_derivative_eq A t hA

example (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (deriv (sourceCorrelation Realization.explicitSecondDerivative A)) t| ≤
      65 / (3 * A ^ 2) :=
  CorrelationSecondDerivative.sourceCorrelation_second_derivative_abs_le A t hA

example (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 1 (fun t : ℝ ↦
      deriv (sourceCorrelation Realization.explicitSecondDerivative A) t -
        sourceCorrelation Realization.explicitSecondDerivative A t / 2) :=
  CorrelationSecondDerivative.correlationDifference_contDiff A hA

-- The derivative still uses the actual strict product cutoff and signed difference.
example (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    HasDerivAt (SourceSampling.sourceSamplingKernel A)
      (1 / x * ∑ k ∈ (Finset.Icc 1 ⌊Real.exp (2 * A) / x⌋₊).filter
          (fun k : ℕ ↦ x * (k : ℝ) < Real.exp (2 * A)),
        Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
          (deriv (sourceCorrelation Realization.explicitSecondDerivative A)
              (Real.log (x * (k : ℝ))) -
            sourceCorrelation Realization.explicitSecondDerivative A
              (Real.log (x * (k : ℝ))) / 2)) x :=
  SourceSamplingDerivative.sourceSamplingKernel_hasDerivAt A x hA hx

example (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    |deriv (SourceSampling.sourceSamplingKernel A) x| ≤
      (4 + 10 * Real.sqrt (65 / 3) / A + 4 * (65 / (3 * A ^ 2))) /
        (x * Real.sqrt x) :=
  SourceSamplingDerivative.sourceSamplingKernel_derivative_abs_le A x hA hx

example (x : ℝ) : MertensTransport.mertensSum x =
    ∑ n ∈ Finset.Icc 1 ⌊x⌋₊, (ArithmeticFunction.moebius n : ℝ) := rfl

#print CorrelationSecondDerivative.sourceCorrelation_second_derivative_eq
#print SourceSamplingDerivative.sourceSamplingKernel_hasDerivAt
#print SourceSamplingDerivative.sourceSamplingKernel_derivative_abs_le

-- The full signed Mertens integrand is genuinely integrable before Abel transport is used.
example (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn (fun x : ℝ ↦
      (∑ n ∈ Finset.Icc 1 ⌊x⌋₊, (ArithmeticFunction.moebius n : ℝ)) *
        deriv (SourceSampling.sourceSamplingKernel A) x)
      (Set.Icc (A ^ 2) (Real.exp (2 * A))) :=
  MertensTransport.mertens_source_derivative_integrableOn A hA

-- The true lower atom is retained, including at integer A².
example (A : ℝ) (hA : 1 ≤ A) :
    MobiusSampling.largeDivisorContribution A =
      -(∑ n ∈ Finset.Icc 1 ⌊A ^ 2⌋₊, (ArithmeticFunction.moebius n : ℝ)) *
        SourceSampling.sourceSamplingKernel A (A ^ 2) -
      ∫ x in A ^ 2..Real.exp (2 * A),
        (∑ n ∈ Finset.Icc 1 ⌊x⌋₊, (ArithmeticFunction.moebius n : ℝ)) *
          deriv (SourceSampling.sourceSamplingKernel A) x :=
  MertensTransport.largeDivisorContribution_eq_mertens A hA

example (A : ℝ) (hA : 1 ≤ A) :
    |(∑ n ∈ Finset.Icc 1 ⌊A ^ 2⌋₊, (ArithmeticFunction.moebius n : ℝ)) *
      SourceSampling.sourceSamplingKernel A (A ^ 2)| ≤
      8 * A + 4 * Real.sqrt (65 / 3) :=
  MertensBoundary.lower_atom_abs_le A hA

-- Both sides retain their literal signed real integrands.
example (A : ℝ) (hA : 1 ≤ A) :
    |(∫ t in Real.log 2..2 * A,
        (chebyshevPrimePower (Real.exp t) - Real.exp t) *
          (Real.exp (-t / 2) *
            (deriv (sourceCorrelation Realization.explicitSecondDerivative A) t -
              sourceCorrelation Realization.explicitSecondDerivative A t / 2))) -
      ∫ x in A ^ 2..Real.exp (2 * A),
        (∑ n ∈ Finset.Icc 1 ⌊x⌋₊, (ArithmeticFunction.moebius n : ℝ)) *
          deriv (SourceSampling.sourceSamplingKernel A) x| ≤
      3 * Real.sqrt 2 + 24 * A + 12 * Real.sqrt (65 / 3) := by
  simpa only [signedPairing, lowerEndpoint, errorProfile, chebyshevError, sourceWeight,
    MertensTransport.mertensSum] using MertensBoundary.abs_pairing_sub_mertens_integral_le A hA

-- The actual coefficient identity includes zero and squareful Möbius values.
example (g u v : ℕ) (huv : Nat.Coprime u v) :
    (ArithmeticFunction.moebius (g * u) : ℝ) * (ArithmeticFunction.moebius (g * v) : ℝ) =
      (ArithmeticFunction.moebius (u * v) : ℝ) * (ArithmeticFunction.moebius g : ℝ) ^ 2 *
        (if Nat.Coprime g (u * v) then 1 else 0) :=
  MobiusRatio.moebius_ratio_identity g u v huv

#print MertensTransport.largeDivisorContribution_eq_mertens
#print MertensBoundary.abs_pairing_sub_mertens_integral_le
#print MobiusRatio.moebius_ratio_identity

-- The second moment retains the coordinate factor in the actual normalized test.
example (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun t : ℝ ↦ t ^ 2 * Real.exp (t / 2) *
      sourceCorrelation Realization.explicitSecondDerivative A t) ∧
    (1 / 2 : ℝ) * (∫ t : ℝ, t ^ 2 * Real.exp (t / 2) *
      sourceCorrelation Realization.explicitSecondDerivative A t) =
        (∫ x : ℝ, x * Real.exp (x / 2) *
          (dilationTest Realization.explicitSecondDerivative A x /
            Real.sqrt (sourceNormalization A))) ^ 2 :=
  ⟨CorrelationSecondMoment.weighted_correlation_secondMoment_integrable A hA,
    CorrelationSecondMoment.full_correlation_secondMoment_eq_square A hA⟩

-- The full original prime-power contribution is retained with both ordered coefficients.
example (A : ℝ) (hA : 1 ≤ A) :
    primePowerContribution Realization.explicitSecondDerivative A =
      2 * (∑ d ∈ Finset.Icc 1 ⌊Real.exp A⌋₊,
        (ArithmeticFunction.moebius d : ℝ) * SourceSampling.sourceSamplingKernel A d) -
      ∑ i ∈ Finset.Icc 1 ⌊Real.exp A⌋₊, ∑ j ∈ Finset.Icc 1 ⌊Real.exp A⌋₊,
        (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) *
          (∑ k ∈ Finset.Icc 1 ⌊Real.exp (2 * A)⌋₊,
            ∑ l ∈ (Finset.Icc 1 ⌊Real.exp (2 * A)⌋₊).filter
              (fun l : ℕ ↦ (((i * j) * k * l : ℕ) : ℝ) < Real.exp (2 * A)),
              Real.log (l : ℝ) / Real.sqrt (((i * j) * k * l : ℕ) : ℝ) *
                sourceCorrelation Realization.explicitSecondDerivative A
                  (Real.log ((i * j) * k * l : ℕ))) :=
  ThetaKernelTransport.source_prime_decomposition_theta A hA

example (A : ℝ) (q k l : ℕ) (hq : 1 ≤ q) :
    (k ∈ Finset.Icc 1 ⌊Real.exp (2 * A)⌋₊ ∧
      l ∈ (Finset.Icc 1 ⌊Real.exp (2 * A)⌋₊).filter
        (fun l : ℕ ↦ ((q * k * l : ℕ) : ℝ) < Real.exp (2 * A))) ↔
      1 ≤ k ∧ 1 ≤ l ∧ ((q * k * l : ℕ) : ℝ) < Real.exp (2 * A) :=
  ThetaKernelTransport.theta_indices_iff A q k l hq

-- The primitive is finite and integrable before any calculus identity is invoked.
example (A s : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun t : ℝ ↦ Real.exp (t / 2) *
      sourceCorrelation Realization.explicitSecondDerivative A t) volume (-2 * A) s ∧
    HasDerivAt (fun s ↦ Real.exp (-s / 2) * ∫ t in (-2 * A)..s,
      Real.exp (t / 2) * sourceCorrelation Realization.explicitSecondDerivative A t)
      (sourceCorrelation Realization.explicitSecondDerivative A s -
        (Real.exp (-s / 2) * ∫ t in (-2 * A)..s,
          Real.exp (t / 2) * sourceCorrelation Realization.explicitSecondDerivative A t) / 2) s :=
  ⟨CorrelationPrimitive.primitive_integrand_intervalIntegrable A s hA,
    CorrelationPrimitive.correlationPrimitive_hasDerivAt A s hA⟩

example (A s : ℝ) (hA : 1 ≤ A) :
    |Real.exp (-s / 2) * ∫ t in (-2 * A)..s,
      Real.exp (t / 2) * sourceCorrelation Realization.explicitSecondDerivative A t| ≤ 2 :=
  CorrelationPrimitive.correlationPrimitive_abs_le A s hA

example (A s : ℝ) (hA : 1 ≤ A) :
    |deriv (fun s ↦ Real.exp (-s / 2) * ∫ t in (-2 * A)..s,
      Real.exp (t / 2) * sourceCorrelation Realization.explicitSecondDerivative A t) s| ≤
      2 * Real.sqrt (65 / 3) / A :=
  CorrelationPrimitive.correlationPrimitive_derivative_abs_le A s hA

example (F : ℝ → ℝ) (x L L' B : ℝ) (N : ℕ)
    (hx : 0 < x) (hN : 1 ≤ N) (hF : ContDiff ℝ 1 F) (hc : HasCompactSupport F)
    (hbound : ∀ t, |F t| ≤ L) (hd : ∀ t, |deriv F t| ≤ L')
    (h0 : (∫ t : ℝ, Real.exp (t / 2) * F t) = 0)
    (h1 : (∫ t : ℝ, t * Real.exp (t / 2) * F t) = B)
    (hcut : ∀ u : ℝ, (N : ℝ) ≤ u →
      Real.log u / Real.sqrt (x * u) * F (Real.log x + Real.log u) = 0) :
    |(∑ k ∈ Finset.Icc 1 N,
      Real.log (k : ℝ) / Real.sqrt (x * k) * F (Real.log x + Real.log k)) - B / x| ≤
        (8 * L + 4 * L') / Real.sqrt x :=
  FirstMomentSampling.sampling_sum_sub_firstMoment_abs_le F x L L' B N
    hx hN hF hc hbound hd h0 h1 hcut

#print ThetaKernelTransport.source_prime_decomposition_theta
#print CorrelationSecondMoment.full_correlation_secondMoment_eq_square
#print CorrelationPrimitive.correlationPrimitive_hasDerivAt

-- A signed sawtooth identity is checked before applying its total-variation bound.
example (A : ℝ) (q : ℕ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    ThetaKernelTransport.thetaKernel A q -
      (∫ t in (1 : ℝ)..(⌊Real.exp (2 * A)⌋₊ + 1 : ℕ),
        SourceSampling.sourceSamplingKernel A ((q : ℝ) * t)) =
      -(∫ t in (1 : ℝ)..(⌊Real.exp (2 * A)⌋₊ + 1 : ℕ),
        ((⌊t⌋₊ : ℝ) + 1 - t) *
          ((q : ℝ) * deriv (SourceSampling.sourceSamplingKernel A) ((q : ℝ) * t))) :=
  ThetaSamplingError.thetaKernel_sub_integral_eq A q hA hq

example (A : ℝ) (q : ℕ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |ThetaKernelTransport.thetaKernel A q -
      (∫ t in (1 : ℝ)..(⌊Real.exp (2 * A)⌋₊ + 1 : ℕ),
        SourceSampling.sourceSamplingKernel A ((q : ℝ) * t))| ≤
      2 * (4 + 10 * Real.sqrt (65 / 3) / A + 4 * (65 / (3 * A ^ 2))) /
        Real.sqrt (q : ℝ) :=
  ThetaSamplingError.thetaKernel_sub_integral_abs_le_explicit A q hA hq

-- Expanding the exact remainder retains all pairs, including a product at the source cutoff.
example (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue Realization.explicitSecondDerivative A =
      archimedeanValue Realization.explicitSecondDerivative A -
      4 * (∑ d ∈ Finset.Icc 1 ⌊Real.exp A⌋₊,
        (ArithmeticFunction.moebius d : ℝ) * SourceSampling.sourceSamplingKernel A d) +
      2 * (∫ x : ℝ, x * Real.exp (x / 2) *
        normalizedTest Realization.explicitSecondDerivative A x) ^ 2 *
        (∑ d ∈ Finset.Icc 1 ⌊Real.exp A⌋₊,
          (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) ^ 2 +
      2 * (∑ i ∈ Finset.Icc 1 ⌊Real.exp A⌋₊, ∑ j ∈ Finset.Icc 1 ⌊Real.exp A⌋₊,
        (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) *
          (ThetaKernelTransport.thetaKernel A (i * j) -
            (∫ x : ℝ, x * Real.exp (x / 2) *
              normalizedTest Realization.explicitSecondDerivative A x) ^ 2 /
                ((i * j : ℕ) : ℝ))) :=
  ThetaRemainder.sourceQuadraticValue_eq A hA

#print ThetaSamplingError.thetaKernel_sub_integral_eq
#print ThetaRemainder.sourceQuadraticValue_eq

-- The negative primitive has first moment +beta, with both genuine moment integrals supplied.
example (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun t : ℝ ↦ Real.exp (t / 2) *
      (-CorrelationPrimitive.correlationPrimitive A t)) ∧
    Integrable (fun t : ℝ ↦ t * Real.exp (t / 2) *
      (-CorrelationPrimitive.correlationPrimitive A t)) :=
  CorrelationPrimitiveMoments.negative_primitive_moments_integrable A hA

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ t : ℝ, Real.exp (t / 2) * (-CorrelationPrimitive.correlationPrimitive A t)) = 0 ∧
    (∫ t : ℝ, t * Real.exp (t / 2) * (-CorrelationPrimitive.correlationPrimitive A t)) =
      (∫ x : ℝ, x * Real.exp (x / 2) *
        normalizedTest Realization.explicitSecondDerivative A x) ^ 2 :=
  CorrelationPrimitiveMoments.negative_primitive_moments A hA

-- The infinite real integral is genuine before its fixed finite interchange.
example (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    IntegrableOn (fun x ↦ SourceSampling.sourceSamplingKernel A (q * x)) (Set.Ioi 1) ∧
    (∫ x in Set.Ioi (1 : ℝ), SourceSampling.sourceSamplingKernel A (q * x)) =
      ∑ l ∈ Finset.Icc 1 (⌊Real.exp (2 * A)⌋₊ + 1),
        Real.log (l : ℝ) / Real.sqrt (q * (l : ℝ)) *
          (-CorrelationPrimitive.correlationPrimitive A (Real.log (q * (l : ℝ)))) :=
  ⟨InnerPrimitiveTransport.sourceKernel_rescaled_integrable A q hA hq,
    InnerPrimitiveTransport.sourceKernel_integral_eq_primitive_sum A q hA hq⟩

-- Complete kernel estimate with the literal actual first-test-moment square.
example (A : ℝ) (q : ℕ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |ThetaKernelTransport.thetaKernel A q -
      (∫ x : ℝ, x * Real.exp (x / 2) *
        normalizedTest Realization.explicitSecondDerivative A x) ^ 2 / (q : ℝ)| ≤
      (24 + 28 * Real.sqrt (65 / 3) / A + 8 * (65 / (3 * A ^ 2))) /
        Real.sqrt (q : ℝ) :=
  ThetaKernelEstimate.thetaKernel_sub_rankOne_abs_le A q hA hq

#print InnerPrimitiveTransport.sourceKernel_integral_eq_primitive_sum
#print ThetaKernelEstimate.thetaKernel_sub_rankOne_abs_le

-- Every new finite gcd-transport interface retains the original ordered square.
section GcdClassStatements
open Finset GcdClassTransport

example (N : ℕ) : coprimePairs N =
    ((Icc 1 N) ×ˢ (Icc 1 N)).filter (fun p ↦ Nat.Coprime p.1 p.2) := rfl

example (N : ℕ) : gcdClasses N =
    (coprimePairs N).sigma (fun p ↦ Icc 1 (N / max p.1 p.2)) := rfl

example (p : ℕ × ℕ) : splitPair p =
    ⟨(p.1 / Nat.gcd p.1 p.2, p.2 / Nat.gcd p.1 p.2), Nat.gcd p.1 p.2⟩ := rfl

example (s : Σ _ : ℕ × ℕ, ℕ) : joinClass s = (s.2 * s.1.1, s.2 * s.1.2) := rfl

example (N : ℕ) (p : ℕ × ℕ) (hp : p ∈ (Icc 1 N) ×ˢ (Icc 1 N)) :
    splitPair p ∈ gcdClasses N := GcdClassTransport.splitPair_mem N p hp

example (N : ℕ) (s : Σ _ : ℕ × ℕ, ℕ) (hs : s ∈ gcdClasses N) :
    joinClass s ∈ (Icc 1 N) ×ˢ (Icc 1 N) := GcdClassTransport.joinClass_mem N s hs

example (p : ℕ × ℕ) : joinClass (splitPair p) = p :=
  GcdClassTransport.joinClass_splitPair p

example (N : ℕ) (s : Σ _ : ℕ × ℕ, ℕ) (hs : s ∈ gcdClasses N) :
    splitPair (joinClass s) = s := GcdClassTransport.splitPair_joinClass N s hs

example (N : ℕ) (H : ℕ → ℕ → ℝ) :
    (∑ d ∈ Icc 1 N, ∑ e ∈ Icc 1 N, H d e) =
      ∑ p ∈ coprimePairs N, ∑ g ∈ Icc 1 (N / max p.1 p.2),
        H (g * p.1) (g * p.2) := GcdClassTransport.sum_eq_coprime_classes N H

example (N : ℕ) (E : ℕ → ℝ) :
    (∑ d ∈ Icc 1 N, ∑ e ∈ Icc 1 N,
      (ArithmeticFunction.moebius d : ℝ) * (ArithmeticFunction.moebius e : ℝ) * E (d * e)) =
      ∑ p ∈ coprimePairs N, (ArithmeticFunction.moebius (p.1 * p.2) : ℝ) *
        ∑ g ∈ Icc 1 (N / max p.1 p.2), (ArithmeticFunction.moebius g : ℝ) ^ 2 *
          (if Nat.Coprime g (p.1 * p.2) then 1 else 0) * E ((p.1 * p.2) * g ^ 2) :=
  GcdClassTransport.moebius_weighted_sum_eq_coprime_classes N E
end GcdClassStatements

-- The original selected block is defined before reindexing or zero-coefficient removal.
section PrimeSupportedBlockStatements
open Finset GcdClassTransport PrimeSupportedBlock

example (P : Finset ℕ) (i j : ℕ) : quotientSupported P i j ↔
    (i / Nat.gcd i j).primeFactors ⊆ P ∧ (j / Nat.gcd i j).primeFactors ⊆ P := Iff.rfl

example (A : ℝ) (u v : ℕ) : ratioClassContribution A u v =
    (ArithmeticFunction.moebius (u * v) : ℝ) *
      ∑ g ∈ Icc 1 (⌊Real.exp A⌋₊ / max u v), (ArithmeticFunction.moebius g : ℝ) ^ 2 *
        (if Nat.Coprime g (u * v) then 1 else 0) *
          (ThetaKernelTransport.thetaKernel A ((u * v) * g ^ 2) -
            CorrelationSecondMoment.sourceRankOneCoefficient A / (((u * v) * g ^ 2 : ℕ) : ℝ)) := rfl

example (A : ℝ) (P : Finset ℕ) : primeSupportedBlock A P =
    ∑ p ∈ ((Icc 1 ⌊Real.exp A⌋₊) ×ˢ (Icc 1 ⌊Real.exp A⌋₊)).filter
      (fun p ↦ (p.1 / Nat.gcd p.1 p.2).primeFactors ⊆ P ∧
        (p.2 / Nat.gcd p.1 p.2).primeFactors ⊆ P),
      (ArithmeticFunction.moebius p.1 : ℝ) * (ArithmeticFunction.moebius p.2 : ℝ) *
        ThetaRemainder.thetaRemainder A (p.1 * p.2) := by
  classical
  unfold primeSupportedBlock quotientSupported
  apply sum_congr
  · exact filter_congr_decidable _ _ _
  · intro p _
    rfl

example (A : ℝ) (u v : ℕ) (huv : Nat.Coprime u v) :
    ratioClassContribution A u v =
      ∑ g ∈ Icc 1 (⌊Real.exp A⌋₊ / max u v),
        (ArithmeticFunction.moebius (g * u) : ℝ) * (ArithmeticFunction.moebius (g * v) : ℝ) *
          ThetaRemainder.thetaRemainder A ((g * u) * (g * v)) :=
  PrimeSupportedBlock.ratioClassContribution_eq_original_sum A u v huv

example (A : ℝ) (P : Finset ℕ) : primeSupportedBlock A P =
    ∑ p ∈ (coprimePairs ⌊Real.exp A⌋₊).filter
      (fun p ↦ p.1.primeFactors ⊆ P ∧ p.2.primeFactors ⊆ P),
      ratioClassContribution A p.1 p.2 :=
  PrimeSupportedBlock.primeSupportedBlock_eq_bounded_classes A P

example (A : ℝ) (u v : ℕ) (h : ¬Squarefree (u * v)) :
    ratioClassContribution A u v = 0 :=
  PrimeSupportedBlock.ratioClassContribution_eq_zero_of_not_squarefree A u v h

example (A : ℝ) (u v : ℕ) (h : ⌊Real.exp A⌋₊ < max u v) :
    ratioClassContribution A u v = 0 :=
  PrimeSupportedBlock.ratioClassContribution_eq_zero_of_max_lt A u v h

example (A : ℝ) (P : Finset ℕ) (hP : ∀ p ∈ P, Nat.Prime p) :
    primeSupportedBlock A P =
      ∑ p ∈ PrimeRatioProduct.supportedPairs P,
        (ArithmeticFunction.moebius (p.1 * p.2) : ℝ) *
          ∑ g ∈ Icc 1 (⌊Real.exp A⌋₊ / max p.1 p.2),
            (ArithmeticFunction.moebius g : ℝ) ^ 2 *
              (if Nat.Coprime g (p.1 * p.2) then 1 else 0) *
                ThetaRemainder.thetaRemainder A ((p.1 * p.2) * g ^ 2) :=
  PrimeSupportedBlock.primeSupportedBlock_eq_supportedPairs A P hP
end PrimeSupportedBlockStatements

-- Ordered disjoint prime assignments include the empty subsets and have no repetitions.
section PrimeRatioProductStatements
open Finset PrimeRatioProduct

example (P : Finset ℕ) (w : ℕ → ℝ) :
    (∑ U ∈ P.powerset, ∑ V ∈ (P \ U).powerset,
      (∏ p ∈ U, w p) * (∏ p ∈ V, w p)) = ∏ p ∈ P, (1 + 2 * w p) :=
  PrimeRatioProduct.ordered_disjoint_assignment_product P w

example (S : Finset ℕ) :
    1 / Real.sqrt ((∏ p ∈ S, p : ℕ) : ℝ) = ∏ p ∈ S, (1 / Real.sqrt (p : ℝ)) :=
  PrimeRatioProduct.reciprocal_sqrt_product S

example (S T : Finset ℕ) :
    1 / Real.sqrt (((∏ p ∈ S, p) * (∏ p ∈ T, p) : ℕ) : ℝ) =
      (∏ p ∈ S, (1 / Real.sqrt (p : ℝ))) * (∏ p ∈ T, (1 / Real.sqrt (p : ℝ))) :=
  PrimeRatioProduct.reciprocal_sqrt_products S T

example (S : Finset ℕ) (hS : ∀ p ∈ S, Nat.Prime p) :
    Squarefree (∏ p ∈ S, p) := PrimeRatioProduct.prime_product_squarefree S hS

example (P : Finset ℕ) : assignments P =
    P.powerset.sigma (fun U ↦ (P \ U).powerset) := rfl

example (s : Σ _ : Finset ℕ, Finset ℕ) : joinAssignment s =
    (∏ p ∈ s.1, p, ∏ p ∈ s.2, p) := rfl

example (P : Finset ℕ) : supportedPairs P =
    (assignments P).image joinAssignment := rfl

example (P : Finset ℕ) (s : Σ _ : Finset ℕ, Finset ℕ) (hs : s ∈ assignments P) :
    s.1 ⊆ P ∧ s.2 ⊆ P ∧ Disjoint s.1 s.2 := PrimeRatioProduct.assignment_subsets P s hs

example (P : Finset ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    (s : Σ _ : Finset ℕ, Finset ℕ) (hs : s ∈ assignments P) :
    (joinAssignment s).1.primeFactors = s.1 ∧ (joinAssignment s).2.primeFactors = s.2 :=
  PrimeRatioProduct.assignment_primeFactors P hP s hs

example (P : Finset ℕ) (hP : ∀ p ∈ P, Nat.Prime p) :
    Set.InjOn joinAssignment (assignments P) := PrimeRatioProduct.joinAssignment_injOn P hP

example (P : Finset ℕ) (hP : ∀ p ∈ P, Nat.Prime p) (d e : ℕ) :
    (d, e) ∈ supportedPairs P ↔
      Squarefree d ∧ Squarefree e ∧ Nat.Coprime d e ∧
        d.primeFactors ⊆ P ∧ e.primeFactors ⊆ P :=
  PrimeRatioProduct.mem_supportedPairs_iff P hP d e

example (P : Finset ℕ) (hP : ∀ p ∈ P, Nat.Prime p) :
    (∑ p ∈ supportedPairs P, 1 / Real.sqrt ((p.1 * p.2 : ℕ) : ℝ)) =
      ∏ p ∈ P, (1 + 2 / Real.sqrt (p : ℝ)) :=
  PrimeRatioProduct.supportedPairs_weight_sum P hP

example (P : Finset ℕ) (hP : ∀ p ∈ P, Nat.Prime p) :
    (∑ p ∈ supportedPairs P,
      |(ArithmeticFunction.moebius p.1 : ℝ) * (ArithmeticFunction.moebius p.2 : ℝ)| /
        Real.sqrt ((p.1 * p.2 : ℕ) : ℝ)) =
      ∏ p ∈ P, (1 + 2 / Real.sqrt (p : ℝ)) :=
  PrimeRatioProduct.supportedPairs_moebius_weight_sum P hP

example (g u v : ℕ) (huv : Nat.Coprime u v) (hsq : ¬Squarefree (u * v)) :
    (ArithmeticFunction.moebius (g * u) : ℝ) * (ArithmeticFunction.moebius (g * v) : ℝ) = 0 :=
  PrimeRatioProduct.squareful_ratio_coefficient_zero g u v huv hsq
end PrimeRatioProductStatements

-- The common-scale sum is complete; the bound is uniform over all positive ratios.
section RatioClassBudgetStatements
open Finset PrimeSupportedBlock PrimeRatioProduct

example (A : ℝ) (hA : 1 ≤ A) :
    (∑ g ∈ Icc 1 ⌊Real.exp A⌋₊, 1 / (g : ℝ)) ≤ 1 + A :=
  RatioClassBudget.source_harmonic_sum_le A hA

example (A : ℝ) (u v : ℕ) (hA : 1 ≤ A) (hu : 1 ≤ u) (hv : 1 ≤ v) :
    |(ArithmeticFunction.moebius (u * v) : ℝ) *
      ∑ g ∈ Icc 1 (⌊Real.exp A⌋₊ / max u v), (ArithmeticFunction.moebius g : ℝ) ^ 2 *
        (if Nat.Coprime g (u * v) then 1 else 0) *
          ThetaRemainder.thetaRemainder A ((u * v) * g ^ 2)| ≤
      (24 + 28 * Real.sqrt (65 / 3) / A + 8 * (65 / (3 * A ^ 2))) *
        (1 + A) / Real.sqrt ((u * v : ℕ) : ℝ) :=
  RatioClassBudget.ratioClass_abs_le A u v hA hu hv

example (A : ℝ) (P : Finset ℕ) (hA : 1 ≤ A) (hP : ∀ p ∈ P, Nat.Prime p) :
    |∑ p ∈ supportedPairs P, ratioClassContribution A p.1 p.2| ≤
      (24 + 28 * Real.sqrt (65 / 3) / A + 8 * (65 / (3 * A ^ 2))) *
        (1 + A) * ∏ p ∈ P, (1 + 2 / Real.sqrt (p : ℝ)) :=
  RatioClassBudget.supported_ratio_sum_abs_le A P hA hP

example (A : ℝ) (P : Finset ℕ) (hA : 1 ≤ A) (hP : ∀ p ∈ P, Nat.Prime p) :
    |primeSupportedBlock A P| ≤
      (24 + 28 * Real.sqrt (65 / 3) / A + 8 * (65 / (3 * A ^ 2))) *
        (1 + A) * ∏ p ∈ P, (1 + 2 / Real.sqrt (p : ℝ)) :=
  RatioClassBudget.primeSupportedBlock_abs_le A P hA hP
end RatioClassBudgetStatements

-- The diagonal budget does not assert a bound for the off-diagonal complement.
section DiagonalRemainderStatements
open Finset

example (g : ℕ) : (ArithmeticFunction.moebius g : ℝ) ^ 2 ≤ 1 :=
  DiagonalRemainderBudget.moebius_square_le_one g

example (A : ℝ) (hA : 1 ≤ A) :
    (∑ g ∈ Icc 1 ⌊Real.exp A⌋₊, (g : ℝ)⁻¹) ≤ 1 + A :=
  DiagonalRemainderBudget.source_harmonic_sum_le A hA

example (A : ℝ) (hA : 1 ≤ A) :
    |∑ g ∈ Icc 1 ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius g : ℝ) ^ 2 *
      ThetaRemainder.thetaRemainder A (g ^ 2)| ≤
      (24 + 28 * Real.sqrt (65 / 3) / A + 8 * (65 / (3 * A ^ 2))) * (1 + A) :=
  DiagonalRemainderBudget.diagonal_remainder_abs_le A hA
end DiagonalRemainderStatements

-- The prime cutoff grows as (log A)^2 and retains the exact factor 1+2/sqrt(p).
section PrimeProductGrowthStatements
open Finset PrimeProductGrowth

example (P : Finset ℕ) (y : ℝ) (hy : 0 ≤ y)
    (hP : ∀ p ∈ P, 1 ≤ p ∧ (p : ℝ) ≤ y) :
    (∑ p ∈ P, 1 / Real.sqrt (p : ℝ)) ≤ 2 * Real.sqrt y :=
  PrimeProductGrowth.reciprocal_sqrt_finite_sum_le P y hy hP

example (P : Finset ℕ) (y : ℝ) (hy : 0 ≤ y)
    (hP : ∀ p ∈ P, 1 ≤ p ∧ (p : ℝ) ≤ y) :
    (∏ p ∈ P, (1 + 2 / Real.sqrt (p : ℝ))) ≤ Real.exp (4 * Real.sqrt y) :=
  PrimeProductGrowth.finite_product_le_exp_sqrt P y hy hP

example (A : ℝ) : smallRatioPrimes A =
    (Icc 1 ⌊(Real.log A) ^ 2⌋₊).filter Nat.Prime := rfl

example (A : ℝ) (p : ℕ) : p ∈ smallRatioPrimes A ↔
    Nat.Prime p ∧ (p : ℝ) ≤ (Real.log A) ^ 2 :=
  PrimeProductGrowth.mem_smallRatioPrimes_iff A p

example (A : ℝ) (p : ℕ) (hp : p ∈ smallRatioPrimes A) : Nat.Prime p :=
  PrimeProductGrowth.smallRatioPrimes_prime A p hp

example (A : ℝ) (hA : 1 ≤ A) :
    (∏ p ∈ (Icc 1 ⌊(Real.log A) ^ 2⌋₊).filter Nat.Prime,
      (1 + 2 / Real.sqrt (p : ℝ))) ≤ A ^ 4 :=
  PrimeProductGrowth.smallRatioPrimes_product_le A hA

example (A : ℝ) (hA : 1 ≤ A) :
    24 + 28 * Real.sqrt (65 / 3) / A + 8 * (65 / (3 * A ^ 2)) ≤
      24 + 28 * Real.sqrt (65 / 3) + 520 / 3 :=
  PrimeProductGrowth.kernelBound_uniform_le A hA
end PrimeProductGrowthStatements

-- The complement remains on the original square, with every other source term retained.
section PrimeBlockReductionStatements
open Finset PrimeSupportedBlock PrimeBlockReduction

example (A : ℝ) (P : Finset ℕ) : roughRatioRemainder A P =
    ∑ p ∈ ((Icc 1 ⌊Real.exp A⌋₊) ×ˢ (Icc 1 ⌊Real.exp A⌋₊)).filter
      (fun p ↦ ¬((p.1 / Nat.gcd p.1 p.2).primeFactors ⊆ P ∧
        (p.2 / Nat.gcd p.1 p.2).primeFactors ⊆ P)),
      (ArithmeticFunction.moebius p.1 : ℝ) * (ArithmeticFunction.moebius p.2 : ℝ) *
        ThetaRemainder.thetaRemainder A (p.1 * p.2) := by
  classical
  unfold roughRatioRemainder quotientSupported
  apply sum_congr
  · exact filter_congr_decidable _ _ _
  · intro p _
    rfl

example (A : ℝ) (P : Finset ℕ) : retainedArithmetic A P =
    archimedeanValue Realization.explicitSecondDerivative A -
      4 * (∑ d ∈ Icc 1 ⌊Real.exp A⌋₊,
        (ArithmeticFunction.moebius d : ℝ) * SourceSampling.sourceSamplingKernel A d) +
      2 * (∫ x : ℝ, x * Real.exp (x / 2) *
        normalizedTest Realization.explicitSecondDerivative A x) ^ 2 *
        (∑ d ∈ Icc 1 ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) ^ 2 +
      2 * roughRatioRemainder A P := rfl

example (A : ℝ) (P : Finset ℕ) :
    (∑ i ∈ Icc 1 ⌊Real.exp A⌋₊, ∑ j ∈ Icc 1 ⌊Real.exp A⌋₊,
      (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) *
        ThetaRemainder.thetaRemainder A (i * j)) =
      primeSupportedBlock A P + roughRatioRemainder A P :=
  PrimeBlockReduction.remainder_eq_block_add_rough A P

example (A : ℝ) (P : Finset ℕ) (hA : 1 ≤ A) :
    sourceQuadraticValue Realization.explicitSecondDerivative A =
      retainedArithmetic A P + 2 * primeSupportedBlock A P :=
  PrimeBlockReduction.sourceQuadraticValue_eq_retained_add_block A P hA

example (A : ℝ) (P : Finset ℕ) (hA : 1 ≤ A) :
    |max (-sourceQuadraticValue Realization.explicitSecondDerivative A) 0 -
      max (-retainedArithmetic A P) 0| ≤ 2 * |primeSupportedBlock A P| :=
  PrimeBlockReduction.negativePart_difference_le_block A P hA

example (A : ℝ) (hA : 1 ≤ A) :
    |primeSupportedBlock A ((Icc 1 ⌊(Real.log A) ^ 2⌋₊).filter Nat.Prime)| ≤
      2 * (24 + 28 * Real.sqrt (65 / 3) + 520 / 3) * A ^ 5 :=
  PrimeBlockReduction.smallRatioPrimes_block_abs_le A hA

example (A : ℝ) (hA : 1 ≤ A) :
    |max (-sourceQuadraticValue Realization.explicitSecondDerivative A) 0 -
      max (-retainedArithmetic A ((Icc 1 ⌊(Real.log A) ^ 2⌋₊).filter Nat.Prime)) 0| ≤
      4 * (24 + 28 * Real.sqrt (65 / 3) + 520 / 3) * A ^ 5 :=
  PrimeBlockReduction.smallRatioPrimes_negativePart_difference_le A hA
end PrimeBlockReductionStatements

-- The shared coefficient is the complete three-term kernel bound already proved above.
example (A : ℝ) : ThetaKernelEstimate.kernelBound A =
    24 + 28 * Real.sqrt (65 / 3) / A + 8 * (65 / (3 * A ^ 2)) := rfl

example (A : ℝ) (hA : 1 ≤ A) :
    0 ≤ 24 + 28 * Real.sqrt (65 / 3) / A + 8 * (65 / (3 * A ^ 2)) :=
  ThetaKernelEstimate.kernelBound_nonneg A hA

example (A : ℝ) (q : ℕ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |ThetaKernelTransport.thetaKernel A q -
      (∫ x : ℝ, x * Real.exp (x / 2) *
        normalizedTest Realization.explicitSecondDerivative A x) ^ 2 / (q : ℝ)| ≤
      (24 + 28 * Real.sqrt (65 / 3) / A + 8 * (65 / (3 * A ^ 2))) /
        Real.sqrt (q : ℝ) :=
  ThetaKernelEstimate.thetaRemainder_abs_le_kernelBound A q hA hq

-- Parameter measurability is proved for the literal source and all moving cutoffs.
example (f : ℕ → ℝ → ℝ) (N : ℝ → ℕ)
    (hf : ∀ n, Measurable (f n)) (hN : Measurable N) :
    Measurable (fun A ↦ ∑ n ∈ Finset.Icc 1 (N A), f n A) :=
  SourceParameterMeasurability.measurable_sum_Icc f N hf hN

example : Measurable sourceBump := SourceParameterMeasurability.sourceBump_measurable

example : Measurable (fun p : ℝ × ℝ ↦ Realization.explicitSecondDerivative p.1 p.2) :=
  SourceParameterMeasurability.explicitSecondDerivative_measurable

example : Measurable (fun p : ℝ × ℝ ↦
    normalizedTest Realization.explicitSecondDerivative p.1 p.2) :=
  SourceParameterMeasurability.normalizedTest_measurable

example : Measurable (fun p : ℝ × ℝ ↦
    sourceCorrelation Realization.explicitSecondDerivative p.1 p.2) :=
  SourceParameterMeasurability.sourceCorrelation_measurable

example : Measurable (fun A : ℝ ↦ (∫ x : ℝ, x * Real.exp (x / 2) *
    normalizedTest Realization.explicitSecondDerivative A x) ^ 2) :=
  SourceParameterMeasurability.sourceRankOneCoefficient_measurable

example (n : ℕ) : Measurable (fun A : ℝ ↦ if (n : ℝ) < Real.exp (2 * A) then
    1 / Real.sqrt (n : ℝ) * sourceCorrelation Realization.explicitSecondDerivative A
      (Real.log (n : ℝ)) else 0) :=
  SourceParameterMeasurability.sourceFiniteWeight_measurable n

example (q : ℕ) : Measurable (fun A ↦ ThetaKernelTransport.thetaKernel A q) :=
  SourceParameterMeasurability.thetaKernel_measurable q

example (q : ℕ) : Measurable (fun A ↦ ThetaKernelTransport.thetaKernel A q -
    CorrelationSecondMoment.sourceRankOneCoefficient A / (q : ℝ)) :=
  SourceParameterMeasurability.thetaRemainder_measurable q

example (P : Finset ℕ) : Measurable (fun A ↦ PrimeSupportedBlock.primeSupportedBlock A P) :=
  PrimeBlockIntegrability.primeSupportedBlock_measurable P

example : Measurable (fun A ↦ PrimeSupportedBlock.primeSupportedBlock A
    (PrimeProductGrowth.smallRatioPrimes A)) :=
  PrimeBlockIntegrability.smallRatioPrimes_block_measurable

example (σ : ℝ) : Measurable (fun A ↦ Real.exp (-σ * A) *
    (A ^ 17 * sourceNormalization A * PrimeSupportedBlock.primeSupportedBlock A
      (PrimeProductGrowth.smallRatioPrimes A))) :=
  PrimeBlockIntegrability.weighted_smallRatioPrimes_block_measurable σ

-- These are genuine all-rate integrals of the specified block, not the full Q negative part.
example (σ : ℝ) (hσ : 0 < σ) : IntegrableOn (fun A ↦ Real.exp (-σ * A) *
    (A ^ 17 * sourceNormalization A * PrimeSupportedBlock.primeSupportedBlock A
      (PrimeProductGrowth.smallRatioPrimes A))) (Set.Ioi 1) :=
  PrimeBlockIntegrability.smallRatioPrimes_block_integrable σ hσ

example (σ : ℝ) (hσ : 0 < σ) : IntegrableOn (fun A ↦ Real.exp (-σ * A) *
    (A ^ 17 * sourceNormalization A * |PrimeSupportedBlock.primeSupportedBlock A
      (PrimeProductGrowth.smallRatioPrimes A)|)) (Set.Ioi 1) :=
  PrimeBlockIntegrability.smallRatioPrimes_block_norm_integrable σ hσ

-- Finite coprime counting includes the actual modulus, divisors, and integer quotient.
section CoprimeCountStatements
open Finset CoprimeCount

example (h j : ℕ) : coprimeCount h j =
    ((Icc 1 j).filter (fun k ↦ Nat.Coprime k h)).card := rfl

example (h : ℕ) : coprimeDensity h =
    ∑ e ∈ h.divisors, (ArithmeticFunction.moebius e : ℝ) / (e : ℝ) := rfl

example (n : ℕ) : (∑ e ∈ n.divisors, (ArithmeticFunction.moebius e : ℝ)) =
    if n = 1 then 1 else 0 := CoprimeCount.sum_moebius_divisors n

example (h k : ℕ) (hh : 1 ≤ h) :
    (if Nat.Coprime k h then (1 : ℝ) else 0) =
      ∑ e ∈ h.divisors, if e ∣ k then (ArithmeticFunction.moebius e : ℝ) else 0 :=
  CoprimeCount.coprime_indicator_eq h k hh

example (j e : ℕ) : ((Icc 1 j).filter (fun k ↦ e ∣ k)).card = j / e :=
  CoprimeCount.positive_multiples_card j e

example (h j : ℕ) (hh : 1 ≤ h) :
    (((Icc 1 j).filter (fun k ↦ Nat.Coprime k h)).card : ℝ) =
      ∑ e ∈ h.divisors, (ArithmeticFunction.moebius e : ℝ) * ((j / e : ℕ) : ℝ) :=
  CoprimeCount.coprimeCount_eq_moebius_floor h j hh

example (j e : ℕ) (he : 1 ≤ e) :
    |((j / e : ℕ) : ℝ) - (j : ℝ) / (e : ℝ)| ≤ 1 :=
  CoprimeCount.natural_division_error j e he

example (h j : ℕ) (hh : 1 ≤ h) :
    |(coprimeCount h j : ℝ) -
      (∑ e ∈ h.divisors, (ArithmeticFunction.moebius e : ℝ) / (e : ℝ)) * (j : ℝ)| ≤
      (h.divisors.card : ℝ) := CoprimeCount.coprimeCount_error_le h j hh

example (h : ℕ) (hh : 1 ≤ h) :
    (coprimeCount h h : ℝ) =
      (∑ e ∈ h.divisors, (ArithmeticFunction.moebius e : ℝ) / (e : ℝ)) * (h : ℝ) :=
  CoprimeCount.coprimeCount_period h hh

example (h j : ℕ) : ((Icc 1 j).filter (fun k ↦ Nat.Coprime k h)).card ≤ j :=
  CoprimeCount.coprimeCount_le h j

example (h : ℕ) (hh : 1 ≤ h) :
    0 ≤ ∑ e ∈ h.divisors, (ArithmeticFunction.moebius e : ℝ) / (e : ℝ) :=
  CoprimeCount.coprimeDensity_nonneg h hh

example (h : ℕ) (hh : 1 ≤ h) :
    (∑ e ∈ h.divisors, (ArithmeticFunction.moebius e : ℝ) / (e : ℝ)) ≤ 1 :=
  CoprimeCount.coprimeDensity_le_one h hh
end CoprimeCountStatements

-- Both square-root tail endpoints remain finite and exact.
section ReciprocalSquareTailStatements
open Finset

example (Y Z : ℕ) (hY : 1 ≤ Y) (hYZ : Y ≤ Z) :
    (∑ d ∈ Ioc Y Z, 1 / (d : ℝ) ^ 2) ≤ 1 / (Y : ℝ) :=
  ReciprocalSquareTail.reciprocal_square_tail_le Y Z hY hYZ

example (j G : ℕ) (hj : 1 ≤ j) (hjG : j ≤ G) :
    (j : ℝ) * (∑ d ∈ Ioc (Nat.sqrt j) (Nat.sqrt G), 1 / (d : ℝ) ^ 2) ≤
      2 * Real.sqrt (j : ℝ) := ReciprocalSquareTail.sqrt_cutoff_tail_le j G hj hjG

example (j G : ℕ) (hj : 1 ≤ j) (hjG : j ≤ G) :
    (j : ℝ) * (∑ d ∈ Ioc ⌊Real.sqrt (j : ℝ)⌋₊ ⌊Real.sqrt (G : ℝ)⌋₊,
      1 / (d : ℝ) ^ 2) ≤ 2 * Real.sqrt (j : ℝ) :=
  ReciprocalSquareTail.floor_sqrt_cutoff_tail_le j G hj hjG
end ReciprocalSquareTailStatements

-- Square-divisor inversion retains the literal Möbius square and coprimality slots.
section SquarefreeCountStatements
open Finset CoprimeCount SquarefreeCount

example (n : ℕ) : halfFactorization n =
    n.factorization.mapRange (fun a ↦ a / 2) (by decide) := rfl

example (n : ℕ) : squareDivisorRoot n = (halfFactorization n).prod (· ^ ·) := rfl

example (n : ℕ) : halfFactorization n ≤ n.factorization :=
  SquarefreeCount.halfFactorization_le n

example (n : ℕ) : squareDivisorRoot n ≠ 0 := SquarefreeCount.squareDivisorRoot_ne_zero n

example (n : ℕ) : (squareDivisorRoot n).factorization = halfFactorization n :=
  SquarefreeCount.squareDivisorRoot_factorization n

example (n d : ℕ) (hn : n ≠ 0) : d ^ 2 ∣ n ↔ d ∣ squareDivisorRoot n :=
  SquarefreeCount.square_dvd_iff_dvd_root n d hn

example (n : ℕ) (hn : n ≠ 0) : squareDivisorRoot n = 1 ↔ Squarefree n :=
  SquarefreeCount.root_eq_one_iff_squarefree n hn

example (n : ℕ) (hn : n ≠ 0) :
    n.divisors.filter (fun d ↦ d ^ 2 ∣ n) = (squareDivisorRoot n).divisors :=
  SquarefreeCount.squareDivisors_eq_root_divisors n hn

example (n : ℕ) (hn : n ≠ 0) : (ArithmeticFunction.moebius n : ℝ) ^ 2 =
    ∑ d ∈ n.divisors, if d ^ 2 ∣ n then (ArithmeticFunction.moebius d : ℝ) else 0 :=
  SquarefreeCount.moebius_square_eq_sum_squareDivisors n hn

example (n j : ℕ) (hn : 1 ≤ n) (hnj : n ≤ j) :
    n.divisors.filter (fun d ↦ d ^ 2 ∣ n) =
      (Icc 1 (Nat.sqrt j)).filter (fun d ↦ d ^ 2 ∣ n) :=
  SquarefreeCount.squareDivisors_eq_Icc n j hn hnj

example (n j : ℕ) (hn : 1 ≤ n) (hnj : n ≤ j) :
    (ArithmeticFunction.moebius n : ℝ) ^ 2 =
      ∑ d ∈ Icc 1 (Nat.sqrt j), if d ^ 2 ∣ n then
        (ArithmeticFunction.moebius d : ℝ) else 0 :=
  SquarefreeCount.moebius_square_eq_sum_Icc n j hn hnj

example (h j a : ℕ) (ha : 1 ≤ a) (hah : Nat.Coprime a h) :
    ((Icc 1 j).filter (fun n ↦ a ∣ n ∧ Nat.Coprime n h)).card =
      ((Icc 1 (j / a)).filter (fun k ↦ Nat.Coprime k h)).card :=
  SquarefreeCount.coprime_multiples_card h j a ha hah

example (h j : ℕ) : squarefreeCoprimeCount h j =
    ∑ g ∈ Icc 1 j, (ArithmeticFunction.moebius g : ℝ) ^ 2 *
      (if Nat.Coprime g h then 1 else 0) := rfl

example (h j d : ℕ) (hd : 1 ≤ d) :
    (∑ g ∈ Icc 1 j, (if d ^ 2 ∣ g then (1 : ℝ) else 0) *
      (if Nat.Coprime g h then 1 else 0)) =
      if Nat.Coprime d h then (coprimeCount h (j / d ^ 2) : ℝ) else 0 :=
  SquarefreeCount.coprime_multiples_sum h j d hd

example (h j : ℕ) :
    (∑ g ∈ Icc 1 j, (ArithmeticFunction.moebius g : ℝ) ^ 2 *
      (if Nat.Coprime g h then 1 else 0)) =
      ∑ d ∈ Icc 1 (Nat.sqrt j), (ArithmeticFunction.moebius d : ℝ) *
        (if Nat.Coprime d h then (coprimeCount h (j / d ^ 2) : ℝ) else 0) :=
  SquarefreeCount.squarefreeCoprimeCount_eq h j

example (h j a : ℕ) (hh : 1 ≤ h) (ha : 1 ≤ a) :
    |(coprimeCount h (j / a) : ℝ) -
      (∑ e ∈ h.divisors, (ArithmeticFunction.moebius e : ℝ) / (e : ℝ)) *
        (j : ℝ) / (a : ℝ)| ≤ (h.divisors.card : ℝ) :=
  SquarefreeCount.coprimeCount_div_error h j a hh ha

example (h D : ℕ) : finiteSquarefreeDensity h D =
    (∑ e ∈ h.divisors, (ArithmeticFunction.moebius e : ℝ) / (e : ℝ)) *
      ∑ d ∈ Icc 1 D, if Nat.Coprime d h then
        (ArithmeticFunction.moebius d : ℝ) / (d : ℝ) ^ 2 else 0 := rfl

example (h j : ℕ) (hh : 1 ≤ h) :
    |squarefreeCoprimeCount h j -
      (j : ℝ) * finiteSquarefreeDensity h (Nat.sqrt j)| ≤
      (h.divisors.card : ℝ) * (Nat.sqrt j : ℝ) :=
  SquarefreeCount.squarefreeCoprimeCount_error_le h j hh

example (h Y Z : ℕ) (hh : 1 ≤ h) (hYZ : Y ≤ Z) :
    |finiteSquarefreeDensity h Z - finiteSquarefreeDensity h Y| ≤
      ∑ d ∈ Ioc Y Z, 1 / (d : ℝ) ^ 2 :=
  SquarefreeCount.finiteSquarefreeDensity_difference_le h Y Z hh hYZ

example (h j G : ℕ) (hh : 1 ≤ h) (hj : 1 ≤ j) (hjG : j ≤ G) :
    |(∑ g ∈ Icc 1 j, (ArithmeticFunction.moebius g : ℝ) ^ 2 *
        (if Nat.Coprime g h then 1 else 0)) -
      ((∑ e ∈ h.divisors, (ArithmeticFunction.moebius e : ℝ) / (e : ℝ)) *
        ∑ d ∈ Icc 1 (Nat.sqrt G), if Nat.Coprime d h then
          (ArithmeticFunction.moebius d : ℝ) / (d : ℝ) ^ 2 else 0) * (j : ℝ)| ≤
      ((h.divisors.card : ℝ) + 2) * Real.sqrt (j : ℝ) :=
  SquarefreeCount.fixedDensity_error_le h j G hh hj hjG
end SquarefreeCountStatements

-- The finite Abel transport keeps its terminal atom and the full positive difference range.
section FiniteAbelVariationStatements
open Finset

example (b e : ℕ → ℝ) (G : ℕ) : (∑ g ∈ Icc 1 G, b g * e g) =
    (∑ g ∈ Icc 1 G, b g) * e G +
      ∑ j ∈ Ico 1 G, (∑ g ∈ Icc 1 j, b g) * (e j - e (j + 1)) :=
  FiniteAbelVariation.sum_Icc_mul_by_parts_Ico b e G

example (b e : ℕ → ℝ) (G : ℕ) : (∑ g ∈ Icc 1 G, b g * e g) =
    (∑ g ∈ Icc 1 G, b g) * e G +
      ∑ j ∈ Icc 1 (G - 1), (∑ g ∈ Icc 1 j, b g) * (e j - e (j + 1)) :=
  FiniteAbelVariation.sum_Icc_mul_by_parts b e G

example (a : ℕ → ℝ) (δ : ℝ) (j : ℕ) :
    (∑ g ∈ Icc 1 j, (a g - δ)) = (∑ g ∈ Icc 1 j, a g) - δ * (j : ℝ) :=
  FiniteAbelVariation.centered_sum a δ j

example (a e : ℕ → ℝ) (δ : ℝ) (G : ℕ) :
    (∑ g ∈ Icc 1 G, a g * e g) - δ * (∑ g ∈ Icc 1 G, e g) =
      ((∑ g ∈ Icc 1 G, a g) - δ * (G : ℝ)) * e G +
        ∑ j ∈ Icc 1 (G - 1),
          ((∑ g ∈ Icc 1 j, a g) - δ * (j : ℝ)) * (e j - e (j + 1)) :=
  FiniteAbelVariation.centered_sum_mul_by_parts a e δ G

example (a e : ℕ → ℝ) (δ C : ℝ) (G : ℕ)
    (hbound : ∀ j ∈ Icc 1 G,
      |(∑ g ∈ Icc 1 j, a g) - δ * (j : ℝ)| ≤ C * Real.sqrt (j : ℝ)) :
    |(∑ g ∈ Icc 1 G, a g * e g) - δ * (∑ g ∈ Icc 1 G, e g)| ≤
      C * (Real.sqrt (G : ℝ) * |e G| +
        ∑ j ∈ Icc 1 (G - 1), Real.sqrt (j : ℝ) * |e j - e (j + 1)|) :=
  FiniteAbelVariation.weighted_error_abs_le_sqrt_variation a e δ C G hbound

example (a e : ℕ → ℝ) (δ C : ℝ) :
    |(∑ g ∈ Icc 1 0, a g * e g) - δ * (∑ g ∈ Icc 1 0, e g)| =
      C * (Real.sqrt (0 : ℝ) * |e 0| +
        ∑ j ∈ Icc 1 (0 - 1 : ℕ), Real.sqrt (j : ℝ) * |e j - e (j + 1)|) :=
  FiniteAbelVariation.weighted_error_zero a e δ C
end FiniteAbelVariationStatements

-- The actual class transport uses one fixed finite density and retains the external Möbius sign.
section RatioClassVariationStatements
open Finset RatioClassVariation PrimeSupportedBlock

example (A : ℝ) (u v : ℕ) : classMean A u v =
    (ArithmeticFunction.moebius (u * v) : ℝ) *
      ((∑ e ∈ (u * v).divisors, (ArithmeticFunction.moebius e : ℝ) / (e : ℝ)) *
        ∑ d ∈ Icc 1 (Nat.sqrt (⌊Real.exp A⌋₊ / max u v)),
          if Nat.Coprime d (u * v) then
            (ArithmeticFunction.moebius d : ℝ) / (d : ℝ) ^ 2 else 0) *
      ∑ g ∈ Icc 1 (⌊Real.exp A⌋₊ / max u v),
        ThetaRemainder.thetaRemainder A ((u * v) * g ^ 2) := rfl

example (A : ℝ) (u v : ℕ) : classVariation A u v =
    Real.sqrt ((⌊Real.exp A⌋₊ / max u v : ℕ) : ℝ) *
      |ThetaRemainder.thetaRemainder A ((u * v) * (⌊Real.exp A⌋₊ / max u v) ^ 2)| +
      ∑ j ∈ Icc 1 (⌊Real.exp A⌋₊ / max u v - 1), Real.sqrt (j : ℝ) *
        |ThetaRemainder.thetaRemainder A ((u * v) * j ^ 2) -
          ThetaRemainder.thetaRemainder A ((u * v) * (j + 1) ^ 2)| := rfl

example (h G j : ℕ) : classCountingError h G j =
    (∑ g ∈ Icc 1 j, (ArithmeticFunction.moebius g : ℝ) ^ 2 *
      (if Nat.Coprime g h then 1 else 0)) -
      SquarefreeCount.finiteSquarefreeDensity h (Nat.sqrt G) * (j : ℝ) := rfl

example (A : ℝ) (u v : ℕ) :
    ratioClassContribution A u v - classMean A u v =
      (ArithmeticFunction.moebius (u * v) : ℝ) *
        (classCountingError (u * v) (⌊Real.exp A⌋₊ / max u v) (⌊Real.exp A⌋₊ / max u v) *
          ThetaRemainder.thetaRemainder A ((u * v) * (⌊Real.exp A⌋₊ / max u v) ^ 2) +
          ∑ j ∈ Icc 1 (⌊Real.exp A⌋₊ / max u v - 1),
            classCountingError (u * v) (⌊Real.exp A⌋₊ / max u v) j *
              (ThetaRemainder.thetaRemainder A ((u * v) * j ^ 2) -
                ThetaRemainder.thetaRemainder A ((u * v) * (j + 1) ^ 2))) :=
  RatioClassVariation.ratioClass_sub_mean_eq A u v

example (A : ℝ) (u v : ℕ) (hu : 1 ≤ u) (hv : 1 ≤ v) :
    |ratioClassContribution A u v - classMean A u v| ≤
      |(ArithmeticFunction.moebius (u * v) : ℝ)| *
        (((u * v).divisors.card : ℝ) + 2) * classVariation A u v :=
  RatioClassVariation.ratioClass_sub_mean_abs_le A u v hu hv

example (A : ℝ) (u v : ℕ) : 0 ≤ classVariation A u v :=
  RatioClassVariation.classVariation_nonneg A u v

example (A : ℝ) (u v : ℕ) (hG : ⌊Real.exp A⌋₊ / max u v = 0) :
    classMean A u v = 0 ∧ classVariation A u v = 0 :=
  RatioClassVariation.empty_class_mean_variation A u v hG
end RatioClassVariationStatements

-- No rough class or other arithmetic contribution is discarded by the finite mean extraction.
section RoughClassReductionStatements
open Finset RoughClassReduction RatioClassVariation PrimeSupportedBlock PrimeBlockReduction

example (A : ℝ) (P : Finset ℕ) : roughClasses A P =
    (((Icc 1 ⌊Real.exp A⌋₊) ×ˢ (Icc 1 ⌊Real.exp A⌋₊)).filter
      (fun p ↦ Nat.Coprime p.1 p.2)).filter
        (fun p ↦ ¬(p.1.primeFactors ⊆ P ∧ p.2.primeFactors ⊆ P)) := by
  classical
  unfold roughClasses GcdClassTransport.coprimePairs
  exact filter_congr_decidable _ _ _

example (A : ℝ) (P : Finset ℕ) : roughClassMean A P =
    ∑ p ∈ roughClasses A P, classMean A p.1 p.2 := rfl

example (A : ℝ) (P : Finset ℕ) : roughVariationBudget A P =
    ∑ p ∈ roughClasses A P, |(ArithmeticFunction.moebius (p.1 * p.2) : ℝ)| *
      (((p.1 * p.2).divisors.card : ℝ) + 2) * classVariation A p.1 p.2 := rfl

example (A : ℝ) (P : Finset ℕ) : roughRatioRemainder A P =
    ∑ p ∈ roughClasses A P, (ArithmeticFunction.moebius (p.1 * p.2) : ℝ) *
      ∑ g ∈ Icc 1 (⌊Real.exp A⌋₊ / max p.1 p.2), (ArithmeticFunction.moebius g : ℝ) ^ 2 *
        (if Nat.Coprime g (p.1 * p.2) then 1 else 0) *
          ThetaRemainder.thetaRemainder A ((p.1 * p.2) * g ^ 2) :=
  RoughClassReduction.roughRatioRemainder_eq_classes A P

example (A : ℝ) (P : Finset ℕ) :
    |roughRatioRemainder A P - (∑ p ∈ roughClasses A P, classMean A p.1 p.2)| ≤
      ∑ p ∈ roughClasses A P, |(ArithmeticFunction.moebius (p.1 * p.2) : ℝ)| *
        (((p.1 * p.2).divisors.card : ℝ) + 2) * classVariation A p.1 p.2 :=
  RoughClassReduction.roughRatioRemainder_sub_mean_abs_le A P

example (A : ℝ) (P : Finset ℕ) :
    0 ≤ ∑ p ∈ roughClasses A P, |(ArithmeticFunction.moebius (p.1 * p.2) : ℝ)| *
      (((p.1 * p.2).divisors.card : ℝ) + 2) * classVariation A p.1 p.2 :=
  RoughClassReduction.roughVariationBudget_nonneg A P

example (A : ℝ) (P : Finset ℕ) : meanArithmetic A P =
    archimedeanValue Realization.explicitSecondDerivative A -
      4 * (∑ d ∈ Icc 1 ⌊Real.exp A⌋₊,
        (ArithmeticFunction.moebius d : ℝ) * SourceSampling.sourceSamplingKernel A d) +
      2 * (∫ x : ℝ, x * Real.exp (x / 2) *
        normalizedTest Realization.explicitSecondDerivative A x) ^ 2 *
        (∑ d ∈ Icc 1 ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) ^ 2 +
      2 * (∑ p ∈ roughClasses A P, classMean A p.1 p.2) +
      2 * primeSupportedBlock A P := rfl

example (A : ℝ) (P : Finset ℕ) (hA : 1 ≤ A) :
    sourceQuadraticValue Realization.explicitSecondDerivative A =
      archimedeanValue Realization.explicitSecondDerivative A -
        4 * (∑ d ∈ Icc 1 ⌊Real.exp A⌋₊,
          (ArithmeticFunction.moebius d : ℝ) * SourceSampling.sourceSamplingKernel A d) +
        2 * (∫ x : ℝ, x * Real.exp (x / 2) *
          normalizedTest Realization.explicitSecondDerivative A x) ^ 2 *
          (∑ d ∈ Icc 1 ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) ^ 2 +
        2 * (∑ p ∈ roughClasses A P, classMean A p.1 p.2) +
        2 * primeSupportedBlock A P +
        2 * (roughRatioRemainder A P - (∑ p ∈ roughClasses A P, classMean A p.1 p.2)) :=
  RoughClassReduction.sourceQuadraticValue_eq_mean_add_error A P hA

example (A : ℝ) (P : Finset ℕ) (hA : 1 ≤ A) :
    |sourceQuadraticValue Realization.explicitSecondDerivative A - meanArithmetic A P| ≤
      2 * (∑ p ∈ roughClasses A P, |(ArithmeticFunction.moebius (p.1 * p.2) : ℝ)| *
        (((p.1 * p.2).divisors.card : ℝ) + 2) * classVariation A p.1 p.2) :=
  RoughClassReduction.sourceQuadraticValue_sub_mean_abs_le A P hA

example (A : ℝ) (P : Finset ℕ) (hA : 1 ≤ A) :
    archimedeanValue Realization.explicitSecondDerivative A -
      4 * (∑ d ∈ Icc 1 ⌊Real.exp A⌋₊,
        (ArithmeticFunction.moebius d : ℝ) * SourceSampling.sourceSamplingKernel A d) +
      2 * (∫ x : ℝ, x * Real.exp (x / 2) *
        normalizedTest Realization.explicitSecondDerivative A x) ^ 2 *
        (∑ d ∈ Icc 1 ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) ^ 2 +
      2 * (∑ p ∈ roughClasses A P, classMean A p.1 p.2) +
      2 * primeSupportedBlock A P -
      2 * (∑ p ∈ roughClasses A P, |(ArithmeticFunction.moebius (p.1 * p.2) : ℝ)| *
        (((p.1 * p.2).divisors.card : ℝ) + 2) * classVariation A p.1 p.2) ≤
      sourceQuadraticValue Realization.explicitSecondDerivative A :=
  RoughClassReduction.sourceQuadraticValue_lower_comparison A P hA
end RoughClassReductionStatements

section SecondAndThirdDerivatives

open Set
open Realization CorrelationRegularity
open scoped NNReal Topology

-- Three definition checks retain the actual source and the two endpoint traces.
example (A x : ℝ) : SecondDerivativeEnergy.fourthInterior A x =
    (144 - 1440 * (x / A) ^ 2 + 1680 * (x / A) ^ 4) / (A ^ 4 * Real.sqrt A) := rfl

example (A x : ℝ) : SecondDerivativeEnergy.normalizedSecondInterior A x =
    (SecondDerivativeEnergy.fourthInterior A x - secondInterior A x / 4) /
      Real.sqrt (sourceNormalization A) := rfl

example (A : ℝ) : SecondDerivativeEnergy.normalizedSecondTest A =
    (Icc (-A) A).indicator (SecondDerivativeEnergy.normalizedSecondInterior A) := rfl

example (A x : ℝ) : HasDerivAt (thirdInterior A)
    (SecondDerivativeEnergy.fourthInterior A x) x :=
  SecondDerivativeEnergy.thirdInterior_hasDerivAt A x

example (A x : ℝ) : HasDerivAt (normalizedInteriorDerivative A)
    (SecondDerivativeEnergy.normalizedSecondInterior A x) x :=
  SecondDerivativeEnergy.normalizedInteriorDerivative_hasDerivAt A x

example (A : ℝ) : Continuous (SecondDerivativeEnergy.normalizedSecondInterior A) :=
  SecondDerivativeEnergy.normalizedSecondInterior_continuous A

example (A : ℝ) : Integrable (SecondDerivativeEnergy.normalizedSecondTest A) volume :=
  SecondDerivativeEnergy.normalizedSecondTest_integrable A

example (A : ℝ) :
    Integrable (fun x ↦ SecondDerivativeEnergy.normalizedSecondTest A x ^ 2) volume :=
  SecondDerivativeEnergy.normalizedSecondTest_square_integrable A

example (A : ℝ) (hA : 1 ≤ A) :
    ∀ᵐ x : ℝ, HasDerivAt (deriv (normalizedTest explicitSecondDerivative A))
      (SecondDerivativeEnergy.normalizedSecondTest A x) x :=
  SecondDerivativeEnergy.normalized_derivative_hasDerivAt_ae A hA

example (A : ℝ) (hA : 1 ≤ A) :
    deriv (deriv (normalizedTest explicitSecondDerivative A)) =ᵐ[volume]
      SecondDerivativeEnergy.normalizedSecondTest A :=
  SecondDerivativeEnergy.normalized_second_derivative_ae A hA

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, SecondDerivativeEnergy.normalizedSecondTest A x ^ 2) =
      ((32768 : ℝ) / A ^ 8 + (65536 / 77 : ℝ) / (2 * A ^ 6) +
        (196608 / 5005 : ℝ) / (16 * A ^ 4)) / sourceNormalization A :=
  SecondDerivativeEnergy.normalizedSecondTest_square_integral A hA

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, SecondDerivativeEnergy.normalizedSecondTest A x ^ 2) ≤ 5005 / (6 * A ^ 4) :=
  SecondDerivativeEnergy.normalizedSecondTest_square_integral_le A hA

example (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ deriv (deriv (normalizedTest explicitSecondDerivative A)) x ^ 2)
      volume :=
  SecondDerivativeEnergy.normalized_second_derivative_square_integrable A hA

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, deriv (deriv (normalizedTest explicitSecondDerivative A)) x ^ 2) =
      ((32768 : ℝ) / A ^ 8 + (65536 / 77 : ℝ) / (2 * A ^ 6) +
        (196608 / 5005 : ℝ) / (16 * A ^ 4)) / sourceNormalization A :=
  SecondDerivativeEnergy.normalized_second_derivative_square_integral A hA

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, deriv (deriv (normalizedTest explicitSecondDerivative A)) x ^ 2) ≤
      5005 / (6 * A ^ 4) :=
  SecondDerivativeEnergy.normalized_second_derivative_square_integral_le A hA

example (A : ℝ) (hA : A ≠ 0) :
    normalizedInteriorDerivative A (-A) = 0 ∧ normalizedInteriorDerivative A A = 0 :=
  SecondDerivativeEnergy.normalizedInteriorDerivative_endpoints A hA

example (A : ℝ) (η : ℝ → ℝ) (hη : Continuous η) :
    Integrable (fun x ↦ SecondDerivativeEnergy.normalizedSecondTest A x * η x) volume :=
  SecondDerivativeEnergy.normalizedSecondTest_pairing_integrable A η hη

example (A : ℝ) (hA : 1 ≤ A) (η : ℝ → ℝ) (hη : ContDiff ℝ 1 η) :
    Integrable (fun x ↦ deriv (normalizedTest explicitSecondDerivative A) x * deriv η x)
      volume :=
  SecondDerivativeEnergy.normalized_derivative_pairing_integrable A hA η hη

example (A : ℝ) (hA : 1 ≤ A) (η : ℝ → ℝ) (hη : ContDiff ℝ 1 η) :
    (∫ x, deriv (normalizedTest explicitSecondDerivative A) x * deriv η x) =
      -(∫ x, SecondDerivativeEnergy.normalizedSecondTest A x * η x) :=
  SecondDerivativeEnergy.normalizedSecondTest_weakDerivative A hA η hη

example (A : ℝ) (hA : 1 ≤ A) :
    deriv (normalizedTest explicitSecondDerivative A) =
      (Icc (-A) A).domRestrict (normalizedInteriorDerivative A) ∘
        Set.projIcc (-A) A (by linarith : -A ≤ A) :=
  SecondDerivativeEnergy.normalized_derivative_eq_projected A hA

example (A : ℝ) (hA : 1 ≤ A) :
    ∃ L : ℝ≥0, LipschitzWith L (deriv (normalizedTest explicitSecondDerivative A)) :=
  SecondDerivativeEnergy.normalized_derivative_lipschitz A hA

-- All six third-derivative declarations bind to the original source correlation.
example (A : ℝ) : Measurable (SecondDerivativeEnergy.normalizedSecondTest A) :=
  CorrelationThirdDerivative.normalizedSecondTest_measurable A

example (A t : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ deriv (normalizedTest explicitSecondDerivative A) x *
      SecondDerivativeEnergy.normalizedSecondTest A (x - t)) volume ∧
    HasDerivAt (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))
      (∫ x, deriv (normalizedTest explicitSecondDerivative A) x *
        SecondDerivativeEnergy.normalizedSecondTest A (x - t)) t :=
  CorrelationThirdDerivative.sourceCorrelation_third_derivative_integral A t hA

example (A t : ℝ) (hA : 1 ≤ A) :
    deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t =
      ∫ x, deriv (normalizedTest explicitSecondDerivative A) x *
        SecondDerivativeEnergy.normalizedSecondTest A (x - t) :=
  CorrelationThirdDerivative.sourceCorrelation_third_derivative_eq A t hA

example (A : ℝ) (hA : 1 ≤ A) :
    Continuous (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))) :=
  CorrelationThirdDerivative.sourceCorrelation_third_derivative_continuous A hA

example (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 1 (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) :=
  CorrelationThirdDerivative.sourceCorrelation_second_derivative_contDiff A hA

example (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t| ≤
      Real.sqrt (325325 / 18) / A ^ 3 :=
  CorrelationThirdDerivative.sourceCorrelation_third_derivative_abs_le A t hA

end SecondAndThirdDerivatives

section SamplingSecondDerivativeStatements

open Set
open Realization CorrelationRegularity CorrelationDifferenceMoments SourceSampling
open scoped Topology

example (A t : ℝ) : SamplingSecondDerivative.secondDifference A t =
    deriv (correlationDifference A) t - (3 / 2) * correlationDifference A t := rfl

example (A t : ℝ) (hA : 1 ≤ A) :
    SamplingSecondDerivative.secondDifference A t =
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
        2 * deriv (sourceCorrelation explicitSecondDerivative A) t +
        (3 / 4) * sourceCorrelation explicitSecondDerivative A t :=
  SamplingSecondDerivative.secondDifference_eq A t hA

example (A : ℝ) (hA : 1 ≤ A) : Continuous (SamplingSecondDerivative.secondDifference A) :=
  SamplingSecondDerivative.secondDifference_continuous A hA

example (A t : ℝ) (hA : 1 ≤ A) :
    |SamplingSecondDerivative.secondDifference A t| ≤
      65 / (3 * A ^ 2) + 2 * Real.sqrt (65 / 3) / A + 3 / 4 :=
  SamplingSecondDerivative.secondDifference_abs_le A t hA

example (A t : ℝ) (hA : 1 ≤ A) (ht : 2 * A ≤ t) :
    SamplingSecondDerivative.secondDifference A t = 0 :=
  SamplingSecondDerivative.secondDifference_zero_right A t hA ht

example (A x k : ℝ) (hA : 1 ≤ A) (hx : 0 < x) (hk : 0 < k) :
    HasDerivAt (fun y : ℝ ↦ 1 / y * (Real.log k / Real.sqrt (y * k) *
      correlationDifference A (Real.log (y * k))))
      (1 / x ^ 2 * (Real.log k / Real.sqrt (x * k) *
        SamplingSecondDerivative.secondDifference A (Real.log (x * k)))) x :=
  SamplingSecondDerivative.derivative_sampling_term_hasDerivAt A x k hA hx hk

example (A x : ℝ) (N : ℕ) (hA : 1 ≤ A) (hx : 0 < x)
    (hN : Real.exp (2 * A) / x ≤ (N : ℝ)) :
    (∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
      SamplingSecondDerivative.secondDifference A (Real.log (x * (k : ℝ)))) =
      ∑ k ∈ Finset.Icc 1 N, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
        SamplingSecondDerivative.secondDifference A (Real.log (x * (k : ℝ))) :=
  SamplingSecondDerivative.second_difference_sum_eq_fixed_sum A x N hA hx hN

example (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    HasDerivAt (deriv (sourceSamplingKernel A))
      (1 / x ^ 2 * ∑ k ∈ samplingIndices A x,
        Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
          SamplingSecondDerivative.secondDifference A (Real.log (x * (k : ℝ)))) x :=
  SamplingSecondDerivative.sourceSamplingKernel_derivative_hasDerivAt A x hA hx

example (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) (hs : HasCompactSupport F) :
    (∫ t : ℝ, t ^ 2 * Real.exp (t / 2) * deriv F t) =
      -(2 * (∫ t : ℝ, t * Real.exp (t / 2) * F t) +
        (1 / 2) * ∫ t : ℝ, t ^ 2 * Real.exp (t / 2) * F t) :=
  SamplingSecondDerivative.derivative_secondMoment F hF hs

example (A : ℝ) (hA : 1 ≤ A) :
    (1 / 2 : ℝ) * (∫ t : ℝ, t ^ 2 * Real.exp (t / 2) * correlationDifference A t) =
      -CorrelationSecondMoment.sourceRankOneCoefficient A :=
  SamplingSecondDerivative.correlationDifference_secondMoment A hA

end SamplingSecondDerivativeStatements

section PrimeInsertionStatements

open Finset
open PrimeRatioProduct PrimeInsertion

example (P : Finset ℕ) (p : ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (hp : Nat.Prime p) (hpP : p ∉ P) (F : ℕ → ℕ → ℝ) :
    (∑ a ∈ supportedPairs (insert p P), F a.1 a.2) =
      (∑ a ∈ supportedPairs P, F a.1 a.2) +
      (∑ a ∈ supportedPairs P, F (p * a.1) a.2) +
      (∑ a ∈ supportedPairs P, F a.1 (p * a.2)) :=
  supportedPairs_sum_insert P p hP hp hpP F

example (P : Finset ℕ) (g U V : ℕ) (E : ℕ → ℝ) :
    rectangularContribution P g U V E =
      ∑ a ∈ supportedPairs P, if a.1 ≤ U ∧ a.2 ≤ V then
        (ArithmeticFunction.moebius (a.1 * a.2) : ℝ) *
          (if Nat.Coprime g (a.1 * a.2) then 1 else 0) *
            E ((a.1 * a.2) * g ^ 2) else 0 := rfl

example (P : Finset ℕ) (hP : ∀ q ∈ P, Nat.Prime q) (g U V : ℕ) (E : ℕ → ℝ) :
    rectangularContribution P g U V E = rectangularContribution P g V U E :=
  rectangularContribution_swap P hP g U V E

example (P : Finset ℕ) (p g U V : ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (hp : Nat.Prime p) (hpP : p ∉ P) (E : ℕ → ℝ) :
    rectangularContribution (insert p P) g U V E =
      rectangularContribution P g U V E - (if Nat.Coprime g p then 1 else 0) *
        (rectangularContribution P g (U / p) V (fun q ↦ E (p * q)) +
          rectangularContribution P g U (V / p) (fun q ↦ E (p * q))) :=
  rectangularContribution_insert P p g U V hP hp hpP E

example (P : Finset ℕ) (p g T : ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (hp : Nat.Prime p) (hpP : p ∉ P) (E : ℕ → ℝ) :
    rectangularContribution (insert p P) g T T E =
      rectangularContribution P g T T E - 2 * (if Nat.Coprime g p then 1 else 0) *
        rectangularContribution P g (T / p) T (fun q ↦ E (p * q)) :=
  squareContribution_insert P p g T hP hp hpP E

example (A : ℝ) (P : Finset ℕ) (p g T : ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (hp : Nat.Prime p) (hpP : p ∉ P) :
    rectangularContribution (insert p P) g T T (ThetaRemainder.thetaRemainder A) =
      rectangularContribution P g T T (ThetaRemainder.thetaRemainder A) -
        2 * (if Nat.Coprime g p then 1 else 0) *
          rectangularContribution P g (T / p) T
            (fun q ↦ ThetaRemainder.thetaRemainder A (p * q)) :=
  thetaRemainder_square_insert A P p g T hP hp hpP

example (A : ℝ) (P : Finset ℕ) (hP : ∀ q ∈ P, Nat.Prime q) :
    PrimeSupportedBlock.primeSupportedBlock A P =
      ∑ g ∈ Icc 1 ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius g : ℝ) ^ 2 *
        rectangularContribution P g (⌊Real.exp A⌋₊ / g) (⌊Real.exp A⌋₊ / g)
          (ThetaRemainder.thetaRemainder A) :=
  primeSupportedBlock_eq_rectangles A P hP

example (A : ℝ) (P : Finset ℕ) (p : ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (hp : Nat.Prime p) (hpP : p ∉ P) :
    PrimeSupportedBlock.primeSupportedBlock A (insert p P) =
      PrimeSupportedBlock.primeSupportedBlock A P -
        2 * ∑ g ∈ Icc 1 ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius g : ℝ) ^ 2 *
          (if Nat.Coprime g p then 1 else 0) *
            rectangularContribution P g ((⌊Real.exp A⌋₊ / g) / p) (⌊Real.exp A⌋₊ / g)
              (fun q ↦ ThetaRemainder.thetaRemainder A (p * q)) :=
  primeSupportedBlock_insert A P p hP hp hpP

end PrimeInsertionStatements


namespace SourceRealThetaIntegrationStatements
open FormalResearch.RiemannHypothesis.SourceComparison.RealThetaKernel
open FormalResearch.RiemannHypothesis.SourceComparison.RealThetaDerivative
open FormalResearch.RiemannHypothesis.SourceComparison.KernelVariation
open FormalResearch.RiemannHypothesis.SourceComparison.SourceClassVariation
open Finset MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization SourceSampling SourceSamplingDerivative CorrelationDifferenceMoments
open CorrelationSecondMoment CorrelationPrimitive CorrelationPrimitiveMoments
open InnerPrimitiveTransport
open CorrelationSecondDerivative CorrelationThirdDerivative SamplingSecondDerivative
noncomputable section
example (A q : ℝ) :
    RealThetaKernel.realThetaKernel A q =
  ∑ k ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊, sourceSamplingKernel A (q * (k : ℝ)) := rfl

example (A x : ℝ) :
    RealThetaKernel.differenceSamplingKernel A x =
  ∑ l ∈ samplingIndices A x, Real.log (l : ℝ) / Real.sqrt (x * (l : ℝ)) *
    correlationDifference A (Real.log (x * (l : ℝ))) := rfl

example (A q : ℝ) :
    RealThetaKernel.realThetaDifferenceKernel A q =
  ∑ k ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊, differenceSamplingKernel A (q * (k : ℝ)) := rfl

example (A q : ℝ) :
    RealThetaKernel.realThetaRemainder A q =
  realThetaKernel A q - sourceRankOneCoefficient A / q := rfl

example (A x : ℝ) :
    RealThetaKernel.differencePrimitiveSamplingKernel A x =
  ∑ l ∈ samplingIndices A x, Real.log (l : ℝ) / Real.sqrt (x * (l : ℝ)) *
    (correlationPrimitive A (Real.log (x * (l : ℝ))) -
      sourceCorrelation explicitSecondDerivative A (Real.log (x * (l : ℝ)))) := rfl

example (A q : ℝ) (l : ℕ) (x : ℝ) :
    RealThetaKernel.differenceInnerTerm A q l x =
  Real.log (l : ℝ) / Real.sqrt ((q * x) * (l : ℝ)) *
    correlationDifference A (Real.log ((q * x) * (l : ℝ))) := rfl

example (A t : ℝ) :
    RealThetaDerivative.iteratedDifference A t =
  deriv (correlationDifference A) t - correlationDifference A t / 2 := rfl

example (E : ℝ → ℝ) (h : ℝ) (G : ℕ) :
    KernelVariation.composedVariation E h G =
  Real.sqrt (G : ℝ) * |E (h * (G : ℝ) ^ 2)| +
    ∑ j ∈ Finset.Icc 1 (G - 1), Real.sqrt (j : ℝ) *
      |E (h * (j : ℝ) ^ 2) - E (h * ((j + 1 : ℕ) : ℝ) ^ 2)| := rfl

example (A x : ℝ) (hx : 1 ≤ x) :
    samplingIndices A x = (Icc 1 ⌊Real.exp (2 * A)⌋₊).filter
      (fun l : ℕ ↦ x * (l : ℝ) < Real.exp (2 * A)) :=
  RealThetaKernel.samplingIndices_eq_fixed_filter A x hx

example (A q : ℝ) (hq : 1 ≤ q) :
    realThetaKernel A q = ∑ k ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊,
      ∑ l ∈ (Icc 1 ⌊Real.exp (2 * A)⌋₊).filter
        (fun l : ℕ ↦ (q * (k : ℝ)) * (l : ℝ) < Real.exp (2 * A)),
        Real.log (l : ℝ) / Real.sqrt ((q * (k : ℝ)) * (l : ℝ)) *
          sourceCorrelation explicitSecondDerivative A
            (Real.log ((q * (k : ℝ)) * (l : ℝ))) :=
  RealThetaKernel.realThetaKernel_eq_strict_sum A q hq

example (A : ℝ) (q : ℕ) (hq : 1 ≤ q) :
    realThetaKernel A (q : ℝ) = ThetaKernelTransport.thetaKernel A q :=
  RealThetaKernel.realThetaKernel_eq_nat A q hq

example (A : ℝ) (q : ℕ) (hq : 1 ≤ q) :
    realThetaRemainder A (q : ℝ) = ThetaRemainder.thetaRemainder A q :=
  RealThetaKernel.realThetaRemainder_eq_nat A q hq

example (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    differenceSamplingKernel A x = x * deriv (sourceSamplingKernel A) x :=
  RealThetaKernel.differenceSamplingKernel_eq_mul_deriv A x hA hx

example (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    HasDerivAt (realThetaKernel A)
      (1 / q * realThetaDifferenceKernel A q) q :=
  RealThetaKernel.realThetaKernel_hasDerivAt A q hA hq

example (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    deriv (realThetaKernel A) q = 1 / q * realThetaDifferenceKernel A q :=
  RealThetaKernel.realThetaKernel_deriv A q hA hq

example (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    HasDerivAt (realThetaRemainder A)
      (1 / q * (realThetaDifferenceKernel A q + sourceRankOneCoefficient A / q)) q :=
  RealThetaKernel.realThetaRemainder_hasDerivAt A q hA hq

example (A : ℝ) (hA : 1 ≤ A) :
    DifferentiableOn ℝ (realThetaRemainder A) (Set.Ioi 0) :=
  RealThetaKernel.realThetaRemainder_differentiableOn A hA

example (A s : ℝ) (hA : 1 ≤ A) :
    Real.exp (-s / 2) * (∫ t in (-2 * A)..s,
      Real.exp (t / 2) * correlationDifference A t) =
      sourceCorrelation explicitSecondDerivative A s - correlationPrimitive A s :=
  RealThetaKernel.difference_primitive_eq A s hA

example (A x : ℝ) :
    differencePrimitiveSamplingKernel A x =
      -SourcePrimitiveSampling.sourcePrimitiveSamplingKernel A x - sourceSamplingKernel A x :=
  RealThetaKernel.differencePrimitiveSamplingKernel_eq A x

example (A x : ℝ)
    (hA : 1 ≤ A) (hx : 0 < x) :
    |differencePrimitiveSamplingKernel A x + sourceRankOneCoefficient A / x| ≤
      (24 + 12 * Real.sqrt (65 / 3) / A) / Real.sqrt x :=
  RealThetaKernel.differencePrimitiveSamplingKernel_add_rankOne_abs_le A x hA hx

example (A x : ℝ)
    (hA : 1 ≤ A) (hx : 1 ≤ x) :
    differencePrimitiveSamplingKernel A x =
      ∑ l ∈ Icc 1 (⌊Real.exp (2 * A)⌋₊ + 1),
        Real.log (l : ℝ) / Real.sqrt (x * (l : ℝ)) *
          (correlationPrimitive A (Real.log (x * (l : ℝ))) -
            sourceCorrelation explicitSecondDerivative A (Real.log (x * (l : ℝ)))) :=
  RealThetaKernel.differencePrimitiveSamplingKernel_eq_fixed_sum A x hA hx

example (A s : ℝ) (hA : 1 ≤ A) :
    (∫ r in Set.Ioi (0 : ℝ), Real.exp (r / 2) * correlationDifference A (s + r)) =
      correlationPrimitive A s - sourceCorrelation explicitSecondDerivative A s :=
  RealThetaKernel.difference_tail_eq_primitive A s hA

example (A y : ℝ) (hA : 1 ≤ A) (hy : 0 < y) :
    (∫ x in Set.Ioi (1 : ℝ), rootWeight (correlationDifference A) y x) =
      (1 / Real.sqrt y) * (correlationPrimitive A (Real.log y) -
        sourceCorrelation explicitSecondDerivative A (Real.log y)) :=
  RealThetaKernel.rootWeight_difference_integral A y hA hy

example (A q x : ℝ) (l : ℕ)
    (hq : 0 < q) (hx : 0 < x) (hl : 1 ≤ l) :
    differenceInnerTerm A q l x = Real.log (l : ℝ) *
      rootWeight (correlationDifference A) (q * (l : ℝ)) x :=
  RealThetaKernel.differenceInnerTerm_eq A q x l hq hx hl

example (A q : ℝ) (l : ℕ)
    (hA : 1 ≤ A) (hq : 0 < q) (hl : 1 ≤ l) :
    IntegrableOn (differenceInnerTerm A q l) (Set.Ioi 1) :=
  RealThetaKernel.differenceInnerTerm_integrable A q l hA hq hl

example (A q : ℝ) (l : ℕ)
    (hA : 1 ≤ A) (hq : 0 < q) (hl : 1 ≤ l) :
    (∫ x in Set.Ioi (1 : ℝ), differenceInnerTerm A q l x) =
      Real.log (l : ℝ) / Real.sqrt (q * (l : ℝ)) *
        (correlationPrimitive A (Real.log (q * (l : ℝ))) -
          sourceCorrelation explicitSecondDerivative A (Real.log (q * (l : ℝ)))) :=
  RealThetaKernel.differenceInnerTerm_integral A q l hA hq hl

example (A q x : ℝ)
    (hA : 1 ≤ A) (hq : 1 ≤ q) (hx : 1 ≤ x) :
    differenceSamplingKernel A (q * x) =
      ∑ l ∈ Icc 1 (⌊Real.exp (2 * A)⌋₊ + 1), differenceInnerTerm A q l x :=
  RealThetaKernel.differenceKernel_eq_inner_sum A q x hA hq hx

example (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    IntegrableOn (fun x ↦ differenceSamplingKernel A (q * x)) (Set.Ioi 1) :=
  RealThetaKernel.differenceKernel_rescaled_integrable A q hA hq

example (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    (∫ x in Set.Ioi (1 : ℝ), differenceSamplingKernel A (q * x)) =
      differencePrimitiveSamplingKernel A q :=
  RealThetaKernel.differenceKernel_integral_eq_primitive A q hA hq

example (A q : ℝ)
    (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |(∫ x in Set.Ioi (1 : ℝ), differenceSamplingKernel A (q * x)) +
      sourceRankOneCoefficient A / q| ≤
      (24 + 12 * Real.sqrt (65 / 3) / A) / Real.sqrt q :=
  RealThetaKernel.differenceKernel_integral_add_rankOne_abs_le A q hA hq

example (A t : ℝ) (hA : 1 ≤ A) :
    iteratedDifference A t = deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
      deriv (sourceCorrelation explicitSecondDerivative A) t +
      sourceCorrelation explicitSecondDerivative A t / 4 :=
  RealThetaDerivative.iteratedDifference_eq A t hA

example (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 1 (iteratedDifference A) :=
  RealThetaDerivative.iteratedDifference_contDiff A hA

example (A : ℝ) (hA : 1 ≤ A) :
    HasCompactSupport (iteratedDifference A) :=
  RealThetaDerivative.iteratedDifference_hasCompactSupport A hA

example (A t : ℝ) (hA : 1 ≤ A) :
    |iteratedDifference A t| ≤
      65 / (3 * A ^ 2) + Real.sqrt (65 / 3) / A + 1 / 4 :=
  RealThetaDerivative.iteratedDifference_abs_le A t hA

example (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (iteratedDifference A) t| ≤
      Real.sqrt (325325 / 18) / A ^ 3 + 65 / (3 * A ^ 2) + Real.sqrt (65 / 3) / (4 * A) :=
  RealThetaDerivative.iteratedDifference_derivative_abs_le A t hA

example (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F)
    (hs : HasCompactSupport F)
    (hz0 : (∫ t : ℝ, Real.exp (t / 2) * F t) = 0)
    (hz1 : (∫ t : ℝ, t * Real.exp (t / 2) * F t) = 0) :
    (∫ t : ℝ, Real.exp (t / 2) * deriv F t) = 0 ∧
      (∫ t : ℝ, t * Real.exp (t / 2) * deriv F t) = 0 :=
  RealThetaDerivative.compact_derivative_two_moments_zero F hF hs hz0 hz1

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ t : ℝ, Real.exp (t / 2) * iteratedDifference A t) = 0 ∧
      (∫ t : ℝ, t * Real.exp (t / 2) * iteratedDifference A t) = 0 :=
  RealThetaDerivative.iteratedDifference_two_moments_zero A hA

example (A t : ℝ) (hA : 1 ≤ A) (ht : 2 * A ≤ t) :
    iteratedDifference A t = 0 :=
  RealThetaDerivative.iteratedDifference_zero_right A t hA ht

example (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    HasDerivAt (differenceSamplingKernel A)
      (1 / x * ∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
        iteratedDifference A (Real.log (x * (k : ℝ)))) x :=
  RealThetaDerivative.differenceSamplingKernel_hasDerivAt A x hA hx

example (A x u : ℝ) (hA : 1 ≤ A)
    (hx : 0 < x) (hu : 0 < u) (hcut : Real.exp (2 * A) ≤ x * u) :
    TwoMomentSampling.samplingIntegrand (iteratedDifference A) x u = 0 :=
  RealThetaDerivative.iteratedDifference_sampling_zero A x u hA hx hu hcut

example (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    |∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
      iteratedDifference A (Real.log (x * (k : ℝ)))| ≤
      (2 + 9 * Real.sqrt (65 / 3) / A + 12 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt x :=
  RealThetaDerivative.iteratedDifference_sampling_sum_abs_le A x hA hx

example (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    |deriv (differenceSamplingKernel A) x| ≤
      (2 + 9 * Real.sqrt (65 / 3) / A + 12 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / (x * Real.sqrt x) :=
  RealThetaDerivative.differenceSamplingKernel_derivative_abs_le A x hA hx

example (q C t : ℝ) (hq : 0 < q) (ht : 0 < t) :
    q * (C / (q * t * Real.sqrt (q * t))) =
      (C / Real.sqrt q) * t ^ (-(3 / 2 : ℝ)) :=
  RealThetaDerivative.inverse_root_majorant_eq q C t hq ht

example (q C : ℝ) (hq : 0 < q) :
    IntegrableOn (fun t : ℝ ↦ q * (C / (q * t * Real.sqrt (q * t)))) (Set.Ioi 1) :=
  RealThetaDerivative.inverse_root_majorant_integrable q C hq

example (q C : ℝ) (hq : 0 < q) :
    (∫ t in Set.Ioi (1 : ℝ), q * (C / (q * t * Real.sqrt (q * t)))) =
      2 * C / Real.sqrt q :=
  RealThetaDerivative.inverse_root_majorant_integral q C hq

example (A q x : ℝ) (hA : 1 ≤ A) (hq : 0 < q) (hx : 0 < x) :
    HasDerivAt (fun t : ℝ ↦ differenceSamplingKernel A (q * t))
      (q * deriv (differenceSamplingKernel A) (q * x)) x :=
  RealThetaDerivative.scaledDifference_hasDerivAt A q x hA hq hx

example (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    IntegrableOn (deriv (fun t : ℝ ↦ differenceSamplingKernel A (q * t))) (Set.Ioi 1) :=
  RealThetaDerivative.scaledDifference_derivative_integrable A q hA hq

example (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    (∫ t in Set.Ioi (1 : ℝ), |deriv (fun t : ℝ ↦ differenceSamplingKernel A (q * t)) t|) ≤
      2 * (2 + 9 * Real.sqrt (65 / 3) / A + 12 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q :=
  RealThetaDerivative.scaledDifference_variation_le A q hA hq

example (A x : ℝ) (hx : 0 < x)
    (hcut : Real.exp (2 * A) ≤ x) : differenceSamplingKernel A x = 0 :=
  RealThetaDerivative.differenceSamplingKernel_zero_of_exp_le A x hx hcut

example (A q : ℝ) (hq : 1 ≤ q) :
    realThetaDifferenceKernel A q =
      ∑ k ∈ Icc 1 (⌊Real.exp (2 * A)⌋₊ + 1), differenceSamplingKernel A (q * (k : ℝ)) :=
  RealThetaDerivative.realThetaDifferenceKernel_eq_padded_sum A q hq

example (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |realThetaDifferenceKernel A q -
      (∫ t in Set.Ioi (1 : ℝ), differenceSamplingKernel A (q * t))| ≤
      2 * (2 + 9 * Real.sqrt (65 / 3) / A + 12 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q :=
  RealThetaDerivative.realThetaDifferenceKernel_sub_integral_abs_le A q hA hq

example (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |realThetaDifferenceKernel A q + sourceRankOneCoefficient A / q| ≤
      (28 + 30 * Real.sqrt (65 / 3) / A + 24 * (65 / (3 * A ^ 2)) +
        8 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q :=
  RealThetaDerivative.realThetaDifferenceKernel_add_rankOne_abs_le A q hA hq

example (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |deriv (realThetaRemainder A) q| ≤
      (28 + 30 * Real.sqrt (65 / 3) / A + 24 * (65 / (3 * A ^ 2)) +
        8 * Real.sqrt (325325 / 18) / A ^ 3) / (q * Real.sqrt q) :=
  RealThetaDerivative.realThetaRemainder_derivative_abs_le A q hA hq

example (f f' : ℝ → ℝ) (B x y : ℝ)
    (hx : 1 ≤ x) (hxy : x ≤ y) (hc : ContinuousOn f (Set.Ici 1))
    (hd : ∀ t : ℝ, 1 < t → HasDerivAt f (f' t) t)
    (hb : ∀ t : ℝ, 1 < t → |f' t| ≤ B / t ^ 2) :
    |f x - f y| ≤ B * (1 / x - 1 / y) :=
  KernelVariation.abs_sub_le_reciprocal f f' B x y hx hxy hc hd hb

example (j : ℕ) (hj : 1 ≤ j) :
    Real.sqrt (j : ℝ) * (1 / (j : ℝ) - 1 / ((j : ℝ) + 1)) ≤
      2 * (1 / Real.sqrt (j : ℝ) - 1 / Real.sqrt ((j : ℝ) + 1)) :=
  KernelVariation.sqrt_reciprocal_step_le j hj

example (G : ℕ) :
    (∑ j ∈ Finset.Icc 1 (G - 1), Real.sqrt (j : ℝ) *
      (1 / (j : ℝ) - 1 / ((j : ℝ) + 1))) ≤ 2 :=
  KernelVariation.sqrt_reciprocal_variation_le G

example (E : ℝ → ℝ) (h K' x y : ℝ)
    (hh : 1 ≤ h) (hx : 1 ≤ x) (hxy : x ≤ y)
    (hc : ContinuousOn E (Set.Ici 1))
    (hd : ∀ q : ℝ, 1 < q → DifferentiableAt ℝ E q)
    (hb : ∀ q : ℝ, 1 < q → |deriv E q| ≤ K' / (q * Real.sqrt q)) :
    |E (h * x ^ 2) - E (h * y ^ 2)| ≤
      (2 * K' / Real.sqrt h) * (1 / x - 1 / y) :=
  KernelVariation.composed_abs_sub_le E h K' x y hh hx hxy hc hd hb

example (E : ℝ → ℝ) (h : ℝ) : composedVariation E h 0 = 0 :=
  KernelVariation.composedVariation_zero E h

example (E : ℝ → ℝ) (h K K' : ℝ) (G : ℕ)
    (hh : 1 ≤ h) (hc : ContinuousOn E (Set.Ici 1))
    (hd : ∀ q : ℝ, 1 < q → DifferentiableAt ℝ E q)
    (hv : ∀ q : ℝ, 1 ≤ q → |E q| ≤ K / Real.sqrt q)
    (hb : ∀ q : ℝ, 1 < q → |deriv E q| ≤ K' / (q * Real.sqrt q)) :
    composedVariation E h G ≤ (K + 4 * K') / Real.sqrt h :=
  KernelVariation.composedVariation_le E h K K' G hh hc hd hv hb

example (E : ℝ → ℝ) (h G : ℕ) (K K' : ℝ)
    (hh : 1 ≤ h) (hc : ContinuousOn E (Set.Ici 1))
    (hd : ∀ q : ℝ, 1 < q → DifferentiableAt ℝ E q)
    (hv : ∀ q : ℝ, 1 ≤ q → |E q| ≤ K / Real.sqrt q)
    (hb : ∀ q : ℝ, 1 < q → |deriv E q| ≤ K' / (q * Real.sqrt q)) :
    Real.sqrt (G : ℝ) * |E ((h * G ^ 2 : ℕ) : ℝ)| +
      (∑ j ∈ Finset.Icc 1 (G - 1), Real.sqrt (j : ℝ) *
        |E ((h * j ^ 2 : ℕ) : ℝ) - E ((h * (j + 1) ^ 2 : ℕ) : ℝ)|) ≤
      (K + 4 * K') / Real.sqrt (h : ℝ) :=
  KernelVariation.composedVariation_nat_le E h G K K' hh hc hd hv hb

example (q : ℝ) (hq : 0 < q) :
    q ^ (3 / 2 : ℝ) = q * Real.sqrt q :=
  KernelVariation.rpow_three_halves q hq

example (E : ℝ → ℝ) (h G : ℕ) (K K' : ℝ)
    (hh : 1 ≤ h) (hc : ContinuousOn E (Set.Ici 1))
    (hd : ∀ q : ℝ, 1 < q → DifferentiableAt ℝ E q)
    (hv : ∀ q : ℝ, 1 ≤ q → |E q| ≤ K / Real.sqrt q)
    (hb : ∀ q : ℝ, 1 < q → |deriv E q| ≤ K' / q ^ (3 / 2 : ℝ)) :
    Real.sqrt (G : ℝ) * |E ((h * G ^ 2 : ℕ) : ℝ)| +
      (∑ j ∈ Finset.Icc 1 (G - 1), Real.sqrt (j : ℝ) *
        |E ((h * j ^ 2 : ℕ) : ℝ) - E ((h * (j + 1) ^ 2 : ℕ) : ℝ)|) ≤
      (K + 4 * K') / Real.sqrt (h : ℝ) :=
  KernelVariation.composedVariation_nat_le_rpow E h G K K' hh hc hd hv hb

example (E : ℝ → ℝ) (h K K' : ℝ) (G : ℕ)
    (hh : 1 ≤ h) (hc : ContinuousOn E (Set.Ici 1))
    (hd : ∀ q : ℝ, 1 < q → DifferentiableAt ℝ E q)
    (hK : 0 ≤ K)
    (hv : 1 ≤ G → |E (h * (G : ℝ) ^ 2)| ≤ K / Real.sqrt (h * (G : ℝ) ^ 2))
    (hb : ∀ q : ℝ, 1 < q → |deriv E q| ≤ K' / (q * Real.sqrt q)) :
    composedVariation E h G ≤ (K + 4 * K') / Real.sqrt h :=
  KernelVariation.composedVariation_endpoint_le E h K K' G hh hc hd hK hv hb

example (A : ℝ) (h G : ℕ) (hA : 1 ≤ A) (hh : 1 ≤ h) :
    Real.sqrt (G : ℝ) * |ThetaRemainder.thetaRemainder A (h * G ^ 2)| +
      (∑ j ∈ Icc 1 (G - 1), Real.sqrt (j : ℝ) *
        |ThetaRemainder.thetaRemainder A (h * j ^ 2) -
          ThetaRemainder.thetaRemainder A (h * (j + 1) ^ 2)|) ≤
      (ThetaKernelEstimate.kernelBound A +
        4 * (28 + 30 * Real.sqrt (65 / 3) / A + 24 * (65 / (3 * A ^ 2)) +
          8 * Real.sqrt (325325 / 18) / A ^ 3)) / Real.sqrt (h : ℝ) :=
  SourceClassVariation.source_composedVariation_abs_le A h G hA hh

example (A : ℝ) (u v : ℕ) (hA : 1 ≤ A) (hu : 1 ≤ u) (hv : 1 ≤ v) :
    RatioClassVariation.classVariation A u v ≤
      (ThetaKernelEstimate.kernelBound A +
        4 * (28 + 30 * Real.sqrt (65 / 3) / A + 24 * (65 / (3 * A ^ 2)) +
          8 * Real.sqrt (325325 / 18) / A ^ 3)) / Real.sqrt ((u * v : ℕ) : ℝ) :=
  SourceClassVariation.classVariation_abs_le A u v hA hu hv

example (A : ℝ) (u v : ℕ)
    (hA : 1 ≤ A) (hu : 1 ≤ u) (hv : 1 ≤ v) :
    |PrimeSupportedBlock.ratioClassContribution A u v - RatioClassVariation.classMean A u v| ≤
      |(ArithmeticFunction.moebius (u * v) : ℝ)| * (((u * v).divisors.card : ℝ) + 2) *
        ((ThetaKernelEstimate.kernelBound A +
          4 * (28 + 30 * Real.sqrt (65 / 3) / A + 24 * (65 / (3 * A ^ 2)) +
            8 * Real.sqrt (325325 / 18) / A ^ 3)) / Real.sqrt ((u * v : ℕ) : ℝ)) :=
  SourceClassVariation.ratioClass_sub_mean_abs_le_explicit A u v hA hu hv

end
end SourceRealThetaIntegrationStatements

section PrimeFilterGuardStatements
open PrimeFilterGuard

example : frequency = Real.pi / Real.log 2 := rfl

example (q : ℝ) : oscillatoryRemainder q =
    Real.cos ((Real.pi / Real.log 2) * Real.log q) / Real.sqrt q := rfl

example : 0 < Real.pi / Real.log 2 := frequency_pos

example (q : ℝ) (hq : 0 < q) :
    |oscillatoryRemainder q| ≤ 1 / Real.sqrt q := remainder_abs_le q hq

example (q : ℝ) (hq : 0 < q) : HasDerivAt oscillatoryRemainder
    ((-(Real.pi / Real.log 2) * Real.sin ((Real.pi / Real.log 2) * Real.log q) -
      Real.cos ((Real.pi / Real.log 2) * Real.log q) / 2) / (q * Real.sqrt q)) q :=
  remainder_hasDerivAt q hq

example (q : ℝ) (hq : 0 < q) :
    |deriv oscillatoryRemainder q| ≤
      (Real.pi / Real.log 2 + 1 / 2) / (q * Real.sqrt q) :=
  remainder_derivative_abs_le q hq

example : Real.pi / Real.log 2 + 1 / 2 ≤ 28 := derivative_coefficient_le

example (q : ℝ) (hq : 0 < q) :
    |deriv oscillatoryRemainder q| ≤ 28 / (q * Real.sqrt q) :=
  remainder_derivative_abs_le_twenty_eight q hq

example : oscillatoryRemainder 1 = 1 := value_one

example : oscillatoryRemainder 2 = -1 / Real.sqrt 2 := value_two

example : oscillatoryRemainder 1 - 2 * oscillatoryRemainder 2 = 1 + Real.sqrt 2 :=
  prime_two_filter_value

example : ¬ |oscillatoryRemainder 1 - 2 * oscillatoryRemainder 2| ≤ 1 :=
  prime_two_filter_not_contractive

example : ∃ E : ℝ → ℝ,
    (∀ q : ℝ, 0 < q → DifferentiableAt ℝ E q) ∧
    (∀ q : ℝ, 0 < q → |E q| ≤ 1 / Real.sqrt q) ∧
    (∀ q : ℝ, 0 < q → |deriv E q| ≤ 28 / (q * Real.sqrt q)) ∧
    ¬ |E 1 - 2 * E 2| ≤ 1 := decay_exponents_do_not_force_contraction

end PrimeFilterGuardStatements

section PrimeExhaustionStatements

open Finset
open PrimeSupportedBlock PrimeBlockReduction PrimeExhaustion
open FormalResearch.RiemannHypothesis.SourcePairing

example (N : ℕ) : cutoffPrimes N = (range (N + 1)).filter Nat.Prime := rfl

example (N p : ℕ) : p ∈ cutoffPrimes N ↔ Nat.Prime p ∧ p ≤ N := mem_cutoffPrimes N p

example (P : Finset ℕ) (N i j : ℕ)
    (hP : ∀ p : ℕ, Nat.Prime p → p ≤ N → p ∈ P) (hi : i ≤ N) (hj : j ≤ N) :
    quotientSupported P i j := quotientSupported_of_contains_primes P N i j hP hi hj

example (A : ℝ) (P : Finset ℕ)
    (hP : ∀ p : ℕ, Nat.Prime p → p ≤ ⌊Real.exp A⌋₊ → p ∈ P) :
    primeSupportedBlock A P =
      ∑ i ∈ Icc 1 ⌊Real.exp A⌋₊, ∑ j ∈ Icc 1 ⌊Real.exp A⌋₊,
        (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) *
          ThetaRemainder.thetaRemainder A (i * j) :=
  primeSupportedBlock_eq_full_of_contains_primes A P hP

example (A : ℝ) :
    primeSupportedBlock A (cutoffPrimes ⌊Real.exp A⌋₊) =
      ∑ i ∈ Icc 1 ⌊Real.exp A⌋₊, ∑ j ∈ Icc 1 ⌊Real.exp A⌋₊,
        (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) *
          ThetaRemainder.thetaRemainder A (i * j) :=
  primeSupportedBlock_cutoffPrimes_eq_full A

example (A : ℝ) (P : Finset ℕ)
    (hP : ∀ p : ℕ, Nat.Prime p → p ≤ ⌊Real.exp A⌋₊ → p ∈ P) :
    roughRatioRemainder A P = 0 := roughRatioRemainder_eq_zero_of_contains_primes A P hP

example (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue Realization.explicitSecondDerivative A =
      archimedeanValue Realization.explicitSecondDerivative A -
        4 * (∑ d ∈ Icc 1 ⌊Real.exp A⌋₊,
          (ArithmeticFunction.moebius d : ℝ) * SourceSampling.sourceSamplingKernel A d) +
        2 * CorrelationSecondMoment.sourceRankOneCoefficient A *
          (∑ d ∈ Icc 1 ⌊Real.exp A⌋₊,
            (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) ^ 2 +
        2 * primeSupportedBlock A (cutoffPrimes ⌊Real.exp A⌋₊) :=
  sourceQuadraticValue_eq_complete_block A hA

end PrimeExhaustionStatements

namespace TwoInsertionBoundaryStatementChecks

open Finset MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open PrimeInsertion PrimeRatioProduct CorrelationSecondMoment ThetaRemainder SourceSampling

noncomputable section

example (P : Finset ℕ) (g U V : ℕ)
    (c : ℝ) (E : ℕ → ℝ) :
    rectangularContribution P g U V (fun q ↦ c * E q) =
      c * rectangularContribution P g U V E :=
  TwoInsertionBoundary.rectangularContribution_const_mul P g U V c E

example (A : ℝ) (P : Finset ℕ) (g U V : ℕ) :
    rectangularContribution P g U V
      (fun q ↦ ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / ((2 * q : ℕ) : ℝ)) =
        (1 / 2 : ℝ) * rectangularContribution P g U V
          (fun q ↦ ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (q : ℝ)) :=
  TwoInsertionBoundary.rectangular_rankOne_dilate_two A P g U V

example (A : ℝ) (P : Finset ℕ) (g T : ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (h2P : 2 ∉ P) :
    rectangularContribution (insert 2 P) g T T
      (fun q ↦ ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (q : ℝ)) =
        rectangularContribution P g T T
          (fun q ↦ ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (q : ℝ)) -
        (if Nat.Coprime g 2 then 1 else 0) *
          rectangularContribution P g (T / 2) T
            (fun q ↦ ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (q : ℝ)) :=
  TwoInsertionBoundary.rankOne_square_insert_two A P g T hP h2P

example (P : Finset ℕ) (g T : ℕ) (E : ℕ → ℝ) :
    rectangularContribution P g T T E - rectangularContribution P g (T / 2) T E =
      ∑ a ∈ (supportedPairs P).filter (fun a ↦ T / 2 < a.1 ∧ a.1 ≤ T ∧ a.2 ≤ T),
        (ArithmeticFunction.moebius (a.1 * a.2) : ℝ) *
          (if Nat.Coprime g (a.1 * a.2) then 1 else 0) * E ((a.1 * a.2) * g ^ 2) :=
  TwoInsertionBoundary.rectangular_difference_eq_boundary P g T E

example (A : ℝ) (P : Finset ℕ) (g T : ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (h2P : 2 ∉ P) (hg : Nat.Coprime g 2) :
    rectangularContribution (insert 2 P) g T T
      (fun q ↦ ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (q : ℝ)) =
      ∑ a ∈ (supportedPairs P).filter (fun a ↦ T / 2 < a.1 ∧ a.1 ≤ T ∧ a.2 ≤ T),
        (ArithmeticFunction.moebius (a.1 * a.2) : ℝ) *
          (if Nat.Coprime g (a.1 * a.2) then 1 else 0) *
            (((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (((a.1 * a.2) * g ^ 2 : ℕ) : ℝ)) :=
  TwoInsertionBoundary.rankOne_square_insert_two_coprime A P g T hP h2P hg

example (A : ℝ) (P : Finset ℕ) (g T : ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (h2P : 2 ∉ P) (hg : ¬Nat.Coprime g 2) :
    rectangularContribution (insert 2 P) g T T
      (fun q ↦ ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (q : ℝ)) =
        rectangularContribution P g T T
          (fun q ↦ ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (q : ℝ)) :=
  TwoInsertionBoundary.rankOne_square_insert_two_not_coprime A P g T hP h2P hg

example (P : Finset ℕ) (g U V : ℕ) (E F : ℕ → ℝ) :
    rectangularContribution P g U V (fun q ↦ E q - F q) =
      rectangularContribution P g U V E - rectangularContribution P g U V F :=
  TwoInsertionBoundary.rectangularContribution_sub P g U V E F

example (A : ℝ) (P : Finset ℕ) (g U V : ℕ) :
    rectangularContribution P g U V (fun q : ℕ ↦ ThetaKernelTransport.thetaKernel A q -
        ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (q : ℝ)) =
      rectangularContribution P g U V (ThetaKernelTransport.thetaKernel A) -
        rectangularContribution P g U V
          (fun q ↦ ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (q : ℝ)) :=
  TwoInsertionBoundary.thetaRemainder_rectangle_eq A P g U V

example (A : ℝ) (P : Finset ℕ) (g T : ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (h2P : 2 ∉ P) (hg : Nat.Coprime g 2) :
    rectangularContribution (insert 2 P) g T T (fun q : ℕ ↦ ThetaKernelTransport.thetaKernel A q -
        ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (q : ℝ)) =
      rectangularContribution P g T T (ThetaKernelTransport.thetaKernel A) -
        2 * rectangularContribution P g (T / 2) T
          (fun q ↦ ThetaKernelTransport.thetaKernel A (2 * q)) -
      ∑ a ∈ (supportedPairs P).filter (fun a ↦ T / 2 < a.1 ∧ a.1 ≤ T ∧ a.2 ≤ T),
        (ArithmeticFunction.moebius (a.1 * a.2) : ℝ) *
          (if Nat.Coprime g (a.1 * a.2) then 1 else 0) *
            (((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (((a.1 * a.2) * g ^ 2 : ℕ) : ℝ)) :=
  TwoInsertionBoundary.thetaRemainder_insert_two_coprime A P g T hP h2P hg

example (d : ℕ) :
    (ArithmeticFunction.moebius (2 * d) : ℝ) =
      if Nat.Coprime d 2 then -(ArithmeticFunction.moebius d : ℝ) else 0 :=
  TwoInsertionBoundary.moebius_two_mul d

example (N : ℕ) (F : ℕ → ℝ) :
    (∑ d ∈ (Icc 1 N).filter (fun d ↦ ¬Nat.Coprime d 2),
      (ArithmeticFunction.moebius d : ℝ) * F d) =
      ∑ k ∈ Icc 1 (N / 2), (ArithmeticFunction.moebius (2 * k) : ℝ) * F (2 * k) :=
  TwoInsertionBoundary.even_sum_reindex N F

example (N : ℕ) (F : ℕ → ℝ) :
    (∑ d ∈ Icc 1 N, (ArithmeticFunction.moebius d : ℝ) * F d) =
      (∑ d ∈ (Icc 1 N).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) * F d) -
      ∑ d ∈ (Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) * F (2 * d) :=
  TwoInsertionBoundary.moebius_sum_two_split N F

example (A : ℝ) (N : ℕ) :
    (∑ d ∈ Icc 1 N, (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d) =
      (∑ d ∈ (Icc 1 N).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d) -
      ∑ d ∈ (Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A (2 * d : ℕ) :=
  TwoInsertionBoundary.sourceLinear_two_split A N

example (A : ℝ) (N : ℕ) :
    (∑ d ∈ Icc 1 N, (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d) =
      (∑ d ∈ (Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) *
          (sourceSamplingKernel A d - sourceSamplingKernel A (2 * d : ℕ))) +
      ∑ d ∈ (Ioc (N / 2) N).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d :=
  TwoInsertionBoundary.sourceLinear_two_difference_boundary A N

example (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    |sourceSamplingKernel A x - sourceSamplingKernel A (2 * x)| ≤
      (4 + 10 * Real.sqrt (65 / 3) / A + 4 * (65 / (3 * A ^ 2))) / Real.sqrt x :=
  TwoInsertionBoundary.sourceSamplingKernel_two_difference_abs_le A x hA hx

example (N : ℕ) :
    (∑ d ∈ Icc 1 N, (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) =
      (∑ d ∈ (Icc 1 N).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) -
      (1 / 2 : ℝ) * ∑ d ∈ (Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) / (d : ℝ) :=
  TwoInsertionBoundary.reciprocal_moebius_two_split N

example (A : ℝ) (P : Finset ℕ) (hA : 1 ≤ A) :
    sourceQuadraticValue Realization.explicitSecondDerivative A =
      archimedeanValue Realization.explicitSecondDerivative A -
      4 * ((∑ d ∈ (Icc 1 ⌊Real.exp A⌋₊).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d) -
        ∑ d ∈ (Icc 1 (⌊Real.exp A⌋₊ / 2)).filter (fun d ↦ Nat.Coprime d 2),
          (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A (2 * d : ℕ)) +
      2 * ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) *
        ((∑ d ∈ (Icc 1 ⌊Real.exp A⌋₊).filter (fun d ↦ Nat.Coprime d 2),
          (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) -
          (1 / 2 : ℝ) * ∑ d ∈ (Icc 1 (⌊Real.exp A⌋₊ / 2)).filter
            (fun d ↦ Nat.Coprime d 2), (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) ^ 2 +
      2 * RoughClassReduction.roughClassMean A P +
      2 * PrimeSupportedBlock.primeSupportedBlock A P +
      2 * (PrimeBlockReduction.roughRatioRemainder A P -
        RoughClassReduction.roughClassMean A P) :=
  TwoInsertionBoundary.sourceQuadraticValue_two_split A P hA

example (A : ℝ) (P : Finset ℕ) (hA : 1 ≤ A) :
    sourceQuadraticValue Realization.explicitSecondDerivative A =
      archimedeanValue Realization.explicitSecondDerivative A -
      4 * ((∑ d ∈ (Icc 1 (⌊Real.exp A⌋₊ / 2)).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) *
          (sourceSamplingKernel A d - sourceSamplingKernel A (2 * d : ℕ))) +
        ∑ d ∈ (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊).filter (fun d ↦ Nat.Coprime d 2),
          (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d) +
      2 * ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) *
        (∑ d ∈ Icc 1 ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) ^ 2 +
      2 * RoughClassReduction.roughClassMean A P +
      2 * PrimeSupportedBlock.primeSupportedBlock A P +
      2 * (PrimeBlockReduction.roughRatioRemainder A P -
        RoughClassReduction.roughClassMean A P) :=
  TwoInsertionBoundary.sourceQuadraticValue_two_boundary A P hA

end
end TwoInsertionBoundaryStatementChecks

namespace DirichletCoefficientGuardStatements
open ArithmeticFunction
open scoped ArithmeticFunction.zeta
open FormalResearch.RiemannHypothesis.SourceComparison
open MobiusQuadratic DirichletCoefficientGuard
noncomputable section

example : (truncatedMoebius 5 * ArithmeticFunction.log) 12 = - Real.log 2 := linear_twelve

example :
    (truncatedMoebius 5 ^ 2 * (ζ : ArithmeticFunction ℝ) * ArithmeticFunction.log) 12 =
      -2 * Real.log 2 := quadratic_twelve

example :
    (truncatedMoebius 5 ^ 2 * (ζ : ArithmeticFunction ℝ) * ArithmeticFunction.log) 12 < 0 :=
  quadratic_twelve_neg

example :
    2 * (truncatedMoebius 5 * ArithmeticFunction.log) 12 -
      (truncatedMoebius 5 ^ 2 * (ζ : ArithmeticFunction ℝ) * ArithmeticFunction.log) 12 = 0 :=
  twelve_linear_quadratic_cancel

example : ∃ A : ℝ, 1 ≤ A ∧ ∃ n : ℕ, n ∈ Cutoff.primeIndices A ∧
    (truncatedMoebius ⌊Real.exp A⌋₊ ^ 2 *
      (ζ : ArithmeticFunction ℝ) * ArithmeticFunction.log) n < 0 :=
  actual_source_coefficient_negative_exists

end
end DirichletCoefficientGuardStatements

namespace NegativeDensityLaplaceExactStatements

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.NegativePartIntegrability
open FormalResearch.RiemannHypothesis.SourceComparison.NegativeDensityLaplace

noncomputable section

example (f : ℝ → ℝ) (hf : IntegrableOn f (Ioi 1)) (s : ℂ) (hs : 0 ≤ s.re) :
    IntegrableOn (fun A : ℝ ↦ Complex.exp (-s * A) * (f A : ℂ)) (Ioi 1) :=
  laplace_integrable f hf s hs

example (f : ℝ → ℝ) (hf : IntegrableOn f (Ioi 1))
    (hpos : ∀ A : ℝ, 1 ≤ A → 0 ≤ f A) (s : ℂ) (hs : 0 < s.re) :
    AnalyticAt ℂ (fun z : ℂ ↦ ∫ A in Ioi (1 : ℝ),
      Complex.exp (-z * A) * (f A : ℂ)) s :=
  laplace_analytic f hf hpos s hs

example (η A : ℝ) (s : ℂ) :
    Complex.exp (-(s - (η : ℂ)) * A) *
        ((Real.exp (-η * A) * negativeSource A : ℝ) : ℂ) =
      Complex.exp (-s * A) * (negativeSource A : ℂ) :=
  negative_tilt_eq η A s

example (η : ℝ)
    (hη : IntegrableOn (fun A : ℝ ↦ Real.exp (-η * A) * negativeSource A) (Ioi 1))
    (s : ℂ) (hs : η ≤ s.re) :
    IntegrableOn (fun A : ℝ ↦ Complex.exp (-s * A) * (negativeSource A : ℂ)) (Ioi 1) :=
  negative_laplace_integrable η hη s hs

example (η : ℝ)
    (hη : IntegrableOn (fun A : ℝ ↦ Real.exp (-η * A) * negativeSource A) (Ioi 1))
    (s : ℂ) (hs : η < s.re) :
    AnalyticAt ℂ (fun z : ℂ ↦ ∫ A in Ioi (1 : ℝ),
      Complex.exp (-z * A) * (negativeSource A : ℂ)) s :=
  negative_laplace_analytic η hη s hs

end
end NegativeDensityLaplaceExactStatements

namespace FiniteDensityInsertionStatementChecks

open Finset
open FormalResearch.RiemannHypothesis.SourceComparison

noncomputable section

example (h D : ℕ) : FiniteDensityInsertion.coprimeReciprocalSquareSum h D =
    ∑ d ∈ Icc 1 D, if Nat.Coprime d h then
      (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2 else 0 := rfl

example (h k : ℕ) (hhk : Nat.Coprime h k) :
    CoprimeCount.coprimeDensity (h * k) =
      CoprimeCount.coprimeDensity h * CoprimeCount.coprimeDensity k := by
  exact FiniteDensityInsertion.coprimeDensity_mul h k hhk

example : CoprimeCount.coprimeDensity 2 = (1 / 2 : ℝ) := by
  exact FiniteDensityInsertion.coprimeDensity_two

example (h : ℕ) (hh : Nat.Coprime 2 h) :
    CoprimeCount.coprimeDensity (2 * h) = CoprimeCount.coprimeDensity h / 2 := by
  exact FiniteDensityInsertion.coprimeDensity_two_mul h hh

example (h D : ℕ) (hh : Nat.Coprime 2 h) :
    FiniteDensityInsertion.coprimeReciprocalSquareSum h D = FiniteDensityInsertion.coprimeReciprocalSquareSum (2 * h) D -
      (1 / 4 : ℝ) * FiniteDensityInsertion.coprimeReciprocalSquareSum (2 * h) (D / 2) := by
  exact FiniteDensityInsertion.coprimeReciprocalSquareSum_two_split h D hh

example (h Y Z : ℕ) (hYZ : Y ≤ Z) :
    FiniteDensityInsertion.coprimeReciprocalSquareSum h Z - FiniteDensityInsertion.coprimeReciprocalSquareSum h Y =
      ∑ d ∈ Ioc Y Z, if Nat.Coprime d h then
        (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2 else 0 := by
  exact FiniteDensityInsertion.coprimeReciprocalSquareSum_difference h Y Z hYZ

example (h D : ℕ) (hh : Nat.Coprime 2 h) :
    SquarefreeCount.finiteSquarefreeDensity (2 * h) D -
      (2 / 3 : ℝ) * SquarefreeCount.finiteSquarefreeDensity h D =
      -(CoprimeCount.coprimeDensity h / 6) *
        ∑ d ∈ Ioc (D / 2) D, if Nat.Coprime d (2 * h) then
          (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2 else 0 := by
  exact FiniteDensityInsertion.finiteSquarefreeDensity_two_error_eq h D hh

example (h Y Z : ℕ) (hY : 1 ≤ Y)
    (hYZ : Y ≤ Z) :
    |∑ d ∈ Ioc Y Z, if Nat.Coprime d h then
      (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2 else 0| ≤ 1 / (Y : ℝ) := by
  exact FiniteDensityInsertion.coprimeReciprocalSquareSum_tail_abs_le h Y Z hY hYZ

example (h D : ℕ)
    (hh : Nat.Coprime 2 h) (hh1 : 1 ≤ h) (hD : 2 ≤ D) :
    |SquarefreeCount.finiteSquarefreeDensity (2 * h) D -
      (2 / 3 : ℝ) * SquarefreeCount.finiteSquarefreeDensity h D| ≤
      1 / (6 * (D / 2 : ℕ)) := by
  exact FiniteDensityInsertion.finiteSquarefreeDensity_two_error_le_half_cutoff h D hh hh1 hD

example (h D : ℕ)
    (hh : Nat.Coprime 2 h) (hh1 : 1 ≤ h) (hD : 2 ≤ D) :
    |SquarefreeCount.finiteSquarefreeDensity (2 * h) D -
      (2 / 3 : ℝ) * SquarefreeCount.finiteSquarefreeDensity h D| ≤
      1 / (2 * (D : ℝ)) := by
  exact FiniteDensityInsertion.finiteSquarefreeDensity_two_error_le h D hh hh1 hD

example : FiniteDensityInsertion.twoDensityFactor = (Real.sqrt 2 - 1)^2 / 3 := rfl

example : FiniteDensityInsertion.twoDensityFactor = 1 - 2 * Real.sqrt 2 / 3 := by
  exact FiniteDensityInsertion.twoDensityFactor_eq

example : 0 ≤ FiniteDensityInsertion.twoDensityFactor ∧ FiniteDensityInsertion.twoDensityFactor ≤ 1/16 := by
  exact FiniteDensityInsertion.twoDensityFactor_bounds

example (h D : ℕ) (hh : Nat.Coprime 2 h)
    (hh1 : 1 ≤ h) (hD : 2 ≤ D) :
    |SquarefreeCount.finiteSquarefreeDensity h D -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) D -
      FiniteDensityInsertion.twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h D| ≤
      Real.sqrt 2 / (2 * (D:ℝ)) := by
  exact FiniteDensityInsertion.signed_two_density_error_le h D hh hh1 hD

example (h D : ℕ) (hh : Nat.Coprime 2 h)
    (hh1 : 1 ≤ h) (hD : 2 ≤ D) :
    |SquarefreeCount.finiteSquarefreeDensity h D -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) D| ≤
      (1/16:ℝ) * |SquarefreeCount.finiteSquarefreeDensity h D| +
      Real.sqrt 2 / (2 * (D:ℝ)) := by
  exact FiniteDensityInsertion.signed_two_density_abs_le h D hh hh1 hD

example (h Y Z : ℕ) (hh : Nat.Coprime 2 h)
    (hh1 : 1 ≤ h) (hY : 2 ≤ Y) (hYZ : Y ≤ Z) :
    |SquarefreeCount.finiteSquarefreeDensity h Z -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) Y -
      FiniteDensityInsertion.twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h Z| ≤
      7 * Real.sqrt 2 / (6 * (Y:ℝ)) := by
  exact FiniteDensityInsertion.signed_two_density_cutoffs_error_le h Y Z hh hh1 hY hYZ

example (h N : ℕ) (hh : Nat.Coprime 2 h)
    (hh1 : 1 ≤ h) (hN : 8 ≤ N) :
    |SquarefreeCount.finiteSquarefreeDensity h (Nat.sqrt N) -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) (Nat.sqrt (N/2)) -
      FiniteDensityInsertion.twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h (Nat.sqrt N)| ≤
      7 * Real.sqrt 2 / (6 * (Nat.sqrt (N/2):ℝ)) := by
  exact FiniteDensityInsertion.signed_two_density_natural_cutoffs_error_le h N hh hh1 hN

end
end FiniteDensityInsertionStatementChecks

section JointBoundaryTransportStatements
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open TwoInsertionBoundary SourceSampling ThetaKernelTransport JointBoundaryTransport

example (S T : Finset ℕ) (F : ℕ → ℝ) :
    rectangle S T F = ∑ i ∈ S, ∑ j ∈ T,
      (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) * F (i * j) := rfl

example (S T : Finset ℕ) (F : ℕ → ℝ) :
    rectangle S T F = rectangle T S F :=
  rectangle_symm S T F

example (N : ℕ) (T : Finset ℕ) (F : ℕ → ℝ) :
    rectangle (Icc 1 N) T F =
      rectangle ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)) T F -
      rectangle ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2)) T
        (fun q ↦ F (2 * q)) :=
  rectangle_two_split_left N T F

example (N : ℕ) (F : ℕ → ℝ) :
    rectangle (Icc 1 N) (Icc 1 N) F =
      rectangle ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2))
        ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)) F -
      2 * rectangle ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2))
        ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)) (fun q ↦ F (2 * q)) +
      rectangle ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2))
        ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2)) (fun q ↦ F (4 * q)) :=
  rectangle_two_split N F

example (N : ℕ) (T : Finset ℕ) (F : ℕ → ℝ) :
    rectangle ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)) T F =
      rectangle ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2)) T F +
      rectangle ((Ioc (N / 2) N).filter (fun d ↦ Nat.Coprime d 2)) T F :=
  rectangle_odd_boundary N T F

example (S T : Finset ℕ) (F G : ℕ → ℝ) (c : ℝ) :
    rectangle S T (fun q ↦ F q - c * G q) = rectangle S T F - c * rectangle S T G :=
  rectangle_sub_mul S T F G c

example (N : ℕ) (F : ℕ → ℝ) :
    rectangle (Icc 1 N) (Icc 1 N) F =
      rectangle ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2))
        ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)) (fun q ↦ F q - 2 * F (2 * q)) +
      rectangle ((Ioc (N / 2) N).filter (fun d ↦ Nat.Coprime d 2))
        ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)) F +
      rectangle ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2))
        ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2)) (fun q ↦ F (4 * q)) :=
  rectangle_two_boundary N F

example (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue Realization.explicitSecondDerivative A =
      archimedeanValue Realization.explicitSecondDerivative A -
      4 * (∑ d ∈ (Icc 1 (⌊Real.exp A⌋₊ / 2)).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) *
          (sourceSamplingKernel A d - sourceSamplingKernel A (2 * d : ℕ))) +
      2 * rectangle ((Icc 1 (⌊Real.exp A⌋₊ / 2)).filter (fun d ↦ Nat.Coprime d 2))
        ((Icc 1 ⌊Real.exp A⌋₊).filter (fun d ↦ Nat.Coprime d 2))
        (fun q ↦ thetaKernel A q - 2 * thetaKernel A (2 * q)) +
      2 * (rectangle ((Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊).filter
          (fun d ↦ Nat.Coprime d 2))
        ((Icc 1 ⌊Real.exp A⌋₊).filter (fun d ↦ Nat.Coprime d 2)) (thetaKernel A) +
        rectangle ((Icc 1 (⌊Real.exp A⌋₊ / 2)).filter (fun d ↦ Nat.Coprime d 2))
          ((Icc 1 (⌊Real.exp A⌋₊ / 2)).filter (fun d ↦ Nat.Coprime d 2))
          (fun q ↦ thetaKernel A (4 * q)) -
        2 * ∑ d ∈ (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊).filter
            (fun d ↦ Nat.Coprime d 2),
          (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d) :=
  sourceQuadraticValue_joint_boundary A hA

end JointBoundaryTransportStatements


section SourceHomogeneityDefectStatements
open Finset MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization SourceSampling SourceSamplingDerivative CorrelationDifferenceMoments
open CorrelationSecondMoment CorrelationPrimitive CorrelationPrimitiveMoments
open RealThetaKernel RealThetaDerivative CorrelationSecondDerivative CorrelationThirdDerivative
open CorrelationRegularity CorrelationMoment CorrelationFirstMoment SourcePrimitiveSampling
open FormalResearch.RiemannHypothesis.SourceComparison.HomogeneityDefect

example (A x : ℝ) : correlationPrimeSample A x =
    ∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
      deriv (sourceCorrelation explicitSecondDerivative A) (Real.log (x * (k : ℝ))) := rfl

example (A q : ℝ) : correlationPrimeTheta A q =
    ∑ k ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊, correlationPrimeSample A (q * (k : ℝ)) := rfl

example (A t : ℝ) : negativePrimePrimitive A t =
    correlationPrimitive A t / 2 - sourceCorrelation explicitSecondDerivative A t := rfl

example (A x : ℝ) : primePrimitiveSample A x =
    ∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
      negativePrimePrimitive A (Real.log (x * (k : ℝ))) := rfl

example (A x : ℝ) :
    correlationPrimeSample A x = differenceSamplingKernel A x + sourceSamplingKernel A x / 2 :=
  correlationPrimeSample_eq A x

example (A q : ℝ) :
    correlationPrimeTheta A q = realThetaDifferenceKernel A q + realThetaKernel A q / 2 :=
  correlationPrimeTheta_eq A q

example (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    q * deriv (realThetaRemainder A) q + realThetaRemainder A q / 2 =
      correlationPrimeTheta A q + sourceRankOneCoefficient A / (2 * q) :=
  homogeneity_defect_eq A q hA hq

example (A t : ℝ) (hA : 1 ≤ A) :
    negativePrimePrimitive A t = -deriv (correlationPrimitive A) t :=
  negativePrimePrimitive_eq A t hA

example (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 1 (negativePrimePrimitive A) :=
  negativePrimePrimitive_contDiff A hA

example (A : ℝ) (hA : 1 ≤ A) :
    HasCompactSupport (negativePrimePrimitive A) :=
  negativePrimePrimitive_compact A hA

example (A t : ℝ) (hA : 1 ≤ A) :
    |negativePrimePrimitive A t| ≤ 2 * Real.sqrt (65 / 3) / A :=
  negativePrimePrimitive_abs_le A t hA

example (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (negativePrimePrimitive A) t| ≤ 2 * Real.sqrt (65 / 3) / A :=
  negativePrimePrimitive_derivative_abs_le A t hA

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ t : ℝ, Real.exp (t / 2) * negativePrimePrimitive A t) = 0 ∧
      (∫ t : ℝ, t * Real.exp (t / 2) * negativePrimePrimitive A t) =
        -sourceRankOneCoefficient A / 2 :=
  negativePrimePrimitive_moments A hA

example (A t : ℝ) (hA : 1 ≤ A) (ht : 2 * A ≤ t) :
    negativePrimePrimitive A t = 0 :=
  negativePrimePrimitive_zero_right A t hA ht

example (A x : ℝ) :
    primePrimitiveSample A x = -sourcePrimitiveSamplingKernel A x / 2 - sourceSamplingKernel A x :=
  primePrimitiveSample_eq A x

example (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    IntegrableOn (fun x ↦ correlationPrimeSample A (q * x)) (Set.Ioi 1) :=
  primeSample_rescaled_integrable A q hA hq

example (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    (∫ x in Set.Ioi (1 : ℝ), correlationPrimeSample A (q * x)) = primePrimitiveSample A q :=
  primeSample_integral_eq_primitive A q hA hq

example (A x u : ℝ) (F : ℝ → ℝ) (hx : 0 < x) (hu : 0 < u)
    (hzero : ∀ t, 2 * A ≤ t → F t = 0) (hcut : Real.exp (2 * A) ≤ x * u) :
    TwoMomentSampling.samplingIntegrand F x u = 0 :=
  sampling_zero A x u F hx hu hzero hcut

example (A x : ℝ) (F : ℝ → ℝ) (hx : 0 < x)
    (hzero : ∀ t, 2 * A ≤ t → F t = 0) :
    (∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
      F (Real.log (x * (k : ℝ)))) =
      ∑ k ∈ Icc 1 (⌊Real.exp (2 * A) / x⌋₊ + 1), TwoMomentSampling.samplingIntegrand F x k :=
  strict_sample_eq_padded A x F hx hzero

example (A x : ℝ) (F : ℝ → ℝ) (hx : 0 < x)
    (hzero : ∀ t, 2 * A ≤ t → F t = 0)
    (u : ℝ) (hu : (⌊Real.exp (2 * A) / x⌋₊ + 1 : ℕ) ≤ u) :
    TwoMomentSampling.samplingIntegrand F x u = 0 :=
  sampling_padded_endpoint_zero A x F hx hzero u hu

example (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    |primePrimitiveSample A x + sourceRankOneCoefficient A / (2 * x)| ≤
      (24 * Real.sqrt (65 / 3) / A) / Real.sqrt x :=
  primePrimitiveSample_add_rankOne_abs_le A x hA hx

example (A t : ℝ) (hA : 1 ≤ A) :
    deriv (correlationDifference A) t =
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2 :=
  difference_derivative_eq A t hA

example (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 1 (deriv (correlationDifference A)) :=
  difference_derivative_contDiff A hA

example (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (deriv (correlationDifference A)) t| ≤
      Real.sqrt (325325 / 18) / A ^ 3 + 65 / (6 * A ^ 2) :=
  difference_second_derivative_abs_le A t hA

example (A t : ℝ) (hA : 1 ≤ A) (ht : 2 * A ≤ t) :
    deriv (correlationDifference A) t = 0 :=
  difference_derivative_zero_right A t hA ht

example (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    |∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
      deriv (correlationDifference A) (Real.log (x * (k : ℝ)))| ≤
      (4 * Real.sqrt (65 / 3) / A + 10 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt x :=
  difference_derivative_sampling_abs_le A x hA hx

example (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    HasDerivAt (correlationPrimeSample A)
      (1 / x * ∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
        deriv (correlationDifference A) (Real.log (x * (k : ℝ)))) x :=
  primeSample_hasDerivAt A x hA hx

example (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    |deriv (correlationPrimeSample A) x| ≤
      (4 * Real.sqrt (65 / 3) / A + 10 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / (x * Real.sqrt x) :=
  primeSample_derivative_abs_le A x hA hx

example (A q x : ℝ) (hA : 1 ≤ A) (hq : 0 < q) (hx : 0 < x) :
    HasDerivAt (fun t : ℝ ↦ correlationPrimeSample A (q * t))
      (q * deriv (correlationPrimeSample A) (q * x)) x :=
  scaledPrimeSample_hasDerivAt A q x hA hq hx

example (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    IntegrableOn (deriv (fun t : ℝ ↦ correlationPrimeSample A (q * t))) (Set.Ioi 1) :=
  scaledPrimeSample_derivative_integrable A q hA hq

example (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    (∫ t in Set.Ioi (1 : ℝ), |deriv (fun t : ℝ ↦ correlationPrimeSample A (q * t)) t|) ≤
      2 * (4 * Real.sqrt (65 / 3) / A + 10 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q :=
  scaledPrimeSample_variation_le A q hA hq

example (A x : ℝ) (hx : 0 < x)
    (hcut : Real.exp (2 * A) ≤ x) : correlationPrimeSample A x = 0 :=
  primeSample_zero_of_exp_le A x hx hcut

example (A q : ℝ) (hq : 1 ≤ q) :
    correlationPrimeTheta A q =
      ∑ k ∈ Icc 1 (⌊Real.exp (2 * A)⌋₊ + 1), correlationPrimeSample A (q * (k : ℝ)) :=
  primeTheta_eq_padded_sum A q hq

example (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |correlationPrimeTheta A q -
      (∫ t in Set.Ioi (1 : ℝ), correlationPrimeSample A (q * t))| ≤
      2 * (4 * Real.sqrt (65 / 3) / A + 10 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q :=
  primeTheta_sub_integral_abs_le A q hA hq

example (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |correlationPrimeTheta A q + sourceRankOneCoefficient A / (2 * q)| ≤
      (32 * Real.sqrt (65 / 3) / A + 20 * (65 / (3 * A ^ 2)) +
        8 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q :=
  primeTheta_add_rankOne_abs_le A q hA hq

example (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |q * deriv (realThetaRemainder A) q + realThetaRemainder A q / 2| ≤
      (32 * Real.sqrt (65 / 3) / A + 20 * (65 / (3 * A ^ 2)) +
        8 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q :=
  homogeneity_defect_abs_le A q hA hq

end SourceHomogeneityDefectStatements


namespace RatioInsertionCutoffsStatementChecks

open FormalResearch.RiemannHypothesis.SourceComparison

noncomputable section

example (u v : ℕ) :
    max u v ≤ max (2*u) v ∧ max (2*u) v ≤ 2 * max u v := by
  exact RatioInsertionCutoffs.max_two_left_bounds u v

example (N u v : ℕ) (hu : 1 ≤ u) :
    (N / max u v) / 2 ≤ N / max (2*u) v ∧
      N / max (2*u) v ≤ N / max u v := by
  exact RatioInsertionCutoffs.commonScale_two_left_bounds N u v hu

example (N u v : ℕ) (hv : 1 ≤ v) :
    (N / max u v) / 2 ≤ N / max u (2*v) ∧
      N / max u (2*v) ≤ N / max u v := by
  exact RatioInsertionCutoffs.commonScale_two_right_bounds N u v hv

example (N u v : ℕ) (h : 2*u ≤ v) :
    N / max (2*u) v = N / max u v := by
  exact RatioInsertionCutoffs.commonScale_two_left_eq_full N u v h

example (N u v : ℕ) (h : v ≤ u) :
    N / max (2*u) v = (N / max u v) / 2 := by
  exact RatioInsertionCutoffs.commonScale_two_left_eq_half N u v h

example (N u v : ℕ) (hlo : u < v) (hhi : v < 2*u) :
    N / max u v = N / v ∧ N / max (2*u) v = N / (2*u) := by
  exact RatioInsertionCutoffs.commonScale_two_left_intermediate N u v hlo hhi

example (N u v : ℕ) :
    N / max (2*u) v = if 2*u ≤ v then N / max u v
      else if v ≤ u then (N / max u v) / 2 else N / (2*u) := by
  exact RatioInsertionCutoffs.commonScale_two_left_cases N u v

example (N u v : ℕ) (hu : 1 ≤ u) (h : N / max u v = 0) :
    N / max (2*u) v = 0 := by
  exact RatioInsertionCutoffs.commonScale_two_left_empty N u v hu h

example (N u v : ℕ) (hu : 1 ≤ u) :
    Nat.sqrt ((N / max u v) / 2) ≤ Nat.sqrt (N / max (2*u) v) ∧
      Nat.sqrt (N / max (2*u) v) ≤ Nat.sqrt (N / max u v) := by
  exact RatioInsertionCutoffs.sqrt_commonScale_two_left_bounds N u v hu

example (N u v : ℕ) (hu : 1 ≤ u) :
    8 ≤ N / max u v ↔ 8 * max u v ≤ N := by
  exact RatioInsertionCutoffs.commonScale_eight_iff N u v hu

example (N u v : ℕ) (hu : 1 ≤ u)
    (hG : 8 ≤ N / max u v) :
    2 ≤ Nat.sqrt (N / max (2*u) v) ∧
      Nat.sqrt (N / max (2*u) v) ≤ Nat.sqrt (N / max u v) := by
  exact RatioInsertionCutoffs.sqrt_commonScale_two_left_admissible N u v hu hG

example (N u v : ℕ) (hu : 1 ≤ u) (hv : 1 ≤ v)
    (hodd : Nat.Coprime 2 (u*v)) (hG : 8 ≤ N / max u v) :
    |SquarefreeCount.finiteSquarefreeDensity (u*v) (Nat.sqrt (N / max u v)) -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*(u*v))
        (Nat.sqrt (N / max (2*u) v)) -
      FiniteDensityInsertion.twoDensityFactor *
        SquarefreeCount.finiteSquarefreeDensity (u*v) (Nat.sqrt (N / max u v))| ≤
      7 * Real.sqrt 2 / (6 * (Nat.sqrt (N / max (2*u) v):ℝ)) := by
  exact RatioInsertionCutoffs.signed_two_density_left_cutoffs_error_le N u v hu hv hodd hG

example (N u v : ℕ) (hv : 1 ≤ v)
    (hG : 8 ≤ N / max u v) :
    2 ≤ Nat.sqrt (N / max u (2*v)) ∧
      Nat.sqrt (N / max u (2*v)) ≤ Nat.sqrt (N / max u v) := by
  exact RatioInsertionCutoffs.sqrt_commonScale_two_right_admissible N u v hv hG

example (N u v : ℕ) (hu : 1 ≤ u) (hv : 1 ≤ v)
    (hodd : Nat.Coprime 2 (u*v)) (hG : 8 ≤ N / max u v) :
    |SquarefreeCount.finiteSquarefreeDensity (u*v) (Nat.sqrt (N / max u v)) -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*(u*v))
        (Nat.sqrt (N / max u (2*v))) -
      FiniteDensityInsertion.twoDensityFactor *
        SquarefreeCount.finiteSquarefreeDensity (u*v) (Nat.sqrt (N / max u v))| ≤
      7 * Real.sqrt 2 / (6 * (Nat.sqrt (N / max u (2*v)):ℝ)) := by
  exact RatioInsertionCutoffs.signed_two_density_right_cutoffs_error_le N u v hu hv hodd hG

example (N u v : ℕ) (hu : 1 ≤ u) (hv : 1 ≤ v)
    (hodd : Nat.Coprime 2 (u*v)) (hG : 8 ≤ N / max u v) :
    let Z := Nat.sqrt (N / max u v)
    let YL := Nat.sqrt (N / max (2*u) v)
    let YR := Nat.sqrt (N / max u (2*v))
    |SquarefreeCount.finiteSquarefreeDensity (u*v) Z -
      (Real.sqrt 2/2) * (SquarefreeCount.finiteSquarefreeDensity (2*(u*v)) YL +
        SquarefreeCount.finiteSquarefreeDensity (2*(u*v)) YR) -
      FiniteDensityInsertion.twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity (u*v) Z| ≤
      (7 * Real.sqrt 2 / 12) * (1/(YL:ℝ) + 1/(YR:ℝ)) := by
  exact RatioInsertionCutoffs.signed_two_density_both_cutoffs_error_le N u v hu hv hodd hG

example (h : ℕ) (a b c : ℝ)
    (hh : 1 ≤ h) (hodd : Nat.Coprime 2 h) :
    (ArithmeticFunction.moebius h : ℝ) * a / Real.sqrt (h:ℝ) +
      (ArithmeticFunction.moebius (2*h) : ℝ) * b / Real.sqrt ((2*h:ℕ):ℝ) +
      (ArithmeticFunction.moebius (2*h) : ℝ) * c / Real.sqrt ((2*h:ℕ):ℝ) =
      ((ArithmeticFunction.moebius h : ℝ) / Real.sqrt (h:ℝ)) *
        (a - (Real.sqrt 2/2)*(b+c)) := by
  exact RatioInsertionCutoffs.actual_two_density_coefficient_eq h a b c hh hodd

example (N u v : ℕ) (hu : 1 ≤ u) (hv : 1 ≤ v)
    (hodd : Nat.Coprime 2 (u*v)) (hG : 8 ≤ N / max u v) :
    let h := u*v
    let Z := Nat.sqrt (N / max u v)
    let YL := Nat.sqrt (N / max (2*u) v)
    let YR := Nat.sqrt (N / max u (2*v))
    |(ArithmeticFunction.moebius h : ℝ) * SquarefreeCount.finiteSquarefreeDensity h Z /
        Real.sqrt (h:ℝ) +
      (ArithmeticFunction.moebius (2*h) : ℝ) * SquarefreeCount.finiteSquarefreeDensity (2*h) YL /
        Real.sqrt ((2*h:ℕ):ℝ) +
      (ArithmeticFunction.moebius (2*h) : ℝ) * SquarefreeCount.finiteSquarefreeDensity (2*h) YR /
        Real.sqrt ((2*h:ℕ):ℝ) -
      FiniteDensityInsertion.twoDensityFactor * (ArithmeticFunction.moebius h : ℝ) *
        SquarefreeCount.finiteSquarefreeDensity h Z / Real.sqrt (h:ℝ)| ≤
      (7 * Real.sqrt 2 / (12 * Real.sqrt (h:ℝ))) * (1/(YL:ℝ) + 1/(YR:ℝ)) := by
  exact RatioInsertionCutoffs.actual_two_density_cutoff_error_le N u v hu hv hodd hG

end
end RatioInsertionCutoffsStatementChecks



set_option autoImplicit false
namespace ScaleComparisonExactStatements
open MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open RealThetaKernel FormalResearch.RiemannHypothesis.SourceComparison.KernelScaleComparison
noncomputable section

example (A : ℝ) : scaleComparisonCoefficient A =
    32 * Real.sqrt (65 / 3) / A + 20 * (65 / (3 * A ^ 2)) +
      8 * Real.sqrt (325325 / 18) / A ^ 3 := rfl

example (A : ℝ) (hA : 1 ≤ A) : 0 ≤ scaleComparisonCoefficient A :=
  scaleComparisonCoefficient_nonneg A hA

example (A q : ℝ) : sqrtWeightedRemainder A q =
    Real.sqrt q * realThetaRemainder A q := rfl

example (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    HasDerivAt (sqrtWeightedRemainder A)
      ((q * deriv (realThetaRemainder A) q + realThetaRemainder A q / 2) /
        Real.sqrt q) q :=
  sqrtWeightedRemainder_hasDerivAt A q hA hq

example (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |deriv (sqrtWeightedRemainder A) q| ≤ scaleComparisonCoefficient A / q :=
  sqrtWeightedRemainder_derivative_abs_le A q hA hq

example (A a b : ℝ) (hA : 1 ≤ A) (ha : 1 ≤ a) (hab : a ≤ b) :
    IntervalIntegrable (deriv (sqrtWeightedRemainder A)) volume a b :=
  sqrtWeightedRemainder_derivative_intervalIntegrable A a b hA ha hab

example (A a b : ℝ) (hA : 1 ≤ A) (ha : 1 ≤ a) (hab : a ≤ b) :
    (∫ q in a..b, deriv (sqrtWeightedRemainder A) q) =
      sqrtWeightedRemainder A b - sqrtWeightedRemainder A a :=
  sqrtWeightedRemainder_integral_derivative A a b hA ha hab

example (A a b : ℝ) (hA : 1 ≤ A) (ha : 1 ≤ a) (hab : a ≤ b) :
    |sqrtWeightedRemainder A b - sqrtWeightedRemainder A a| ≤
      scaleComparisonCoefficient A * Real.log (b / a) :=
  sqrtWeightedRemainder_abs_sub_le_log_ratio A a b hA ha hab

example (A q r : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) (hr : 1 ≤ r) :
    |Real.sqrt r * realThetaRemainder A (r * q) - realThetaRemainder A q| ≤
      scaleComparisonCoefficient A * Real.log r / Real.sqrt q :=
  real_remainder_scale_comparison A q r hA hq hr

example (A : ℝ) (q p : ℕ) (hA : 1 ≤ A) (hq : 1 ≤ q) (hp : 1 ≤ p) :
    |Real.sqrt (p : ℝ) * ThetaRemainder.thetaRemainder A (p * q) -
      ThetaRemainder.thetaRemainder A q| ≤
      scaleComparisonCoefficient A * Real.log (p : ℝ) / Real.sqrt (q : ℝ) :=
  theta_remainder_scale_comparison A q p hA hq hp

example (A : ℝ) (q : ℕ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |ThetaRemainder.thetaRemainder A (2 * q) -
      ThetaRemainder.thetaRemainder A q / Real.sqrt 2| ≤
      scaleComparisonCoefficient A * Real.log 2 / (Real.sqrt 2 * Real.sqrt (q : ℝ)) :=
  theta_remainder_two_difference_abs_le A q hA hq

end
end ScaleComparisonExactStatements



set_option autoImplicit false
namespace WeightedClassInsertionExactStatements
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open WeightedClassInsertion
noncomputable section

example (A : ℝ) (h G : ℕ) : classKernelSum A h G =
    ∑ g ∈ Icc 1 G, ThetaRemainder.thetaRemainder A (h * g ^ 2) := rfl

example (A : ℝ) (h Y G : ℕ) : classKernelTail A h Y G =
    ∑ g ∈ Ioc Y G, ThetaRemainder.thetaRemainder A (h * g ^ 2) := rfl

example (A : ℝ) (h Y : ℕ) : classScaleDifference A h Y =
    ∑ g ∈ Icc 1 Y, (ThetaRemainder.thetaRemainder A (h * g ^ 2) -
      Real.sqrt 2 * ThetaRemainder.thetaRemainder A ((2 * h) * g ^ 2)) := rfl

example (A : ℝ) (h Y G : ℕ) (hYG : Y ≤ G) :
    classKernelSum A h G = classKernelSum A h Y + classKernelTail A h Y G :=
  classKernelSum_split A h Y G hYG

example (A : ℝ) (h Y : ℕ) : classScaleDifference A h Y =
    classKernelSum A h Y - Real.sqrt 2 * classKernelSum A (2 * h) Y :=
  classScaleDifference_eq A h Y

example (A : ℝ) (h Y G : ℕ) (hYG : Y ≤ G) :
    classKernelSum A h G - Real.sqrt 2 * classKernelSum A (2 * h) Y =
      classScaleDifference A h Y + classKernelTail A h Y G :=
  classKernelSum_two_difference_eq A h Y G hYG

example (A : ℝ) (u v : ℕ) : RatioClassVariation.classMean A u v =
    (ArithmeticFunction.moebius (u * v) : ℝ) *
      SquarefreeCount.finiteSquarefreeDensity (u * v)
        (Nat.sqrt (⌊Real.exp A⌋₊ / max u v)) *
      classKernelSum A (u * v) (⌊Real.exp A⌋₊ / max u v) :=
  classMean_eq_kernelSum A u v

example (A : ℝ) (u v : ℕ) (hu : 1 ≤ u) (hv : 1 ≤ v)
    (hodd : Nat.Coprime 2 (u * v)) :
    let N := ⌊Real.exp A⌋₊
    let h := u * v
    let G := N / max u v
    let leftCutoff := N / max (2 * u) v
    let rightCutoff := N / max u (2 * v)
    let a := SquarefreeCount.finiteSquarefreeDensity h (Nat.sqrt G)
    let b := SquarefreeCount.finiteSquarefreeDensity (2 * h) (Nat.sqrt leftCutoff)
    let c := SquarefreeCount.finiteSquarefreeDensity (2 * h) (Nat.sqrt rightCutoff)
    let κ := FiniteDensityInsertion.twoDensityFactor
    RatioClassVariation.classMean A u v + RatioClassVariation.classMean A (2 * u) v +
      RatioClassVariation.classMean A u (2 * v) - κ * RatioClassVariation.classMean A u v =
      (ArithmeticFunction.moebius h : ℝ) *
        ((a - (Real.sqrt 2 / 2) * (b + c) - κ * a) * classKernelSum A h G +
          (Real.sqrt 2 / 2) * b *
            (classScaleDifference A h leftCutoff + classKernelTail A h leftCutoff G) +
          (Real.sqrt 2 / 2) * c *
            (classScaleDifference A h rightCutoff + classKernelTail A h rightCutoff G)) :=
  classMean_two_insertions_eq A u v hu hv hodd

example (A : ℝ) (h g : ℕ) (hA : 1 ≤ A) (hh : 1 ≤ h) (hg : 1 ≤ g) :
    |ThetaRemainder.thetaRemainder A (h * g ^ 2)| ≤
      (ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ)) * (1 / (g : ℝ)) :=
  classKernelTerm_abs_le A h g hA hh hg

example (A : ℝ) (h G : ℕ) (hA : 1 ≤ A) (hh : 1 ≤ h) :
    |classKernelSum A h G| ≤ (ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ)) *
      ∑ g ∈ Icc 1 G, 1 / (g : ℝ) :=
  classKernelSum_abs_le A h G hA hh

example (Y G : ℕ) (hYG : Y ≤ G) (hhalf : G / 2 ≤ Y) :
    (∑ g ∈ Ioc Y G, 1 / (g : ℝ)) ≤ 1 :=
  reciprocal_half_cutoff_tail_le Y G hYG hhalf

example (A : ℝ) (h Y G : ℕ) (hA : 1 ≤ A) (hh : 1 ≤ h) :
    |classKernelTail A h Y G| ≤
      (ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ)) *
        ∑ g ∈ Ioc Y G, 1 / (g : ℝ) :=
  classKernelTail_abs_le_harmonic A h Y G hA hh

example (A : ℝ) (h Y : ℕ) (hA : 1 ≤ A) (hh : 1 ≤ h) :
    |classScaleDifference A h Y| ≤
      (KernelScaleComparison.scaleComparisonCoefficient A * Real.log 2 / Real.sqrt (h : ℝ)) *
        ∑ g ∈ Icc 1 Y, 1 / (g : ℝ) :=
  classScaleDifference_abs_le A h Y hA hh

example (A : ℝ) (G : ℕ) (hA : 1 ≤ A) (hG : G ≤ ⌊Real.exp A⌋₊) :
    (∑ g ∈ Icc 1 G, 1 / (g : ℝ)) ≤ 1 + A :=
  harmonic_sum_le_source A G hA hG

example (A : ℝ) (h G : ℕ) (hA : 1 ≤ A) (hh : 1 ≤ h)
    (hG : G ≤ ⌊Real.exp A⌋₊) :
    |classKernelSum A h G| ≤
      ThetaKernelEstimate.kernelBound A * (1 + A) / Real.sqrt (h : ℝ) :=
  classKernelSum_abs_le_source A h G hA hh hG

example (A : ℝ) (h Y : ℕ) (hA : 1 ≤ A) (hh : 1 ≤ h)
    (hY : Y ≤ ⌊Real.exp A⌋₊) :
    |classScaleDifference A h Y| ≤
      KernelScaleComparison.scaleComparisonCoefficient A * Real.log 2 * (1 + A) /
        Real.sqrt (h : ℝ) :=
  classScaleDifference_abs_le_source A h Y hA hh hY

example (A : ℝ) (h Y G : ℕ) (hA : 1 ≤ A) (hh : 1 ≤ h)
    (hYG : Y ≤ G) (hhalf : G / 2 ≤ Y) :
    |classKernelTail A h Y G| ≤ ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ) :=
  classKernelTail_abs_le A h Y G hA hh hYG hhalf

example (A : ℝ) (h Y G : ℕ) (hA : 1 ≤ A) (hh : 1 ≤ h)
    (hG : G ≤ ⌊Real.exp A⌋₊) (hYG : Y ≤ G) (hhalf : G / 2 ≤ Y) :
    |classScaleDifference A h Y + classKernelTail A h Y G| ≤
      (KernelScaleComparison.scaleComparisonCoefficient A * Real.log 2 * (1 + A) +
        ThetaKernelEstimate.kernelBound A) / Real.sqrt (h : ℝ) :=
  classKernelSum_two_difference_abs_le A h Y G hA hh hG hYG hhalf

example (A : ℝ) (u v : ℕ) (hA : 1 ≤ A) (hu : 1 ≤ u) (hv : 1 ≤ v)
    (hodd : Nat.Coprime 2 (u * v)) (hG : 8 ≤ ⌊Real.exp A⌋₊ / max u v) :
    let N := ⌊Real.exp A⌋₊
    let h := u * v
    let leftCutoff := N / max (2 * u) v
    let rightCutoff := N / max u (2 * v)
    let b := SquarefreeCount.finiteSquarefreeDensity (2 * h) (Nat.sqrt leftCutoff)
    let c := SquarefreeCount.finiteSquarefreeDensity (2 * h) (Nat.sqrt rightCutoff)
    |RatioClassVariation.classMean A u v + RatioClassVariation.classMean A (2 * u) v +
      RatioClassVariation.classMean A u (2 * v) -
        FiniteDensityInsertion.twoDensityFactor * RatioClassVariation.classMean A u v| ≤
      ((7 * Real.sqrt 2 / 12) *
        (1 / (Nat.sqrt leftCutoff : ℝ) + 1 / (Nat.sqrt rightCutoff : ℝ))) *
        (ThetaKernelEstimate.kernelBound A * (1 + A) / Real.sqrt (h : ℝ)) +
      (Real.sqrt 2 / 2) * (|b| + |c|) *
        ((KernelScaleComparison.scaleComparisonCoefficient A * Real.log 2 * (1 + A) +
          ThetaKernelEstimate.kernelBound A) / Real.sqrt (h : ℝ)) :=
  classMean_two_insertions_error_le A u v hA hu hv hodd hG

end
end WeightedClassInsertionExactStatements

namespace SourceUpperSupportStatementChecks

open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

noncomputable section

example (A x : ℝ) (hx : 0 < x)
    (hcut : Real.exp (2*A) ≤ 2*x) : SourceSampling.sourceSamplingKernel A x = 0 := by
  exact SourceUpperSupport.sourceSamplingKernel_zero_of_two_mul_ge A x hx hcut

example (A : ℝ) (q : ℕ) (hq : 1 ≤ q)
    (hcut : Real.exp (2*A) ≤ 2*(q:ℝ)) : ThetaKernelTransport.thetaKernel A q = 0 := by
  exact SourceUpperSupport.thetaKernel_zero_of_two_mul_ge A q hq hcut

example (A : ℝ) (q : ℕ) (hA : 1 ≤ A) (hq : 1 ≤ q)
    (hcut : Real.exp (2*A) ≤ 4*(q:ℝ)) :
    ThetaKernelTransport.thetaKernel A q = SourceSampling.sourceSamplingKernel A q := by
  exact SourceUpperSupport.thetaKernel_eq_sourceSamplingKernel A q hA hq hcut

example (A x : ℝ) (hx : 0 < x)
    (hcut : Real.exp (2*A) ≤ 4*x) :
    SourceSampling.sourceSamplingKernel A x =
      (if 2*x < Real.exp (2*A) then
        Real.log 2 / Real.sqrt (2*x) *
          sourceCorrelation Realization.explicitSecondDerivative A (Real.log (2*x)) else 0) +
      (if 3*x < Real.exp (2*A) then
        Real.log 3 / Real.sqrt (3*x) *
          sourceCorrelation Realization.explicitSecondDerivative A (Real.log (3*x)) else 0) := by
  exact SourceUpperSupport.sourceSamplingKernel_eq_two_channels A x hx hcut

example (A : ℝ) (q : ℕ) (hA : 1 ≤ A) (hq : 1 ≤ q)
    (hcut : Real.exp (2*A) ≤ 4*(q:ℝ)) :
    ThetaKernelTransport.thetaKernel A q =
      (if 2*(q:ℝ) < Real.exp (2*A) then
        Real.log 2 / Real.sqrt (2*(q:ℝ)) *
          sourceCorrelation Realization.explicitSecondDerivative A (Real.log (2*(q:ℝ))) else 0) +
      (if 3*(q:ℝ) < Real.exp (2*A) then
        Real.log 3 / Real.sqrt (3*(q:ℝ)) *
          sourceCorrelation Realization.explicitSecondDerivative A (Real.log (3*(q:ℝ))) else 0) := by
  exact SourceUpperSupport.thetaKernel_eq_two_channels A q hA hq hcut

example (A : ℝ) (q : ℕ) (hq : 1 ≤ q)
    (hcut : Real.exp (2*A) ≤ 2*(q:ℝ)) :
    ThetaRemainder.thetaRemainder A q =
      -CorrelationSecondMoment.sourceRankOneCoefficient A / (q:ℝ) := by
  exact SourceUpperSupport.thetaRemainder_eq_neg_rankOne_of_two_mul_ge A q hq hcut

end
end SourceUpperSupportStatementChecks

section SourceUpperRowInversionStatements
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.RiemannHypothesis.SourceComparison.UpperRowInversion

example (N B j : ℕ) (F : ℕ → ℝ) (hNB : N ≤ B) (hj : 1 ≤ j)
    (hF : ∀ n, N < n → F n = 0) :
    (∑ k ∈ Icc 1 B, F (j * k)) = ∑ k ∈ Icc 1 N, F (j * k) :=
  finite_inner_padding N B j F hNB hj hF

example (N B : ℕ) (F : ℕ → ℝ)
    (hN : 1 ≤ N) (hNB : N ≤ B) (hF : ∀ n, N < n → F n = 0) :
    (∑ j ∈ Icc 1 N, (ArithmeticFunction.moebius j : ℝ) *
      ∑ k ∈ Icc 1 B, F (j * k)) = F 1 :=
  finite_moebius_upper_inversion N B F hN hNB hF

example (A : ℝ) (i n : ℕ)
    (hi : ⌊Real.exp A⌋₊ / 2 < i) (hn : ⌊Real.exp A⌋₊ < n) :
    Real.exp (2 * A) ≤ 2 * ((i * n : ℕ) : ℝ) :=
  upper_row_product_threshold A i n hi hn

example (A : ℝ) (i n : ℕ)
    (hi : ⌊Real.exp A⌋₊ / 2 < i) (hn : ⌊Real.exp A⌋₊ < n) :
    SourceSampling.sourceSamplingKernel A ((i * n : ℕ) : ℝ) = 0 :=
  source_upper_row_support A i n hi hn

example (A : ℝ) (i : ℕ) (hA : 1 ≤ A)
    (hi : ⌊Real.exp A⌋₊ / 2 < i) :
    (∑ j ∈ Icc 1 ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius j : ℝ) *
      ThetaKernelTransport.thetaKernel A (i * j)) = SourceSampling.sourceSamplingKernel A i :=
  source_upper_row_inversion A i hA hi

example (N M : ℕ) (F : ℕ → ℝ) (hMN : M ≤ N) :
    (∑ i ∈ Icc 1 N, F i) = (∑ i ∈ Icc 1 M, F i) + ∑ i ∈ Ioc M N, F i :=
  positive_sum_split N M F hMN

example (N M : ℕ) (T : Finset ℕ) (F : ℕ → ℝ) (hMN : M ≤ N) :
    JointBoundaryTransport.rectangle (Icc 1 N) T F =
      JointBoundaryTransport.rectangle (Icc 1 M) T F +
      JointBoundaryTransport.rectangle (Ioc M N) T F :=
  rectangle_cutoff_split N M T F hMN

example (N M : ℕ) (F : ℕ → ℝ) (hMN : M ≤ N) :
    JointBoundaryTransport.rectangle (Icc 1 N) (Icc 1 N) F =
      JointBoundaryTransport.rectangle (Icc 1 M) (Icc 1 M) F +
      2 * JointBoundaryTransport.rectangle (Ioc M N) (Icc 1 N) F -
      JointBoundaryTransport.rectangle (Ioc M N) (Ioc M N) F :=
  rectangle_core_upper_identity N M F hMN

example (A : ℝ) (hA : 1 ≤ A) :
    JointBoundaryTransport.rectangle
      (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) (Icc 1 ⌊Real.exp A⌋₊)
      (ThetaKernelTransport.thetaKernel A) =
      ∑ i ∈ Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊,
        (ArithmeticFunction.moebius i : ℝ) * SourceSampling.sourceSamplingKernel A i :=
  source_upper_rectangle_eq_linear A hA

example (A : ℝ) (i j : ℕ)
    (hi : ⌊Real.exp A⌋₊ / 2 < i) (hj : ⌊Real.exp A⌋₊ / 2 < j) :
    Real.exp (2 * A) ≤ 4 * ((i * j : ℕ) : ℝ) :=
  upper_square_product_threshold A i j hi hj

example (A : ℝ) (hA : 1 ≤ A) :
    JointBoundaryTransport.rectangle
      (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
      (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) (ThetaKernelTransport.thetaKernel A) =
      JointBoundaryTransport.rectangle
        (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
        (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
        (fun q ↦ SourceSampling.sourceSamplingKernel A q) :=
  source_upper_square_eq_sampling A hA

example (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue
      explicitSecondDerivative A =
      archimedeanValue
        explicitSecondDerivative A -
      4 * (∑ i ∈ Icc 1 (⌊Real.exp A⌋₊ / 2),
        (ArithmeticFunction.moebius i : ℝ) * SourceSampling.sourceSamplingKernel A i) +
      2 * JointBoundaryTransport.rectangle
        (Icc 1 (⌊Real.exp A⌋₊ / 2)) (Icc 1 (⌊Real.exp A⌋₊ / 2))
        (ThetaKernelTransport.thetaKernel A) -
      2 * JointBoundaryTransport.rectangle
        (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
        (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
        (fun q ↦ SourceSampling.sourceSamplingKernel A q) :=
  sourceQuadraticValue_core_upper A hA

example (A : ℝ) (M : ℕ) :
    0 ≤ CorrelationSecondMoment.sourceRankOneCoefficient A *
      (∑ i ∈ Icc 1 M, (ArithmeticFunction.moebius i : ℝ) / (i : ℝ)) ^ 2 :=
  core_rankOne_nonneg A M

example (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue
      explicitSecondDerivative A =
      archimedeanValue
        explicitSecondDerivative A -
      4 * (∑ i ∈ Icc 1 (⌊Real.exp A⌋₊ / 2),
        (ArithmeticFunction.moebius i : ℝ) * SourceSampling.sourceSamplingKernel A i) +
      2 * CorrelationSecondMoment.sourceRankOneCoefficient A *
        (∑ i ∈ Icc 1 (⌊Real.exp A⌋₊ / 2),
          (ArithmeticFunction.moebius i : ℝ) / (i : ℝ)) ^ 2 +
      2 * JointBoundaryTransport.rectangle
        (Icc 1 (⌊Real.exp A⌋₊ / 2)) (Icc 1 (⌊Real.exp A⌋₊ / 2))
        (ThetaRemainder.thetaRemainder A) -
      2 * JointBoundaryTransport.rectangle
        (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
        (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
        (fun q ↦ SourceSampling.sourceSamplingKernel A q) :=
  sourceQuadraticValue_core_rankOne A hA
end SourceUpperRowInversionStatements

section UpperBoundaryChannelsExactStatements
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryChannels
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization JointBoundaryTransport SourceSampling

example (A : ℝ) (k q : ℕ) : channelKernel A k q =
    if ((k * q : ℕ) : ℝ) < Real.exp (2 * A) then
      Real.log (k : ℝ) / Real.sqrt ((k * q : ℕ) : ℝ) *
        sourceCorrelation explicitSecondDerivative A (Real.log ((k * q : ℕ) : ℝ)) else 0 := rfl

example (A : ℝ) (k : ℕ) : upperChannel A k =
    rectangle (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
      (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) (channelKernel A k) := rfl

example (A : ℝ) : coreValue A =
    archimedeanValue explicitSecondDerivative A -
      4 * (∑ i ∈ Icc 1 (⌊Real.exp A⌋₊ / 2),
        (ArithmeticFunction.moebius i : ℝ) * sourceSamplingKernel A i) +
      2 * CorrelationSecondMoment.sourceRankOneCoefficient A *
        (∑ i ∈ Icc 1 (⌊Real.exp A⌋₊ / 2),
          (ArithmeticFunction.moebius i : ℝ) / (i : ℝ)) ^ 2 +
      2 * rectangle (Icc 1 (⌊Real.exp A⌋₊ / 2)) (Icc 1 (⌊Real.exp A⌋₊ / 2))
        (ThetaRemainder.thetaRemainder A) := rfl

example (A : ℝ) (k q : ℕ) (hA : 1 ≤ A) (hk : 1 ≤ k) (hq : 1 ≤ q) :
    channelKernel A k q = Real.log (k : ℝ) / Real.sqrt ((k * q : ℕ) : ℝ) *
      sourceCorrelation explicitSecondDerivative A (Real.log ((k * q : ℕ) : ℝ)) :=
  channelKernel_eq_correlation_weight A k q hA hk hq

example (A : ℝ) (q : ℕ) (hq : 1 ≤ q)
    (hcut : Real.exp (2 * A) ≤ 4 * (q : ℝ)) :
    sourceSamplingKernel A q = channelKernel A 2 q + channelKernel A 3 q :=
  sourceSamplingKernel_eq_channels A q hq hcut

example (A : ℝ) :
    rectangle (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
      (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) (fun q ↦ sourceSamplingKernel A q) =
      upperChannel A 2 + upperChannel A 3 := source_upper_boundary_eq_channels A

example (A : ℝ) : coreValue A =
    archimedeanValue explicitSecondDerivative A -
      4 * (∑ i ∈ Icc 1 (⌊Real.exp A⌋₊ / 2),
        (ArithmeticFunction.moebius i : ℝ) * sourceSamplingKernel A i) +
      2 * rectangle (Icc 1 (⌊Real.exp A⌋₊ / 2)) (Icc 1 (⌊Real.exp A⌋₊ / 2))
        (ThetaKernelTransport.thetaKernel A) := coreValue_eq_fullKernel A

example (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue explicitSecondDerivative A =
      coreValue A - 2 * upperChannel A 2 - 2 * upperChannel A 3 :=
  sourceQuadraticValue_eq_core_sub_channels A hA

end UpperBoundaryChannelsExactStatements

section SourceUpperBoundaryAbelStatements
open Finset MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryAbel

example (N n : ℕ) : upperProductCoefficient N n =
    ∑ i ∈ Ioc (N / 2) N, ∑ j ∈ Ioc (N / 2) N,
      if i * j = n then
        (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) else 0 := rfl

example (N : ℕ) (x : ℝ) : upperProductSummatory N x =
    ∑ n ∈ Icc 1 ⌊x⌋₊, upperProductCoefficient N n := rfl

example (N : ℕ) : upperProductCoefficient N 0 = 0 := upperProductCoefficient_zero N

example (N : ℕ) (hN : 2 ≤ N) : upperProductCoefficient N 1 = 0 :=
  upperProductCoefficient_one N hN

example (N : ℕ) (hN : 2 ≤ N) : upperProductSummatory N 1 = 0 :=
  upperProductSummatory_one N hN

example (N B : ℕ) (F : ℕ → ℝ) (hB : N * N ≤ B) :
    JointBoundaryTransport.rectangle (Ioc (N / 2) N) (Ioc (N / 2) N) F =
      ∑ n ∈ Icc 1 B, upperProductCoefficient N n * F n :=
  upper_rectangle_eq_weighted_product_sum N B F hB

example (N : ℕ) (x : ℝ) (hx : 0 ≤ x) : upperProductSummatory N x =
    ∑ i ∈ Ioc (N / 2) N, ∑ j ∈ Ioc (N / 2) N,
      if ((i * j : ℕ) : ℝ) ≤ x then
        (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) else 0 :=
  upperProductSummatory_eq_rectangle_cutoff N x hx

example (N : ℕ) (g : ℝ → ℝ) (a b : ℝ) (ha : 0 ≤ a)
    (hg : IntegrableOn g (Set.Icc a b)) :
    IntegrableOn (fun x ↦ upperProductSummatory N x * g x) (Set.Icc a b) :=
  upperProductSummatory_mul_integrableOn N g a b ha hg

example (N : ℕ) (f : ℝ → ℝ) (a b : ℝ) (ha : 0 ≤ a) (hab : a ≤ b)
    (hd : ∀ x ∈ Set.Icc a b, DifferentiableAt ℝ f x)
    (hi : IntegrableOn (deriv f) (Set.Icc a b)) :
    (∑ n ∈ Ioc ⌊a⌋₊ ⌊b⌋₊, upperProductCoefficient N n * f n) =
      upperProductSummatory N b * f b - upperProductSummatory N a * f a -
        ∫ x in a..b, upperProductSummatory N x * deriv f x :=
  upperProduct_sum_eq_abel N f a b ha hab hd hi

example (N : ℕ) (f : ℝ → ℝ) (b : ℝ) (hN : 2 ≤ N) (hb : 1 ≤ b)
    (hB : N * N ≤ ⌊b⌋₊) (hd : ∀ x ∈ Set.Icc 1 b, DifferentiableAt ℝ f x)
    (hi : IntegrableOn (deriv f) (Set.Icc 1 b)) (hz : f b = 0) :
    JointBoundaryTransport.rectangle (Ioc (N / 2) N) (Ioc (N / 2) N)
      (fun n ↦ f n) = -∫ x in 1..b, upperProductSummatory N x * deriv f x :=
  upper_rectangle_eq_abel N f b hN hb hB hd hi hz

example (A : ℝ) (hA : 1 ≤ A) : IntegrableOn
    (fun x ↦ upperProductSummatory ⌊Real.exp A⌋₊ x *
      deriv (SourceSampling.sourceSamplingKernel A) x)
    (Set.Icc 1 (Real.exp (2 * A))) := source_upper_boundary_integrableOn A hA

example (A : ℝ) (hA : 1 ≤ A) : IntervalIntegrable
    (fun x ↦ upperProductSummatory ⌊Real.exp A⌋₊ x *
      deriv (SourceSampling.sourceSamplingKernel A) x)
    volume 1 (Real.exp (2 * A)) := source_upper_boundary_intervalIntegrable A hA

example (A : ℝ) (hA : 1 ≤ A) : JointBoundaryTransport.rectangle
    (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
    (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
    (fun n ↦ SourceSampling.sourceSamplingKernel A n) =
    -∫ x in 1..Real.exp (2 * A), upperProductSummatory ⌊Real.exp A⌋₊ x *
      deriv (SourceSampling.sourceSamplingKernel A) x := source_upper_boundary_eq_abel A hA

end SourceUpperBoundaryAbelStatements

section SourceUpperBoundaryJointStatements
open MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryJoint

example (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue explicitSecondDerivative A =
      UpperBoundaryChannels.coreValue A +
        2 * ∫ x in 1..Real.exp (2 * A),
          UpperBoundaryAbel.upperProductSummatory ⌊Real.exp A⌋₊ x *
            deriv (SourceSampling.sourceSamplingKernel A) x :=
  sourceQuadraticValue_eq_core_add_integral A hA

example (A : ℝ) (hA : 1 ≤ A) :
    max (-sourceQuadraticValue explicitSecondDerivative A) 0 =
      max (-UpperBoundaryChannels.coreValue A -
        2 * ∫ x in 1..Real.exp (2 * A),
          UpperBoundaryAbel.upperProductSummatory ⌊Real.exp A⌋₊ x *
            deriv (SourceSampling.sourceSamplingKernel A) x) 0 :=
  sourceQuadraticValue_negativePart_eq A hA

end SourceUpperBoundaryJointStatements

namespace UpperProductSignGuardSourceStatements
open Finset FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryAbel
noncomputable section

example (i j : ℕ) :
    (ArithmeticFunction.moebius i : ℝ)*(ArithmeticFunction.moebius j : ℝ) =
      (-1 : ℝ)^ArithmeticFunction.cardFactors (i*j) *
        (ArithmeticFunction.moebius i : ℝ)^2*(ArithmeticFunction.moebius j : ℝ)^2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperProductSignGuard.moebius_product_sign i j

example (S T : Finset ℕ) (n : ℕ) :
    (∑ i ∈ S, ∑ j ∈ T, if i*j=n then
      (ArithmeticFunction.moebius i : ℝ)*(ArithmeticFunction.moebius j : ℝ) else 0) =
      (-1 : ℝ)^ArithmeticFunction.cardFactors n *
        ∑ i ∈ S, ∑ j ∈ T, if i*j=n then
          (ArithmeticFunction.moebius i : ℝ)^2*(ArithmeticFunction.moebius j : ℝ)^2 else 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperProductSignGuard.fixed_product_fiber_sign S T n

example (S T : Finset ℕ) (n : ℕ) :
    0 ≤ (-1 : ℝ)^ArithmeticFunction.cardFactors n *
      (∑ i ∈ S, ∑ j ∈ T, if i*j=n then
        (ArithmeticFunction.moebius i : ℝ)*(ArithmeticFunction.moebius j : ℝ) else 0) :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperProductSignGuard.fixed_product_fiber_sign_nonneg S T n

example :
    (∑ i ∈ Ioc 5 10, ∑ j ∈ Ioc 5 10, if i*j ≤ 36 then
      (ArithmeticFunction.moebius i : ℝ)*(ArithmeticFunction.moebius j : ℝ) else 0) = 1 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperProductSignGuard.upper_cutoff_36

example :
    (∑ i ∈ Ioc 5 10, ∑ j ∈ Ioc 5 10, if i*j ≤ 42 then
      (ArithmeticFunction.moebius i : ℝ)*(ArithmeticFunction.moebius j : ℝ) else 0) = -1 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperProductSignGuard.upper_cutoff_42

example (F : ℕ → ℝ) :
    (∑ i ∈ Ioc 5 10, ∑ j ∈ Ioc 5 10,
      (ArithmeticFunction.moebius i : ℝ)*(ArithmeticFunction.moebius j : ℝ)*F (i*j)) =
      F 36 - 2*F 42 + F 49 + 2*F 60 - 2*F 70 + F 100 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperProductSignGuard.upper_square_10_eq F

example (N n : ℕ) :
    upperProductCoefficient N n =
      (-1 : ℝ)^ArithmeticFunction.cardFactors n *
        ∑ i ∈ Ioc (N/2) N, ∑ j ∈ Ioc (N/2) N, if i*j=n then
          (ArithmeticFunction.moebius i : ℝ)^2*(ArithmeticFunction.moebius j : ℝ)^2 else 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperProductSignGuard.upperProductCoefficient_sign N n

example : upperProductSummatory 10 36 = 1 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperProductSignGuard.upperProductSummatory_10_36

example : upperProductSummatory 10 42 = -1 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperProductSignGuard.upperProductSummatory_10_42

example : ¬∀ (N : ℕ) (x : ℝ), 2≤N → 0≤x → 0≤upperProductSummatory N x :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperProductSignGuard.not_upperProductSummatory_nonneg

example : ∃ A : ℝ, 1 ≤ A ∧ 2*42 < Real.exp (2*A) ∧
    upperProductSummatory ⌊Real.exp A⌋₊ 42 < 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperProductSignGuard.actual_signed_cumulative_negative_in_two_channel

end
end UpperProductSignGuardSourceStatements

namespace UpperObservationExactStatements
open MeasureTheory Finset
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity UpperObservation
noncomputable section

example (A : ℝ) (T : Finset ℕ) (x : ℝ) :
    finiteObservation A T x =
      ∑ i ∈ T, (ArithmeticFunction.moebius i : ℝ) / Real.sqrt i *
        normalizedTest explicitSecondDerivative A (x + Real.log i) := rfl

example (A x : ℝ) (n : ℕ)
    (hA : 1 ≤ A) (hx : 0 ≤ x) (hn : ⌊Real.exp A⌋₊ < n) :
    normalizedTest explicitSecondDerivative A (x + Real.log n) = 0 :=
  UpperObservation.source_shift_zero_above_cutoff A x n hA hx hn

example (A x : ℝ) (hA : 1 ≤ A) (hx : 0 ≤ x) :
    (∑ k ∈ Icc 1 ⌊Real.exp A⌋₊, (1 / Real.sqrt (k : ℝ)) *
      finiteObservation A (Icc 1 ⌊Real.exp A⌋₊) (x + Real.log k)) =
      normalizedTest explicitSecondDerivative A x :=
  UpperObservation.finite_observation_inversion A x hA hx

example (A x : ℝ) (hA : 1 ≤ A)
    (hx : Real.log 2 ≤ x) :
    finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) x = 0 :=
  UpperObservation.upper_observation_zero_of_log_two_le A x hA hx

example (A x : ℝ) (k : ℕ) (hA : 1 ≤ A)
    (hx : 0 ≤ x) (hk : 2 ≤ k) :
    finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
      (x + Real.log k) = 0 :=
  UpperObservation.upper_observation_shift_zero A x k hA hx hk

example (A x : ℝ)
    (hA : 1 ≤ A) (hx : 0 ≤ x) :
    finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) x =
      normalizedTest explicitSecondDerivative A x -
        ∑ k ∈ Icc 1 ⌊Real.exp A⌋₊, (1 / Real.sqrt (k : ℝ)) *
          finiteObservation A (Icc 1 (⌊Real.exp A⌋₊ / 2)) (x + Real.log k) :=
  UpperObservation.upper_observation_eq_source_sub_lower_shifts A x hA hx

example (A : ℝ) (T : Finset ℕ) (hA : 1 ≤ A) :
    Continuous (finiteObservation A T) :=
  UpperObservation.finiteObservation_continuous A T hA

example (A : ℝ) (T : Finset ℕ) (hA : 1 ≤ A) :
    HasCompactSupport (finiteObservation A T) :=
  UpperObservation.finiteObservation_hasCompactSupport A T hA

example (A : ℝ) (T : Finset ℕ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ (finiteObservation A T x) ^ 2) :=
  UpperObservation.finiteObservation_square_integrable A T hA

example (A c : ℝ) (T U : Finset ℕ)
    (hA : 1 ≤ A) :
    Integrable (fun x ↦ finiteObservation A T x * finiteObservation A U (c - x)) :=
  UpperObservation.finiteObservation_reflection_integrable A c T U hA

example (A a b c : ℝ) (hA : 1 ≤ A) :
    (∫ x : ℝ, normalizedTest explicitSecondDerivative A (x + a) *
      normalizedTest explicitSecondDerivative A (c - x + b)) =
      sourceCorrelation explicitSecondDerivative A (c + a + b) :=
  UpperObservation.shifted_source_reflection A a b c hA

example (A c : ℝ) (T U : Finset ℕ) (hA : 1 ≤ A) :
    (∫ x : ℝ, finiteObservation A T x * finiteObservation A U (c - x)) =
      ∑ i ∈ T, ∑ j ∈ U,
        ((ArithmeticFunction.moebius i : ℝ) / Real.sqrt i) *
        ((ArithmeticFunction.moebius j : ℝ) / Real.sqrt j) *
        sourceCorrelation explicitSecondDerivative A (c + Real.log i + Real.log j) :=
  UpperObservation.finiteObservation_reflection_eq A c T U hA

example (f : ℝ → ℝ) (b c : ℝ)
    (hf : Continuous f) (hcf : HasCompactSupport f)
    (hzero : ∀ x, b ≤ x → f x = 0) (hbc : b ≤ c) :
    |∫ x : ℝ, f x * f (c - x)| ≤ ∫ x : ℝ in Set.Icc 0 b, (f x) ^ 2 :=
  UpperObservation.reflection_abs_le_local_square f b c hf hcf hzero hbc

example (A c : ℝ) (hA : 1 ≤ A)
    (hc : Real.log 2 ≤ c) :
    |∫ x : ℝ, finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) x *
      finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) (c - x)| ≤
      ∫ x : ℝ in Set.Icc 0 (Real.log 2),
        (finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) x) ^ 2 :=
  UpperObservation.upper_reflection_abs_le_local_square A c hA hc

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ x : ℝ in Set.Icc 0 (Real.log 2),
      (finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) x) ^ 2) =
    ∫ x : ℝ in Set.Icc 0 (Real.log 2),
      (normalizedTest explicitSecondDerivative A x -
        ∑ k ∈ Icc 1 ⌊Real.exp A⌋₊, (1 / Real.sqrt (k : ℝ)) *
          finiteObservation A (Icc 1 (⌊Real.exp A⌋₊ / 2)) (x + Real.log k)) ^ 2 :=
  UpperObservation.upper_local_square_eq_core_error A hA

example (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn (fun x : ℝ ↦
      (normalizedTest explicitSecondDerivative A x -
        ∑ k ∈ Icc 1 ⌊Real.exp A⌋₊, (1 / Real.sqrt (k : ℝ)) *
          finiteObservation A (Icc 1 (⌊Real.exp A⌋₊ / 2)) (x + Real.log k)) ^ 2)
      (Set.Icc 0 (Real.log 2)) :=
  UpperObservation.core_error_square_integrableOn A hA

example (A : ℝ) (k : ℕ) (hA : 1 ≤ A) (hk : 1 ≤ k) :
    UpperBoundaryChannels.upperChannel A k = Real.log (k : ℝ) / Real.sqrt k *
      ∫ x : ℝ, finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) x *
        finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) (Real.log k - x) :=
  UpperObservation.upperChannel_eq_reflection A k hA hk

example (A : ℝ) (k : ℕ) (hA : 1 ≤ A) (hk : 2 ≤ k) :
    |UpperBoundaryChannels.upperChannel A k| ≤ Real.log (k : ℝ) / Real.sqrt k *
      ∫ x : ℝ in Set.Icc 0 (Real.log 2),
        (finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) x) ^ 2 :=
  UpperObservation.upperChannel_abs_le_local_square A k hA hk

example (A : ℝ) (hA : 1 ≤ A) :
    UpperBoundaryChannels.coreValue A -
      2 * (Real.log 2 / Real.sqrt 2 + Real.log 3 / Real.sqrt 3) *
        (∫ x : ℝ in Set.Icc 0 (Real.log 2),
          (finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) x) ^ 2) ≤
      sourceQuadraticValue explicitSecondDerivative A :=
  UpperObservation.sourceQuadraticValue_ge_core_sub_local_square A hA

end
end UpperObservationExactStatements

namespace EndpointMonotonicitySourceExactStatements
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity DerivativeEnergy
noncomputable section

example (A x : ℝ) (hA : 3 ≤ A)
    (hx : x ∈ Icc (A - 3 / 4) A) :
    3 / 4 ≤ x / A ∧ x / A ≤ 1 ∧ A ^ 2 * (1 - (x / A) ^ 2) ^ 2 ≤ 9 / 4 :=
  EndpointMonotonicity.endpoint_scaled_bounds A x hA hx

example (A x : ℝ) (hA : 1 ≤ A) :
    normalizedInterior A x =
      (1 - (x / A) ^ 2) ^ 2 / (A ^ 2 * Real.sqrt A * Real.sqrt (sourceNormalization A)) *
        (8 * (7 * (x / A) ^ 2 - 1) - A ^ 2 * (1 - (x / A) ^ 2) ^ 2 / 4) :=
  EndpointMonotonicity.normalizedInterior_factor A x hA

example (A x : ℝ) (hA : 1 ≤ A) :
    normalizedInteriorDerivative A x =
      (x / A) * (1 - (x / A) ^ 2) /
        (A ^ 3 * Real.sqrt A * Real.sqrt (sourceNormalization A)) *
        (48 * (3 - 7 * (x / A) ^ 2) + 2 * A ^ 2 * (1 - (x / A) ^ 2) ^ 2) :=
  EndpointMonotonicity.normalizedInteriorDerivative_factor A x hA

example (A x : ℝ) (hA : 3 ≤ A)
    (hx : x ∈ Icc (A - 3 / 4) A) :
    0 ≤ normalizedTest explicitSecondDerivative A x :=
  EndpointMonotonicity.normalizedTest_endpoint_nonneg A x hA hx

example (A x : ℝ) (hA : 3 ≤ A)
    (hx : x ∈ Icc (A - 3 / 4) A) :
    deriv (normalizedTest explicitSecondDerivative A) x ≤ 0 :=
  EndpointMonotonicity.normalizedTest_derivative_endpoint_nonpos A x hA hx

example (A t x : ℝ) (hA : 3 ≤ A) (ht : 2 * A - 3 / 4 ≤ t) :
    0 ≤ normalizedTest explicitSecondDerivative A x *
      normalizedTest explicitSecondDerivative A (x - t) ∧
    deriv (normalizedTest explicitSecondDerivative A) x *
      normalizedTest explicitSecondDerivative A (x - t) ≤ 0 :=
  EndpointMonotonicity.endpoint_product_signs A t x hA ht

example (A t : ℝ) (hA : 3 ≤ A)
    (ht : 2 * A - 3 / 4 ≤ t) :
    0 ≤ sourceCorrelation explicitSecondDerivative A t :=
  EndpointMonotonicity.sourceCorrelation_endpoint_nonneg A t hA ht

example (A t : ℝ) (hA : 3 ≤ A)
    (ht : 2 * A - 3 / 4 ≤ t) :
    deriv (sourceCorrelation explicitSecondDerivative A) t ≤ 0 :=
  EndpointMonotonicity.sourceCorrelation_derivative_endpoint_nonpos A t hA ht

example (A t : ℝ) (hA : 3 ≤ A)
    (ht : 2 * A - 3 / 4 ≤ t) :
    CorrelationDifferenceMoments.correlationDifference A t ≤ 0 :=
  EndpointMonotonicity.correlationDifference_endpoint_nonpos A t hA ht

example (A q : ℝ) (hA : 3 ≤ A)
    (hq : Real.exp (2 * A) / 4 ≤ q) :
    deriv (SourceSampling.sourceSamplingKernel A) q ≤ 0 :=
  EndpointMonotonicity.sourceSamplingKernel_derivative_upper_nonpos A q hA hq

end
end EndpointMonotonicitySourceExactStatements

section SourceUpperBoundaryHyperbolaStatements
open Finset MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola

example (N : ℕ) (x : ℝ) : upperSmallIndices N x =
    (Ioc (N / 2) N).filter (fun i : ℕ ↦ (i : ℝ) ^ 2 ≤ x) := rfl

example (N : ℕ) (x : ℝ) : upperSmallSum N x =
    ∑ i ∈ upperSmallIndices N x, (ArithmeticFunction.moebius i : ℝ) := rfl

example (N : ℕ) (x : ℝ) : upperHyperbola N x =
    ∑ i ∈ upperSmallIndices N x, (ArithmeticFunction.moebius i : ℝ) *
      ∑ j ∈ (Ioc (N / 2) N).filter (fun j : ℕ ↦ ((i * j : ℕ) : ℝ) ≤ x),
        (ArithmeticFunction.moebius j : ℝ) := rfl

example (N i : ℕ) (x : ℝ) :
    i ∈ upperSmallIndices N x ↔ N / 2 < i ∧ i ≤ N ∧ (i : ℝ) ^ 2 ≤ x :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.mem_upperSmallIndices_iff N i x

example (N : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    upperSmallIndices N x = Ioc (N / 2) (min N ⌊Real.sqrt x⌋₊) :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperSmallIndices_eq_sqrt_cutoff N x hx

example (N : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    UpperBoundaryAbel.upperProductSummatory N x =
      2 * upperHyperbola N x - upperSmallSum N x ^ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperProductSummatory_eq_hyperbola N x hx

example (N : ℕ) (x : ℝ) :
    0 ≤ upperSmallSum N x ^ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperSmallSum_square_nonneg N x

example (N i : ℕ) (x : ℝ) (hx : 0 ≤ x) (hi : 0 < i) :
    (Ioc (N / 2) N).filter (fun j : ℕ ↦ ((i * j : ℕ) : ℝ) ≤ x) =
      Ioc (N / 2) (min N ⌊x / (i : ℝ)⌋₊) :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperRowIndices_eq_div_cutoff N i x hx hi

example (N : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    upperHyperbola N x =
      ∑ i ∈ Ioc (N / 2) (min N ⌊Real.sqrt x⌋₊),
        (ArithmeticFunction.moebius i : ℝ) *
          ∑ j ∈ Ioc (N / 2) (min N ⌊x / (i : ℝ)⌋₊),
            (ArithmeticFunction.moebius j : ℝ) :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperHyperbola_eq_floor_sum N x hx

example (N : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    upperSmallSum N x =
      ∑ i ∈ Ioc (N / 2) (min N ⌊Real.sqrt x⌋₊), (ArithmeticFunction.moebius i : ℝ) :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperSmallSum_eq_floor_sum N x hx

example (N : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    UpperBoundaryAbel.upperProductSummatory N x =
      2 * (∑ i ∈ Ioc (N / 2) (min N ⌊Real.sqrt x⌋₊),
        (ArithmeticFunction.moebius i : ℝ) *
          ∑ j ∈ Ioc (N / 2) (min N ⌊x / (i : ℝ)⌋₊),
            (ArithmeticFunction.moebius j : ℝ)) -
      (∑ i ∈ Ioc (N / 2) (min N ⌊Real.sqrt x⌋₊),
        (ArithmeticFunction.moebius i : ℝ)) ^ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperProductSummatory_eq_floor_hyperbola N x hx

example (N : ℕ) : Measurable (upperSmallSum N) :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperSmallSum_measurable N

example (N : ℕ) (x : ℝ) :
    |upperSmallSum N x| ≤
      ∑ i ∈ Ioc (N / 2) N, |(ArithmeticFunction.moebius i : ℝ)| :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperSmallSum_abs_le N x

example (N : ℕ) (g : ℝ → ℝ) (a b : ℝ)
    (hg : IntegrableOn g (Set.Icc a b)) :
    IntegrableOn (fun x ↦ upperSmallSum N x ^ 2 * g x) (Set.Icc a b) :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperSmallSum_square_mul_integrableOn N g a b hg

example (N : ℕ) (g : ℝ → ℝ) (a b : ℝ)
    (ha : 0 ≤ a) (hg : IntegrableOn g (Set.Icc a b)) :
    IntegrableOn (fun x ↦ upperHyperbola N x * g x) (Set.Icc a b) :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperHyperbola_mul_integrableOn N g a b ha hg

example (N : ℕ) (g : ℝ → ℝ) (a b : ℝ)
    (ha : 0 ≤ a) (hab : a ≤ b) (hg : IntegrableOn g (Set.Icc a b)) :
    (∫ x in a..b, UpperBoundaryAbel.upperProductSummatory N x * g x) =
      2 * (∫ x in a..b, upperHyperbola N x * g x) -
        ∫ x in a..b, upperSmallSum N x ^ 2 * g x :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperProduct_integral_eq_hyperbola N g a b ha hab hg

example (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn
      (fun x ↦ upperHyperbola ⌊Real.exp A⌋₊ x *
        deriv (SourceSampling.sourceSamplingKernel A) x)
      (Set.Icc 1 (Real.exp (2 * A))) :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.source_hyperbola_derivative_integrableOn A hA

example (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn
      (fun x ↦ upperSmallSum ⌊Real.exp A⌋₊ x ^ 2 *
        deriv (SourceSampling.sourceSamplingKernel A) x)
      (Set.Icc 1 (Real.exp (2 * A))) :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.source_square_derivative_integrableOn A hA

example (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue explicitSecondDerivative A =
      UpperBoundaryChannels.coreValue A +
        4 * (∫ x in 1..Real.exp (2 * A), upperHyperbola ⌊Real.exp A⌋₊ x *
          deriv (SourceSampling.sourceSamplingKernel A) x) -
        2 * ∫ x in 1..Real.exp (2 * A), upperSmallSum ⌊Real.exp A⌋₊ x ^ 2 *
          deriv (SourceSampling.sourceSamplingKernel A) x :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.sourceQuadraticValue_eq_hyperbola_integrals A hA

end SourceUpperBoundaryHyperbolaStatements

section SourceUpperBoundaryHyperbolaGainStatements
open Finset MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola
open FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbolaGain

example (A x : ℝ)
    (hx : x < Real.exp (2 * A) / 4) : upperSmallIndices ⌊Real.exp A⌋₊ x = ∅ :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbolaGain.upperSmallIndices_empty_below_quarter A x hx

example (A x : ℝ)
    (hx : x < Real.exp (2 * A) / 4) : upperSmallSum ⌊Real.exp A⌋₊ x = 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbolaGain.upperSmallSum_zero_below_quarter A x hx

example (A x : ℝ) (hA : 3 ≤ A) :
    upperSmallSum ⌊Real.exp A⌋₊ x ^ 2 *
      deriv (SourceSampling.sourceSamplingKernel A) x ≤ 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbolaGain.source_square_derivative_nonpos A x hA

example (A : ℝ) (hA : 3 ≤ A) :
    (∫ x in 1..Real.exp (2 * A), upperSmallSum ⌊Real.exp A⌋₊ x ^ 2 *
      deriv (SourceSampling.sourceSamplingKernel A) x) ≤ 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbolaGain.source_square_derivative_integral_nonpos A hA

example (A : ℝ) (hA : 3 ≤ A) :
    UpperBoundaryChannels.coreValue A +
      4 * (∫ x in 1..Real.exp (2 * A), upperHyperbola ⌊Real.exp A⌋₊ x *
        deriv (SourceSampling.sourceSamplingKernel A) x) ≤
      sourceQuadraticValue explicitSecondDerivative A :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbolaGain.sourceQuadraticValue_ge_core_hyperbola A hA

example (A : ℝ) (hA : 3 ≤ A) :
    max (-sourceQuadraticValue explicitSecondDerivative A) 0 ≤
      max (-UpperBoundaryChannels.coreValue A -
        4 * ∫ x in 1..Real.exp (2 * A), upperHyperbola ⌊Real.exp A⌋₊ x *
          deriv (SourceSampling.sourceSamplingKernel A) x) 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbolaGain.sourceQuadraticValue_negativePart_le A hA

end SourceUpperBoundaryHyperbolaGainStatements

namespace EndpointPositivitySourceExactStatements
open Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
noncomputable section

example (A x : ℝ) (hA : 3 ≤ A) (hx : x ∈ Ico (A - 3 / 4) A) :
    0 < normalizedTest explicitSecondDerivative A x :=
  EndpointPositivity.normalizedTest_endpoint_pos A x hA hx

example (A t : ℝ) (hA : 3 ≤ A) (ht : t ∈ Ico (2 * A - 3 / 4) (2 * A)) :
    0 < sourceCorrelation explicitSecondDerivative A t :=
  EndpointPositivity.sourceCorrelation_endpoint_pos A t hA ht

example (A q : ℝ) (hA : 3 ≤ A)
    (hq : q ∈ Ico (Real.exp (2 * A) / 4) (Real.exp (2 * A) / 2)) :
    0 < SourceSampling.sourceSamplingKernel A q :=
  EndpointPositivity.sourceSamplingKernel_upper_pos A q hA hq

end
end EndpointPositivitySourceExactStatements

section UpperKernelNegativeDirectionExactStatements
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourceComparison.UpperKernelNegativeDirection

example : (3 : ℝ) ≤ Real.log 32 := log_thirty_two_ge_three

example :
    23 ∈ Ioc (⌊Real.exp (Real.log (32 : ℝ))⌋₊ / 2) ⌊Real.exp (Real.log (32 : ℝ))⌋₊ ∧
    17 ∈ Ioc (⌊Real.exp (Real.log (32 : ℝ))⌋₊ / 2) ⌊Real.exp (Real.log (32 : ℝ))⌋₊ :=
  actual_upper_pair

example : SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 23) = 0 :=
  actual_diagonal_zero

example : 0 < SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 17) :=
  actual_offDiagonal_pos

example :
    SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 23) *
      SourceSampling.sourceSamplingKernel (Real.log 32) ((17 : ℝ) * 17) -
      SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 17) ^ 2 < 0 :=
  actual_pair_determinant_neg

example : ∃ u v : ℝ,
    u ^ 2 * SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 23) +
    2 * u * v * SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 17) +
    v ^ 2 * SourceSampling.sourceSamplingKernel (Real.log 32) ((17 : ℝ) * 17) = -1 :=
  actual_negative_direction

example : ¬∀ u v : ℝ,
    0 ≤ u ^ 2 * SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 23) +
      2 * u * v * SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 17) +
      v ^ 2 * SourceSampling.sourceSamplingKernel (Real.log 32) ((17 : ℝ) * 17) :=
  not_actual_pair_positiveSemidefinite

end UpperKernelNegativeDirectionExactStatements

namespace OddUpperRowDyadicSourceStatements
open Finset FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic
open FormalResearch.RiemannHypothesis.SourceComparison
noncomputable section

example (A : ℝ) (i : ℕ) : oddColumnRow A i =
    ∑ j ∈ (Icc 1 ⌊Real.exp A⌋₊).filter (fun j ↦ Nat.Coprime j 2),
      (ArithmeticFunction.moebius j : ℝ)*ThetaKernelTransport.thetaKernel A (i*j) := rfl

example (A : ℝ) (i : ℕ) (hi : 1 ≤ i)
    (hcut : Real.exp (2*A) ≤ 2*(i:ℝ)) : oddColumnRow A i = 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.oddColumnRow_zero A i hi hcut

example (A : ℝ) (i : ℕ)
    (hi : ⌊Real.exp A⌋₊/2 < i) :
    (∑ j ∈ (Icc 1 (⌊Real.exp A⌋₊/2)).filter (fun j ↦ Nat.Coprime j 2),
      (ArithmeticFunction.moebius j : ℝ)*ThetaKernelTransport.thetaKernel A (i*(2*j))) =
        oddColumnRow A (2*i) :=
  FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.oddColumnRow_half_padding A i hi

example (A : ℝ) (i : ℕ) (hA : 1 ≤ A)
    (hi : ⌊Real.exp A⌋₊/2 < i) :
    oddColumnRow A i - oddColumnRow A (2*i) = SourceSampling.sourceSamplingKernel A i :=
  FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.oddColumnRow_two_difference A i hA hi

example (A : ℝ) (i k : ℕ) (hi : ⌊Real.exp A⌋₊/2 < i) :
    ⌊Real.exp A⌋₊/2 < 2^k*i :=
  FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.dyadic_upper_row A i k hi

example (A : ℝ) (i K : ℕ) (hA : 1 ≤ A)
    (hi : ⌊Real.exp A⌋₊/2 < i) :
    oddColumnRow A i =
      (∑ k ∈ range K, SourceSampling.sourceSamplingKernel A ((2^k*i:ℕ):ℝ)) +
        oddColumnRow A (2^K*i) :=
  FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.oddColumnRow_telescope A i K hA hi

example (A : ℝ) (i : ℕ) (hi : 1 ≤ i) :
    oddColumnRow A (2^(Nat.clog 2 ⌈Real.exp (2*A)⌉₊)*i)=0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.oddColumnRow_dyadic_tail_zero A i hi

example (A : ℝ) (i : ℕ) (hA : 1 ≤ A)
    (hi : ⌊Real.exp A⌋₊/2 < i) :
    oddColumnRow A i =
      ∑ k ∈ range (Nat.clog 2 ⌈Real.exp (2*A)⌉₊),
        SourceSampling.sourceSamplingKernel A ((2^k*i:ℕ):ℝ) :=
  FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.oddColumnRow_eq_dyadic A i hA hi

example (A : ℝ) :
    Nat.clog 2 ⌈Real.exp (2*A)⌉₊ ≤ ⌈2*A / Real.log 2⌉₊ :=
  FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.dyadicCutoff_le A

example (N M : ℕ) (F : ℕ → ℝ) (hMN : M ≤ N) :
    (∑ j ∈ (Icc 1 N).filter (fun j ↦ Nat.Coprime j 2),
      (ArithmeticFunction.moebius j : ℝ)*F j) =
      (∑ j ∈ (Icc 1 M).filter (fun j ↦ Nat.Coprime j 2),
        (ArithmeticFunction.moebius j : ℝ)*F j) +
      ∑ j ∈ (Ioc M N).filter (fun j ↦ Nat.Coprime j 2),
        (ArithmeticFunction.moebius j : ℝ)*F j :=
  FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.positive_odd_sum_split N M F hMN

example (A : ℝ) (i J : ℕ) (hA : 1 ≤ A)
    (hi : ⌊Real.exp A⌋₊/2 < i) (hMJ : ⌊Real.exp A⌋₊/2 ≤ J) (hJN : J ≤ ⌊Real.exp A⌋₊) :
    (∑ j ∈ (Ioc (⌊Real.exp A⌋₊/2) J).filter (fun j ↦ Nat.Coprime j 2),
      (ArithmeticFunction.moebius j : ℝ)*SourceSampling.sourceSamplingKernel A ((i*j:ℕ):ℝ)) =
      (∑ k ∈ range (Nat.clog 2 ⌈Real.exp (2*A)⌉₊),
        SourceSampling.sourceSamplingKernel A ((2^k*i:ℕ):ℝ)) -
      (∑ j ∈ (Icc 1 (⌊Real.exp A⌋₊/2)).filter (fun j ↦ Nat.Coprime j 2),
        (ArithmeticFunction.moebius j : ℝ)*ThetaKernelTransport.thetaKernel A (i*j)) -
      ∑ j ∈ (Ioc J ⌊Real.exp A⌋₊).filter (fun j ↦ Nat.Coprime j 2),
        (ArithmeticFunction.moebius j : ℝ)*SourceSampling.sourceSamplingKernel A ((i*j:ℕ):ℝ) :=
  FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.clipped_odd_upper_row_eq A i J hA hi hMJ hJN

example (A : ℝ) (i : ℕ) (hA : 1 ≤ A)
    (hi : ⌊Real.exp A⌋₊/2 < i) :
    (∑ j ∈ (Ioc (⌊Real.exp A⌋₊/2) ⌊Real.exp A⌋₊).filter (fun j ↦ Nat.Coprime j 2),
      (ArithmeticFunction.moebius j : ℝ)*SourceSampling.sourceSamplingKernel A ((i*j:ℕ):ℝ)) =
      (∑ k ∈ range (Nat.clog 2 ⌈Real.exp (2*A)⌉₊),
        SourceSampling.sourceSamplingKernel A ((2^k*i:ℕ):ℝ)) -
      ∑ j ∈ (Icc 1 (⌊Real.exp A⌋₊/2)).filter (fun j ↦ Nat.Coprime j 2),
        (ArithmeticFunction.moebius j : ℝ)*ThetaKernelTransport.thetaKernel A (i*j) :=
  FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.full_odd_upper_row_eq A i hA hi

end
end OddUpperRowDyadicSourceStatements

namespace SourcePNTInputSourceStatements

open Filter Asymptotics
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput

example (x : ℝ) :
    chebyshevPrimePower x = Chebyshev.psi x :=
  FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.chebyshevPrimePower_eq_psi x

example (x : ℝ) :
    chebyshevError x = Chebyshev.psi x - x :=
  FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.chebyshevError_eq_psi_sub x

example :
    chebyshevError = Chebyshev.psi - id :=
  FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.chebyshevError_eq_fun

example (x : ℝ) (hx : 0 ≤ x) :
    |chebyshevError x| ≤ (Real.log 4 + 5) * x :=
  FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.chebyshevError_abs_le x hx

example (t : ℝ) :
    |errorProfile t| ≤ (Real.log 4 + 5) * Real.exp t :=
  FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.errorProfile_abs_le t

example {c : ℝ}
    (hpnt : (Chebyshev.psi - id) =O[atTop]
      fun x : ℝ => x * Real.exp (-c * (Real.log x) ^ ((1 : ℝ) / 10))) :
    ∃ C > 0, ∃ T ≥ 1, ∀ t ≥ T,
      |errorProfile t| ≤ C * Real.exp t * Real.exp (-c * t ^ ((1 : ℝ) / 10)) :=
  FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.errorProfile_eventual_of_pnt hpnt

example {c : ℝ} (hc : 0 < c)
    (hpnt : (Chebyshev.psi - id) =O[atTop]
      fun x : ℝ => x * Real.exp (-c * (Real.log x) ^ ((1 : ℝ) / 10))) :
    ∃ C > 0, ∃ T ≥ 1, ∀ A ≥ T, ∀ t ≥ A,
      |errorProfile t| ≤ C * Real.exp t * Real.exp (-c * A ^ ((1 : ℝ) / 10)) :=
  FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.errorProfile_tail_of_pnt hc hpnt

example : ∃ c > 0,
    chebyshevError =O[atTop]
      fun x : ℝ => x * Real.exp (-c * (Real.log x) ^ ((1 : ℝ) / 10)) :=
  FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.source_quantitative_pnt

example : ∃ c > 0, ∃ C > 0, ∃ T ≥ 1,
    ∀ A ≥ T, ∀ t ≥ A,
      |errorProfile t| ≤ C * Real.exp t * Real.exp (-c * A ^ ((1 : ℝ) / 10)) :=
  FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.errorProfile_quantitative_tail


end SourcePNTInputSourceStatements

namespace SourcePNTPairingBoundSourceStatements

open FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTPairingBound
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.RiemannHypothesis.SourceComparison.CorrelationDifferenceMoments
open MeasureTheory Set Filter

example : correlationBudget = Real.sqrt (65 / 3) + 1 / 2 := rfl
example : 0 ≤ correlationBudget := correlationBudget_nonneg
example (A t : ℝ) (hA : 1 ≤ A) :
    |correlationDifference A t| ≤ correlationBudget := correlationDifference_uniform A t hA
example (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun t ↦ errorProfile t * sourceWeight explicitSecondDerivative A t)
      volume lowerEndpoint (2 * A) := sourcePairing_intervalIntegrable A hA
example (a b : ℝ) :
    (∫ t in a..b, Real.exp (t / 2)) = 2 * Real.exp (b / 2) - 2 * Real.exp (a / 2) :=
  exp_half_intervalIntegral a b
example (A t D : ℝ) (hA : 1 ≤ A) (hD : 0 ≤ D)
    (he : |errorProfile t| ≤ D * Real.exp t) :
    |errorProfile t * sourceWeight explicitSecondDerivative A t| ≤
      D * correlationBudget * Real.exp (t / 2) := source_integrand_bound A t D hA hD he
example (A a b D : ℝ) (hA : 1 ≤ A) (hab : a ≤ b)
    (hD : 0 ≤ D) (he : ∀ t ∈ Icc a b, |errorProfile t| ≤ D * Real.exp t) :
    |∫ t in a..b, errorProfile t * sourceWeight explicitSecondDerivative A t| ≤
      2 * D * correlationBudget * Real.exp (b / 2) := source_interval_bound A a b D hA hab hD he
example (A C c : ℝ) (hA : 1 ≤ A) (hstart : lowerEndpoint ≤ A)
    (hC : 0 ≤ C)
    (hglobal : ∀ t ∈ Icc lowerEndpoint A, |errorProfile t| ≤ C * Real.exp t)
    (hpnt : ∀ t ∈ Icc A (2 * A),
      |errorProfile t| ≤ C * Real.exp t * Real.exp (-c * A ^ ((1 : ℝ) / 10))) :
    |signedPairing explicitSecondDerivative A| ≤
      2 * C * correlationBudget * (Real.exp (A / 2) +
        Real.exp A * Real.exp (-c * A ^ ((1 : ℝ) / 10))) :=
  signedPairing_bound A C c hA hstart hC hglobal hpnt
example : ∃ C ≥ 0, ∃ c > 0, ∀ᶠ A : ℝ in atTop,
      |signedPairing explicitSecondDerivative A| ≤
        C * (Real.exp (A / 2) + Real.exp A * Real.exp (-c * A ^ ((1 : ℝ) / 10))) :=
  signedPairing_eventual_bound

end SourcePNTPairingBoundSourceStatements


namespace FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne
open MeasureTheory Set Filter
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourceComparison.NegativePartIntegrability

example (R : ℝ) :
    IntegrableOn (fun A : ℝ ↦ Real.exp (-A) * negativeSource A) (Ioc 1 R) := by
  exact rate_one_integrableOn_Ioc R

example (g : ℝ → ℝ)
    (hg : IntegrableOn g (Ioi 1))
    (hbound : ∀ᶠ A : ℝ in atTop, Real.exp (-A) * negativeSource A ≤ g A) :
    IntegrableOn (fun A : ℝ ↦ Real.exp (-A) * negativeSource A) (Ioi 1) := by
  exact rate_one_integrable_of_eventual_majorant g hg hbound

example (c p : ℝ) (hc : 0 < c) (hp : 0 < p) :
    IntegrableOn (fun A : ℝ ↦ A ^ 17 * Real.exp (-c * A ^ p)) (Ioi 1) := by
  exact polynomial_stretched_integrable c p hc hp

example (C c : ℝ) (hc : 0 < c) :
    IntegrableOn (fun A : ℝ ↦ C * (A ^ 17 * Real.exp (-A) +
      A ^ 17 * Real.exp (-A / 2) +
      A ^ 17 * Real.exp (-c * A ^ ((1 : ℝ) / 10)))) (Ioi 1) := by
  exact rate_one_majorant_integrable C c hc

example (C c : ℝ) (hc : 0 < c)
    (hbound : ∀ᶠ A : ℝ in atTop, Real.exp (-A) * negativeSource A ≤
      C * (A ^ 17 * Real.exp (-A) + A ^ 17 * Real.exp (-A / 2) +
        A ^ 17 * Real.exp (-c * A ^ ((1 : ℝ) / 10)))) :
    IntegrableOn (fun A : ℝ ↦ Real.exp (-A) * negativeSource A) (Ioi 1) := by
  exact rate_one_integrable_of_stretched_majorant C c hc hbound

example (A : ℝ) (hA : 1 ≤ A) :
    A ^ 17 * sourceNormalization A ≤ 42 * A ^ 17 := by
  exact actual_scale_le A hA

example
    (C c A : ℝ) (hC : 0 ≤ C) (hA : 1 ≤ A)
    (hI : |signedPairing Realization.explicitSecondDerivative A| ≤
      C * (Real.exp (A / 2) + Real.exp A * Real.exp (-c * A ^ ((1 : ℝ) / 10)))) :
    Real.exp (-A) * negativeSource A ≤
      (42 * (|archimedeanMultiplier 0 - 6 * Real.sqrt 2| + 2 * C)) *
        (A ^ 17 * Real.exp (-A) + A ^ 17 * Real.exp (-A / 2) +
          A ^ 17 * Real.exp (-c * A ^ ((1 : ℝ) / 10))) := by
  exact weighted_negativeSource_le_of_pairing_bound C c A hC hA hI

example (C c : ℝ) (hC : 0 ≤ C) (hc : 0 < c)
    (hI : ∀ᶠ A : ℝ in atTop,
      |signedPairing Realization.explicitSecondDerivative A| ≤
        C * (Real.exp (A / 2) + Real.exp A * Real.exp (-c * A ^ ((1 : ℝ) / 10)))) :
    IntegrableOn (fun A : ℝ ↦ Real.exp (-A) * negativeSource A) (Ioi 1) := by
  exact rate_one_integrable_of_pairing_bound C c hC hc hI

example
    (h₁ : IntegrableOn (fun A : ℝ ↦ Real.exp (-A) * negativeSource A) (Ioi 1))
    (σ : ℝ) (hσ : 1 ≤ σ) :
    IntegrableOn (fun A : ℝ ↦ Real.exp (-σ * A) * negativeSource A) (Ioi 1) := by
  exact integrable_of_one_le_rate h₁ σ hσ

example :
    IntegrableOn (fun A : ℝ ↦ Real.exp (-A) * negativeSource A) (Ioi 1) := by
  exact negativeSource_integrable_at_one

example (σ : ℝ) (hσ : 1 ≤ σ) :
    IntegrableOn (fun A : ℝ ↦ Real.exp (-σ * A) * negativeSource A) (Ioi 1) := by
  exact negativeSource_integrable_of_one_le σ hσ

example (σ : ℝ) (hσ : 1 ≤ σ) :
    IntegrableOn (fun A : ℝ ↦ Real.exp (-σ * A) * A ^ 17 * sourceNormalization A *
      max (-sourceQuadraticValue Realization.explicitSecondDerivative A) 0) (Ioi 1) := by
  exact actual_weighted_negativePart_integrable σ hσ

end FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne

namespace ThetaErrorMomentsSourceStatements

open MeasureTheory Set Filter
open FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments
open FormalResearch.RiemannHypothesis.SourcePairing

example (x : ℝ) :
    sourcePrimePrefix x = Chebyshev.theta x :=
  FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments.sourcePrimePrefix_eq_theta x

example (u : ℝ) :
    thetaLogError u = (Chebyshev.theta (Real.exp u) - Real.exp u) * Real.exp (-u) :=
  FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments.thetaLogError_eq u

example : Measurable thetaLogError :=
  FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments.thetaLogError_measurable

example (u : ℝ) :
    |thetaLogError u| ≤ Real.log 4 + 5 :=
  FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments.thetaLogError_abs_le_global u

example (u : ℝ) (hu : 0 ≤ u) :
    |thetaLogError u| ≤ |errorProfile u| * Real.exp (-u) +
      2 * u * Real.exp (-u / 2) :=
  FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments.thetaLogError_abs_le_psi_error u hu

example : ∃ c > 0, ∃ C > 0, ∃ T ≥ 1,
    ∀ u ≥ T, |thetaLogError u| ≤ C * Real.exp (-c * u ^ ((1 : ℝ) / 10)) +
      2 * u * Real.exp (-u / 2) :=
  FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments.thetaLogError_eventual_bound

example (k : ℕ) (c p : ℝ) (hc : 0 < c) (hp : 0 < p) :
    IntegrableOn (fun u : ℝ => u ^ k * Real.exp (-c * u ^ p)) (Ioi 0) :=
  FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments.polynomial_stretched_integrable k c p hc hp

example (k : ℕ) (T : ℝ) :
    IntegrableOn (fun u : ℝ => u ^ k * |thetaLogError u|) (Ioc 0 T) :=
  FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments.thetaLogError_moment_prefix_integrable k T

example (k : ℕ) :
    IntegrableOn (fun u : ℝ => u ^ k * |thetaLogError u|) (Ioi 0) :=
  FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments.thetaLogError_moment_integrable k

example : IntegrableOn (fun u : ℝ => |thetaLogError u|) (Ioi 0) :=
  FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments.thetaLogError_integrable

example :
    IntegrableOn (fun u : ℝ => u * |thetaLogError u|) (Ioi 0) :=
  FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments.thetaLogError_first_moment_integrable

example :
    IntegrableOn (fun u : ℝ => u ^ 2 * |thetaLogError u|) (Ioi 0) :=
  FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments.thetaLogError_second_moment_integrable

example (k : ℕ) :
    IntegrableOn (fun u : ℝ => u ^ k *
      |(Chebyshev.theta (Real.exp u) - Real.exp u) * Real.exp (-u)|) (Ioi 0) :=
  FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments.theta_error_logarithmic_moment_integrable k

example (x : ℝ) : sourcePrimePrefix x =
    ∑ n ∈ (Finset.Icc 2 ⌊x⌋₊).filter Nat.Prime, ArithmeticFunction.vonMangoldt n := rfl

example (u : ℝ) : thetaLogError u =
    (sourcePrimePrefix (Real.exp u) - Real.exp u) * Real.exp (-u) := rfl

end ThetaErrorMomentsSourceStatements

namespace PrimeHarmonicPrefixSourceStatements

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments
open FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicPrefix

example (u : ℝ) : primeHarmonicPrefix u =
  ∑ n ∈ (Finset.Icc 2 ⌊Real.exp u⌋₊).filter Nat.Prime,
    ArithmeticFunction.vonMangoldt n / (n : ℝ) := rfl

example (u : ℝ) :
    primeHarmonicPrefix u =
      ∑ n ∈ (Finset.Icc 2 ⌊Real.exp u⌋₊).filter Nat.Prime,
        Real.log (n : ℝ) / (n : ℝ) :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicPrefix.primeHarmonicPrefix_eq_log_sum u

example : primeHarmonicPrefix 0 = 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicPrefix.primeHarmonicPrefix_zero

example : primeHarmonicPrefix (Real.log 2) = Real.log 2 / 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicPrefix.primeHarmonicPrefix_log_two

example : thetaLogError 0 = -1 :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicPrefix.thetaLogError_zero

example (x : ℝ) :
    IntegrableOn (fun t : ℝ => Chebyshev.theta t / t ^ 2) (Icc 1 x) :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicPrefix.theta_div_sq_integrableOn x

example (u : ℝ) (hu : 0 ≤ u) :
    primeHarmonicPrefix u =
      Chebyshev.theta (Real.exp u) / Real.exp u +
        ∫ t in 1..Real.exp u, Chebyshev.theta t / t ^ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicPrefix.primeHarmonicPrefix_abel u hu

example (u : ℝ) :
    IntervalIntegrable thetaLogError volume 0 u :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicPrefix.thetaLogError_intervalIntegrable u

example (u : ℝ) :
    (∫ t in 1..Real.exp u, Chebyshev.theta t / t ^ 2) =
      ∫ v in 0..u, 1 + thetaLogError v :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicPrefix.theta_div_sq_log_substitution u

example (u : ℝ) (hu : 0 ≤ u) :
    primeHarmonicPrefix u = u + 1 + thetaLogError u + ∫ v in 0..u, thetaLogError v :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicPrefix.primeHarmonicPrefix_formula u hu

end PrimeHarmonicPrefixSourceStatements

namespace PrimeHarmonicRemainderSourceStatements

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments
open FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicRemainder

example : thetaConstant = 1 + ∫ v in Ioi 0, thetaLogError v := rfl

example (u : ℝ) : thetaTail u = ∫ v in Ioi u, thetaLogError v := rfl

example (u : ℝ) : thetaRemainder u = thetaLogError u - thetaTail u := rfl

example : IntegrableOn thetaLogError (Ioi 0) :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicRemainder.thetaLogError_signed_integrable

example (u : ℝ) (hu : 0 ≤ u) :
    IntegrableOn thetaLogError (Ioi u) :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicRemainder.thetaTail_integrable u hu

example (u : ℝ) (hu : 0 ≤ u) :
    (∫ v in 0..u, thetaLogError v) + thetaTail u = ∫ v in Ioi 0, thetaLogError v :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicRemainder.prefix_add_tail u hu

example (u : ℝ) (hu : 0 ≤ u) :
    u + 1 + thetaLogError u + (∫ v in 0..u, thetaLogError v) =
      u + thetaConstant + thetaRemainder u :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicRemainder.centered_prefix_eq u hu

example : Measurable thetaTail :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicRemainder.thetaTail_measurable

example : Measurable thetaRemainder :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicRemainder.thetaRemainder_measurable

example :
    IntegrableOn (fun u => u * ∫ v in Ioi u, |thetaLogError v|) (Ioi 0) :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicRemainder.absolute_tail_first_moment_integrable

example :
    (∫ u in Ioi 0, u * ∫ v in Ioi u, |thetaLogError v|) =
      (1 / 2 : ℝ) * ∫ v in Ioi 0, v ^ 2 * |thetaLogError v| :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicRemainder.absolute_tail_first_moment

example (u : ℝ) :
    |thetaRemainder u| ≤ |thetaLogError u| + ∫ v in Ioi u, |thetaLogError v| :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicRemainder.thetaRemainder_abs_le u

example :
    IntegrableOn (fun u => u * |thetaRemainder u|) (Ioi 0) :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicRemainder.thetaRemainder_first_moment_integrable

example :
    (∫ u in Ioi 0, u * |thetaRemainder u|) ≤
      (∫ u in Ioi 0, u * |thetaLogError u|) +
        (1 / 2 : ℝ) * ∫ u in Ioi 0, u ^ 2 * |thetaLogError u| :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicRemainder.thetaRemainder_first_moment_bound


end PrimeHarmonicRemainderSourceStatements

namespace PrimeSquareCorrelationSourceStatements

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
open FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation

example (A : ℝ) (hA : 1 ≤ A) :
    deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 :=
  sourceCorrelation_derivative_zero A hA

example (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t| ≤
      (65 / (3 * A ^ 2)) * |t| :=
  sourceCorrelation_derivative_linear_bound A t hA

example (A u : ℝ) (hA : 1 ≤ A) :
    HasDerivAt (fun u ↦ sourceCorrelation explicitSecondDerivative A (2 * u))
      (2 * deriv (sourceCorrelation explicitSecondDerivative A) (2 * u)) u :=
  sourceCorrelation_double_hasDerivAt A u hA

example (A u : ℝ) (hA : 1 ≤ A) (hu : 0 ≤ u) :
    |deriv (fun u ↦ sourceCorrelation explicitSecondDerivative A (2 * u)) u| ≤
      (260 / (3 * A ^ 2)) * u :=
  sourceCorrelation_double_derivative_abs_le A u hA hu

example (A x : ℝ) : bumpPrimitive A x =
  (A / Real.sqrt A) * (x / A - 4 * (x / A) ^ 3 / 3 +
    6 * (x / A) ^ 5 / 5 - 4 * (x / A) ^ 7 / 7 + (x / A) ^ 9 / 9) := rfl

example (A x : ℝ) (hA : A ≠ 0) :
    HasDerivAt (bumpPrimitive A) (bumpInterior A x) x :=
  bumpPrimitive_hasDerivAt A x hA

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ x in -A..A, bumpInterior A x) = (256 / 315) * A / Real.sqrt A :=
  bumpInterior_integral A hA

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, explicitSecondDerivative A x) = 0 :=
  explicitSecondDerivative_integral_zero A hA

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, scaledBump A x) = (256 / 315) * A / Real.sqrt A :=
  scaledBump_integral A hA

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, dilationTest explicitSecondDerivative A x) =
      -(256 / 315) * A / (4 * Real.sqrt A) :=
  dilationTest_integral A hA

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, normalizedTest explicitSecondDerivative A x) =
      -(256 / 315) * A / (4 * Real.sqrt A * Real.sqrt (sourceNormalization A)) :=
  normalizedTest_integral A hA

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ t, sourceCorrelation explicitSecondDerivative A t) =
      (256 / 315) ^ 2 * A / (16 * sourceNormalization A) :=
  sourceCorrelation_integral A hA

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ t, sourceCorrelation explicitSecondDerivative A t) =
      4 * ∫ u in 0..A, sourceCorrelation explicitSecondDerivative A (2 * u) :=
  sourceCorrelation_full_eq_four_half A hA

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ u in 0..A, sourceCorrelation explicitSecondDerivative A (2 * u)) =
      (256 / 315) ^ 2 * A / (64 * sourceNormalization A) :=
  sourceCorrelation_double_integral A hA

end PrimeSquareCorrelationSourceStatements

namespace PrimeSquareSourceSourceStatements

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
open FormalResearch.RiemannHypothesis.SourceComparison
open PrimeSquareSource

example (n : ℕ) : IsPrimeSquare n ↔ ∃ p : ℕ, p.Prime ∧ p ^ 2 = n := Iff.rfl

example (A : ℝ) : primeSquareIndices A = (by classical exact (Cutoff.primeIndices A).filter IsPrimeSquare) := rfl

example (A : ℝ) : closedPrimeRoots A = (Finset.Icc 2 ⌊Real.exp A⌋₊).filter Nat.Prime := rfl

example (A : ℝ) : strictPrimeRoots A = (closedPrimeRoots A).filter (fun p : ℕ => (p : ℝ) < Real.exp A) := rfl

example (A : ℝ) : primeSquareContribution A =
  ∑ n ∈ primeSquareIndices A, ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
    sourceCorrelation explicitSecondDerivative A (Real.log (n : ℝ)) := rfl

example (A : ℝ) (p : ℕ) :
    p ∈ closedPrimeRoots A ↔ p.Prime ∧ (p : ℝ) ≤ Real.exp A :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource.mem_closedPrimeRoots_iff A p

example (A : ℝ) (p : ℕ) :
    p ∈ strictPrimeRoots A ↔ p.Prime ∧ (p : ℝ) < Real.exp A :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource.mem_strictPrimeRoots_iff A p

example (A : ℝ) (p : ℕ) (hp : p.Prime) :
    p ^ 2 ∈ Cutoff.primeIndices A ↔ (p : ℝ) < Real.exp A :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource.prime_square_cutoff_iff A p hp

example (A : ℝ) :
    primeSquareIndices A = (strictPrimeRoots A).image (fun p : ℕ => p ^ 2) :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource.primeSquareIndices_eq_image A

example (A : ℝ) :
    4 ∈ primeSquareIndices A ↔ Real.log 2 < A :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource.four_mem_primeSquareIndices_iff A

example (A : ℝ) (p : ℕ) (hp : p.Prime) :
    ArithmeticFunction.vonMangoldt (p ^ 2) / Real.sqrt ((p ^ 2 : ℕ) : ℝ) *
      sourceCorrelation explicitSecondDerivative A (Real.log ((p ^ 2 : ℕ) : ℝ)) =
    Real.log (p : ℝ) / (p : ℝ) *
      sourceCorrelation explicitSecondDerivative A (2 * Real.log (p : ℝ)) :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource.prime_square_summand A p hp

example (A : ℝ) :
    primeSquareContribution A = ∑ p ∈ strictPrimeRoots A,
      Real.log (p : ℝ) / (p : ℝ) *
        sourceCorrelation explicitSecondDerivative A (2 * Real.log (p : ℝ)) :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource.primeSquareContribution_eq_strict A

example (A : ℝ) (hA : 1 ≤ A) (p : ℕ)
    (hp : p ∈ closedPrimeRoots A) (hnot : p ∉ strictPrimeRoots A) :
    Real.log (p : ℝ) / (p : ℝ) *
      sourceCorrelation explicitSecondDerivative A (2 * Real.log (p : ℝ)) = 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource.prime_root_endpoint_summand_zero A hA p hp hnot

example (A : ℝ) (hA : 1 ≤ A) :
    primeSquareContribution A = ∑ p ∈ closedPrimeRoots A,
      Real.log (p : ℝ) / (p : ℝ) *
        sourceCorrelation explicitSecondDerivative A (2 * Real.log (p : ℝ)) :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource.primeSquareContribution_eq_closed A hA

end PrimeSquareSourceSourceStatements

namespace PrimeSquareAbelSourceStatements

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
open FormalResearch.RiemannHypothesis.SourceComparison
open PrimeSquareAbel
open PrimeSquareCorrelation PrimeHarmonicPrefix PrimeHarmonicRemainder

example (A u : ℝ) (hu : u ≤ A) :
    primeHarmonicPrefix u =
      ∑ p ∈ (Finset.Icc 2 ⌊Real.exp A⌋₊).filter Nat.Prime,
        if Real.log (p : ℝ) ≤ u then Real.log (p : ℝ) / (p : ℝ) else 0 :=
  primeHarmonicPrefix_eq_threshold_sum A u hu

example (A : ℝ) (p : ℕ)
    (hp : p ∈ (Finset.Icc 2 ⌊Real.exp A⌋₊).filter Nat.Prime) :
    Real.log (p : ℝ) ∈ Icc 0 A :=
  prime_log_mem_interval A p hp

example (g : ℝ → ℝ) (A r : ℝ) (hA : 0 ≤ A)
    (hg : IntegrableOn g (Icc 0 A)) :
    IntervalIntegrable (fun u ↦ if r ≤ u then g u else 0) volume 0 A :=
  closed_tail_intervalIntegrable g A r hA hg

example (g : ℝ → ℝ) (A r : ℝ) (hr : r ∈ Icc 0 A) :
    (∫ u in 0..A, if r ≤ u then g u else 0) = ∫ u in r..A, g u :=
  integral_closed_tail g A r hr

example (A : ℝ) (hA : 1 ≤ A) :
    Continuous (deriv (fun u ↦ sourceCorrelation explicitSecondDerivative A (2 * u))) :=
  sourceCorrelation_double_derivative_continuous A hA

example (A : ℝ) (hA : 0 ≤ A)
    (g : ℝ → ℝ) (hg : Continuous g) :
    IntervalIntegrable (fun u ↦ primeHarmonicPrefix u * g u) volume 0 A :=
  primeHarmonicPrefix_mul_intervalIntegrable A hA g hg

example (A : ℝ) (hA : 0 ≤ A)
    (g : ℝ → ℝ) (hg : Differentiable ℝ g) (hgd : Continuous (deriv g)) (hgz : g A = 0) :
    (∑ p ∈ (Finset.Icc 2 ⌊Real.exp A⌋₊).filter Nat.Prime,
      Real.log (p : ℝ) / (p : ℝ) * g (Real.log (p : ℝ))) =
        -(∫ u in 0..A, primeHarmonicPrefix u * deriv g u) :=
  primeHarmonicPrefix_weighted_abel A hA g hg hgd hgz

example (u : ℝ) (hu : 0 ≤ u) :
    primeHarmonicPrefix u = u + thetaConstant + thetaRemainder u :=
  primeHarmonicPrefix_centered u hu

example (A : ℝ) (hA : 0 ≤ A)
    (g : ℝ → ℝ) (hg : Continuous g) :
    IntervalIntegrable (fun u ↦ thetaRemainder u * g u) volume 0 A :=
  thetaRemainder_mul_intervalIntegrable A hA g hg

example (A : ℝ) (hA : 0 ≤ A)
    (g : ℝ → ℝ) (hg : Differentiable ℝ g) (hgd : Continuous (deriv g))
    (hgz : g A = 0) (hg0 : g 0 = 1) :
    (∑ p ∈ (Finset.Icc 2 ⌊Real.exp A⌋₊).filter Nat.Prime,
      Real.log (p : ℝ) / (p : ℝ) * g (Real.log (p : ℝ))) =
      (∫ u in 0..A, g u) + thetaConstant -
        ∫ u in 0..A, thetaRemainder u * deriv g u :=
  primeHarmonicPrefix_centered_abel A hA g hg hgd hgz hg0

example (A : ℝ) (hA : 1 ≤ A) :
    (∑ p ∈ (Finset.Icc 2 ⌊Real.exp A⌋₊).filter Nat.Prime,
      Real.log (p : ℝ) / (p : ℝ) *
        sourceCorrelation explicitSecondDerivative A (2 * Real.log (p : ℝ))) =
      (∫ u in 0..A, sourceCorrelation explicitSecondDerivative A (2 * u)) + thetaConstant -
      ∫ u in 0..A, thetaRemainder u *
        deriv (fun u ↦ sourceCorrelation explicitSecondDerivative A (2 * u)) u :=
  primeSquare_weighted_abel A hA

end PrimeSquareAbelSourceStatements

namespace PrimeSquareAsymptoticSourceStatements

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
open FormalResearch.RiemannHypothesis.SourceComparison
open PrimeHarmonicRemainder PrimeSquareCorrelation PrimeSquareSource PrimeSquareAsymptotic

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
open FormalResearch.RiemannHypothesis.SourceComparison
open PrimeHarmonicRemainder PrimeSquareSource
open FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareAsymptotic

example (A : ℝ) : primeSquareError A =
    ∫ u in 0..A, thetaRemainder u *
      deriv (fun u => sourceCorrelation explicitSecondDerivative A (2 * u)) u := rfl

example : primeSquareErrorBudget = (260 / 3) * ∫ u in Ioi 0, u * |thetaRemainder u| := rfl

example : 0 ≤ primeSquareErrorBudget :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareAsymptotic.primeSquareErrorBudget_nonneg

example (A u : ℝ) (hA : 1 ≤ A) (hu : 0 ≤ u) :
    |thetaRemainder u *
      deriv (fun u => sourceCorrelation explicitSecondDerivative A (2 * u)) u| ≤
        (260 / (3 * A ^ 2)) * (u * |thetaRemainder u|) :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareAsymptotic.remainder_derivative_norm_bound A u hA hu

example (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn (fun u => thetaRemainder u *
      deriv (fun u => sourceCorrelation explicitSecondDerivative A (2 * u)) u) (Ioi 0) :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareAsymptotic.remainder_derivative_integrable A hA

example (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun u => thetaRemainder u *
      deriv (fun u => sourceCorrelation explicitSecondDerivative A (2 * u)) u) volume 0 A :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareAsymptotic.remainder_derivative_intervalIntegrable A hA

example (A : ℝ) (hA : 1 ≤ A) :
    |primeSquareError A| ≤ primeSquareErrorBudget / A ^ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareAsymptotic.primeSquareError_abs_le A hA

example (A : ℝ) (hA : 1 ≤ A) :
    primeSquareContribution A =
      (256 / 315) ^ 2 * A / (64 * sourceNormalization A) + thetaConstant - primeSquareError A :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareAsymptotic.primeSquareContribution_eq_main_sub_error A hA

example (A : ℝ) (hA : 1 ≤ A) :
    |primeSquareContribution A -
      ((256 / 315) ^ 2 * A / (64 * sourceNormalization A) + thetaConstant)| ≤
        primeSquareErrorBudget / A ^ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareAsymptotic.primeSquareContribution_asymptotic_bound A hA

example : ∃ C : ℝ, 0 ≤ C ∧
    ∀ A : ℝ, 1 ≤ A →
      |-2 * (∑ n ∈ (by classical exact (Cutoff.primeIndices A).filter IsPrimeSquare),
          ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
            sourceCorrelation explicitSecondDerivative A (Real.log n)) +
        (256 / 315) ^ 2 * A / (32 * sourceNormalization A) + 2 * thetaConstant| ≤
          C / A ^ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareAsymptotic.actual_primeSquare_signed_asymptotic


end PrimeSquareAsymptoticSourceStatements

namespace CorrelationDeviationSourceStatements

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open FormalResearch.RiemannHypothesis.SourceComparison
open ProperPrimePowers PrimeSquareSource PrimeSector
open CorrelationDeviation HigherPowerMoment HigherPowerSource HigherPowerWeight HigherPowerTsum HigherPowerAsymptotic

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
open FormalResearch.RiemannHypothesis.SourceComparison.CorrelationDeviation

example (A a b : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (deriv (sourceCorrelation explicitSecondDerivative A)) volume a b :=
  FormalResearch.RiemannHypothesis.SourceComparison.CorrelationDeviation.sourceCorrelation_derivative_intervalIntegrable A a b hA

example (A t : ℝ) (hA : 1 ≤ A) :
    sourceCorrelation explicitSecondDerivative A t - 1 =
      ∫ u in 0..t, deriv (sourceCorrelation explicitSecondDerivative A) u :=
  FormalResearch.RiemannHypothesis.SourceComparison.CorrelationDeviation.sourceCorrelation_deviation_integral A t hA

example (A t : ℝ) (hA : 1 ≤ A) :
    |sourceCorrelation explicitSecondDerivative A t - 1| ≤ 65 * t ^ 2 / (6 * A ^ 2) :=
  FormalResearch.RiemannHypothesis.SourceComparison.CorrelationDeviation.sourceCorrelation_deviation_bound A t hA

example (A : ℝ) (n : ℕ) (hA : 1 ≤ A) :
    |ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
      (sourceCorrelation explicitSecondDerivative A (Real.log n) - 1)| ≤
        (65 / (6 * A ^ 2)) *
          (ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) * (Real.log n) ^ 2) :=
  FormalResearch.RiemannHypothesis.SourceComparison.CorrelationDeviation.sourcePrimeWeight_deviation_bound A n hA


end CorrelationDeviationSourceStatements

namespace HigherPowerMomentSourceStatements

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open FormalResearch.RiemannHypothesis.SourceComparison
open ProperPrimePowers PrimeSquareSource PrimeSector
open CorrelationDeviation HigherPowerMoment HigherPowerSource HigherPowerWeight HigherPowerTsum HigherPowerAsymptotic

example (n : ℕ) : integerMoment n = Real.log (n : ℝ) ^ 3 * (n : ℝ) ^ (-(3 / 2 : ℝ)) := rfl

example (p k : ℕ) : higherMoment p k = Real.log (p : ℝ) / (p : ℝ) ^ ((k : ℝ) / 2) * ((k : ℝ) * Real.log (p : ℝ)) ^ 2 := rfl

example : geometricRatio = (2 : ℝ) ^ (-(1 / 2 : ℝ)) := rfl

example (k : ℕ) : exponentMoment k = (k : ℝ) ^ 2 * geometricRatio ^ (k - 3) := rfl

example (n : ℕ) : 0 ≤ integerMoment n :=
  FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerMoment.integerMoment_nonneg n

example (p k : ℕ) : 0 ≤ higherMoment p k :=
  FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerMoment.higherMoment_nonneg p k

example : 0 < geometricRatio :=
  FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerMoment.geometricRatio_pos

example : geometricRatio < 1 :=
  FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerMoment.geometricRatio_lt_one

example (k : ℕ) : 0 ≤ exponentMoment k :=
  FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerMoment.exponentMoment_nonneg k

example (n : ℕ) :
    integerMoment n ≤ 1728 * (n : ℝ) ^ (-(5 / 4 : ℝ)) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerMoment.integerMoment_le n

example : Summable integerMoment :=
  FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerMoment.integerMoment_summable

example : Summable exponentMoment :=
  FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerMoment.exponentMoment_summable

example (p k : ℕ) (hk : 3 ≤ k) :
    higherMoment p k = integerMoment p *
      ((k : ℝ) ^ 2 * ((p : ℝ) ^ (-(1 / 2 : ℝ))) ^ (k - 3)) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerMoment.higherMoment_factorization p k hk

example (p k : ℕ) (hp : 2 ≤ p) (hk : 3 ≤ k) :
    higherMoment p k ≤ integerMoment p * exponentMoment k :=
  FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerMoment.higherMoment_le_product p k hp hk

example :
    Summable (fun q : {p : ℕ // 2 ≤ p} × {k : ℕ // 3 ≤ k} =>
      higherMoment q.1.val q.2.val) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerMoment.higherMoment_summable

example :
    Summable (fun q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k} =>
      Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
        ((q.2.val : ℝ) * Real.log (q.1.val : ℝ)) ^ 2) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerMoment.primeHigherMoment_summable

example (p k : ℕ) (hp : 2 ≤ p) (hk : 3 ≤ k) :
    1 ≤ ((k : ℝ) * Real.log (p : ℝ)) ^ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerMoment.logLocation_sq_ge_one p k hp hk

example (p k : ℕ) (hp : 2 ≤ p) (hk : 3 ≤ k) :
    Real.log (p : ℝ) / (p : ℝ) ^ ((k : ℝ) / 2) ≤ higherMoment p k :=
  FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerMoment.higherWeight_le_moment p k hp hk

example :
    Summable (fun q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k} =>
      Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2)) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerMoment.primeHigherWeight_summable

end HigherPowerMomentSourceStatements

namespace HigherPowerSourceSourceStatements

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open FormalResearch.RiemannHypothesis.SourceComparison
open ProperPrimePowers PrimeSquareSource PrimeSector
open CorrelationDeviation HigherPowerMoment HigherPowerSource HigherPowerWeight HigherPowerTsum HigherPowerAsymptotic

example (n : ℕ) : IsHigherPrimePower n ↔ ∃ p k : ℕ, p.Prime ∧ 3 ≤ k ∧ p ^ k = n := Iff.rfl

example (A : ℝ) : higherPrimePowerIndices A =
    (by classical exact (Cutoff.primeIndices A).filter IsHigherPrimePower) := rfl

example (A : ℝ) : higherPrimePowerContribution A =
  ∑ n ∈ higherPrimePowerIndices A,
    ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
      sourceCorrelation explicitSecondDerivative A (Real.log n) := rfl

example (p q k l : ℕ)
    (hp : p.Prime) (hq : q.Prime) (hk : k ≠ 0) (hl : l ≠ 0)
    (h : p ^ k = q ^ l) : p = q ∧ k = l :=
  prime_power_representation_unique p q k l hp hq hk hl h

example (n : ℕ) (hs : IsPrimeSquare n) : ¬IsHigherPrimePower n :=
  primeSquare_not_higher n hs

example (n : ℕ) (hs : IsPrimeSquare n) : ¬n.Prime :=
  primeSquare_not_prime n hs

example (n : ℕ) (hh : IsHigherPrimePower n) : ¬n.Prime :=
  higher_not_prime n hh

example (n : ℕ) :
    (¬n.Prime ∧ IsPrimePow n) ↔ IsPrimeSquare n ∨ IsHigherPrimePower n :=
  nonprime_primePower_iff n

example (n : ℕ) (hn : ¬n.Prime)
    (hs : ¬IsPrimeSquare n) (hh : ¬IsHigherPrimePower n) :
    ArithmeticFunction.vonMangoldt n = 0 :=
  nonprime_weight_zero_of_outside n hn hs hh

example (A : ℝ) :
    Disjoint (primeSquareIndices A) (higherPrimePowerIndices A) :=
  primeSquare_higher_indices_disjoint A

example (A : ℝ) :
    properPrimePowerContribution A = primeSquareContribution A + higherPrimePowerContribution A :=
  properPrimePowerContribution_eq_square_add_higher A

example (A : ℝ) :
    primePowerContribution explicitSecondDerivative A =
      PrimeSector.primeContribution A + primeSquareContribution A + higherPrimePowerContribution A :=
  primePowerContribution_eq_prime_square_higher A

example : IsHigherPrimePower 8 ∧ ¬IsPrimeSquare 8 :=
  eight_higher_not_square

example (A : ℝ) :
    8 ∈ higherPrimePowerIndices A ↔ (8 : ℝ) < Real.exp (2 * A) :=
  eight_mem_higherPrimePowerIndices_iff A

end HigherPowerSourceSourceStatements

namespace HigherPowerWeightSourceStatements

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open FormalResearch.RiemannHypothesis.SourceComparison
open ProperPrimePowers PrimeSquareSource PrimeSector
open CorrelationDeviation HigherPowerMoment HigherPowerSource HigherPowerWeight HigherPowerTsum HigherPowerAsymptotic

example (p k : ℕ) :
    Real.sqrt ((p ^ k : ℕ) : ℝ) = (p : ℝ) ^ ((k : ℝ) / 2) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerWeight.sqrt_nat_power p k

example (p k : ℕ) (hp : p.Prime) (hk : 3 ≤ k) :
    ArithmeticFunction.vonMangoldt (p ^ k) / Real.sqrt ((p ^ k : ℕ) : ℝ) =
      Real.log (p : ℝ) / (p : ℝ) ^ ((k : ℝ) / 2) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerWeight.higher_prime_power_weight p k hp hk

example (A : ℝ) (p k : ℕ) (hp : p.Prime) (hk : 3 ≤ k) :
    ArithmeticFunction.vonMangoldt (p ^ k) / Real.sqrt ((p ^ k : ℕ) : ℝ) *
      sourceCorrelation explicitSecondDerivative A (Real.log ((p ^ k : ℕ) : ℝ)) =
    Real.log (p : ℝ) / (p : ℝ) ^ ((k : ℝ) / 2) *
      sourceCorrelation explicitSecondDerivative A ((k : ℝ) * Real.log (p : ℝ)) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerWeight.higher_prime_power_summand A p k hp hk

end HigherPowerWeightSourceStatements

namespace HigherPowerTsumSourceStatements

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open FormalResearch.RiemannHypothesis.SourceComparison
open ProperPrimePowers PrimeSquareSource PrimeSector
open CorrelationDeviation HigherPowerMoment HigherPowerSource HigherPowerWeight HigherPowerTsum HigherPowerAsymptotic

example : HigherPowerIndex = ({p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k}) := rfl

example (q : HigherPowerIndex) : powerIndex q = q.1.val ^ q.2.val := rfl

example : Function.Injective powerIndex :=
  powerIndex_injective

example (A : ℝ) : higherPairIndices A =
  (higherPrimePowerIndices A).preimage powerIndex powerIndex_injective.injOn := rfl

example (A : ℝ) (q : HigherPowerIndex) : higherSourceTerm A q =
  Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
    sourceCorrelation explicitSecondDerivative A ((q.2.val : ℝ) * Real.log (q.1.val : ℝ)) := rfl

example (q : HigherPowerIndex) : IsHigherPrimePower (powerIndex q) :=
  powerIndex_isHigher q

example (q : HigherPowerIndex) : 2 ≤ powerIndex q :=
  powerIndex_two_le q

example (A : ℝ) (q : HigherPowerIndex) :
    q ∈ higherPairIndices A ↔ (powerIndex q : ℝ) < Real.exp (2 * A) :=
  mem_higherPairIndices_iff A q

example (A : ℝ) :
    (higherPairIndices A).image powerIndex = higherPrimePowerIndices A :=
  higherPairIndices_image A

example (A : ℝ) :
    higherPrimePowerContribution A = ∑ q ∈ higherPairIndices A, higherSourceTerm A q :=
  higherPrimePowerContribution_eq_finite_sum A

example (A : ℝ) (hA : 1 ≤ A) (q : HigherPowerIndex)
    (hq : q ∉ higherPairIndices A) : higherSourceTerm A q = 0 :=
  higherSourceTerm_zero_outside A hA q hq

example (A : ℝ) (hA : 1 ≤ A) :
    (Function.support (higherSourceTerm A)).Finite :=
  higherSourceTerm_finite_support A hA

example (A : ℝ) (hA : 1 ≤ A) :
    Summable (higherSourceTerm A) :=
  higherSourceTerm_summable A hA

example (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun q : HigherPowerIndex ↦ ‖higherSourceTerm A q‖) :=
  higherSourceTerm_norm_summable A hA

example (A : ℝ) (hA : 1 ≤ A) :
    higherPrimePowerContribution A =
      ∑' q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k},
        Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
          sourceCorrelation explicitSecondDerivative A ((q.2.val : ℝ) * Real.log (q.1.val : ℝ)) :=
  higherPrimePowerContribution_eq_tsum A hA

end HigherPowerTsumSourceStatements

namespace HigherPowerAsymptoticSourceStatements

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open FormalResearch.RiemannHypothesis.SourceComparison
open ProperPrimePowers PrimeSquareSource PrimeSector
open CorrelationDeviation HigherPowerMoment HigherPowerSource HigherPowerWeight HigherPowerTsum HigherPowerAsymptotic

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerMoment FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerSource FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerAsymptotic

example : higherPowerConstant =
    ∑' q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k},
      Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) := rfl

example (A : ℝ) : higherPowerSum A =
    ∑' q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k},
      Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
        sourceCorrelation explicitSecondDerivative A ((q.2.val : ℝ) * Real.log (q.1.val : ℝ)) := rfl

example : higherPowerBudget =
    (65 / 6) * ∑' q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k},
      Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
        ((q.2.val : ℝ) * Real.log (q.1.val : ℝ)) ^ 2 := rfl

example : 0 ≤ higherPowerBudget :=
  FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerAsymptotic.higherPowerBudget_nonneg

example (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k} =>
      Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
        sourceCorrelation explicitSecondDerivative A ((q.2.val : ℝ) * Real.log (q.1.val : ℝ))) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerAsymptotic.higherPower_correlation_summable A hA

example (A : ℝ) (hA : 1 ≤ A) :
    higherPowerSum A ≤ higherPowerConstant :=
  FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerAsymptotic.higherPowerSum_le_constant A hA

example (A : ℝ) (p k : ℕ) (hA : 1 ≤ A) :
    |Real.log (p : ℝ) / (p : ℝ) ^ ((k : ℝ) / 2) *
      (sourceCorrelation explicitSecondDerivative A ((k : ℝ) * Real.log (p : ℝ)) - 1)| ≤
        (65 / (6 * A ^ 2)) * higherMoment p k :=
  FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerAsymptotic.higherPower_deviation_term_bound A p k hA

example (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k} =>
      ‖Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
        (sourceCorrelation explicitSecondDerivative A
          ((q.2.val : ℝ) * Real.log (q.1.val : ℝ)) - 1)‖) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerAsymptotic.higherPower_deviation_norm_summable A hA

example (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k} =>
      Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
        (sourceCorrelation explicitSecondDerivative A
          ((q.2.val : ℝ) * Real.log (q.1.val : ℝ)) - 1)) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerAsymptotic.higherPower_deviation_summable A hA

example (A : ℝ) (hA : 1 ≤ A) :
    higherPowerSum A - higherPowerConstant =
      ∑' q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k},
        Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
          (sourceCorrelation explicitSecondDerivative A
            ((q.2.val : ℝ) * Real.log (q.1.val : ℝ)) - 1) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerAsymptotic.higherPowerSum_sub_constant A hA

example (A : ℝ) (hA : 1 ≤ A) :
    |higherPowerSum A - higherPowerConstant| ≤ higherPowerBudget / A ^ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerAsymptotic.higherPowerSum_deviation_bound A hA

example (A : ℝ) (hA : 1 ≤ A) :
    |higherPrimePowerContribution A - higherPowerConstant| ≤ higherPowerBudget / A ^ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerAsymptotic.actualHigherPower_deviation_bound A hA

example (A : ℝ) (hA : 1 ≤ A) :
    higherPrimePowerContribution A ≤ higherPowerConstant :=
  FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerAsymptotic.actualHigherPower_le_constant A hA

example : ∃ C : ℝ, 0 ≤ C ∧
    ∀ A : ℝ, 1 ≤ A →
      |-2 * (∑ n ∈ (by classical exact (Cutoff.primeIndices A).filter IsHigherPrimePower),
          ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
            sourceCorrelation explicitSecondDerivative A (Real.log n)) + 2 * higherPowerConstant| ≤
        C / A ^ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerAsymptotic.actual_higherPower_signed_asymptotic


end HigherPowerAsymptoticSourceStatements

namespace ProperPowerAsymptoticSourceStatements

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
open FormalResearch.RiemannHypothesis.SourceComparison
open PrimeHarmonicRemainder PrimeSquareAsymptotic HigherPowerAsymptotic
open HigherPowerSource ProperPrimePowers FormalResearch.RiemannHypothesis.SourceComparison.ProperPowerAsymptotic

example : properPowerConstant = thetaConstant + higherPowerConstant := rfl

example : properPowerBudget = primeSquareErrorBudget + higherPowerBudget := rfl

example (A : ℝ) : properPowerError A =
    -primeSquareError A + (higherPrimePowerContribution A - higherPowerConstant) := rfl

example (A : ℝ) : sourcePowerRemainder A = -2 * properPowerError A := rfl

example : 0 ≤ properPowerBudget :=
  FormalResearch.RiemannHypothesis.SourceComparison.ProperPowerAsymptotic.properPowerBudget_nonneg

example (A : ℝ) (hA : 1 ≤ A) :
    |properPowerError A| ≤ properPowerBudget / A ^ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.ProperPowerAsymptotic.properPowerError_abs_le A hA

example (A : ℝ) (hA : 1 ≤ A) :
    properPrimePowerContribution A =
      (256 / 315) ^ 2 * A / (64 * sourceNormalization A) + properPowerConstant +
        properPowerError A :=
  FormalResearch.RiemannHypothesis.SourceComparison.ProperPowerAsymptotic.properPrimePowerContribution_eq_main_add_error A hA

example (A : ℝ) (hA : 1 ≤ A) :
    |properPrimePowerContribution A -
      ((256 / 315) ^ 2 * A / (64 * sourceNormalization A) + properPowerConstant)| ≤
        properPowerBudget / A ^ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.ProperPowerAsymptotic.properPrimePowerContribution_asymptotic_bound A hA

example : ∃ C : ℝ, 0 ≤ C ∧
    ∀ A : ℝ, 1 ≤ A →
      |-2 * (∑ n ∈ (Cutoff.primeIndices A).filter (fun n => ¬n.Prime),
          ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
            sourceCorrelation explicitSecondDerivative A (Real.log n)) +
        (256 / 315) ^ 2 * A / (32 * sourceNormalization A) + 2 * properPowerConstant| ≤
          C / A ^ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.ProperPowerAsymptotic.actual_properPower_signed_asymptotic

example (A : ℝ) (hA : 1 ≤ A) :
    |sourcePowerRemainder A| ≤ (2 * properPowerBudget) / A ^ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.ProperPowerAsymptotic.sourcePowerRemainder_abs_le A hA

example (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue explicitSecondDerivative A =
      archimedeanValue explicitSecondDerivative A - 2 * PrimeSector.primeContribution A -
        (256 / 315) ^ 2 * A / (32 * sourceNormalization A) - 2 * properPowerConstant +
          sourcePowerRemainder A :=
  FormalResearch.RiemannHypothesis.SourceComparison.ProperPowerAsymptotic.sourceQuadraticValue_exact_prime_remainder A hA

example (A : ℝ) (hA : 1 ≤ A) :
    |sourceQuadraticValue explicitSecondDerivative A -
      (archimedeanValue explicitSecondDerivative A - 2 * PrimeSector.primeContribution A -
        (256 / 315) ^ 2 * A / (32 * sourceNormalization A) - 2 * properPowerConstant)| ≤
          (2 * properPowerBudget) / A ^ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.ProperPowerAsymptotic.sourceQuadraticValue_prime_remainder_bound A hA


end ProperPowerAsymptoticSourceStatements

namespace HigherPowerSemanticStatements

open FormalResearch.RiemannHypothesis.SourceComparison
open HigherPowerSource HigherPowerTsum PrimeSquareSource HigherPowerAsymptotic

/-- Higher prime powers include fourth powers, despite those being ordinary squares. -/
example (p : ℕ) (hp : p.Prime) :
    IsHigherPrimePower (p ^ 4) ∧ ¬IsPrimeSquare (p ^ 4) := by
  have hh : IsHigherPrimePower (p ^ 4) := ⟨p, 4, hp, by norm_num, rfl⟩
  exact ⟨hh, fun hs ↦ primeSquare_not_higher _ hs hh⟩

/-- Prime two's square belongs only to the prime-square sector. -/
example : IsPrimeSquare 4 ∧ ¬IsHigherPrimePower 4 := by
  have hs : IsPrimeSquare 4 := ⟨2, Nat.prime_two, by norm_num⟩
  exact ⟨hs, primeSquare_not_higher 4 hs⟩

/-- Prime two's cube belongs only to the higher sector. -/
example : IsHigherPrimePower 8 ∧ ¬IsPrimeSquare 8 := eight_higher_not_square

/-- Prime two's fourth power belongs only to the higher sector. -/
example : IsHigherPrimePower 16 ∧ ¬IsPrimeSquare 16 := by
  have hh : IsHigherPrimePower 16 := ⟨2, 4, Nat.prime_two, by norm_num, by norm_num⟩
  exact ⟨hh, fun hs ↦ primeSquare_not_higher 16 hs hh⟩

/-- The prime-two cube cutoff remains strict, with no endpoint half-weight. -/
example (A : ℝ) : 8 ∈ higherPrimePowerIndices A ↔ (8 : ℝ) < Real.exp (2 * A) :=
  eight_mem_higherPrimePowerIndices_iff A

/-- The exact preimage retains each original natural prime-power value, not a sampled index. -/
example (A : ℝ) (q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k}) :
    q ∈ higherPairIndices A ↔ ((q.1.val ^ q.2.val : ℕ) : ℝ) < Real.exp (2 * A) :=
  mem_higherPairIndices_iff A q

/-- The actual higher-sector estimate has only its radius-domain premise. -/
example (A : ℝ) (hA : 1 ≤ A) :
    |higherPrimePowerContribution A - higherPowerConstant| ≤ higherPowerBudget / A ^ 2 :=
  actualHigherPower_deviation_bound A hA

/-- The one-sided upper estimate uses the same arithmetic constant. -/
example (A : ℝ) (hA : 1 ≤ A) : higherPrimePowerContribution A ≤ higherPowerConstant :=
  actualHigherPower_le_constant A hA

end HigherPowerSemanticStatements

namespace FirstPrimeAbelSourceStatements

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
open FormalResearch.RiemannHypothesis.SourceComparison
open PrimeSector PrimeHarmonicRemainder FirstPrimeAbel

example (A u : ℝ) : firstPrimeWeight A u = Real.exp (u / 2) * sourceCorrelation explicitSecondDerivative A u := rfl

example (A : ℝ) : firstPrimeRemainder A = ∫ u in 0..2 * A, thetaRemainder u * deriv (firstPrimeWeight A) u := rfl

example (A : ℝ) : firstPrimeDecayingMain A = ∫ u in 0..2 * A, Real.exp (-u / 2) * sourceCorrelation explicitSecondDerivative A u := rfl

example (A u : ℝ) (hA : 1 ≤ A) :
    HasDerivAt (firstPrimeWeight A)
      (Real.exp (u / 2) * (deriv (sourceCorrelation explicitSecondDerivative A) u +
        sourceCorrelation explicitSecondDerivative A u / 2)) u :=
  FormalResearch.RiemannHypothesis.SourceComparison.FirstPrimeAbel.firstPrimeWeight_hasDerivAt A u hA

example (A : ℝ) (hA : 1 ≤ A) : ContDiff ℝ 1 (firstPrimeWeight A) :=
  FormalResearch.RiemannHypothesis.SourceComparison.FirstPrimeAbel.firstPrimeWeight_contDiff A hA

example (A : ℝ) (hA : 1 ≤ A) : firstPrimeWeight A (2 * A) = 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.FirstPrimeAbel.firstPrimeWeight_zero_endpoint A hA

example (A : ℝ) (hA : 1 ≤ A) : firstPrimeWeight A 0 = 1 :=
  FormalResearch.RiemannHypothesis.SourceComparison.FirstPrimeAbel.firstPrimeWeight_at_zero A hA

example (A : ℝ) (p : ℕ) (hp : p.Prime) :
    Real.log (p : ℝ) / Real.sqrt (p : ℝ) *
      sourceCorrelation explicitSecondDerivative A (Real.log (p : ℝ)) =
    Real.log (p : ℝ) / (p : ℝ) * firstPrimeWeight A (Real.log (p : ℝ)) :=
  FormalResearch.RiemannHypothesis.SourceComparison.FirstPrimeAbel.first_prime_summand A p hp

example (A : ℝ) (hA : 1 ≤ A) :
    primeContribution A =
      ∑ p ∈ (Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊).filter Nat.Prime,
        Real.log (p : ℝ) / (p : ℝ) * firstPrimeWeight A (Real.log (p : ℝ)) :=
  FormalResearch.RiemannHypothesis.SourceComparison.FirstPrimeAbel.primeContribution_eq_closed A hA

example (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (firstPrimeWeight A) volume 0 (2 * A) :=
  FormalResearch.RiemannHypothesis.SourceComparison.FirstPrimeAbel.firstPrimeWeight_intervalIntegrable A hA

example (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun u => thetaRemainder u * deriv (firstPrimeWeight A) u)
      volume 0 (2 * A) :=
  FormalResearch.RiemannHypothesis.SourceComparison.FirstPrimeAbel.firstPrimeRemainder_intervalIntegrable A hA

example (A : ℝ) (hA : 1 ≤ A) :
    primeContribution A = (∫ u in 0..2 * A, firstPrimeWeight A u) + thetaConstant -
      firstPrimeRemainder A :=
  FormalResearch.RiemannHypothesis.SourceComparison.FirstPrimeAbel.primeContribution_centered_abel A hA

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ u in 0..2 * A, firstPrimeWeight A u) = -firstPrimeDecayingMain A :=
  FormalResearch.RiemannHypothesis.SourceComparison.FirstPrimeAbel.firstPrimeWeight_integral_eq_neg A hA

example (A : ℝ) (hA : 1 ≤ A) :
    primeContribution A = thetaConstant - firstPrimeDecayingMain A - firstPrimeRemainder A :=
  FormalResearch.RiemannHypothesis.SourceComparison.FirstPrimeAbel.primeContribution_eq_remainder A hA

example (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun u => Real.exp (-u / 2) *
      sourceCorrelation explicitSecondDerivative A u) volume 0 (2 * A) :=
  FormalResearch.RiemannHypothesis.SourceComparison.FirstPrimeAbel.firstPrimeDecayingMain_intervalIntegrable A hA

example (A : ℝ) (hA : 1 ≤ A) :
    |firstPrimeDecayingMain A| ≤ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.FirstPrimeAbel.firstPrimeDecayingMain_abs_le A hA

example (A u : ℝ) (hA : 1 ≤ A) :
    |deriv (firstPrimeWeight A) u| ≤ Real.exp (u / 2) *
      (1 / 2 + (65 / (3 * A ^ 2)) * |u|) :=
  FormalResearch.RiemannHypothesis.SourceComparison.FirstPrimeAbel.firstPrimeWeight_derivative_abs_le A u hA

example (A : ℝ) (hA : 1 ≤ A) :
    |primeContribution A + firstPrimeRemainder A - thetaConstant| ≤ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.FirstPrimeAbel.primeContribution_add_remainder_abs_le A hA

end FirstPrimeAbelSourceStatements

namespace ProperPowerRemainderLaplaceSourceStatements

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
open FormalResearch.RiemannHypothesis.SourceComparison
open ProperPrimePowers ProperPowerAsymptotic FormalResearch.RiemannHypothesis.SourceComparison.ProperPowerRemainderLaplace

example : Measurable properPrimePowerContribution :=
  FormalResearch.RiemannHypothesis.SourceComparison.ProperPowerRemainderLaplace.properPrimePowerContribution_measurable

example (A : ℝ) (hA : 1 ≤ A) :
    sourcePowerRemainder A = -2 * (properPrimePowerContribution A -
      ((256 / 315) ^ 2 * A / (64 * sourceNormalization A) + properPowerConstant)) :=
  FormalResearch.RiemannHypothesis.SourceComparison.ProperPowerRemainderLaplace.sourcePowerRemainder_eq_finite_source A hA

example :
    AEStronglyMeasurable sourcePowerRemainder (volume.restrict (Ioi 1)) :=
  FormalResearch.RiemannHypothesis.SourceComparison.ProperPowerRemainderLaplace.sourcePowerRemainder_aestronglyMeasurable

example (σ : ℝ) :
    AEStronglyMeasurable (fun A => Real.exp (-σ * A) * A ^ 17 * sourceNormalization A *
      |sourcePowerRemainder A|) (volume.restrict (Ioi 1)) :=
  FormalResearch.RiemannHypothesis.SourceComparison.ProperPowerRemainderLaplace.weighted_sourcePowerRemainder_aestronglyMeasurable σ

example (σ A : ℝ) (hA : 1 ≤ A) :
    Real.exp (-σ * A) * A ^ 17 * sourceNormalization A * |sourcePowerRemainder A| ≤
      (84 * properPowerBudget) * (A ^ 15 * Real.exp (-σ * A)) :=
  FormalResearch.RiemannHypothesis.SourceComparison.ProperPowerRemainderLaplace.weighted_sourcePowerRemainder_bound σ A hA

example (σ : ℝ) (hσ : 0 < σ) :
    IntegrableOn (fun A => Real.exp (-σ * A) * A ^ 17 * sourceNormalization A *
      |sourcePowerRemainder A|) (Ioi 1) :=
  FormalResearch.RiemannHypothesis.SourceComparison.ProperPowerRemainderLaplace.sourcePowerRemainder_all_positive_rates σ hσ


end ProperPowerRemainderLaplaceSourceStatements

namespace FirstPrimeReductionSourceStatements

open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
open FormalResearch.RiemannHypothesis.SourceComparison
open ProperPowerAsymptotic FirstPrimeAbel PrimeHarmonicRemainder

example (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue explicitSecondDerivative A =
      archimedeanValue explicitSecondDerivative A + 2 * firstPrimeDecayingMain A +
        2 * (firstPrimeRemainder A - (256 / 315) ^ 2 * A / (64 * sourceNormalization A)) -
        2 * (thetaConstant + properPowerConstant) + sourcePowerRemainder A :=
  FormalResearch.RiemannHypothesis.SourceComparison.FirstPrimeReduction.sourceQuadraticValue_eq_centered_firstPrime A hA

example (A : ℝ) (hA : 1 ≤ A) :
    2 * (firstPrimeRemainder A - (256 / 315) ^ 2 * A / (64 * sourceNormalization A)) +
      archimedeanMultiplier 0 - 4 - 2 * (thetaConstant + properPowerConstant) -
        (2 * properPowerBudget) / A ^ 2 ≤ sourceQuadraticValue explicitSecondDerivative A :=
  FormalResearch.RiemannHypothesis.SourceComparison.FirstPrimeReduction.source_lower_comparison A hA

example (A : ℝ) (hA : 1 ≤ A) :
    max (-sourceQuadraticValue explicitSecondDerivative A) 0 ≤
      2 * max ((256 / 315) ^ 2 * A / (64 * sourceNormalization A) -
        firstPrimeRemainder A) 0 +
      |archimedeanMultiplier 0 - 4 - 2 * (thetaConstant + properPowerConstant)| +
        (2 * properPowerBudget) / A ^ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.FirstPrimeReduction.source_negativePart_comparison A hA

end FirstPrimeReductionSourceStatements


namespace FixedSpectralIntegratedStatements

open MeasureTheory Set Filter
open scoped Topology NNReal ContDiff ComplexConjugate InnerProductSpace
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourceComparison
noncomputable section
section FixedSourceFilterLiteralChecks
open Realization CorrelationRegularity BridgeNormalization ZeroSideTargets
open FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter

example : fixedBump = sourceBump := rfl

example : fixedBumpFirst = (Icc (-1 : ℝ) 1).indicator (firstInterior 1) := rfl

example : v = normalizedTest explicitSecondDerivative 1 := rfl

example (z : ℂ) : V z = ∫ x : ℝ, (v x : ℂ) * Complex.exp (z * (x : ℂ)) := rfl

example : sourceNormalization 1 = (45056 / 1105 : ℝ) :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.sourceNormalization_one

example : fixedBump = scaledBump 1 :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.fixedBump_eq_scaled

example :
    IsWeakSecondDerivative fixedBump (explicitSecondDerivative 1) :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.fixedBump_weak_second_derivative

example (x : ℝ) : HasDerivAt fixedBump (fixedBumpFirst x) x :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.fixedBump_hasDerivAt x

example (x : ℝ) :
    HasDerivAt fixedBumpFirst (explicitSecondDerivative 1 x) x :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.fixedBumpFirst_hasDerivAt x

example : deriv fixedBump = fixedBumpFirst :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.fixedBump_deriv

example : deriv (deriv fixedBump) = explicitSecondDerivative 1 :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.fixedBump_second_deriv

example (x : ℝ) :
    v x = (deriv (deriv fixedBump) x - fixedBump x / 4) /
      Real.sqrt (45056 / 1105 : ℝ) :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.v_eq_fixed_differential x

example : ContDiff ℝ 1 v :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.v_contDiff

example : HasCompactSupport v :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.v_hasCompactSupport

example (x : ℝ) (hx : 1 ≤ |x|) : v x = 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.v_zero_of_one_le_abs x hx

example : Function.support v ⊆ Icc (-1 : ℝ) 1 :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.v_support_subset

example : Function.Even v :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.v_even

example : Integrable v volume :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.v_integrable

example : MemLp v 2 volume :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.v_memLp_two

example : Integrable (fun x ↦ v x ^ 2) volume :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.v_square_integrable

example : (∫ x, v x ^ 2) = 1 :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.v_square_integral

example : HasCompactSupport (deriv v) :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.v_deriv_hasCompactSupport

example : ∃ C : ℝ, ∀ x : ℝ, ‖deriv v x‖ ≤ C :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.v_deriv_bounded

example (x : ℝ) :
    (v x : ℂ) = (actualTest 1 x : ℂ) / (Real.sqrt (45056 / 1105 : ℝ) : ℂ) :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.v_complex_eq_actual x

example (z : ℂ) :
    Integrable (fun x : ℝ ↦ (v x : ℂ) * Complex.exp (z * (x : ℂ))) volume :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.V_integrable z

example (z : ℂ) :
    V z = bilateralTransform 1 z / (Real.sqrt (45056 / 1105 : ℝ) : ℂ) :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.V_eq_bilateral z

example (z : ℂ) (hz : z ≠ 0) :
    V z = dividedTransform 1 z / (Real.sqrt (45056 / 1105 : ℝ) : ℂ) :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.V_eq_closed_formula z hz

example : V (1 / 2) = 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.V_positive_pole_zero

example : V (-1 / 2) = 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.V_negative_pole_zero

example (z : ℂ) : removedFilter z = 384 * (Complex.exp z * transformPolynomial z -
    Complex.exp (-z) * transformPolynomial (-z)) /
      (z ^ 9 * (Real.sqrt (45056 / 1105 : ℝ) : ℂ)) := rfl

example : positivePoleSlope = 12288 * (1001 * Real.exp (1 / 2) - 2721 * Real.exp (-1 / 2)) /
    Real.sqrt (45056 / 1105 : ℝ) := rfl

example (z : ℂ) (hz : z ≠ 0) :
    V z = (z ^ 2 - 1 / 4) * removedFilter z :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.V_eq_removedFilter z hz

example (z : ℂ) (hz : z ≠ 0) :
    DifferentiableAt ℂ removedFilter z :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.removedFilter_differentiableAt z hz

example : removedFilter (1 / 2) = (positivePoleSlope : ℂ) :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.removedFilter_positive_pole

example : 0 < positivePoleSlope :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.positivePoleSlope_pos

example :
    HasDerivAt V (positivePoleSlope : ℂ) (1 / 2) :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.V_hasDerivAt_positive_pole

example : deriv V (1 / 2) = (positivePoleSlope : ℂ) :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.V_deriv_positive_pole

example : deriv V (1 / 2) ≠ 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.V_deriv_positive_pole_ne_zero

example :
    Filter.Tendsto (fun z : ℂ ↦ V z / (z - 1 / 2))
      (𝓝[≠] (1 / 2)) (𝓝 (positivePoleSlope : ℂ)) :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.V_removed_pole_limit

end FixedSourceFilterLiteralChecks

section FixedSourceKernelLiteralChecks
open Realization CorrelationRegularity CorrelationMoment
open FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceKernel

example (t x : ℝ) :
    logSample t x = Real.exp (-Real.log x / 2) *
      normalizedTest explicitSecondDerivative 1 (t - 1 - Real.log x) := rfl

example (y : ℝ) :
    sampleDerivativeProfile y = -normalizedTest explicitSecondDerivative 1 y / 2 -
      deriv (normalizedTest explicitSecondDerivative 1) y := rfl

example (t x : ℝ) (hx : 0 < x) :
    HasDerivAt (logSample t)
      (Real.exp (-Real.log x / 2) *
        (-normalizedTest explicitSecondDerivative 1 (t - 1 - Real.log x) / 2 -
          deriv (normalizedTest explicitSecondDerivative 1) (t - 1 - Real.log x)) / x) x :=
  logSample_hasDerivAt t x hx

example (t x : ℝ) (hx : 0 < x) :
    logSample t x = 1 / Real.sqrt x *
      normalizedTest explicitSecondDerivative 1 (t - 1 - Real.log x) :=
  logSample_eq t x hx

example (t r : ℝ) :
    Real.exp r * logSample t (Real.exp r) =
      Real.exp (r / 2) * normalizedTest explicitSecondDerivative 1 (t - 1 - r) :=
  logSample_exp t r

example (t : ℝ) : IntegrableOn (logSample t) (Ioi 1) :=
  logSample_integrableOn t

example (t r : ℝ) :
    Real.exp r * |deriv (logSample t) (Real.exp r)| =
      Real.exp (-r / 2) *
        |-normalizedTest explicitSecondDerivative 1 (t - 1 - r) / 2 -
          deriv (normalizedTest explicitSecondDerivative 1) (t - 1 - r)| :=
  logSample_deriv_exp t r

example : derivativeBudget =
    ∫ y : ℝ, Real.exp (y / 2) *
      |-normalizedTest explicitSecondDerivative 1 y / 2 -
        deriv (normalizedTest explicitSecondDerivative 1) y| := rfl

example : Integrable (fun y : ℝ => Real.exp (y / 2) *
    |-normalizedTest explicitSecondDerivative 1 y / 2 -
      deriv (normalizedTest explicitSecondDerivative 1) y|) :=
  derivativeBudget_integrable

example : 0 ≤ derivativeBudget := derivativeBudget_nonneg

example (t : ℝ) : IntegrableOn (deriv (logSample t)) (Ioi 1) :=
  logSample_deriv_integrableOn t

example (t : ℝ) :
    (∫ x in Ioi (1 : ℝ), |deriv (logSample t) x|) ≤
      Real.exp ((1 - t) / 2) * derivativeBudget :=
  logSample_variation_le t

example (t x : ℝ) (h : t ≤ Real.log x) : logSample t x = 0 :=
  logSample_zero_of_time_le_log t x h

example (t x : ℝ) (hx : 0 < x) (h : Real.exp t ≤ x) : logSample t x = 0 :=
  logSample_zero_of_exp_le t x hx h

example (t : ℝ) : fixedKernel t = ∑' n : ℕ,
    Real.exp (-Real.log (n + 1) / 2) *
      normalizedTest explicitSecondDerivative 1 (t - 1 - Real.log (n + 1)) := rfl

example (t : ℝ) (N : ℕ) (hN : Real.exp t ≤ N) :
    fixedKernel t = ∑ n ∈ Finset.range N, logSample t (n + 1) :=
  fixedKernel_eq_sum t N hN

example (t : ℝ) : Summable (fun n : ℕ => logSample t (n + 1)) :=
  fixedKernel_summable t

example (t : ℝ) :
    fixedKernel t = ∑' n : ℕ, 1 / Real.sqrt (n + 1 : ℝ) *
      normalizedTest explicitSecondDerivative 1 (t - 1 - Real.log (n + 1)) :=
  fixedKernel_eq_literal t

example : Measurable fixedKernel := fixedKernel_measurable

example (t : ℝ) (ht : t ≤ 0) : fixedKernel t = 0 :=
  fixedKernel_zero_of_nonpos t ht

example (a b : ℝ) : IntegrableOn fixedKernel (Icc a b) :=
  fixedKernel_integrableOn_Icc a b

end FixedSourceKernelLiteralChecks

section FixedKernelMomentLiteralChecks
open FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelMoment

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceKernel FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelMoment

example (t : ℝ) : Integrable (fun r : ℝ => Real.exp (r / 2) *
    normalizedTest explicitSecondDerivative 1 (t - 1 - r)) :=
  weighted_translated_integrable t

example (t : ℝ) :
    (∫ r : ℝ, Real.exp (r / 2) *
      normalizedTest explicitSecondDerivative 1 (t - 1 - r)) = 0 :=
  weighted_translated_integral_zero t

example (t : ℝ) (ht : 2 ≤ t) :
    (∫ x in Ioi (1 : ℝ), Real.exp (-Real.log x / 2) *
      normalizedTest explicitSecondDerivative 1 (t - 1 - Real.log x)) = 0 :=
  logSample_integral_zero t ht

example (t : ℝ) (ht : 2 ≤ t) :
    IntegrableOn (fun x : ℝ => Real.exp (-Real.log x / 2) *
      normalizedTest explicitSecondDerivative 1 (t - 1 - Real.log x)) (Ioi 1) ∧
    (∫ x in Ioi (1 : ℝ), Real.exp (-Real.log x / 2) *
      normalizedTest explicitSecondDerivative 1 (t - 1 - Real.log x)) = 0 :=
  logSample_integrableOn_and_integral_zero t ht

end FixedKernelMomentLiteralChecks

section SpectralMeasureAtomLiteralChecks
open FormalResearch.RiemannHypothesis.SourceComparison.SpectralMeasureAtom

open FormalResearch.RiemannHypothesis.SourceComparison.SpectralMeasureAtom

example (α : ℝ) (x : ℝ≥0) : resolventMassKernel α x = α / ((x : ℝ) + α) := rfl

example (ν : Measure ℝ≥0) (α : ℝ) :
    resolventMass ν α = ∫ x : ℝ≥0, α / ((x : ℝ) + α) ∂ν := rfl

example (α : ℝ) (hα : 0 < α) (x : ℝ≥0) :
    0 ≤ α / ((x : ℝ) + α) ∧ α / ((x : ℝ) + α) ≤ 1 :=
  resolventMassKernel_nonneg_le_one α hα x

example (α : ℝ) : Measurable (fun x : ℝ≥0 => α / ((x : ℝ) + α)) :=
  resolventMassKernel_measurable α

example (ν : Measure ℝ≥0) [IsFiniteMeasure ν] (α : ℝ) (hα : 0 < α) :
    Integrable (fun x : ℝ≥0 => α / ((x : ℝ) + α)) ν :=
  resolventMassKernel_integrable ν α hα

example (ν : Measure ℝ≥0) [IsFiniteMeasure ν] (α : ℝ) (hα : 0 < α) :
    0 ≤ (∫ x : ℝ≥0, α / ((x : ℝ) + α) ∂ν) ∧
      (∫ x : ℝ≥0, α / ((x : ℝ) + α) ∂ν) ≤ ν.real Set.univ :=
  resolventMass_nonneg_le_total ν α hα

example (x : ℝ≥0) :
    Tendsto (fun α : ℝ => α / ((x : ℝ) + α)) (𝓝[>] 0)
      (𝓝 (({0} : Set ℝ≥0).indicator (fun _ => (1 : ℝ)) x)) :=
  resolventMassKernel_tendsto_zero_right x

example (ν : Measure ℝ≥0) [IsFiniteMeasure ν] :
    Tendsto (fun α : ℝ => ∫ x : ℝ≥0, α / ((x : ℝ) + α) ∂ν)
      (𝓝[>] 0) (𝓝 (ν.real {0})) :=
  resolventMass_tendsto_zero_atom ν

example (ν : Measure ℝ≥0) [IsFiniteMeasure ν] (α : ℝ) (hα : 0 < α) :
    ν.real {0} ≤ ∫ x : ℝ≥0, α / ((x : ℝ) + α) ∂ν :=
  zero_atom_le_resolventMass ν α hα

example (ν : Measure ℝ≥0) [IsFiniteMeasure ν] (α : ℝ) (hα : 0 < α) :
    ν.real (Set.Icc 0 (⟨α, hα.le⟩ : ℝ≥0)) ≤
      2 * ∫ x : ℝ≥0, α / ((x : ℝ) + α) ∂ν :=
  spectral_interval_mass_le_resolventMass ν α hα

end SpectralMeasureAtomLiteralChecks

section BlaschkeFloorLiteralChecks
open FormalResearch.RiemannHypothesis.SourceComparison.BlaschkeFloor

example (z : ℂ) : blaschkeAtOne z = (1 - z) / (1 + starRingEnd ℂ z) := rfl

example (z : ℂ) (hz : 0 < z.re) :
    1 + z ≠ 0 :=
  reference_denominator_ne_zero z hz

example (z : ℂ) :
    Complex.normSq (1 + starRingEnd ℂ z) = Complex.normSq (1 + z) :=
  reference_denominator_normSq z

example (z : ℂ) (hz : 0 < z.re) :
    (1 - ‖blaschkeAtOne z‖ ^ 2) / 2 = 2 * z.re / ‖1 + z‖ ^ 2 :=
  blaschke_deficit z hz

example (z q : ℂ) (hz : 0 < z.re) (hq : ‖q‖ ≤ 1) :
    2 * z.re / ‖1 + z‖ ^ 2 ≤ (1 - ‖blaschkeAtOne z * q‖ ^ 2) / 2 :=
  factor_deficit_lower z q hz hq

example (z : ℂ) (hz : 0 < z.re) :
    0 < 2 * z.re / ‖1 + z‖ ^ 2 :=
  blaschke_floor_pos z hz


end BlaschkeFloorLiteralChecks

section FixedSourceTransferLiteralChecks
open FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter
open FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceTransfer

example (z : ℂ) : transferProduct z =
    Complex.exp (-z) * riemannZeta (1 / 2 + z) * V z := rfl

example : removedPoleValue = Complex.exp (-(1 / 2 : ℂ)) * (positivePoleSlope : ℂ) := rfl

example : repairedTransfer = (by
    classical
    exact Function.update transferProduct (1 / 2) removedPoleValue) := rfl

example :
    Tendsto (fun z : ℂ ↦ 1 / 2 + z) (𝓝[≠] (1 / 2)) (𝓝[≠] 1) :=
  positive_pole_shift_tendsto

example :
    Tendsto (fun z : ℂ ↦ (z - 1 / 2) * riemannZeta (1 / 2 + z))
      (𝓝[≠] (1 / 2)) (𝓝 1) :=
  shifted_zeta_residue

example :
    Tendsto transferProduct (𝓝[≠] (1 / 2)) (𝓝 removedPoleValue) :=
  transferProduct_removed_pole_limit

example : repairedTransfer (1 / 2) = removedPoleValue :=
  repairedTransfer_at_pole

example (z : ℂ) (hz : z ≠ 1 / 2) :
    repairedTransfer z = Complex.exp (-z) * riemannZeta (1 / 2 + z) * V z :=
  repairedTransfer_eq_product z hz

example : ContinuousAt repairedTransfer (1 / 2) :=
  repairedTransfer_continuousAt_pole

example : removedPoleValue ≠ 0 :=
  removedPoleValue_ne_zero

example : repairedTransfer (1 / 2) ≠ 0 :=
  repairedTransfer_pole_ne_zero

example (ρ : ℂ) (hρ : riemannZeta ρ = 0)
    (hρ1 : ρ ≠ 1) : repairedTransfer (ρ - 1 / 2) = 0 :=
  repairedTransfer_zero_of_zeta_zero ρ hρ hρ1

example (ρ : ℂ)
    (hρ : FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ) :
    repairedTransfer (ρ - 1 / 2) = 0 :=
  repairedTransfer_zero_of_nontrivial ρ hρ

example (o : ZeroObject.ZeroOccurrence) :
    repairedTransfer (ZeroObject.shiftedValue o) = 0 :=
  repairedTransfer_zero_occurrence o

example (E : ℂ → ℂ) :
    Complex.exp (-(1 / 2 : ℂ)) * E (1 / 2) * V (1 / 2) = 0 :=
  finite_factor_product_at_pole E

example (E : ℂ → ℂ) (hE : ContinuousAt E (1 / 2)) :
    Tendsto (fun z : ℂ ↦ Complex.exp (-z) * E z * V z)
      (𝓝 (1 / 2)) (𝓝 0) :=
  finite_factor_product_limit E hE

example (E : ℂ → ℂ) :
    ‖repairedTransfer (1 / 2) -
      Complex.exp (-(1 / 2 : ℂ)) * E (1 / 2) * V (1 / 2)‖ =
      ‖removedPoleValue‖ :=
  finite_factor_pole_discrepancy E


end FixedSourceTransferLiteralChecks

section HalfLineExponentialLiteralChecks
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential

example : halfLineMeasure = volume.restrict (Ioi (0 : ℝ)) := rfl

example : H = Lp ℂ 2 halfLineMeasure := rfl

example (z : ℂ) (t : ℝ) : exponentialFunction z t = Complex.exp (-conj z * (t : ℂ)) := rfl

example (z : ℂ) : Continuous (exponentialFunction z) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.exponentialFunction_continuous z

example (z : ℂ) (hz : 0 < z.re) :
    Integrable (exponentialFunction z) halfLineMeasure :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.exponentialFunction_integrable z hz

example (z : ℂ) (t : ℝ) :
    ‖exponentialFunction z t‖ ^ 2 = Real.exp ((-2 * z.re) * t) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.exponentialFunction_norm_sq z t

example (z : ℂ) (hz : 0 < z.re) :
    Integrable (fun t : ℝ ↦ ‖exponentialFunction z t‖ ^ 2) halfLineMeasure :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.exponentialFunction_sq_integrable z hz

example (z : ℂ) (hz : 0 < z.re) :
    MemLp (exponentialFunction z) 2 halfLineMeasure :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.exponentialFunction_memLp z hz

example (z : ℂ) (hz : 0 < z.re) :
    (∫ t : ℝ, ‖exponentialFunction z t‖ ^ 2 ∂halfLineMeasure) = 1 / (2 * z.re) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.exponentialFunction_sq_integral z hz

example (z : ℂ) (hz : 0 < z.re) : exponentialVector z hz =
    (exponentialFunction_memLp z hz).toLp (exponentialFunction z) := rfl

example (z : ℂ) (hz : 0 < z.re) :
    exponentialVector z hz =ᵐ[halfLineMeasure] exponentialFunction z :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.exponentialVector_ae z hz

example (w z : ℂ) (t : ℝ) :
    inner ℂ (exponentialFunction w t) (exponentialFunction z t) =
      Complex.exp (-(w + conj z) * (t : ℂ)) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.pointwise_inner_exponential w z t

example (w z : ℂ) (hw : 0 < w.re) (hz : 0 < z.re) :
    Integrable (fun t : ℝ ↦ inner ℂ (exponentialFunction w t) (exponentialFunction z t))
      halfLineMeasure :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.inner_exponential_integrable w z hw hz

example (w z : ℂ) (hw : 0 < w.re) (hz : 0 < z.re) :
    (∫ t : ℝ, inner ℂ (exponentialFunction w t) (exponentialFunction z t)
      ∂halfLineMeasure) = 1 / (w + conj z) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.inner_exponential_integral w z hw hz

example (w z : ℂ) (hw : 0 < w.re) (hz : 0 < z.re) :
    inner ℂ (exponentialVector w hw) (exponentialVector z hz) = 1 / (w + conj z) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.inner_exponentialVector w z hw hz

example (z : ℂ) (hz : 0 < z.re) :
    ‖exponentialVector z hz‖ ^ 2 = 1 / (2 * z.re) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.exponentialVector_norm_sq z hz

example (z : ℂ) (hz : 0 < z.re) :
    exponentialVector z hz ≠ 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.exponentialVector_ne_zero z hz

example : referenceVector = exponentialVector 1 (by norm_num) := rfl

example :
    referenceVector =ᵐ[halfLineMeasure] (fun t : ℝ ↦ (Real.exp (-t) : ℂ)) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.referenceVector_ae

example : ‖referenceVector‖ ^ 2 = (1 / 2 : ℝ) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.referenceVector_norm_sq

example (z : ℂ) (hz : 0 < z.re) :
    inner ℂ referenceVector (exponentialVector z hz) = 1 / (1 + conj z) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.inner_reference_exponential z hz

example (z : ℂ) (hz : 0 < z.re) :
    inner ℂ (exponentialVector z hz) referenceVector = 1 / (z + 1) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.inner_exponential_reference z hz

example (z : ℂ) (hz : 0 < z.re) :
    ‖inner ℂ referenceVector (exponentialVector z hz)‖ ^ 2 = 1 / ‖1 + z‖ ^ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.norm_sq_inner_reference_exponential z hz

example (z : ℂ) (hz : 0 < z.re) :
    ‖inner ℂ referenceVector (exponentialVector z hz)‖ ^ 2 /
      ‖exponentialVector z hz‖ ^ 2 = 2 * z.re / ‖1 + z‖ ^ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.reference_projection_coefficient z hz

example (z : ℂ) (hz : 0 < z.re) : 1 + z ≠ 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.one_add_ne_zero z hz

example (z : ℂ) (hz : 0 < z.re) :
    0 < ‖inner ℂ referenceVector (exponentialVector z hz)‖ ^ 2 /
      ‖exponentialVector z hz‖ ^ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.reference_projection_coefficient_pos z hz

end HalfLineExponentialLiteralChecks

end

end FixedSpectralIntegratedStatements

namespace FixedKernelAdmissionIntegratedStatements

noncomputable section
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceKernel FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdmission
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization

example (t : ℝ) (ht : 2 ≤ t) :
    |∑' n : ℕ, Real.exp (-Real.log (n + 1 : ℝ) / 2) *
      normalizedTest explicitSecondDerivative 1 (t - 1 - Real.log (n + 1))| ≤
    Real.exp ((1 - t) / 2) *
      (∫ y : ℝ, Real.exp (y / 2) *
        |-normalizedTest explicitSecondDerivative 1 y / 2 -
          deriv (normalizedTest explicitSecondDerivative 1) y|) :=
  fixedKernel_abs_le t ht

example : IntegrableOn (fun t : ℝ => ∑' n : ℕ,
    Real.exp (-Real.log (n + 1 : ℝ) / 2) *
      normalizedTest explicitSecondDerivative 1 (t - 1 - Real.log (n + 1))) (Ioi 2) :=
  fixedKernel_integrableOn_tail

example : IntegrableOn (fun t : ℝ => ∑' n : ℕ,
    Real.exp (-Real.log (n + 1 : ℝ) / 2) *
      normalizedTest explicitSecondDerivative 1 (t - 1 - Real.log (n + 1))) (Ioi 0) :=
  fixedKernel_integrableOn_Ioi

example : Integrable (fun t : ℝ => ∑' n : ℕ,
    Real.exp (-Real.log (n + 1 : ℝ) / 2) *
      normalizedTest explicitSecondDerivative 1 (t - 1 - Real.log (n + 1))) volume :=
  fixedKernel_integrable

example : Integrable (fun t : ℝ => (∑' n : ℕ,
    Real.exp (-Real.log (n + 1 : ℝ) / 2) *
      normalizedTest explicitSecondDerivative 1 (t - 1 - Real.log (n + 1))) ^ 2) volume :=
  fixedKernel_square_integrable

example : MemLp (fun t : ℝ => ∑' n : ℕ,
    Real.exp (-Real.log (n + 1 : ℝ) / 2) *
      normalizedTest explicitSecondDerivative 1 (t - 1 - Real.log (n + 1))) 2 volume :=
  fixedKernel_memLp_two

example : Integrable (fun t : ℝ => ∑' n : ℕ,
    1 / Real.sqrt (n + 1 : ℝ) *
      normalizedTest explicitSecondDerivative 1 (t - 1 - Real.log (n + 1))) volume := by
  simp_rw [← fixedKernel_eq_literal]
  exact fixedKernel_integrable

example : MemLp (fun t : ℝ => ∑' n : ℕ,
    1 / Real.sqrt (n + 1 : ℝ) *
      normalizedTest explicitSecondDerivative 1 (t - 1 - Real.log (n + 1))) 2 volume := by
  simp_rw [← fixedKernel_eq_literal]
  exact fixedKernel_memLp_two

end
end FixedKernelAdmissionIntegratedStatements

namespace FixedKernelLaplaceIntegratedStatements
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter
open FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceKernel
open FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelLaplace
noncomputable section

example (z : ℂ) (x : ℝ) : weightedSource z x =
    (v x : ℂ) * Complex.exp ((-z) * (x : ℂ)) := rfl

example (z : ℂ) (n : ℕ) (t : ℝ) : laplaceSample z n t =
    (logSample t (n + 1) : ℂ) * Complex.exp ((-z) * (t : ℂ)) := rfl

example (z : ℂ) (n : ℕ) : sampleCoefficient z n =
    (Real.exp (-Real.log (n + 1 : ℝ) / 2) : ℂ) *
      Complex.exp ((-z) * (1 + (Real.log (n + 1 : ℝ) : ℂ))) := rfl

example (z : ℂ) : sourceNormIntegral z = ∫ x : ℝ, ‖weightedSource z x‖ := rfl

example (z : ℂ) : V (-z) = V z :=
  V_even z

example (z : ℂ) : Integrable (weightedSource z) :=
  weightedSource_integrable z

example (z : ℂ) (n : ℕ) (t : ℝ) :
    laplaceSample z n t = sampleCoefficient z n *
      weightedSource z (t - (1 + Real.log (n + 1 : ℝ))) :=
  laplaceSample_eq_translate z n t

example (z : ℂ) (n : ℕ) : Integrable (laplaceSample z n) :=
  laplaceSample_integrable z n

example (z : ℂ) (n : ℕ) (t : ℝ) (ht : t ≤ 0) :
    laplaceSample z n t = 0 :=
  laplaceSample_zero_of_nonpos z n t ht

example (z : ℂ) (n : ℕ) :
    (∫ t : ℝ in Ioi 0, laplaceSample z n t) = sampleCoefficient z n * V z :=
  laplaceSample_integral_Ioi z n

example (z : ℂ) : 0 ≤ sourceNormIntegral z :=
  sourceNormIntegral_nonneg z

example (z : ℂ) (n : ℕ) :
    (∫ t : ℝ in Ioi 0, ‖laplaceSample z n t‖) =
      ‖sampleCoefficient z n‖ * sourceNormIntegral z :=
  laplaceSample_norm_integral_Ioi z n

example (z : ℂ) (n : ℕ) :
    ‖sampleCoefficient z n‖ = Real.exp (-z.re) *
      (1 / (n + 1 : ℝ) ^ (z.re + 1 / 2)) :=
  sampleCoefficient_norm z n

example (z : ℂ) (hz : 1 / 2 < z.re) :
    Summable (fun n : ℕ ↦ ∫ t : ℝ in Ioi 0, ‖laplaceSample z n t‖) :=
  laplaceSample_norm_integrals_summable z hz

example (z : ℂ) (n : ℕ) :
    sampleCoefficient z n = Complex.exp (-z) * (1 / (n + 1 : ℂ) ^ (1 / 2 + z)) :=
  sampleCoefficient_eq_cpow z n

example (z : ℂ) (t : ℝ) :
    (∑' n : ℕ, laplaceSample z n t) =
      (fixedKernel t : ℂ) * Complex.exp ((-z) * (t : ℂ)) :=
  laplaceSample_tsum z t

example (z : ℂ) (hz : 0 ≤ z.re) :
    IntegrableOn (fun t : ℝ ↦ (fixedKernel t : ℂ) * Complex.exp ((-z) * (t : ℂ))) (Ioi 0) :=
  fixedKernel_laplace_integrable z hz

example (z : ℂ) (hz : 1 / 2 < z.re) :
    (∫ t : ℝ in Ioi 0, (fixedKernel t : ℂ) * Complex.exp ((-z) * (t : ℂ))) =
      Complex.exp (-z) * riemannZeta (1 / 2 + z) * V z :=
  fixedKernel_laplace_eq_transferProduct z hz

example (z : ℂ) (hz : 1 / 2 < z.re) :
    (∫ t : ℝ in Ioi 0, (fixedKernel t : ℂ) * Complex.exp ((-z) * (t : ℂ))) =
      FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceTransfer.repairedTransfer z :=
  fixedKernel_laplace_eq_repairedTransfer z hz

end
end FixedKernelLaplaceIntegratedStatements


namespace OperatorIntegratedStatements0
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension
noncomputable section
example : FullH = Lp ℂ 2 (volume : Measure ℝ) := rfl
example (f : H) : zeroExtensionFunction f = (Ioi (0 : ℝ)).indicator f := rfl
example (f : H) : MemLp ((Ioi (0 : ℝ)).indicator (fun t => f t)) 2 volume :=
  zeroExtensionFunction_memLp f
example (f : H) : zeroExtensionVector f =
    (zeroExtensionFunction_memLp f).toLp ((Ioi (0 : ℝ)).indicator (fun t => f t)) := rfl
example (f : H) : zeroExtensionVector f =ᵐ[volume] (Ioi (0 : ℝ)).indicator f :=
  zeroExtensionVector_ae f
example (f : H) : ‖zeroExtensionVector f‖ = ‖f‖ := zeroExtensionVector_norm f
example (f g : H) : zeroExtensionVector (f + g) =
    zeroExtensionVector f + zeroExtensionVector g := zeroExtensionVector_add f g
example (c : ℂ) (f : H) : zeroExtensionVector (c • f) = c • zeroExtensionVector f :=
  zeroExtensionVector_smul c f
example : H →ₗᵢ[ℂ] Lp ℂ 2 (volume : Measure ℝ) := zeroExtension
example (f : H) : zeroExtension f = zeroExtensionVector f := rfl
example (f : H) : zeroExtension f =ᵐ[volume] (Ioi (0 : ℝ)).indicator f :=
  zeroExtension_ae f
example (f : H) : ‖zeroExtension f‖ = ‖f‖ := zeroExtension_norm f
example (f : H) : zeroExtension f =ᵐ[volume.restrict (Ioi (0 : ℝ))] f :=
  zeroExtension_ae_halfLine f
example (f : H) : zeroExtension f =ᵐ[volume.restrict (Iic (0 : ℝ))] (fun _ => 0) :=
  zeroExtension_ae_nonpositive f
example : restriction = LpToLpRestrictCLM ℝ ℂ ℂ volume 2 (Ioi 0) := rfl
example (f : FullH) : restriction f =ᵐ[volume.restrict (Ioi (0 : ℝ))] f :=
  restriction_ae f
example (f : FullH) : ‖restriction f‖ ≤ ‖f‖ := restriction_norm_le f
example : ‖restriction‖ ≤ 1 := restriction_opNorm_le
example (f : H) : restriction (zeroExtension f) = f := restriction_zeroExtension f
example : restriction.comp zeroExtension.toContinuousLinearMap =
    ContinuousLinearMap.id ℂ H := restriction_comp_zeroExtension
end
end OperatorIntegratedStatements0

namespace OperatorIntegratedStatements1
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineDuality
noncomputable section
example (f : Lp ℂ 2 (volume : Measure ℝ)) (h : H) :
    Integrable (fun t : ℝ => inner ℂ (f t) (h t)) (volume.restrict (Ioi (0 : ℝ))) :=
  restricted_inner_integrable f h
example (f : Lp ℂ 2 (volume : Measure ℝ)) (h : H) :
    Integrable (fun t : ℝ => inner ℂ (f t) (zeroExtension h t)) volume :=
  extended_inner_integrable f h
example (f : Lp ℂ 2 (volume : Measure ℝ)) (h : H) :
    inner ℂ (restriction f) h = inner ℂ f (zeroExtension h) :=
  inner_restriction_zeroExtension f h
example : zeroExtension.toContinuousLinearMap.adjoint = restriction := zeroExtension_adjoint
example : restriction.adjoint = zeroExtension.toContinuousLinearMap := restriction_adjoint
end
end OperatorIntegratedStatements1

namespace OperatorIntegratedStatements2
namespace RootOperatorLiteral
open MeasureTheory Set Filter
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceKernel FixedKernelAdmission HalfLineExponential
noncomputable section

section Full
open FormalResearch.RiemannHypothesis.SourceComparison.FullLineConvolution
-- 01: the exact ambient Hilbert space.
example : FullH = Lp ℂ 2 (volume : Measure ℝ) := rfl
-- 02: the actual measure-preserving translation, including its sign.
example (a : ℝ) : fullShift a =
    Lp.compMeasurePreservingₗᵢ ℂ (fun x : ℝ => x - a) (measurePreserving_sub_right volume a) := rfl
-- 03
example (a : ℝ) (f : FullH) : fullShift a f =ᵐ[volume] (fun x : ℝ => f (x - a)) :=
  fullShift_ae a f
-- 04
example (f : FullH) : Continuous (fun a : ℝ => fullShift a f) := fullShift_continuous f
-- 05
example (g : ℝ → ℝ) (hg : Integrable g) (f : FullH) :
    Integrable (fun a : ℝ => (g a : ℂ) • fullShift a f) := weighted_shift_integrable g hg f
-- 06: literal Bochner integral body.
example (g : ℝ → ℝ) (f : FullH) : vector g f = ∫ a : ℝ, (g a : ℂ) • fullShift a f := rfl
-- 07
example (g : ℝ → ℝ) (f : FullH) :
    ‖vector g f‖ ≤ (∫ a : ℝ, ‖g a‖) * ‖f‖ := vector_norm_le g f
-- 08
example (g : ℝ → ℝ) (hg : Integrable g) (f h : FullH) :
    vector g (f + h) = vector g f + vector g h := vector_add g hg f h
-- 09
example (g : ℝ → ℝ) (c : ℂ) (f : FullH) : vector g (c • f) = c • vector g f := vector_smul g c f
-- 10: linear-map function body, with its integrability premise retained.
example (g : ℝ → ℝ) (hg : Integrable g) :
    (linearMap g hg : FullH → FullH) = fun f => ∫ a : ℝ, (g a : ℂ) • fullShift a f := rfl
-- 11: the actual continuous-map constructor and bound.
example (g : ℝ → ℝ) (hg : Integrable g) : fullConvolution g hg =
    (linearMap g hg).mkContinuous (∫ a : ℝ, ‖g a‖) (vector_norm_le g) := rfl
-- 12
example (g : ℝ → ℝ) (hg : Integrable g) (f : FullH) :
    fullConvolution g hg f = ∫ a : ℝ, (g a : ℂ) • fullShift a f := fullConvolution_apply g hg f
-- 13
example (g : ℝ → ℝ) (hg : Integrable g) :
    ‖fullConvolution g hg‖ ≤ ∫ a : ℝ, ‖g a‖ := fullConvolution_norm_le g hg
-- 14
example (g h : ℝ → ℝ) (hg : Integrable g) (hh : Integrable h) :
    fullConvolution (g - h) (hg.sub hh) = fullConvolution g hg - fullConvolution h hh :=
  fullConvolution_sub_kernel g h hg hh
-- 15
example (g h : ℝ → ℝ) (hg : Integrable g) (hh : Integrable h) :
    ‖fullConvolution g hg - fullConvolution h hh‖ ≤ ∫ a : ℝ, ‖g a - h a‖ :=
  fullConvolution_norm_sub_le g h hg hh
-- 16: actual source, not an arbitrary substituted kernel.
example : actualFull = fullConvolution fixedKernel fixedKernel_integrable := rfl
-- 17
example (f : FullH) : actualFull f = ∫ a : ℝ, (fixedKernel a : ℂ) • fullShift a f := actualFull_apply f
-- 18
example : ‖actualFull‖ ≤ ∫ a : ℝ, ‖fixedKernel a‖ := actualFull_norm_le
end Full

section Half
open FormalResearch.RiemannHypothesis.SourceComparison.FullLineConvolution FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension FormalResearch.RiemannHypothesis.SourceComparison.HalfLineOperator
-- 19: exact restriction/convolution/extension order.
example (g : ℝ → ℝ) (hg : Integrable g) : halfConvolution g hg =
    restriction.comp ((fullConvolution g hg).comp zeroExtension.toContinuousLinearMap) := rfl
-- 20
example (g : ℝ → ℝ) (hg : Integrable g) (f : H) :
    halfConvolution g hg f = restriction (∫ a : ℝ, (g a : ℂ) • fullShift a (zeroExtension f)) :=
  halfConvolution_apply g hg f
-- 21
example (g : ℝ → ℝ) (hg : Integrable g) (f : H) :
    ‖halfConvolution g hg f‖ ≤ (∫ a : ℝ, ‖g a‖) * ‖f‖ := halfConvolution_apply_norm_le g hg f
-- 22
example (g : ℝ → ℝ) (hg : Integrable g) :
    ‖halfConvolution g hg‖ ≤ ∫ a : ℝ, ‖g a‖ := halfConvolution_norm_le g hg
-- 23
example (g h : ℝ → ℝ) (hg : Integrable g) (hh : Integrable h) :
    halfConvolution (g - h) (hg.sub hh) = halfConvolution g hg - halfConvolution h hh :=
  halfConvolution_sub_kernel g h hg hh
-- 24
example (g h : ℝ → ℝ) (hg : Integrable g) (hh : Integrable h) :
    ‖halfConvolution g hg - halfConvolution h hh‖ ≤ ∫ a : ℝ, ‖g a - h a‖ :=
  halfConvolution_norm_sub_le g h hg hh
-- 25
example : sourceOperator = halfConvolution fixedKernel fixedKernel_integrable := rfl
-- 26
example (f : H) : sourceOperator f =
    restriction (∫ a : ℝ, (fixedKernel a : ℂ) • fullShift a (zeroExtension f)) := sourceOperator_apply f
-- 27
example (f : H) : ‖sourceOperator f‖ ≤ (∫ a : ℝ, ‖fixedKernel a‖) * ‖f‖ :=
  sourceOperator_apply_norm_le f
-- 28
example : ‖sourceOperator‖ ≤ ∫ a : ℝ, ‖fixedKernel a‖ := sourceOperator_norm_le
-- 29: T T*, not T* T or T squared.
example : sourceEnergy = sourceOperator.comp sourceOperator.adjoint := rfl
-- 30
example (f : H) : sourceEnergy f = sourceOperator (sourceOperator.adjoint f) := sourceEnergy_apply f
-- 31
example : sourceEnergy.IsPositive := sourceEnergy_isPositive
-- 32
example : IsSelfAdjoint sourceEnergy := sourceEnergy_isSelfAdjoint
-- 33
example (f : H) : inner ℂ f (sourceEnergy f) =
    inner ℂ (sourceOperator.adjoint f) (sourceOperator.adjoint f) := sourceEnergy_inner f
-- 34
example (f : H) : (inner ℂ f (sourceEnergy f)).re = ‖sourceOperator.adjoint f‖ ^ 2 :=
  sourceEnergy_re_inner f
-- 35
example : sourceEnergy.ker = sourceOperator.adjoint.ker := sourceEnergy_kernel
-- 36
example : ‖sourceEnergy‖ = ‖sourceOperator‖ ^ 2 := sourceEnergy_norm
end Half

section Truncation
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineOperator FormalResearch.RiemannHypothesis.SourceComparison.TimeKernelTruncation
-- 37: actual time truncation, with both interval endpoints retained.
example (N : ℝ) : truncatedKernel N = (Icc (0 : ℝ) N).indicator fixedKernel := rfl
-- 38
example (N : ℝ) : Integrable (truncatedKernel N) := truncatedKernel_integrable N
-- 39
example (N : ℝ) : MemLp (truncatedKernel N) 2 volume := truncatedKernel_memLp N
-- 40
example (N t : ℝ) : fixedKernel t - truncatedKernel N t = (Ioi N).indicator fixedKernel t :=
  kernel_sub_truncated N t
-- 41
example (N : ℝ) : (∫ t : ℝ, ‖fixedKernel t - truncatedKernel N t‖) =
    ∫ t : ℝ in Ioi N, ‖fixedKernel t‖ := norm_kernel_sub_truncated_integral N
-- 42
example (N : ℝ) :
    IntegrableOn (fun t : ℝ => Real.exp ((1 - t) / 2) * derivativeBudget) (Ioi N) :=
  tail_majorant_integrable N
-- 43: exact evaluation of the majorant, not equality to the unknown actual tail.
example (N : ℝ) :
    (∫ t : ℝ in Ioi N, Real.exp ((1 - t) / 2) * derivativeBudget) =
      2 * derivativeBudget * Real.exp ((1 - N) / 2) := tail_majorant_integral N
-- 44
example (N : ℝ) (hN : 2 ≤ N) : (∫ t : ℝ in Ioi N, ‖fixedKernel t‖) ≤
    2 * derivativeBudget * Real.exp ((1 - N) / 2) := kernel_tail_integral_le N hN
-- 45
example (N : ℝ) (hN : 2 ≤ N) : (∫ t : ℝ, ‖fixedKernel t - truncatedKernel N t‖) ≤
    2 * derivativeBudget * Real.exp ((1 - N) / 2) := norm_kernel_sub_truncated_integral_le N hN
-- 46
example : kernelMass = ∫ t : ℝ, ‖fixedKernel t‖ := rfl
-- 47
example : 0 ≤ kernelMass := kernelMass_nonneg
-- 48
example (N : ℝ) : (∫ t : ℝ, ‖truncatedKernel N t‖) ≤ kernelMass := truncated_norm_integral_le N
-- 49
example (N : ℝ) : truncatedOperator N =
    halfConvolution (truncatedKernel N) (truncatedKernel_integrable N) := rfl
-- 50
example (N : ℝ) : ‖truncatedOperator N‖ ≤ kernelMass := truncatedOperator_norm_le N
-- 51
example (N : ℝ) (hN : 2 ≤ N) : ‖sourceOperator - truncatedOperator N‖ ≤
    2 * derivativeBudget * Real.exp ((1 - N) / 2) := operator_norm_sub_le N hN
-- 52
example (N : ℝ) : truncatedEnergy N =
    (truncatedOperator N).comp (truncatedOperator N).adjoint := rfl
-- 53
example (N : ℝ) : (truncatedEnergy N).IsPositive := truncatedEnergy_isPositive N
-- 54
example (S T : H →L[ℂ] H) :
    ‖S.comp S.adjoint - T.comp T.adjoint‖ ≤ (‖S‖ + ‖T‖) * ‖S - T‖ := norm_energy_difference S T
-- 55
example (N : ℝ) (hN : 2 ≤ N) : ‖sourceEnergy - truncatedEnergy N‖ ≤
    4 * kernelMass * derivativeBudget * Real.exp ((1 - N) / 2) := energy_norm_sub_le N hN
-- 56
example (α : ℝ) : diagonalCutoff α = max 2 (1 + 4 * Real.log (1 / α)) := rfl
-- 57
example (α : ℝ) : 2 ≤ diagonalCutoff α := diagonalCutoff_ge_two α
-- 58
example (α : ℝ) (hα : 0 < α) : Real.exp ((1 - diagonalCutoff α) / 2) ≤ α ^ 2 := diagonal_exp_le α hα
-- 59
example (α : ℝ) (hα : 0 < α) :
    ‖sourceOperator - truncatedOperator (diagonalCutoff α)‖ ≤ 2 * derivativeBudget * α ^ 2 :=
  diagonal_operator_error_le α hα
-- 60
example (α : ℝ) (hα : 0 < α) :
    ‖sourceEnergy - truncatedEnergy (diagonalCutoff α)‖ ≤
      4 * kernelMass * derivativeBudget * α ^ 2 := diagonal_energy_error_le α hα
end Truncation
end
end RootOperatorLiteral
end OperatorIntegratedStatements2

namespace OperatorIntegratedStatements3
namespace FixedLaplaceContinuationLiteral
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceKernel FixedSourceFilter FixedSourceTransfer
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourceComparison.FixedLaplaceContinuation
noncomputable section
example : actualLaplace = (fun z : ℂ ↦
    ∫ t : ℝ in Ioi 0, (fixedKernel t : ℂ) * Complex.exp ((-z) * (t : ℂ))) := rfl
example (z : ℂ) (hz : 0 < z.re) : DifferentiableAt ℂ actualLaplace z :=
  actualLaplace_differentiableAt z hz
example (z : ℂ) (hz : z ≠ 0) : DifferentiableAt ℂ V z :=
  V_differentiableAt_of_ne_zero z hz
example (z : ℂ) (hz : z ≠ 0) (hzp : z ≠ 1 / 2) :
    DifferentiableAt ℂ repairedTransfer z :=
  repairedTransfer_differentiableAt_of_ne z hz hzp
example : AnalyticAt ℂ repairedTransfer (1 / 2) := repairedTransfer_analyticAt_pole
example : DifferentiableOn ℂ repairedTransfer {z : ℂ | 0 < z.re} :=
  repairedTransfer_differentiableOn_positive
example : AnalyticOnNhd ℂ actualLaplace {z : ℂ | 0 < z.re} :=
  actualLaplace_analyticOn_positive
example (z : ℂ) (hz : 0 < z.re) : actualLaplace z = repairedTransfer z :=
  actualLaplace_eq_repairedTransfer z hz
example : actualLaplace (1 / 2) = removedPoleValue := actualLaplace_at_pole
example : actualLaplace (1 / 2) ≠ 0 := actualLaplace_pole_ne_zero
example (z : ℂ) (hz : 0 < z.re) :
    (∫ t : ℝ in Ioi 0, (fixedKernel t : ℂ) * Complex.exp ((-z) * (t : ℂ))) =
      repairedTransfer z := actual_laplace_integral_eq_repairedTransfer z hz
example :
    (∫ t : ℝ in Ioi 0, (fixedKernel t : ℂ) * Complex.exp ((-(1 / 2 : ℂ)) * (t : ℂ))) =
      Complex.exp (-(1 / 2 : ℂ)) * (positivePoleSlope : ℂ) := actual_laplace_integral_at_pole
example (ρ : ℂ) (hρ : FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ)
    (hρre : 1 / 2 < ρ.re) :
    (∫ t : ℝ in Ioi 0, (fixedKernel t : ℂ) *
      Complex.exp ((-(ρ - 1 / 2)) * (t : ℂ))) = 0 :=
  actual_laplace_integral_zero_of_nontrivial ρ hρ hρre
example (o : ZeroObject.ZeroOccurrence) (ho : 0 < (ZeroObject.shiftedValue o).re) :
    (∫ t : ℝ in Ioi 0, (fixedKernel t : ℂ) *
      Complex.exp ((-ZeroObject.shiftedValue o) * (t : ℂ))) = 0 :=
  actual_laplace_integral_zero_occurrence o ho
end
end FixedLaplaceContinuationLiteral
end OperatorIntegratedStatements3

namespace OperatorIntegratedStatements4
namespace FixedKernelAdjointExponentialLiteral
open MeasureTheory Set Filter
open scoped ComplexConjugate
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential FixedSourceKernel FixedKernelAdmission
open FormalResearch.RiemannHypothesis.SourceComparison.FullLineConvolution FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension FormalResearch.RiemannHypothesis.SourceComparison.HalfLineDuality
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineOperator FormalResearch.RiemannHypothesis.SourceComparison.FixedLaplaceContinuation
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdjointExponential
noncomputable section
example (a : ℝ) (f : FormalResearch.RiemannHypothesis.SourceComparison.FullLineConvolution.FullH) :
    fullShift (-a) (fullShift a f) = f := fullShift_neg_cancel a f
example (z : ℂ) (hz : 0 < z.re) :
    zeroExtension (exponentialVector z hz) =ᵐ[volume]
      (Ioi (0 : ℝ)).indicator (exponentialFunction z) := zeroExtension_exponential_ae z hz
example (a : ℝ) (ha : 0 ≤ a) (z : ℂ) (hz : 0 < z.re) :
    restriction (fullShift (-a) (zeroExtension (exponentialVector z hz))) =
      Complex.exp (-conj z * (a : ℂ)) • exponentialVector z hz :=
  restriction_backwardShift_exponential a ha z hz
example (a : ℝ) (ha : 0 ≤ a) (z : ℂ) (hz : 0 < z.re) (f : H) :
    inner ℂ (zeroExtension (exponentialVector z hz)) (fullShift a (zeroExtension f)) =
      Complex.exp (-z * (a : ℂ)) * inner ℂ (exponentialVector z hz) f :=
  exponential_inner_shift a ha z hz f
example (z : ℂ) (hz : 0 < z.re) (f : H) :
    inner ℂ (exponentialVector z hz) (sourceOperator f) =
      actualLaplace z * inner ℂ (exponentialVector z hz) f := exponential_inner_sourceOperator z hz f
example (z : ℂ) (hz : 0 < z.re) :
    sourceOperator.adjoint (exponentialVector z hz) =
      conj (actualLaplace z) • exponentialVector z hz := sourceOperator_adjoint_exponential z hz
example (ρ : ℂ) (hρ : FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ)
    (hρre : 1 / 2 < ρ.re) :
    sourceOperator.adjoint (exponentialVector (ρ - 1 / 2) (by
      simp only [Complex.sub_re, Complex.div_ofNat_re, Complex.one_re]; linarith)) = 0 :=
  sourceOperator_adjoint_exponential_zero_of_nontrivial ρ hρ hρre
example (o : ZeroObject.ZeroOccurrence) (ho : 0 < (ZeroObject.shiftedValue o).re) :
    sourceOperator.adjoint (exponentialVector (ZeroObject.shiftedValue o) ho) = 0 :=
  sourceOperator_adjoint_exponential_zero_occurrence o ho
example (ρ : ℂ) (hρ : FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ)
    (hρre : 1 / 2 < ρ.re) :
    ∃ u : H, u ≠ 0 ∧ sourceOperator.adjoint u = 0 ∧
      0 < ‖inner ℂ referenceVector u‖ ^ 2 / ‖u‖ ^ 2 := nontrivial_reference_visible_kernel ρ hρ hρre
example (o : ZeroObject.ZeroOccurrence) (ho : 0 < (ZeroObject.shiftedValue o).re) :
    ∃ u : H, u ≠ 0 ∧ sourceOperator.adjoint u = 0 ∧
      ‖inner ℂ referenceVector u‖ ^ 2 / ‖u‖ ^ 2 =
        2 * (ZeroObject.shiftedValue o).re / ‖1 + ZeroObject.shiftedValue o‖ ^ 2 ∧
      0 < ‖inner ℂ referenceVector u‖ ^ 2 / ‖u‖ ^ 2 := occurrence_reference_visible_kernel o ho
end
end FixedKernelAdjointExponentialLiteral
end OperatorIntegratedStatements4

namespace OperatorIntegratedStatements5
open MeasureTheory Set
open scoped ENNReal
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceKernel FixedKernelAdmission HalfLineExponential
open FormalResearch.RiemannHypothesis.SourceComparison.FullLineConvolution FormalResearch.RiemannHypothesis.SourceComparison.HalfLineOperator
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension hiding FullH
open FormalResearch.RiemannHypothesis.SourceComparison.SourceConvolutionAE
noncomputable section
example (u : ℝ → ℝ) (v : ℝ → ℂ) (hu : MemLp u 2 volume) (hv : MemLp v 2 volume) :
    Integrable (fun a => u a • v a) := smul_integrable_of_memLp_two u v hu hv
example (u : ℝ → ℝ) (v : ℝ → ℂ) (hu : MemLp u 2 volume) (hv : MemLp v 2 volume) :
    (∫ a, ‖u a • v a‖) ≤ (eLpNorm u 2 volume).toReal * (eLpNorm v 2 volume).toReal :=
  integral_norm_smul_le u v hu hv
example (f : FullH) (t : ℝ) : convolutionFunction f t =
    ∫ a : ℝ, fixedKernel a • f (t-a) := rfl
example (f : FullH) (t : ℝ) : Integrable (fun a : ℝ => fixedKernel a • f (t-a)) :=
  convolution_integrand_integrable f t
example (f : FullH) (t : ℝ) : (∫ a : ℝ, ‖fixedKernel a • f (t-a)‖) ≤
    (eLpNorm fixedKernel 2 volume).toReal * ‖f‖ := convolution_norm_integral_bound f t
example (f : FullH) :
    StronglyMeasurable (fun p : ℝ × ℝ => fixedKernel p.1 • f (p.2-p.1)) :=
  convolution_integrand_stronglyMeasurable f
example (f : FullH) (B : Set ℝ) (hB : volume B < ∞) :
    Integrable (fun p : ℝ × ℝ => fixedKernel p.1 • f (p.2-p.1))
      (volume.prod (volume.restrict B)) := convolution_product_integrable f B hB
example (f : FullH) (B : Set ℝ) (hB : volume B < ∞) :
    IntegrableOn (convolutionFunction f) B := convolutionFunction_integrableOn f B hB
example (f : FullH) (B : Set ℝ) (hB : MeasurableSet B) (hBfin : volume B < ∞) :
    (∫ t in B, actualFull f t) = ∫ a : ℝ, ∫ t in B, fixedKernel a • f (t-a) :=
  vector_setIntegral f B hB hBfin
example (f : FullH) : actualFull f =ᵐ[volume]
    (fun t => ∫ a : ℝ, fixedKernel a • f (t-a)) := actualFull_ae_convolution f
example (f : FullH) (t : ℝ) : convolutionFunction f t =
    ∫ a : ℝ, fixedKernel (t-a) • f a := convolutionFunction_commuted f t
example (f : H) (t a : ℝ) :
    fixedKernel (t-a) • (Ioi (0 : ℝ)).indicator f a =
      (Ioc 0 t).indicator (fun s => fixedKernel (t-s) • f s) a :=
  causal_integrand_identity f t a
example (f : H) (t : ℝ) : convolutionFunction (zeroExtension f) t =
    ∫ a in Ioc 0 t, fixedKernel (t-a) • f a :=
  convolutionFunction_zeroExtension_eq_setIntegral f t
example (f : H) (t : ℝ) :
    IntegrableOn (fun a : ℝ => fixedKernel (t-a) • f a) (Ioc 0 t) :=
  causal_setIntegral_integrable f t
example (f : H) (t : ℝ) (ht : 0 ≤ t) :
    IntervalIntegrable (fun a : ℝ => (fixedKernel (t-a) : ℂ) * f a) volume 0 t :=
  causal_intervalIntegrable f t ht
example (f : H) (t : ℝ) (ht : t ≤ 0) : convolutionFunction (zeroExtension f) t = 0 :=
  convolutionFunction_zeroExtension_nonpositive f t ht
example (f : H) : sourceOperator f =ᵐ[volume.restrict (Ioi (0 : ℝ))]
    (fun t => ∫ a in Ioc 0 t, fixedKernel (t-a) • f a) :=
  sourceOperator_ae_causal_setIntegral f
example (f : H) : sourceOperator f =ᵐ[volume.restrict (Ioi (0 : ℝ))]
    (fun t => ∫ a in (0 : ℝ)..t, (fixedKernel (t-a) : ℂ) * f a) :=
  sourceOperator_ae_causal_integral f
example (f : H) : actualFull (zeroExtension f) =ᵐ[volume.restrict (Iic (0 : ℝ))]
    (fun _ => 0) := full_sourceOperator_causal f
example (f : H) : zeroExtension (sourceOperator f) = actualFull (zeroExtension f) :=
  zeroExtension_sourceOperator f
end
end OperatorIntegratedStatements5

namespace OperatorIntegratedStatements6
namespace PositiveResolventLiteral
open FormalResearch.RiemannHypothesis.SourceComparison.PositiveResolvent

open ContinuousLinearMap

open scoped InnerProduct ComplexConjugate ComplexOrder NNReal

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E] [CompleteSpace E]

example (S : E →L[ℂ] E) (α : ℝ) : positiveShift S α = S + (α : ℂ) • (1 : E →L[ℂ] E) := rfl

example (S : E →L[ℂ] E) (α : ℝ) : positiveResolvent S α = Ring.inverse (S + (α : ℂ) • (1 : E →L[ℂ] E)) := rfl

example (S : E →L[ℂ] E) (α : ℝ) (r : E) : regularizedMass S α r = α * (inner ℂ r (Ring.inverse (S + (α : ℂ) • (1 : E →L[ℂ] E)) r)).re := rfl

example (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : (positiveShift S α).IsPositive := by
  apply positiveShift_isPositive <;> assumption

example (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (x : E) :
    α * ‖x‖ ^ 2 ≤ (inner ℂ (positiveShift S α x) x).re := by
  exact positiveShift_coercive S hS α x

example (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : IsUnit (positiveShift S α) := by
  apply positiveShift_isUnit <;> assumption

example (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : positiveShift S α * positiveResolvent S α = 1 := by
  apply positiveShift_mul_resolvent <;> assumption

example (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : positiveResolvent S α * positiveShift S α = 1 := by
  apply resolvent_mul_positiveShift <;> assumption

example (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) (x : E) :
    positiveShift S α (positiveResolvent S α x) = x := by
  apply positiveShift_resolvent_apply <;> assumption

example (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : ‖positiveResolvent S α‖ ≤ 1 / α := by
  apply positiveResolvent_norm_le <;> assumption

example (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : (positiveResolvent S α).IsPositive := by
  apply positiveResolvent_isPositive <;> assumption

example (S T : E →L[ℂ] E)
    (hS : S.IsPositive) (hT : T.IsPositive) (α : ℝ) (hα : 0 < α) :
    positiveResolvent S α - positiveResolvent T α =
      positiveResolvent S α * (T - S) * positiveResolvent T α := by
  apply positiveResolvent_sub <;> assumption

example (S T : E →L[ℂ] E)
    (hS : S.IsPositive) (hT : T.IsPositive) (α : ℝ) (hα : 0 < α) :
    ‖positiveResolvent S α - positiveResolvent T α‖ ≤ ‖S - T‖ / α ^ 2 := by
  apply positiveResolvent_sub_norm_le <;> assumption

example (S T : E →L[ℂ] E)
    (hS : S.IsPositive) (hT : T.IsPositive) (α : ℝ) (hα : 0 < α) (r : E) :
    |regularizedMass S α r - regularizedMass T α r| ≤ ‖r‖ ^ 2 * ‖S - T‖ / α := by
  apply regularizedMass_sub_abs_le <;> assumption

example
    (S T : FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.H →L[ℂ]
      FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.H)
    (hS : S.IsPositive) (hT : T.IsPositive) (α : ℝ) (hα : 0 < α) :
    |regularizedMass S α
        FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.referenceVector -
      regularizedMass T α
        FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.referenceVector| ≤
      ‖S - T‖ / (2 * α) := by
  apply reference_regularizedMass_sub_abs_le <;> assumption

example (S T : E →L[ℂ] E) (hS : S.IsPositive) (hT : T.IsPositive) (α : ℝ) (hα : 0 < α) (r : E) :
    |α * (inner ℂ r (Ring.inverse (S + (α : ℂ) • (1 : E →L[ℂ] E)) r)).re -
      α * (inner ℂ r (Ring.inverse (T + (α : ℂ) • (1 : E →L[ℂ] E)) r)).re| ≤
      ‖r‖ ^ 2 * ‖S - T‖ / α := by
  exact regularizedMass_sub_abs_le S T hS hT α hα r

end PositiveResolventLiteral
end OperatorIntegratedStatements6

namespace OperatorIntegratedStatements7
open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential FixedSourceKernel HalfLineOperator TimeKernelTruncation PositiveResolvent
open SourceResolventTruncation
noncomputable section
example (α : ℝ) : sourceMass α = α *
    (inner ℂ referenceVector
      (Ring.inverse (sourceEnergy + (α : ℂ) • (1 : H →L[ℂ] H)) referenceVector)).re := rfl
example (N α : ℝ) : truncatedMass N α = α *
    (inner ℂ referenceVector
      (Ring.inverse (truncatedEnergy N + (α : ℂ) • (1 : H →L[ℂ] H)) referenceVector)).re := rfl
example (α : ℝ) (hα : 0 < α) :
    IsUnit (sourceEnergy + (α : ℂ) • (1 : H →L[ℂ] H)) := sourceShift_isUnit α hα
example (N α : ℝ) (hα : 0 < α) :
    IsUnit (truncatedEnergy N + (α : ℂ) • (1 : H →L[ℂ] H)) := truncatedShift_isUnit N α hα
example (α : ℝ) (hα : 0 < α) : 0 ≤ sourceMass α := sourceMass_nonneg α hα
example (N α : ℝ) (hα : 0 < α) : 0 ≤ truncatedMass N α := truncatedMass_nonneg N α hα
example (α : ℝ) (hα : 0 < α) : sourceMass α ≤ (1 / 2 : ℝ) := sourceMass_le_half α hα
example (N α : ℝ) (hα : 0 < α) : truncatedMass N α ≤ (1 / 2 : ℝ) :=
  truncatedMass_le_half N α hα
example (N : ℝ) (hN : 2 ≤ N) (α : ℝ) (hα : 0 < α) :
    |sourceMass α - truncatedMass N α| ≤
      2 * kernelMass * derivativeBudget * Real.exp ((1-N)/2) / α :=
  mass_sub_abs_le N hN α hα
example (α : ℝ) (hα : 0 < α) :
    |sourceMass α - truncatedMass (max 2 (1 + 4 * Real.log (1/α))) α| ≤
      2 * kernelMass * derivativeBudget * α := diagonal_mass_sub_abs_le α hα
example : Tendsto (fun α : ℝ =>
    |sourceMass α - truncatedMass (max 2 (1 + 4 * Real.log (1/α))) α|)
      (𝓝[>] (0 : ℝ)) (𝓝 0) := diagonal_mass_sub_abs_tendsto_zero
example : Tendsto (fun α : ℝ =>
    sourceMass α - truncatedMass (max 2 (1 + 4 * Real.log (1/α))) α)
      (𝓝[>] (0 : ℝ)) (𝓝 0) := diagonal_mass_sub_tendsto_zero
end
end OperatorIntegratedStatements7

namespace OperatorIntegratedStatements8
namespace PositiveResolventKernelLiteral
open FormalResearch.RiemannHypothesis.SourceComparison.PositiveResolvent FormalResearch.RiemannHypothesis.SourceComparison.PositiveResolventKernel

open ContinuousLinearMap

open scoped InnerProduct ComplexConjugate ComplexOrder NNReal

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E] [CompleteSpace E]

example (B : E →L[ℂ] E) (hB : B.IsPositive)
    (r e : E) (he : e ≠ 0) (hBe : B e = e) :
    ‖inner ℂ r e‖ ^ 2 / ‖e‖ ^ 2 ≤ (inner ℂ r (B r)).re := positive_fixed_direction_le B hB r e he hBe

example (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) (e : E) (he : S e = 0) :
    ((α : ℂ) • positiveResolvent S α) e = e := regularized_resolvent_kernel_apply S hS α hα e he

example (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) (r e : E) (he : e ≠ 0) (hSe : S e = 0) :
    ‖inner ℂ r e‖ ^ 2 / ‖e‖ ^ 2 ≤ regularizedMass S α r := kernel_witness_regularizedMass_le S hS α hα r e he hSe

example (S : E →L[ℂ] E) (hS : S.IsPositive) (α : ℝ) (hα : 0 < α) (r e : E) (he : e ≠ 0) (hSe : S e = 0) :
    ‖inner ℂ r e‖ ^ 2 / ‖e‖ ^ 2 ≤
      α * (inner ℂ r (Ring.inverse (S + (α : ℂ) • (1 : E →L[ℂ] E)) r)).re :=
  kernel_witness_regularizedMass_le S hS α hα r e he hSe

end PositiveResolventKernelLiteral
end OperatorIntegratedStatements8

namespace OperatorIntegratedStatements9
namespace FixedSourceResolventFloorLiteral
open FormalResearch.RiemannHypothesis.SourceComparison FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

open HalfLineExponential HalfLineOperator FixedKernelAdjointExponential

open PositiveResolventKernel SourceResolventTruncation

example (u : H) (hu : u ≠ 0)
    (hTu : sourceOperator.adjoint u = 0) (α : ℝ) (hα : 0 < α) :
    ‖inner ℂ referenceVector u‖ ^ 2 / ‖u‖ ^ 2 ≤ sourceMass α := sourceMass_kernel_overlap_le u hu hTu α hα

example (o : ZeroObject.ZeroOccurrence)
    (ho : 0 < (ZeroObject.shiftedValue o).re) (α : ℝ) (hα : 0 < α) :
    2 * (ZeroObject.shiftedValue o).re / ‖1 + ZeroObject.shiftedValue o‖ ^ 2 ≤ sourceMass α := occurrence_sourceMass_floor o ho α hα

example (ρ : ℂ)
    (hρ : FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ) (hρre : 1 / 2 < ρ.re) :
    ∃ c : ℝ, 0 < c ∧ ∀ α : ℝ, 0 < α → c ≤ sourceMass α := nontrivial_sourceMass_uniform_positive_floor ρ hρ hρre

example (o : ZeroObject.ZeroOccurrence) (ho : 0 < (ZeroObject.shiftedValue o).re) (α : ℝ) (hα : 0 < α) :
    2 * (ZeroObject.shiftedValue o).re / ‖1 + ZeroObject.shiftedValue o‖ ^ 2 ≤
      α * (inner ℂ referenceVector
        (Ring.inverse (sourceOperator.comp sourceOperator.adjoint +
          (α : ℂ) • (1 : H →L[ℂ] H)) referenceVector)).re :=
  occurrence_sourceMass_floor o ho α hα

end FixedSourceResolventFloorLiteral
end OperatorIntegratedStatements9
