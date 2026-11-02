/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusFiniteTorsionResolutionReturn
import Mathlib

/-!
# Source-certified finite-phase decoder error budget for the original Möbius Gram

The earlier finite torsion resolution module retained the exact signed
original-minus-decoded Gram. This module supplies a quantitative UPPER
CERTIFICATE using actual independently checked per-index coefficient error
radii. The arithmetic original is never replaced, and both ordered
off-diagonal pair orientations and the error-error interaction remain.

For an observed coefficient a_n and error e_n = mu(n)-a_n, the literal
source-minus-observed coefficient product is
    e_m*a_n + a_m*e_n + e_m*e_n.
If |e_n| <= eta_n on the ORIGINAL endpoint inventory, the complete
signed defect is bounded by the finite observed-only nonnegative sum
    sum_{m != n} (eta_m*|a_n| + |a_m|*eta_n + eta_m*eta_n) * |K_T(m,n)|.

This supports independent finite-phase or elliptic-fiber decoder
certificates and can be combined with the source's old endpoint/curve upper
certificate by MINIMUM. Its loss must actually be certified: type
cardinality, torsion, a Reed-Solomon code, and source reindexing alone do
not provide small eta_n. A collision between distinct source coefficients
forces a nonzero uniform reconstruction error.

The canonical RH implication is conditional on TWO named all-positive-rate
arithmetic estimates on the SAME affine-frequent set: the observed signed
cross and the complete nonnegative decoder envelope. Nothing here proves
either. Lean/kernel/axiom acceptance remains NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.FinitePhaseDecoderBudget

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.AutomircronCanonicalPrimeTyping
open GRWTSK.NumberTheory.Moebius.FiniteTorsionResolutionReturn
open GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

universe u v

/-! ## An actual checked coefficient-error contract -/

