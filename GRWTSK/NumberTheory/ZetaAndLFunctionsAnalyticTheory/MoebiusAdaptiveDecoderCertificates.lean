/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusUnifiedObservationPortfolio
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.EndpointCovarianceDyadicAbel
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.DyadicSignedResidueWaveform
import GRWTSK.CategoryTheoryHomologicalAlgebra.GeneralTheoryOfCategoriesAndFunctors.CertifiedTransversal
import Mathlib.Tactic

/-!
# Adaptive source-index certificate intersections and dyadic/residue returns

Two independent coefficient-error enclosures for the SAME decoded original
Möbius source may be intersected pointwise: the new radius at each ORIGINAL
integer is the minimum of its two certified radii. The intersection is again
a source-index ErrorCertificate. Since the original causal responses are
nonnegative, the positive response wave and its physical-time energy decrease.
The older ordered-pair absolute-error envelope also decreases. Consequently
the complete five-method source portfolio cannot become worse after this
certificate refinement, without changing ANY actual source coefficient.

An exact canonical SourceAtom-to-original-index map also instantiates the
existing source-covering CertifiedTransversal contract. It does not imply
that a lossy quotient covers every target or reconstructs the original n.

Existing dyadic two-index source coverage, complete parity/nonunit residue
energy, and the original five-method source portfolio are compared at the
same genuine original cutoff. No new uniform block estimate, cancellation,
Mertens bound, external arithmetic oracle or RH theorem is constructed.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.AdaptiveDecoderCertificates

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.AutomircronCanonicalPrimeTyping
open GRWTSK.NumberTheory.Moebius.FiniteTorsionResolutionReturn
open GRWTSK.NumberTheory.Moebius.FinitePhaseDecoderBudget
open GRWTSK.NumberTheory.Moebius.WeightedDecoderEnergyTransfer
open GRWTSK.NumberTheory.Moebius.DecoderPositiveResponse
open GRWTSK.NumberTheory.Moebius.UnifiedObservationPortfolio
open GRWTSK.NumberTheory.Moebius.SourceReturnAtlas
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.EndpointCovarianceDyadicAbel

universe u v

/-! ## The original source is an actual covered correspondence -/

/-- Every canonical prime-typed arithmetic atom is still paired with
its entire original natural integer. Source coverage is actual, not an
inferred property of an arbitrary residue label or finite torsion phase. -/
def canonicalIndexTransversal :
    GRWTSK.CategoryTheoryHomologicalAlgebra.GeneralTheoryOfCategoriesAndFunctors.CertifiedTransversal.Transversal
      SourceAtom ℕ
      (fun _ => True) (fun _ => True)
      (fun a n => n = sourceIndex a) :=
  GRWTSK.CategoryTheoryHomologicalAlgebra.GeneralTheoryOfCategoriesAndFunctors.CertifiedTransversal.Transversal.ofFunction
    sourceIndex (fun _ _ => trivial) (fun _ _ => rfl)

/-- Transporting a statement back to EVERY original source requires a
proved relation-preserving return map, as in the existing transversal
interface. Mere target coverage or a modulo-q tag would not suffice. -/
theorem original_property_of_index_property
    (P : SourceAtom → Prop) (Q : ℕ → Prop)
    (hreturn : ∀ a n, n = sourceIndex a → Q n → P a)
    (hindex : ∀ n, Q n) :
    ∀ a : SourceAtom, P a := by
  intro a
  exact
    (GRWTSK.CategoryTheoryHomologicalAlgebra.GeneralTheoryOfCategoriesAndFunctors.CertifiedTransversal.Transversal.source_property_of_target
      canonicalIndexTransversal P Q hreturn (fun n _ => hindex n)) a trivial

/-! ## Source-certified pointwise intersections -/

/-- Independent methods may refine the radii ONLY for the same source
atoms and the same scalar decoder, or after a proved compatible reframe. -/
def radiusMeet (eta zeta : ℕ → ℝ) (n : ℕ) : ℝ :=
  min (eta n) (zeta n)

