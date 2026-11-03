/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPR103ModOneAdapter
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology
open MeasureTheory Set Filter

/-!
# Factor the reciprocal-zeta / Perron bridge

The existing PR103 causal chain has one remaining analytic proposition:
`ZeroFreeToMertensPowerBridge`.  This file separates it into the two genuinely
load-bearing inputs:

* subpower control of the reciprocal zeta function on every closed
  sub-half-plane strictly to the right of a zero-free boundary;
* a truncated Perron rectangle estimate returning an explicit three-term
  envelope for the actual Mertens prefix.

The scalar exponent bookkeeping after those inputs is proved here.  In
particular, the intermediate line and subpower exponent can be chosen
uniformly for every requested Mertens exponent, and the three Perron terms are
absorbed into the requested power without changing the original prefix.

The final section proves a method obstruction.  A fixed polynomial reciprocal
bound `|1/zeta| <= (1+|t|)^A` cannot close the ordinary rectangular Perron
argument for every exponent arbitrarily close to the zero-free boundary.  The
Perron exponent ledger forces

  A * (1 - sigma) < theta - sigma,

so the admissible reciprocal exponent tends to zero with the requested
margin.  Thus an all-positive-subpower reciprocal theorem, or a materially
stronger smoothed contour theorem, is necessary for this route.

No reciprocal-zeta bound, Perron formula, external PR103 replay, all-positive-
rate endpoint estimate, or Riemann Hypothesis conclusion is asserted here.
-/

namespace GRWTSK.NumberTheory.Moebius.PR103ReciprocalPerronBridge

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvillePR103FixedPower
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.StrongPacketEnergyReturn
open GRWTSK.NumberTheory.Moebius.StrongFixedPowerPR103
open GRWTSK.NumberTheory.Moebius.PR103ExactEnergyAbscissa
open GRWTSK.NumberTheory.Moebius.StrongFixedPowerCalculusClosure
open GRWTSK.NumberTheory.Moebius.PR103ModOneAdapter

/-- Uniform subpower control of the reciprocal zeta function on the closed
strip `sigma <= re(s) <= 2`, away from the pole.  The real exponent `eta` is
intended to be arbitrarily small and positive. -/
def ZetaReciprocalSubpowerAt (sigma eta C : ℝ) : Prop :=
  0 ≤ C ∧
    ∀ (a t : ℝ), sigma ≤ a → a ≤ 2 →
      ((a : ℂ) + (t : ℂ) * Complex.I) ≠ 1 →
      ‖(_root_.riemannZeta
          ((a : ℂ) + (t : ℂ) * Complex.I))⁻¹‖ ≤
        C * (2 + |t|) ^ eta

/-- The zero-free-to-reciprocal-growth input.  OpenAI's formalized
Borel--Caratheodory / holomorphic-log theorem supplies the generic complex
analysis mechanism once the zeta-specific polynomial outer growth and inner
Euler-log bounds are instantiated.  That source adaptation remains visible. -/
def ZetaZeroFreeToReciprocalSubpowerBridge : Prop :=
  ∀ (theta0 : ℝ), ZetaZeroFreeRightOf theta0 →
    ∀ (sigma eta : ℝ), theta0 < sigma → 0 < eta →
      ∃ C : ℝ, ZetaReciprocalSubpowerAt sigma eta C

/-- The exact three terms produced by a height-`x` rectangular Perron shift:
the shifted vertical line, the two horizontal sides, and the truncation/collar
cost.  The cutoff remains the actual `mertensPrefix (exp u)`. -/
def MertensPerronThreeTermEnvelopeAt
    (sigma eta K : ℝ) : Prop :=
  0 ≤ K ∧
    ∀ u : ℝ, 0 ≤ u →
      |mertensPrefix (Real.exp u)| ≤
        K * (Real.exp ((sigma + eta) * u) +
          Real.exp (eta * u) + (1 + u))

