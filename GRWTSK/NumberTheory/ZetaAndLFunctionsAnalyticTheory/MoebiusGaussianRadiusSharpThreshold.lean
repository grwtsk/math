/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / ELABORATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianSquarefreeRadiusSharpness
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianHalfRootZeroFreeBridge
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology

/-!
# Sharp nonnegative reconstruction-error threshold at a=1/2

All results are about the ACTUAL complete positive Gaussian
SOURCE-MINUS-HEAT radiusEnergy, not the signed heated response.
The preceding elementary squarefree band/response/interval
source gates prove at every J>=9:
  exp(T_J)*min(1,s*T_J^2)^2/2^20
  <=R_s(T_J)
  <=16*T_J*exp(T_J)*min(1,s*T_J^2)^2.

For s_a(T)=exp(-a*T), a>=0, T>=1,
  min(1, exp(-a*T)*T^2) >= exp(-a*T).
Therefore
  R_(s_a)(T_J)>=exp((1-2*a)*T_J)/2^20.

If 0<=a<1/2, then for EVERY
  0<r<1-2*a, and EVERY K real,
there are arbitrarily large ORIGINAL dyadic J with
  R_(s_a)(T_J)>K*exp(r*T_J).
That is a rigorous POSITIVE-ERROR obstruction to any
all-positive-rate radius supplier below the sharp a=1/2
threshold. The Gaussian reconstruction error cannot be
claimed subexponential merely because the heat model is
smooth or coefficient-l2 contractive.

For a>=1/2, the already compiled-in-source UPPER
R<=16*T^5 exp((1-2a)T)<=16*T^5
shows a subexponential radius (ordinary math).
Thus the threshold a=1/2 is sharp for this
NONNEGATIVE reconstruction-radius method.

For a>0 the exact log-growth exponent
lim_J log(R_(s_a)(T_J))/T_J =1-2*a follows from
the matched source lower/upper and the elementary
exp(-a*T)*T²<1 eventually. For a<=0 it is 1.
These limit steps are ordinary real analysis and are
documented, not falsely kernel-accepted in this module.

Only the independent elementary real dyadic exponential
divergence step is an additional unported pinned-Lean
Prop. The larger arithmetic signed cancellation (RH)
remains OPEN: the radius obstruction is NOT a theorem
that the signed heated waveform has large energy.
-/

namespace GRWTSK.NumberTheory.Moebius.GaussianRadiusSharpThreshold

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.GaussianSquarefreeRadiusSharpness
open GRWTSK.NumberTheory.Moebius.GaussianHalfRootMassImprovement
open GRWTSK.NumberTheory.Moebius.GaussianSaturatedRadiusUpper
open GRWTSK.NumberTheory.Moebius.GaussianHalfRootZeroFreeBridge
open GRWTSK.NumberTheory.Moebius.OriginalLaplaceZeroBarrier

/-- The previous Gaussian-to-zero-free source still asked for
OriginalInverseRootInventoryTarget, but a concurrent maintained
source has ALREADY supplied its exact finite-sum proof.
This corollary closes that elementary supplier without
adding ANY RH-level analytic or signed-heat assumption. -/
theorem halfRoot_zero_free_without_separate_inventory_premise
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (hCeiling : DyadicOriginalEnergyCeilingTarget)
    (r : ℝ) (hr : 0 < r)
    (C : ℝ) (hC : 0 ≤ C)
    (hObserved : ∀ J : ℕ, 1 ≤ J →
      sourceHeatEnergy
        (rootRateHeatTime (1/2) (dyadicTime J))
        (dyadicTime J) ≤
          C*Real.exp (r*dyadicTime J)) :
    ZetaZeroFreeRightOf ((1+r)/2) := by
  exact halfRoot_heat_single_rate_implies_zeta_zero_free
    hRight hHolo hIdentity hCeiling
    originalInverseRootInventory_closed_from_existing_source
    r hr C hC hObserved

/-- Likewise the previous conditional hypothetical-zero
source-observation spike no longer needs a separate
unported inverse-root inventory premise. The existence
of an offcritical zero is ONLY an antecedent, not asserted. -/
theorem hypothetical_zero_halfRoot_spikes_without_inventory_premise
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (hCeiling : DyadicOriginalEnergyCeilingTarget)
    (rho : ℂ)
    (hhalf : (1/2 : ℝ) < rho.re)
    (hone : rho.re < 1)
    (hzeta : _root_.riemannZeta rho = 0)
    (r : ℝ) (hr : 0 < r)
    (hrho : r < 2*rho.re-1)
    (K : ℝ) :
    ∃ J : ℕ, 1 ≤ J ∧
      K*Real.exp (r*dyadicTime J) <
        sourceHeatEnergy
          (rootRateHeatTime (1/2) (dyadicTime J))
          (dyadicTime J) := by
  exact hypothetical_zero_forces_halfRoot_heat_positive_spikes
    hRight hHolo hIdentity hCeiling
    originalInverseRootInventory_closed_from_existing_source
    rho hhalf hone hzeta r hr hrho K

/-- Elementary scalar fact for the unbounded ORIGINAL
fixed dyadic J log2 grid: exp(delta*T_J) diverges for
every delta>0. It needs no arithmetic or RH theorem. -/
def ElementaryDyadicExponentialDivergenceTarget : Prop :=
  ∀ (delta : ℝ), 0 < delta →
    ∀ (K : ℝ), ∃ J : ℕ, 9 ≤ J ∧
      K < Real.exp (delta*dyadicTime J)/1048576