/-- The intersection of two TRUE original-index error certificates
remains a TRUE original-index error certificate. -/
theorem errorCertificate_radiusMeet
    {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta zeta : ℕ → ℝ) (T : ℝ)
    (hEta : ErrorCertificate phase decode eta T)
    (hZeta : ErrorCertificate phase decode zeta T) :
    ErrorCertificate phase decode (radiusMeet eta zeta) T := by
  intro n hn
  exact le_min (hEta n hn) (hZeta n hn)

/-- The actual positive response wave is monotone in certified radii
on the whole unchanged original endpoint support. -/
theorem radiusWave_le_of_radii_le
    (eta zeta : ℕ → ℝ) (T u : ℝ)
    (hle : ∀ n ∈ endpointIndex T, eta n ≤ zeta n) :
    radiusWave eta T u ≤ radiusWave zeta T u := by
  unfold radiusWave
  apply Finset.sum_le_sum
  intro n hn
  exact mul_le_mul_of_nonneg_right (hle n hn)
    (GRWTSK.NumberTheory.Moebius.MertensSignedPairDescent.response_nonneg
      (Finset.mem_Icc.mp hn).1 u)

/-- Even before integrated time, the pointwise minimum of two
source-valid error profiles cannot worsen the original causal envelope. -/
theorem radiusWave_radiusMeet_le_left
    (eta zeta : ℕ → ℝ) (T u : ℝ) :
    radiusWave (radiusMeet eta zeta) T u ≤
      radiusWave eta T u :=
  radiusWave_le_of_radii_le (radiusMeet eta zeta) eta T u
    (fun n hn => min_le_left _ _)

/-- The exact physical-time squared radius energy also decreases.
Here nonnegativity of both radius waves follows from actual source
coefficient-radius certificates, not from sign of an off-diagonal Gram. -/
theorem radiusEnergy_le_of_radii_le
    {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta zeta : ℕ → ℝ) {T : ℝ} (hT : 0 ≤ T)
    (hEta : ErrorCertificate phase decode eta T)
    (hZeta : ErrorCertificate phase decode zeta T)
    (hle : ∀ n ∈ endpointIndex T, eta n ≤ zeta n) :
    radiusEnergy eta T ≤ radiusEnergy zeta T := by
  have hcEta := radiusWave_continuous eta T
  have hcZeta := radiusWave_continuous zeta T
  unfold radiusEnergy
  apply intervalIntegral.integral_mono_on hT
    ((hcEta.pow 2).intervalIntegrable 0 T)
    ((hcZeta.pow 2).intervalIntegrable 0 T)
  intro u hu
  have hη : 0 ≤ radiusWave eta T u :=
    radiusWave_nonneg phase decode eta T u hEta
  have hζ : 0 ≤ radiusWave zeta T u :=
    radiusWave_nonneg phase decode zeta T u hZeta
  exact (sq_le_sq₀ hη hζ).mpr
    (radiusWave_le_of_radii_le eta zeta T u hle)

/-- Taking the certified minimum decreases exact positive radius energy. -/
theorem radiusEnergy_radiusMeet_le_left
    {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta zeta : ℕ → ℝ) {T : ℝ} (hT : 0 ≤ T)
    (hEta : ErrorCertificate phase decode eta T)
    (hZeta : ErrorCertificate phase decode zeta T) :
    radiusEnergy (radiusMeet eta zeta) T ≤ radiusEnergy eta T :=
  radiusEnergy_le_of_radii_le phase decode (radiusMeet eta zeta) eta
    hT (errorCertificate_radiusMeet phase decode eta zeta T hEta hZeta)
    hEta (fun n hn => min_le_left _ _)