/-- The source-specific truncated Perron and rectangle-shift input.  It keeps
all contour errors in the explicit three-term envelope above. -/
def ReciprocalPerronThreeTermBridge : Prop :=
  ∀ (theta0 sigma eta C : ℝ),
    theta0 < sigma → 0 < eta →
    ZetaZeroFreeRightOf theta0 →
    ZetaReciprocalSubpowerAt sigma eta C →
      ∃ K : ℝ, MertensPerronThreeTermEnvelopeAt sigma eta K

/-- A positive exponential pays one factor of physical time. -/
theorem time_le_exp_div
    {theta u : ℝ} (htheta : 0 < theta) (hu : 0 ≤ u) :
    u ≤ (1 / theta) * Real.exp (theta * u) := by
  have h := pow_le_factorial_mul_exp htheta hu 1
  norm_num at h
  exact h

/-- The constant and linear Perron errors are absorbed at every positive
requested exponent. -/
theorem one_add_time_le_exp
    {theta u : ℝ} (htheta : 0 < theta) (hu : 0 ≤ u) :
    1 + u ≤ (1 + 1 / theta) * Real.exp (theta * u) := by
  have hone : (1 : ℝ) ≤ Real.exp (theta * u) :=
    Real.one_le_exp_iff.mpr (mul_nonneg htheta.le hu)
  have htime := time_le_exp_div htheta hu
  calc
    1 + u ≤ Real.exp (theta * u) +
        (1 / theta) * Real.exp (theta * u) :=
      add_le_add hone htime
    _ = (1 + 1 / theta) * Real.exp (theta * u) := by ring

/-- The explicit Perron three-term envelope yields the authentic Mertens power
envelope whenever both contour exponents lie below the requested exponent. -/
theorem mertensThreeTermEnvelope_to_power
    {sigma eta theta K : ℝ}
    (htheta : 0 < theta)
    (hsigma : sigma + eta ≤ theta)
    (heta : eta ≤ theta)
    (hM : MertensPerronThreeTermEnvelopeAt sigma eta K) :
    MertensExponentialEnvelopeAt theta
      (K * (3 + 1 / theta)) := by
  obtain ⟨hK, hbound⟩ := hM
  refine ⟨mul_nonneg hK (by positivity), ?_⟩
  intro u hu
  have hfirst :
      Real.exp ((sigma + eta) * u) ≤
        Real.exp (theta * u) :=
    Real.exp_le_exp.mpr
      (mul_le_mul_of_nonneg_right hsigma hu)
  have hsecond :
      Real.exp (eta * u) ≤ Real.exp (theta * u) :=
    Real.exp_le_exp.mpr
      (mul_le_mul_of_nonneg_right heta hu)
  have hthird := one_add_time_le_exp htheta hu
  have hsum :
      Real.exp ((sigma + eta) * u) +
          Real.exp (eta * u) + (1 + u) ≤
        Real.exp (theta * u) + Real.exp (theta * u) +
          (1 + 1 / theta) * Real.exp (theta * u) :=
    add_le_add (add_le_add hfirst hsecond) hthird
  calc
    |mertensPrefix (Real.exp u)| ≤
        K * (Real.exp ((sigma + eta) * u) +
          Real.exp (eta * u) + (1 + u)) := hbound u hu
    _ ≤ K * (Real.exp (theta * u) + Real.exp (theta * u) +
          (1 + 1 / theta) * Real.exp (theta * u)) :=
      mul_le_mul_of_nonneg_left hsum hK
    _ = (K * (3 + 1 / theta)) * Real.exp (theta * u) := by
      ring

/-- A lower line which stays positive even if the supplied zero-free boundary
is far to the left. -/
def perronLower (theta0 theta : ℝ) : ℝ :=
  max theta0 (theta / 2)

/-- Strict intermediate contour line. -/
def perronSigma (theta0 theta : ℝ) : ℝ :=
  (perronLower theta0 theta + theta) / 2