/-- The source certificate requires EVERY original integer in the chosen
endpoint inventory, including squareful zeros and the index one. -/
def ErrorCertificate {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (T : ℝ) : Prop :=
  ∀ n ∈ endpointIndex T,
    |coefficientError phase decode n| ≤ eta n

/-- A bound entirely in terms of observed coefficients, certified error
radii and the ORIGINAL response Gram. Both ordered pair directions survive.
There is no independence assumption, and no term is removed by symmetry. -/
def errorEnvelope {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n then
      (eta m * |observedCoeff phase decode n| +
        |observedCoeff phase decode m| * eta n +
          eta m * eta n) * |pickupResponseGram T m n|
    else 0

/-- Signed source minus received product is exactly two mixed terms
plus the error-error term. The latter must not be silently discarded. -/
theorem kernel_error_three_terms {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (T : ℝ) (m n : ℕ) :
    sourceKernel T m n - observedKernel phase decode T m n =
      (coefficientError phase decode m *
          observedCoeff phase decode n +
        observedCoeff phase decode m *
          coefficientError phase decode n +
        coefficientError phase decode m *
          coefficientError phase decode n) *
        pickupResponseGram T m n := by
  simp only [sourceKernel, observedKernel, coefficientError]
  ring

/-- One pair's exact observed-and-error-only bound; signs and the
original physical Gram are retained until this triangle inequality. -/
theorem kernel_error_abs_le {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (T : ℝ) (m n : ℕ)
    (hm : |coefficientError phase decode m| ≤ eta m)
    (hn : |coefficientError phase decode n| ≤ eta n) :
    |sourceKernel T m n - observedKernel phase decode T m n| ≤
      (eta m * |observedCoeff phase decode n| +
        |observedCoeff phase decode m| * eta n +
          eta m * eta n) * |pickupResponseGram T m n| := by
  let a : ℝ := observedCoeff phase decode m
  let b : ℝ := observedCoeff phase decode n
  let e : ℝ := coefficientError phase decode m
  let f : ℝ := coefficientError phase decode n
  have he : |e| ≤ eta m := hm
  have hf : |f| ≤ eta n := hn
  have he0 : 0 ≤ eta m := (abs_nonneg e).trans he
  have h1 : |e| * |b| ≤ eta m * |b| :=
    mul_le_mul_of_nonneg_right he (abs_nonneg b)
  have h2 : |a| * |f| ≤ |a| * eta n :=
    mul_le_mul_of_nonneg_left hf (abs_nonneg a)
  have h3 : |e| * |f| ≤ eta m * eta n := by
    calc
      _ ≤ eta m * |f| :=
        mul_le_mul_of_nonneg_right he (abs_nonneg f)
      _ ≤ eta m * eta n :=
        mul_le_mul_of_nonneg_left hf he0
  have htri :
      |e * b + a * f + e * f| ≤
        |e| * |b| + |a| * |f| + |e| * |f| := by
    calc
      _ ≤ |e * b + a * f| + |e * f| := abs_add_le _ _
      _ ≤ (|e * b| + |a * f|) + |e * f| :=
        add_le_add_right (abs_add_le _ _) _
      _ = _ := by simp only [abs_mul]
  have hscalar :
      |e * b + a * f + e * f| ≤
        eta m * |b| + |a| * eta n + eta m * eta n := by
    linarith
  rw [kernel_error_three_terms, abs_mul]
  change
    |e * b + a * f + e * f| * |pickupResponseGram T m n| ≤
      (eta m * |b| + |a| * eta n + eta m * eta n) *
        |pickupResponseGram T m n|
  exact mul_le_mul_of_nonneg_right hscalar
    (abs_nonneg (pickupResponseGram T m n))

/-- The envelope is nonnegative when the actual per-index error
certificate is satisfied, even if signed decoded coefficients occur. -/
theorem errorEnvelope_nonneg {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (T : ℝ)
    (hcert : ErrorCertificate phase decode eta T) :
    0 ≤ errorEnvelope phase decode eta T := by
  classical
  unfold errorEnvelope
  apply Finset.sum_nonneg
  intro m hm
  apply Finset.sum_nonneg
  intro n hn
  by_cases hmn : m ≠ n
  · simp only [if_pos hmn]
    have hem : 0 ≤ eta m :=
      (abs_nonneg _).trans (hcert m hm)
    have hen : 0 ≤ eta n :=
      (abs_nonneg _).trans (hcert n hn)
    positivity
  · simp [hmn]

/-- Unconditional finite arithmetic inequality under an ACTUAL
source-indexed decoder radius certificate. Neither the Gram signs nor the
mixed error orientations are silently deleted. -/
theorem signedLoss_abs_le_errorEnvelope {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (T : ℝ)
    (hcert : ErrorCertificate phase decode eta T) :
    |signedLoss phase decode T| ≤ errorEnvelope phase decode eta T := by
  classical
  unfold signedLoss errorEnvelope
  calc
    |∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
      if m ≠ n then
        sourceKernel T m n - observedKernel phase decode T m n
      else 0| ≤
        ∑ m ∈ endpointIndex T,
          |∑ n ∈ endpointIndex T,
            if m ≠ n then
              sourceKernel T m n - observedKernel phase decode T m n
            else 0| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
          |if m ≠ n then
            sourceKernel T m n - observedKernel phase decode T m n
          else 0| := by
      apply Finset.sum_le_sum
      intro m hm
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
          if m ≠ n then
            (eta m * |observedCoeff phase decode n| +
              |observedCoeff phase decode m| * eta n +
                eta m * eta n) * |pickupResponseGram T m n|
          else 0 := by
      apply Finset.sum_le_sum
      intro m hm
      apply Finset.sum_le_sum
      intro n hn
      by_cases hmn : m ≠ n
      · simp only [if_pos hmn]
        exact kernel_error_abs_le phase decode eta T m n
          (hcert m hm) (hcert n hn)
      · simp [hmn]

/-- The signed original arithmetic cross is bounded above by an
observable cross plus a source-certified, nonnegative error envelope. -/
theorem pickupCross_le_observed_add_envelope {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (T : ℝ)
    (hcert : ErrorCertificate phase decode eta T) :
    pickupCross T ≤
      observedCross phase decode T + errorEnvelope phase decode eta T := by
  have h := pickupCross_eq_observed_add_signedLoss phase decode T
  have herr : signedLoss phase decode T ≤
      errorEnvelope phase decode eta T :=
    (le_abs_self _).trans
      (signedLoss_abs_le_errorEnvelope phase decode eta T hcert)
  linarith

/-- The source's quarter-unit curvature allowance and the OBSERVED
coefficient-error envelope are different, fully paid costs. -/
theorem endpointSum_le_observed_add_envelope_quarter {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) {T : ℝ} (hT : 0 ≤ T)
    (hcert : ErrorCertificate phase decode eta T) :
    endpointSum T ≤
      observedCross phase decode T + errorEnvelope phase decode eta T + 1 / 4 := by
  have hsrc := pickupCross_le_observed_add_envelope
    phase decode eta T hcert
  have hend := (abs_le.mp (endpointSum_error hT)).2
  linarith

/-! ## Collision-resolution lower bound, independent of a chosen code -/

/-- If two ORIGINAL arithmetic coefficients share one decoded phase,
both absolute coefficient errors cannot be smaller than half their
difference. This is an actual unavoidable resolution cost, not a
cardinality slogan or a statement about large-scale cancellation. -/
theorem phase_collision_error_radius {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (a b : SourceAtom) (eta : ℝ)
    (hphase : phase a = phase b)
    (ha : |decode (phase a) - moebiusReal (sourceIndex a)| ≤ eta)
    (hb : |decode (phase b) - moebiusReal (sourceIndex b)| ≤ eta) :
    |moebiusReal (sourceIndex a) -
        moebiusReal (sourceIndex b)| ≤ 2 * eta := by
  have hread : decode (phase a) = decode (phase b) :=
    congrArg decode hphase
  have ha' :
      |moebiusReal (sourceIndex a) - decode (phase a)| ≤ eta := by
    simpa only [abs_sub_comm] using ha
  calc
    |moebiusReal (sourceIndex a) - moebiusReal (sourceIndex b)| =
      |(moebiusReal (sourceIndex a) - decode (phase a)) +
        (decode (phase b) - moebiusReal (sourceIndex b))| := by
      rw [← hread]
      congr 1
      ring
    _ ≤ |moebiusReal (sourceIndex a) - decode (phase a)| +
        |decode (phase b) - moebiusReal (sourceIndex b)| :=
      abs_add_le _ _
    _ ≤ eta + eta := add_le_add ha' hb
    _ = 2 * eta := by ring

/-! ## Gauge transport retains both the observation and its error bill -/

/-- A gauge/code transport is admissible for scalar observations only
when the supplied decoder commutes on every ORIGINAL source atom. -/
def DecoderCompatible {Phase : Type u} {Other : Type v}
    (phase : SourceAtom → Phase) (f : Phase → Other)
    (decode : Phase → ℝ) (read : Other → ℝ) : Prop :=
  ∀ a : SourceAtom, read (f (phase a)) = decode (phase a)

theorem observedCoeff_reframe {Phase : Type u} {Other : Type v}
    (phase : SourceAtom → Phase) (f : Phase → Other)
    (decode : Phase → ℝ) (read : Other → ℝ)
    (hcompat : DecoderCompatible phase f decode read)
    (n : ℕ) :
    observedCoeff (fun a => f (phase a)) read n =
      observedCoeff phase decode n := by
  exact hcompat (encode n)

theorem coefficientError_reframe {Phase : Type u} {Other : Type v}
    (phase : SourceAtom → Phase) (f : Phase → Other)
    (decode : Phase → ℝ) (read : Other → ℝ)
    (hcompat : DecoderCompatible phase f decode read)
    (n : ℕ) :
    coefficientError (fun a => f (phase a)) read n =
      coefficientError phase decode n := by
  unfold coefficientError
  rw [observedCoeff_reframe phase f decode read hcompat]

/-- The complete original-indexed decoded two-orientation packet is
invariant under a decoder-compatible phase or gauge reframe. -/
theorem observedCross_reframe {Phase : Type u} {Other : Type v}
    (phase : SourceAtom → Phase) (f : Phase → Other)
    (decode : Phase → ℝ) (read : Other → ℝ)
    (hcompat : DecoderCompatible phase f decode read)
    (T : ℝ) :
    observedCross (fun a => f (phase a)) read T =
      observedCross phase decode T := by
  classical
  unfold observedCross
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmn : m ≠ n
  · simp only [if_pos hmn, observedKernel,
      observedCoeff_reframe phase f decode read hcompat]
  · simp [hmn]

/-- A decoder-compatible gauge shift also preserves the OBSERVED-ONLY
nonnegative error envelope, not just the original source kernel. -/
theorem errorEnvelope_reframe {Phase : Type u} {Other : Type v}
    (phase : SourceAtom → Phase) (f : Phase → Other)
    (decode : Phase → ℝ) (read : Other → ℝ)
    (eta : ℕ → ℝ)
    (hcompat : DecoderCompatible phase f decode read)
    (T : ℝ) :
    errorEnvelope (fun a => f (phase a)) read eta T =
      errorEnvelope phase decode eta T := by
  classical
  unfold errorEnvelope
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmn : m ≠ n
  · simp only [if_pos hmn,
      observedCoeff_reframe phase f decode read hcompat]
  · simp [hmn]

/-- Exact coefficient verification itself is preserved under the same
typed transport: no source modulus, integer, or radius changes. -/
theorem errorCertificate_reframe {Phase : Type u} {Other : Type v}
    (phase : SourceAtom → Phase) (f : Phase → Other)
    (decode : Phase → ℝ) (read : Other → ℝ)
    (eta : ℕ → ℝ) (T : ℝ)
    (hcompat : DecoderCompatible phase f decode read)
    (hcert : ErrorCertificate phase decode eta T) :
    ErrorCertificate (fun a => f (phase a)) read eta T := by
  intro n hn
  simpa only [coefficientError_reframe phase f decode read hcompat]
    using hcert n hn

/-! ## Combine with the already sourced endpoint/curve hybrid -/

/-- Two independent upper certificates on the SAME signed source.
MIN prevents paying either source twice or worsening the prior hybrid.
This does NOT assert that the new certificate is small. -/
def phaseHybridUpper {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (T : ℝ)
    (depth : ℕ → ℕ) (primes : Finset ℕ) : ℝ :=
  min (endpointHybridUpper T depth primes)
    (observedCross phase decode T + errorEnvelope phase decode eta T)

/-- Full original packet is below the new hybrid if its TRUE prime
and decoder-error certificates are supplied independently. -/
theorem pickupCross_le_phaseHybridUpper {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) {T : ℝ} (hT : 0 ≤ T)
    (depth : ℕ → ℕ) (primes : Finset ℕ)
    (hp : ∀ p ∈ primes, p.Prime)
    (hcert : ErrorCertificate phase decode eta T) :
    pickupCross T ≤ phaseHybridUpper phase decode eta T depth primes := by
  unfold phaseHybridUpper
  exact le_min (cross_le_endpointHybridUpper hT depth primes hp)
    (pickupCross_le_observed_add_envelope phase decode eta T hcert)

/-- The extended portfolio never raises the previous endpoint/curve
upper certificate; any actual improvement requires smaller data. -/
theorem phaseHybridUpper_le_previous {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (T : ℝ)
    (depth : ℕ → ℕ) (primes : Finset ℕ) :
    phaseHybridUpper phase decode eta T depth primes ≤
      endpointHybridUpper T depth primes :=
  min_le_left _ _

/-! ## Exact conditional analytic return: no free cancellation hypothesis -/

/-- The final arithmetic suppliers are explicit: one observed signed
quantity AND its nonnegative source-certified coefficient-error envelope
must be bounded at ALL positive exponential rates on ONE fixed set G.
Neither type cardinality nor finitely many tests supplies those premises.
The existing canonical RH consumer is applied without changing its target. -/
theorem riemannHypothesis_of_phase_observation_and_error
    {Phase : Type u}
    (phase : ℝ → SourceAtom → Phase)
    (decode : ℝ → Phase → ℝ)
    (eta : ℝ → ℕ → ℝ)
    {G : Set ℝ}
    (hcover : AffineFrequent G)
    (hcert : ∀ T ∈ G, 0 ≤ T →
      ErrorCertificate (phase T) (decode T) (eta T) T)
    (hobserved :
      SubexponentialOn (fun T =>
        observedCross (phase T) (decode T) T) G)
    (herror :
      SubexponentialOn (fun T =>
        errorEnvelope (phase T) (decode T) (eta T) T) G) :
    _root_.RiemannHypothesis := by
  have hsum :
      SubexponentialOn
        (fun T =>
          observedCross (phase T) (decode T) T +
            errorEnvelope (phase T) (decode T) (eta T) T) G := by
    intro ε hε
    obtain ⟨C, R, hC, hR, ho⟩ := hobserved ε hε
    obtain ⟨D, S, hD, hS, he⟩ := herror ε hε
    refine ⟨C + D, max R S, add_nonneg hC hD,
      hR.trans (le_max_left R S), ?_⟩
    intro T hTG hT
    have hr : R ≤ T := (le_max_left R S).trans hT
    have hs : S ≤ T := (le_max_right R S).trans hT
    calc
      observedCross (phase T) (decode T) T +
          errorEnvelope (phase T) (decode T) (eta T) T ≤
        C * Real.exp (ε * T) + D * Real.exp (ε * T) :=
          add_le_add (ho T hTG hr) (he T hTG hs)
      _ = (C + D) * Real.exp (ε * T) := by ring
  have hwithQuarter :
      SubexponentialOn
        (fun T =>
          (observedCross (phase T) (decode T) T +
            errorEnvelope (phase T) (decode T) (eta T) T) +
              (1 / 4 : ℝ)) G :=
    add_global hsum quarter_subexponential
  apply riemannHypothesis_of_endpoint_good_scales hcover
  apply subexponentialOn_mono hwithQuarter
  intro T hTG hT0
  exact endpointSum_le_observed_add_envelope_quarter
    (phase T) (decode T) (eta T) hT0 (hcert T hTG hT0)

end GRWTSK.NumberTheory.Moebius.FinitePhaseDecoderBudget