/-- Correcting independent error-radius certificates also decreases
the original full ordered-pair absolute decoder-error envelope. -/
theorem errorEnvelope_le_of_radii_le
    {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta zeta : ℕ → ℝ) (T : ℝ)
    (hEta : ErrorCertificate phase decode eta T)
    (hZeta : ErrorCertificate phase decode zeta T)
    (hle : ∀ n ∈ endpointIndex T, eta n ≤ zeta n) :
    errorEnvelope phase decode eta T ≤
      errorEnvelope phase decode zeta T := by
  classical
  unfold errorEnvelope
  apply Finset.sum_le_sum
  intro m hm
  apply Finset.sum_le_sum
  intro n hn
  by_cases hmn : m ≠ n
  · simp only [if_pos hmn]
    have hetaM : 0 ≤ eta m := (abs_nonneg _).trans (hEta m hm)
    have hzetaN : 0 ≤ zeta n := (abs_nonneg _).trans (hZeta n hn)
    have hfirst :
        eta m * |observedCoeff phase decode n| ≤
        zeta m * |observedCoeff phase decode n| :=
      mul_le_mul_of_nonneg_right (hle m hm) (abs_nonneg _)
    have hsecond :
        |observedCoeff phase decode m| * eta n ≤
        |observedCoeff phase decode m| * zeta n :=
      mul_le_mul_of_nonneg_left (hle n hn) (abs_nonneg _)
    have hthird : eta m * eta n ≤ zeta m * zeta n := by
      calc
        eta m * eta n ≤ zeta m * eta n :=
          mul_le_mul_of_nonneg_right (hle m hm)
            ((abs_nonneg _).trans (hEta n hn))
        _ ≤ zeta m * zeta n :=
          mul_le_mul_of_nonneg_left (hle n hn)
            (hetaM.trans (hle m hm))
    exact mul_le_mul_of_nonneg_right
      (add_le_add (add_le_add hfirst hsecond) hthird)
      (abs_nonneg (pickupResponseGram T m n))
  · simp [hmn]

/-- The entire previous phase/curve certificate cannot worsen after
shrinking independently verified coefficient error radii. -/
theorem phaseHybridUpper_le_of_radii_le
    {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta zeta : ℕ → ℝ) (T : ℝ)
    (depth : ℕ → ℕ) (primes : Finset ℕ)
    (hEta : ErrorCertificate phase decode eta T)
    (hZeta : ErrorCertificate phase decode zeta T)
    (hle : ∀ n ∈ endpointIndex T, eta n ≤ zeta n) :
    phaseHybridUpper phase decode eta T depth primes ≤
      phaseHybridUpper phase decode zeta T depth primes := by
  unfold phaseHybridUpper
  exact min_le_min le_rfl
    (add_le_add_left
      (errorEnvelope_le_of_radii_le phase decode eta zeta T
        hEta hZeta hle) _)

/-- All five source-grounded upper certificates are compatible with
monotone decoder-error refinement. Signed elliptic and sparse residuals
are not changed, and no negative arithmetic credit is counted twice. -/
theorem sourcePortfolioUpper_le_of_radii_le
    {Phase : Type u} {W : WeierstrassCurve ℤ}
    (B : GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison.GoodPrimeBank W)
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta zeta : ℕ → ℝ) (ε : ℝ)
    {T : ℝ} (hT : 0 ≤ T)
    (depth : ℕ → ℕ) (primes : Finset ℕ)
    (hEta : ErrorCertificate phase decode eta T)
    (hZeta : ErrorCertificate phase decode zeta T)
    (hle : ∀ n ∈ endpointIndex T, eta n ≤ zeta n) :
    sourcePortfolioUpper B phase decode eta ε T depth primes ≤
      sourcePortfolioUpper B phase decode zeta ε T depth primes := by
  have hphase : phaseHybridUpper phase decode eta T depth primes ≤
      phaseHybridUpper phase decode zeta T depth primes :=
    phaseHybridUpper_le_of_radii_le phase decode eta zeta T depth primes
      hEta hZeta hle
  have henergy : 2 * observedEnergy phase decode T + 2 * radiusEnergy eta T ≤
      2 * observedEnergy phase decode T + 2 * radiusEnergy zeta T :=
    add_le_add_left
      (mul_le_mul_of_nonneg_left
        (radiusEnergy_le_of_radii_le phase decode eta zeta hT hEta hZeta hle)
        (by norm_num : (0 : ℝ) ≤ 2)) _
  unfold sourcePortfolioUpper
  exact min_le_min hphase
    (min_le_min le_rfl (min_le_min henergy le_rfl))