/-- Subpower exponent leaving equal room between the contour line and the
requested Mertens exponent. -/
def perronEta (theta0 theta : ℝ) : ℝ :=
  (theta - perronSigma theta0 theta) / 2

/-- Exact parameter margins used by the reciprocal/Perron bridge. -/
theorem perron_parameter_bounds
    {theta0 theta : ℝ}
    (h0 : theta0 < theta)
    (hhalf : (1 / 2 : ℝ) < theta) :
    theta0 < perronSigma theta0 theta ∧
      0 < perronEta theta0 theta ∧
      perronSigma theta0 theta + perronEta theta0 theta < theta ∧
      perronEta theta0 theta < theta := by
  have htheta : 0 < theta := by linarith
  have hhalfTheta : theta / 2 < theta := by linarith
  have hlower_lt : max theta0 (theta / 2) < theta :=
    max_lt h0 hhalfTheta
  have hleft : theta0 ≤ max theta0 (theta / 2) :=
    le_max_left _ _
  have hright : theta / 2 ≤ max theta0 (theta / 2) :=
    le_max_right _ _
  dsimp [perronSigma, perronEta, perronLower]
  constructor
  · linarith
  constructor
  · linarith
  constructor
  · linarith
  · linarith

/-- The two visible reciprocal/Perron inputs imply the existing full
zero-free-to-Mertens interface.  All exponent and finite-error losses are now
explicit. -/
theorem zeroFreeToMertensPowerBridge_of_reciprocal_perron
    (hrec : ZetaZeroFreeToReciprocalSubpowerBridge)
    (hperron : ReciprocalPerronThreeTermBridge) :
    ZeroFreeToMertensPowerBridge := by
  intro theta0 theta h0 hhalf _hthetaOne hzeta
  let sigma : ℝ := perronSigma theta0 theta
  let eta : ℝ := perronEta theta0 theta
  have hp := perron_parameter_bounds h0 hhalf
  have hsigma : theta0 < sigma := by
    simpa only [sigma] using hp.1
  have heta : 0 < eta := by
    simpa only [eta] using hp.2.1
  have hsum : sigma + eta < theta := by
    simpa only [sigma, eta] using hp.2.2.1
  have hetaTheta : eta < theta := by
    simpa only [eta] using hp.2.2.2
  obtain ⟨C, hC⟩ := hrec theta0 hzeta sigma eta hsigma heta
  obtain ⟨K, hK⟩ :=
    hperron theta0 sigma eta C hsigma heta hzeta hC
  refine ⟨K * (3 + 1 / theta), ?_⟩
  exact mertensThreeTermEnvelope_to_power
    (by linarith) hsum.le hetaTheta.le hK

/-! ## A sharp obstruction for fixed polynomial reciprocal growth -/

/-- Exponent ledger for a height `T = x^B` rectangular Perron argument under
a reciprocal bound of polynomial exponent `A`.

* `1-B` is the truncation exponent;
* `sigma + A*B` is the shifted vertical exponent;
* `1 + (A-1)*B` is the horizontal-edge exponent. -/
def PerronPowerBalance
    (sigma theta A B : ℝ) : Prop :=
  0 < B ∧
    1 - B < theta ∧
    sigma + A * B < theta ∧
    1 + (A - 1) * B < theta