/-- A simple but KEY source-preserving lower envelope:
for a>=0,T_J>=1, min(1,exp(-aT_J)*T_J²)
is at least exp(-aT_J), so no artificial heat
schedule with exponent a<1/2 has subexponential
COMPLETE positive reconstruction-radius energy. -/
theorem dyadicGaussianRadius_lower_exponential
    (hPop : ElementarySquarefreeBandPopulationTarget)
    (hLoss : ElementarySquarefreeGaussianLossTarget)
    (hResponse : ElementarySquarefreeTerminalResponseTarget)
    (hIntegral : ElementaryTerminalRadiusIntegralTarget)
    (a : ℝ) (ha : 0 ≤ a)
    (J : ℕ) (hJ : 9 ≤ J) :
    Real.exp ((1-2*a)*dyadicTime J)/1048576 ≤
      sourceHeatRadiusEnergy
        (rootRateHeatTime a (dyadicTime J)) (dyadicTime J) := by
  let T : ℝ := dyadicTime J
  let s : ℝ := rootRateHeatTime a T
  have hT : 1 ≤ T := (hPop J hJ).1
  have hs : 0 ≤ s := rootRateHeatTime_nonneg a T
  have hT2 : (1 : ℝ) ≤ T^2 := by nlinarith
  have hexpLe : Real.exp (-a*T) ≤ 1 := by
    have hx : -a*T ≤ 0 := by
      have := mul_nonneg ha (le_trans (by norm_num : (0 : ℝ) ≤ 1) hT)
      linarith
    have he := (Real.exp_le_exp).2 hx
    simpa only [Real.exp_zero] using he
  have hsmall : Real.exp (-a*T) ≤
      Real.exp (-a*T)*T^2 := by
    calc
      Real.exp (-a*T) = Real.exp (-a*T)*1 := by ring
      _ ≤ Real.exp (-a*T)*T^2 :=
        mul_le_mul_of_nonneg_left hT2 (Real.exp_pos _).le
  have hm : Real.exp (-a*T) ≤ min 1 (s*T^2) := by
    dsimp [s,rootRateHeatTime]
    exact le_min hexpLe hsmall
  have hminNonneg : 0 ≤ min 1 (s*T^2) := by
    dsimp [s]
    exact le_min (by norm_num) (by positivity)
  have hSquare :
      (Real.exp (-a*T))^2 ≤ (min 1 (s*T^2))^2 :=
    (sq_le_sq₀ (Real.exp_pos _).le hminNonneg).mpr hm
  have hExp :
      Real.exp T*(Real.exp (-a*T))^2 =
        Real.exp ((1-2*a)*T) := by
    rw [pow_two, ← Real.exp_add, ← Real.exp_add]
    congr 1
    ring
  have hLower :=
    true_source_radiusEnergy_lower
      hPop hLoss hResponse hIntegral J hJ s hs
  have hNonneg : 0 ≤ Real.exp T/1048576 := by positivity
  calc
    Real.exp ((1-2*a)*T)/1048576 =
        (Real.exp T/1048576)*(Real.exp (-a*T))^2 := by
          rw [← hExp]
          ring
    _ ≤ (Real.exp T/1048576)*(min 1 (s*T^2))^2 :=
      mul_le_mul_of_nonneg_left hSquare hNonneg
    _ ≤ sourceHeatRadiusEnergy s T := hLower

/-- A HYPOTHETICALLY smaller heat damping a<1/2 cannot
have a complete all-rate positive reconstruction radius.
The proof is arithmetic-free after the elementary
squarefree band/source physical-collar lower bound.
These are necessarily POSITIVE error excursions, NOT
offcritical ζ zeros and NOT signed waveform growth. -/
theorem belowHalfGaussianRadius_forces_positive_error_spikes
    (hPop : ElementarySquarefreeBandPopulationTarget)
    (hLoss : ElementarySquarefreeGaussianLossTarget)
    (hResponse : ElementarySquarefreeTerminalResponseTarget)
    (hIntegral : ElementaryTerminalRadiusIntegralTarget)
    (hDivergence : ElementaryDyadicExponentialDivergenceTarget)
    (a r : ℝ) (ha : 0 ≤ a) (haHalf : a < 1/2)
    (hr : 0 < r) (hrBelow : r < 1-2*a)
    (K : ℝ) :
    ∃ J : ℕ, 9 ≤ J ∧
      K*Real.exp (r*dyadicTime J) <
        sourceHeatRadiusEnergy
          (rootRateHeatTime a (dyadicTime J)) (dyadicTime J) := by
  have hDelta : 0 < (1-2*a)-r := by linarith
  obtain ⟨J,hJ,hLarge⟩ := hDivergence ((1-2*a)-r) hDelta K
  refine ⟨J,hJ,?_⟩
  have hLower := dyadicGaussianRadius_lower_exponential
    hPop hLoss hResponse hIntegral a ha J hJ
  have hMul :
      K*Real.exp (r*dyadicTime J) <
      (Real.exp (((1-2*a)-r)*dyadicTime J)/1048576)*
        Real.exp (r*dyadicTime J) :=
    mul_lt_mul_of_pos_right hLarge (Real.exp_pos _)
  have hExp :
      Real.exp (((1-2*a)-r)*dyadicTime J)*
        Real.exp (r*dyadicTime J) =
          Real.exp ((1-2*a)*dyadicTime J) := by
    rw [←Real.exp_add]
    congr 1
    ring
  have hRearrange :
      (Real.exp (((1-2*a)-r)*dyadicTime J)/1048576)*
          Real.exp (r*dyadicTime J) =
          Real.exp ((1-2*a)*dyadicTime J)/1048576 := by
    rw [div_mul_eq_mul_div, hExp]
  rw [hRearrange] at hMul
  exact hMul.trans hLower

end GRWTSK.NumberTheory.Moebius.GaussianRadiusSharpThreshold