/-- An actual multi-method ERROR CERTIFICATE MEET never makes the
whole original-source portfolio upper certificate less sharp. -/
theorem sourcePortfolioUpper_radiusMeet_le_left
    {Phase : Type u} {W : WeierstrassCurve ℤ}
    (B : GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison.GoodPrimeBank W)
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta zeta : ℕ → ℝ) (ε : ℝ)
    {T : ℝ} (hT : 0 ≤ T)
    (depth : ℕ → ℕ) (primes : Finset ℕ)
    (hEta : ErrorCertificate phase decode eta T)
    (hZeta : ErrorCertificate phase decode zeta T) :
    sourcePortfolioUpper B phase decode
        (radiusMeet eta zeta) ε T depth primes ≤
      sourcePortfolioUpper B phase decode eta ε T depth primes :=
  sourcePortfolioUpper_le_of_radii_le B phase decode
    (radiusMeet eta zeta) eta ε hT depth primes
    (errorCertificate_radiusMeet phase decode eta zeta T hEta hZeta)
    hEta (fun n hn => min_le_left _ _)

/-! ## Dyadic and full residue connections to the same source -/

/-- The complete dyadic two-index block cover is the SAME original
source controlled by the five-method portfolio, with no omitted mixed
off-diagonal block orientation. -/
theorem full_dyadic_cross_le_portfolio
    {Phase : Type u} {W : WeierstrassCurve ℤ}
    (B : GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison.GoodPrimeBank W)
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (ε : ℝ)
    {T : ℝ} (hT : 0 ≤ T)
    (depth : ℕ → ℕ) (primes : Finset ℕ)
    (hp : ∀ p ∈ primes, p.Prime)
    (hcert : ErrorCertificate phase decode eta T) :
    (∑ j ∈ Finset.range (dyadicHeight ⌊Real.exp T⌋₊),
      ∑ k ∈ Finset.range (dyadicHeight ⌊Real.exp T⌋₊),
        pickupDyadicBlock T j k) ≤
      sourcePortfolioUpper B phase decode eta ε T depth primes := by
  rw [← pickupCross_eq_completeDyadicCover T]
  exact cross_le_sourcePortfolioUpper B phase decode eta ε hT
    depth primes hp hcert

/-- Complete parity, nonunit and residue-class energy is identified
with the exact arithmetic-derived two-bit energy on dyadic physical
times. Individual positive sector energies have NOT replaced mixed signs. -/
theorem all_residue_energy_eq_twoBit_energy
    (j d : ℕ) [NeZero d] :
    GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform.completeResidueEnergy
        j d =
      observedEnergy twoBitPhase twoBitRead (dyadicTime j) := by
  rw [GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform.completeResidueEnergy_eq_pickupEnergy]
  exact (twoBit_energy_eq_source (dyadicTime_nonnegative j)).symm

/-- The exact original endpoint error remains one quarter unit AFTER
completing the full dyadic cover and joining all source upper methods. -/
theorem dyadic_endpoint_le_portfolio_quarter
    {Phase : Type u} {W : WeierstrassCurve ℤ}
    (B : GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison.GoodPrimeBank W)
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (ε : ℝ) (j : ℕ)
    (depth : ℕ → ℕ) (primes : Finset ℕ)
    (hp : ∀ p ∈ primes, p.Prime)
    (hcert : ErrorCertificate phase decode eta (dyadicTime j)) :
    endpointSum (dyadicTime j) ≤
      sourcePortfolioUpper B phase decode eta ε (dyadicTime j) depth primes +
        (1 / 4 : ℝ) :=
  endpoint_le_sourcePortfolioUpper_quarter B phase decode eta ε
    (dyadicTime_nonnegative j) depth primes hp hcert

end GRWTSK.NumberTheory.Moebius.AdaptiveDecoderCertificates