/-- Any successful fixed-polynomial rectangular Perron balance forces the
reciprocal exponent to shrink with the width of the zero-free margin. -/
theorem perronPowerBalance_forces_weighted_gap
    {sigma theta A B : ℝ}
    (hbal : PerronPowerBalance sigma theta A B)
    (htheta : theta < 1)
    (hA : 0 ≤ A) :
    A * (1 - sigma) < theta - sigma := by
  obtain ⟨hB, _htrunc, hvert, hhoriz⟩ := hbal
  by_cases hAzero : A = 0
  · subst A
    simpa using hvert
  have hApos : 0 < A := lt_of_le_of_ne hA (Ne.symm hAzero)
  by_cases hAlt : A < 1
  · have hleft := mul_lt_mul_of_pos_left hhoriz hApos
    have hright :=
      mul_lt_mul_of_pos_left hvert (sub_pos.mpr hAlt)
    nlinarith
  · have hAge : 1 ≤ A := le_of_not_gt hAlt
    have hnonneg : 0 ≤ (A - 1) * B :=
      mul_nonneg (sub_nonneg.mpr hAge) hB.le
    exfalso
    linarith

/-- If the necessary weighted-gap inequality fails, no contour height exponent
can make all three ordinary Perron errors fit below `theta`. -/
theorem no_perronPowerBalance_of_weighted_gap
    {sigma theta A B : ℝ}
    (htheta : theta < 1)
    (hA : 0 ≤ A)
    (hobs : theta - sigma ≤ A * (1 - sigma)) :
    ¬ PerronPowerBalance sigma theta A B := by
  intro hbal
  have hforce :=
    perronPowerBalance_forces_weighted_gap hbal htheta hA
  linarith

/-- Arbitrarily small reciprocal exponents do close the exponent ledger; the
simple height choice is `B=1`. -/
theorem perronPowerBalance_of_subpower
    {sigma theta eta : ℝ}
    (htheta : 0 < theta)
    (hsum : sigma + eta < theta)
    (heta : eta < theta) :
    PerronPowerBalance sigma theta eta 1 := by
  refine ⟨by norm_num, by linarith, ?_, ?_⟩
  · simpa using hsum
  · simpa using heta

/-- Margin used to exhibit the failure of every fixed positive reciprocal
polynomial exponent near a fixed zero-free boundary. -/
def fixedPolynomialDelta (theta0 A : ℝ) : ℝ :=
  A * (1 - theta0) / (A + 1)

/-- Requested exponent chosen above the zero-free boundary. -/
def fixedPolynomialTheta (theta0 A : ℝ) : ℝ :=
  theta0 + fixedPolynomialDelta theta0 A

/-- Midpoint contour line for the fixed-polynomial obstruction. -/
def fixedPolynomialSigma (theta0 A : ℝ) : ℝ :=
  theta0 + fixedPolynomialDelta theta0 A / 2

/-- The explicit obstruction parameters lie in the correct order, while the
weighted-gap inequality is reversed. -/
theorem fixedPolynomial_parameter_obstruction
    {theta0 A : ℝ}
    (htheta0 : theta0 < 1)
    (hA : 0 < A) :
    theta0 < fixedPolynomialTheta theta0 A ∧
      fixedPolynomialSigma theta0 A <
        fixedPolynomialTheta theta0 A ∧
      fixedPolynomialTheta theta0 A < 1 ∧
      fixedPolynomialTheta theta0 A -
          fixedPolynomialSigma theta0 A <
        A * (1 - fixedPolynomialSigma theta0 A) := by
  let d : ℝ := fixedPolynomialDelta theta0 A
  have hden : 0 < A + 1 := by linarith
  have hL : 0 < 1 - theta0 := sub_pos.mpr htheta0
  have hdpos : 0 < d := by
    dsimp [d, fixedPolynomialDelta]
    exact div_pos (mul_pos hA hL) hden
  have hdlt : d < 1 - theta0 := by
    dsimp [d, fixedPolynomialDelta]
    apply (div_lt_iff₀ hden).2
    nlinarith
  have hrel : (A + 1) * d = A * (1 - theta0) := by
    dsimp [d, fixedPolynomialDelta]
    field_simp [ne_of_gt hden]
  have hweighted :
      fixedPolynomialTheta theta0 A -
          fixedPolynomialSigma theta0 A <
        A * (1 - fixedPolynomialSigma theta0 A) := by
    change (theta0 + d) - (theta0 + d / 2) <
      A * (1 - (theta0 + d / 2))
    nlinarith [hrel, mul_pos hA hL]
  refine ⟨?_, ?_, ?_, hweighted⟩
  · change theta0 < theta0 + d
    linarith
  · change theta0 + d / 2 < theta0 + d
    linarith
  · change theta0 + d < 1
    linarith

