/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Lean source assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / ELABORATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianPolynomialHeatPNTStability
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianRelativePolarityPNT
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusFarPrimeBoxForcedCompensation
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Vinogradov-Korobov absolute energy and genuine Gaussian polarity saving

The previous source FarPrimeBoxForcedCompensation already defines the
AUTHENTIC classical (NOT RH) true-Mobius prefix supplier
  ClassicalVinogradovKorobovMertensTarget,
  |M(e^u)|<=C e^u exp(-c phi(u)),
  phi(u)=u^(3/5)/log(3+u)^(1/5).
The transfer to the ORIGINAL integrated nonnegative
  pickupEnergy(T)<=A exp(T-c' phi(T))
is the usual elementary double causal-integral calculation:
split each physical integral into its early and late halves,
using phi(T/2)>=2^(-3/5)phi(T), phi(T)=o(T).
The precise pinned-Lean proof of this transfer is an
EXPLICIT unported target, NOT a new axiom or RH premise.

Combine this with the SOURCE original signed Gaussian energy,
the full source positive reconstruction radius, and the PNT-free
original squarefree positive lower U(T)>=exp(T)/65536:
at near-identity heat s=exp(-T/2), the TRUE original signed
positive/negative relative deficit (H/U) satisfies
  H/U <=131072*A*exp(-c'phi(T)) +2097152*T^4*exp(-T).
This strictly improves previous classical all-log-power relative
bounds to a classical VK STRETCHED-EXPONENTIAL saving, still at
exponential RATE ONE; phi(T)=o(T), so it DOES NOT prove RH.

Additionally at more active polynomially amplified heat
  s_k(T)=exp(-T)*(1+T)^k,
source PNT/VK energy and the L2 Cauchy bound give the
genuine ABSOLUTE signed-energy difference
  |E-H_k| <=2 sqrt(A exp(T-c'phi(T))
                   *16T^4 exp(-T)(1+T)^(2k))
             +16T^4 exp(-T)(1+T)^(2k).
For any fixed k, this is O(exp(-c''phi(T))) for every
0<c''<c'/2, by the ordinary elementary log(T)=o(phi(T)).
No new all-positive-exponential-rate arithmetic is produced.

All original coefficients, squareful zero, causal birth,
both ordered signed Gram terms and J log2 remain unchanged.
The theorem bodies below are UNCOMPILED. RH OPEN.
-/

namespace GRWTSK.NumberTheory.Moebius.GaussianVKRelativeAndAbsolute

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.GaussianPolynomialHeatPNTStability
open GRWTSK.NumberTheory.Moebius.GaussianHalfRootMassImprovement
open GRWTSK.NumberTheory.Moebius.GaussianRelativePolarityPNT
open GRWTSK.NumberTheory.Moebius.GaussianSignedPolarityDebt
open GRWTSK.NumberTheory.Moebius.GaussianSquarefreeRadiusSharpness
open GRWTSK.NumberTheory.Moebius.GaussianLogHeatSource
open GRWTSK.NumberTheory.Moebius.GaussianHeatIntegratedLocalStability
open GRWTSK.NumberTheory.Moebius.FarPrimeBoxForcedCompensation

/-- Standard CLASSICAL Vinogradov-Korobov Mertens -> ORIGINAL physical
cumulative-square energy transfer, with NO synthetic waveform.
For large T, each integration is split [0,T/2] and [T/2,T];
phi(T/2)>=2^(-3/5)phi(T) and phi(T)=o(T). Small T is
absorbed into the single constant A. This is unported Lean.
The PNT/VK prefix is named explicitly, not silently asserted. -/
def ClassicalVKOriginalPhysicalEnergyTransferTarget : Prop :=
  ClassicalVinogradovKorobovMertensTarget →
    ∃ A c : ℝ, 0 ≤ A ∧ 0 < c ∧
      ∀ T : ℝ, 0 ≤ T →
        pickupEnergy T ≤
          A * Real.exp
            (T - c * vinogradovKorobovScale T)

/-- The PREEXISTING causal local horizon estimate pays one fewer
physical-time power than the earlier source global 16T^5:
at the original half-root artificial heat s=exp(-T/2),
the COMPLETE positive response-radius square <=16T^4.
No Mertens input is used here. -/
theorem criticalHalfRoot_radius_le_quartic
    (T : ℝ) (hT : 0 ≤ T) :
    sourceHeatRadiusEnergy (Real.exp (-T/2)) T ≤
      16*T^4 := by
  have hs : 0 ≤ Real.exp (-T/2) := (Real.exp_pos _).le
  have hlocal := sourceHeatRadiusEnergy_le_local_integral hs hT
  have hcap : Real.exp T-1 ≤ Real.exp T := by linarith
  have hfactor :
      0 ≤ 16*(Real.exp (-T/2))^2*T^4 := by positivity
  have hExp : (Real.exp (-T/2))^2*Real.exp T = 1 := by
    rw [pow_two, ←Real.exp_add, ←Real.exp_add]
    have he : (-T/2)+(-T/2)+T=0 := by ring
    rw [he,Real.exp_zero]
  calc
    sourceHeatRadiusEnergy (Real.exp (-T/2)) T ≤
        16*(Real.exp (-T/2))^2*T^4*(Real.exp T-1) := hlocal
    _ ≤ 16*(Real.exp (-T/2))^2*T^4*Real.exp T :=
      mul_le_mul_of_nonneg_left hcap hfactor
    _ = 16*T^4 := by
      calc
        16*(Real.exp (-T/2))^2*T^4*Real.exp T =
          16*T^4*((Real.exp (-T/2))^2*Real.exp T) := by ring
        _ = 16*T^4 := by rw [hExp]; ring

/-- Genuine original ζ-free-zone CLASSICAL improvement to the
actual positive-negative Möbius Gaussian physical overlap:
its signed deficit is at most a VK stretched exponential
fraction of the entire TRUE unsigned heat source.
A and c come from the real classical original Mertens
input and original physical double integral, NOT from RH.
The theorem is conditional on these explicit UNPORTED
pinned-Lean analytic calculus propositions. -/
theorem classical_VK_relative_gaussian_polarity_explicit
    (hVK : ClassicalVinogradovKorobovMertensTarget)
    (hEnergy : ClassicalVKOriginalPhysicalEnergyTransferTarget)
    (hPop : ElementarySquarefreeBandPopulationTarget)
    (hResponse : ElementarySquarefreeTerminalResponseTarget)
    (hIntegral : ElementaryTerminalRadiusIntegralTarget) :
    ∃ A c : ℝ, 0 ≤ A ∧ 0 < c ∧
      ∀ J : ℕ, 9 ≤ J → 32 ≤ dyadicTime J →
        halfRootSignedEnergy (dyadicTime J) ≤
          (131072*A*Real.exp (-c*vinogradovKorobovScale (dyadicTime J)) +
           2097152*(dyadicTime J)^4*
             Real.exp (-dyadicTime J)) *
            halfRootUnsignedEnergy (dyadicTime J) := by
  obtain ⟨A,c,hA,hc,hE⟩ := hEnergy hVK
  refine ⟨A,c,hA,hc,?_⟩
  intro J hJ hT32
  let T : ℝ := dyadicTime J
  let s : ℝ := Real.exp (-T/2)
  have hT : 0 ≤ T := by dsimp [T]; linarith
  have hs : 0 ≤ s := (Real.exp_pos _).le
  have hOriginal := hE T hT
  have hRad : sourceHeatRadiusEnergy s T ≤ 16*T^4 :=
    criticalHalfRoot_radius_le_quartic T hT
  have hHeat := heatEnergy_le_pickup_add_radius hs hT
  have hH :
      sourceHeatEnergy s T ≤
        2*A*Real.exp
           (T-c*vinogradovKorobovScale T)+32*T^4 := by
    linarith [hHeat,hOriginal,hRad]
  have hU := halfRoot_schedule_unsigned_heat_exponential_lower
    hPop hResponse hIntegral J hJ hT32
  have hU0 :
      Real.exp T ≤ 65536*unsignedHeatEnergy s T := by
    have hU' : Real.exp T/65536 ≤
        unsignedHeatEnergy s T := by
      simpa [T,s,halfRootUnsignedEnergy,halfRootHeatTime,
        rootRateHeatTime] using hU
    linarith
  let b : ℝ :=
    2*A*Real.exp (-c*vinogradovKorobovScale T) +
      32*T^4*Real.exp (-T)
  have hb : 0 ≤ b := by dsimp [b]; positivity
  have hExp1 :
      Real.exp (T-c*vinogradovKorobovScale T) =
      Real.exp T*Real.exp (-c*vinogradovKorobovScale T) := by
    rw [←Real.exp_add]
    congr 1
    ring
  have hExp2 : Real.exp (-T)*Real.exp T = 1 := by
    rw [←Real.exp_add]
    simp
  have hReform :
      2*A*Real.exp (T-c*vinogradovKorobovScale T) +
        32*T^4 = b*Real.exp T := by
    have h32 :
        (32*T^4*Real.exp (-T))*Real.exp T = 32*T^4 := by
      calc
        (32*T^4*Real.exp (-T))*Real.exp T =
            32*T^4*(Real.exp (-T)*Real.exp T) := by ring
        _ = 32*T^4 := by rw [hExp2]; ring
    dsimp [b]
    rw [hExp1]
    rw [add_mul,h32]
    ring
  have hPay : b*Real.exp T ≤
      65536*b*unsignedHeatEnergy s T :=
    mul_le_mul_of_nonneg_left hU0 hb
  have hMain :
      sourceHeatEnergy s T ≤
        65536*b*unsignedHeatEnergy s T := by
    rw [hReform] at hH
    exact hH.trans hPay
  simpa [T,s,b,halfRootSignedEnergy,halfRootUnsignedEnergy,
    halfRootHeatTime,rootRateHeatTime] using hMain

/-- A true classical VK original-energy supplier and the
SOURCE-EXACT L2 stability inequality together show that
polynomially amplified exp(-T) HEAT preserves the
ORIGINAL signed cumulative energy at an explicit stretched
exponential rate. The allowed vertical/spectral exponent
remains 1, NOT an RH all-positive rate. -/
theorem classical_VK_polynomial_heat_absolute_stability_explicit
    (hVK : ClassicalVinogradovKorobovMertensTarget)
    (hEnergy : ClassicalVKOriginalPhysicalEnergyTransferTarget)
    (hCauchy : OriginalGaussianL2SquareDifferenceTarget)
    (k : ℕ) :
    ∃ A c : ℝ, 0 ≤ A ∧ 0 < c ∧
      ∀ T : ℝ, 0 ≤ T →
        |pickupEnergy T -
          sourceHeatEnergy (polynomialNearIdentityHeat k T) T| ≤
        2*Real.sqrt
          ((A*Real.exp (T-c*vinogradovKorobovScale T)) *
            (16*T^4*Real.exp (-T)*(1+T)^(2*k))) +
          16*T^4*Real.exp (-T)*(1+T)^(2*k) := by
  obtain ⟨A,c,hA,hc,hE⟩ := hEnergy hVK
  refine ⟨A,c,hA,hc,?_⟩
  intro T hT
  let s : ℝ := polynomialNearIdentityHeat k T
  let M : ℝ := A*Real.exp (T-c*vinogradovKorobovScale T)
  let R : ℝ := 16*T^4*Real.exp (-T)*(1+T)^(2*k)
  obtain ⟨hEpos,hRpos,hBound⟩ :=
    hCauchy s T (polynomialNearIdentityHeat_nonneg k T hT) hT
  have hE : pickupEnergy T ≤ M := hE T hT
  have hR : sourceHeatRadiusEnergy s T ≤ R := by
    simpa [s,R] using polynomialNearIdentityHeat_radius_le k T hT
  have hM0 : 0 ≤ M := by dsimp [M]; positivity
  have hR0 : 0 ≤ R := by dsimp [R]; positivity
  have hprod :
      pickupEnergy T*sourceHeatRadiusEnergy s T ≤ M*R := by
    calc
      pickupEnergy T*sourceHeatRadiusEnergy s T ≤
          M*sourceHeatRadiusEnergy s T :=
        mul_le_mul_of_nonneg_right hE hRpos
      _ ≤ M*R := mul_le_mul_of_nonneg_left hR hM0
  have hsqrt := Real.sqrt_le_sqrt hprod
  have hRes :
      |pickupEnergy T-sourceHeatEnergy s T| ≤
        2*Real.sqrt (M*R)+R := by
    linarith [hBound,hsqrt,hR]
  simpa [M,R,s] using hRes

end GRWTSK.NumberTheory.Moebius.GaussianVKRelativeAndAbsolute