/-- No fixed positive polynomial reciprocal exponent can prove all powers
arbitrarily close to a zero-free boundary through this plain rectangular
Perron ledger. -/
theorem fixedPolynomial_no_perron_balance
    {theta0 A : ℝ}
    (htheta0 : theta0 < 1)
    (hA : 0 < A)
    (B : ℝ) :
    ¬ PerronPowerBalance
      (fixedPolynomialSigma theta0 A)
      (fixedPolynomialTheta theta0 A) A B := by
  have hp := fixedPolynomial_parameter_obstruction htheta0 hA
  intro hbal
  have hforce := perronPowerBalance_forces_weighted_gap
    hbal hp.2.2.1 hA.le
  linarith [hp.2.2.2]

/-! ## PR103 consumers with the factored bridge -/

/-- Conditional PR103 energy rate from the exact external family theorem and
the two now-explicit reciprocal/Perron inputs. -/
theorem pr103_pickupEnergy_clean_rate_of_reciprocal_perron
    (hdir : ExternalPR103DirichletNonvanishing)
    (hrec : ZetaZeroFreeToReciprocalSubpowerBridge)
    (hperron : ReciprocalPerronThreeTermBridge) :
    FixedRateUpper pickupEnergy cleanPR103EnergyRate :=
  pr103_pickupEnergy_clean_rate_of_dirichlet hdir
    (zeroFreeToMertensPowerBridge_of_reciprocal_perron hrec hperron)

/-- Conditional literal endpoint rate through the same factored bridge. -/
theorem pr103_endpointSum_clean_rate_of_reciprocal_perron
    (hdir : ExternalPR103DirichletNonvanishing)
    (hrec : ZetaZeroFreeToReciprocalSubpowerBridge)
    (hperron : ReciprocalPerronThreeTermBridge) :
    FixedRateUpper endpointSum cleanPR103EnergyRate :=
  pr103_endpointSum_clean_rate_of_dirichlet hdir
    (zeroFreeToMertensPowerBridge_of_reciprocal_perron hrec hperron)

/-- Conditional complete signed strong-packet rate through the same factored
bridge. -/
theorem pr103_strongPacket_clean_rate_of_reciprocal_perron
    (hdir : ExternalPR103DirichletNonvanishing)
    (hrec : ZetaZeroFreeToReciprocalSubpowerBridge)
    (hperron : ReciprocalPerronThreeTermBridge) :
    FixedRateUpper
      (fun T =>
        |originalEnergyStrongCross
          (rateGapHeight cleanPR103EnergyRate T) T|)
      cleanPR103EnergyRate :=
  pr103_strongPacket_clean_rate_of_dirichlet hdir
    (zeroFreeToMertensPowerBridge_of_reciprocal_perron hrec hperron)

/-- Conditional exact causal-energy abscissa upper through the factored bridge. -/
theorem pickupEnergyAbscissa_le_exactPR103_of_reciprocal_perron
    (hdir : ExternalPR103DirichletNonvanishing)
    (hrec : ZetaZeroFreeToReciprocalSubpowerBridge)
    (hperron : ReciprocalPerronThreeTermBridge) :
    pickupEnergyAbscissa ≤ exactPR103EnergyBoundary :=
  pickupEnergyAbscissa_le_exactPR103_of_dirichlet hdir
    (zeroFreeToMertensPowerBridge_of_reciprocal_perron hrec hperron)

end GRWTSK.NumberTheory.Moebius.PR103ReciprocalPerronBridge
