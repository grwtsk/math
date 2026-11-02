/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / PINNED_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusHighSmoothCofactorCountProof
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusHighSmoothTimeLocalGramProof
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusFiniteSmoothEulerMomentsProof
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# All-positive-rate consequence for the ORIGINAL high-incident dyadic Gram

This candidate combines finite original-index divisor/cofactor counting,
true physical-time birth localization, and the already authored finite
signed HH+HL+LH cardinal transfer. This is a fixed-bank, same-shell
statement. It does NOT bound the unchanged LL or cross-shell remainder.

Pinned: Lean v4.34.1 / Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Full compilation, fresh kernel checking and transitive axiom audit NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Moebius.HighSmoothAllRateProof

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense
open GRWTSK.NumberTheory.MoebiusPNTDyadicBilinearBlock
open GRWTSK.NumberTheory.Moebius.HighSmoothDensePairs
open GRWTSK.NumberTheory.Moebius.HighSmoothIncidentDyadic
open GRWTSK.NumberTheory.Moebius.HighSmoothCofactorCountProof
open GRWTSK.NumberTheory.Moebius.HighSmoothTimeLocalGramProof
open GRWTSK.NumberTheory.Moebius.FiniteSmoothEulerMomentProof

/-- The original unaltered source-clipped dyadic shell has at most
X positive integer indices. -/
theorem balancedBlock_card_le_length (X : ℕ) (T : ℝ) :
    (balancedBlock X T).card ≤ X := by
  change ((Finset.Ioc X (2 * X)).filter
    (fun n => n ∈ endpointIndex T)).card ≤ X
  calc
    _ ≤ (Finset.Ioc X (2 * X)).card := Finset.card_filter_le _ _
    _ = X := by simp; omega

/-- Original high and low support really partition the same
source-clipped block: no index, sign, or zero symbol is dropped. -/
theorem highLow_card_le_original_length
    (B : PrimeBand) (X : ℕ) (T : ℝ) :
    ((highSmoothBlock B X T).card : ℝ) +
      ((lowSmoothBlock B X T).card : ℝ) ≤ (X : ℝ) := by
  have hu := highLow_union_eq_originalBlock B X T
  have hd := highLow_disjoint B X T
  have hc : (highSmoothBlock B X T).card +
      (lowSmoothBlock B X T).card = (balancedBlock X T).card := by
    rw [← Finset.card_union_of_disjoint hd, hu]
  exact_mod_cast (hc.le.trans (balancedBlock_card_le_length X T))

/-- The original, masked signed source HH+HL+LH sector, not a
surrogate positivity or matrix model, has a source-exact bound.
All finite cardinal inputs are proved by separate arithmetic and
physical-time files imported above. -/
theorem highIncident_abs_le_exp_sqrt_poly
    (B : PrimeBand) (a b : Bool) (A : Finset ℕ)
    (X : ℕ) (hX : 1 ≤ X) :
    let T := Real.log (2 * (X : ℝ))
    |highIncidentTaggedBlock B a b A X T| ≤
      8 * Real.log 2 * Real.exp (2 * Real.sqrt T) *
        (1 + T / Real.log 2) ^ B.primes.card := by
  dsimp
  let T : ℝ := Real.log (2 * (X : ℝ))
  let E : ℝ := Real.exp (2 * Real.sqrt T) *
    (1 + T / Real.log 2) ^ B.primes.card
  let K : ℝ := 4 * Real.log 2 / (X : ℝ)
  have hXpos : (0 : ℝ) < X := by exact_mod_cast (lt_of_lt_of_le (by norm_num : 0 < 1) hX)
  have hXne : (X : ℝ) ≠ 0 := hXpos.ne'
  have hK : 0 ≤ K := by
    dsimp [K]
    have hlog : 0 < Real.log 2 := Real.log_pos (by norm_num)
    positivity
  have hSupport := highLow_card_le_original_length B X T
  have hCount : ((highSmoothBlock B X T).card : ℝ) ≤ E := by
    dsimp [T, E]
    exact highSmoothCofactorCount_target B X hX
  have hGram : ∀ m ∈ balancedBlock X T,
      ∀ n ∈ balancedBlock X T,
      |pickupResponseGram T m n| ≤ K := by
    intro m hm n hn
    change |pickupResponseGram (Real.log (2 * (X : ℝ))) m n| ≤
      4 * Real.log 2 / (X : ℝ)
    exact original_dyadic_gram_on_balancedBlock X hX m n hm hn
  have h := highIncident_abs_le_of_support_count
    B a b A X T K E hK hSupport hCount hGram
  calc
    |highIncidentTaggedBlock B a b A X T| ≤
      2 * (X : ℝ) * E * K := h
    _ = 8 * Real.log 2 * Real.exp (2 * Real.sqrt T) *
        (1 + T / Real.log 2) ^ B.primes.card := by
      dsimp [E, K]
      field_simp [hXne]
      ring

/-- Universal quantitative sqrt-to-linear rate tradeoff. It is
strictly algebraic; the only analytic input is sqrt(x)^2=x. -/
theorem two_sqrt_le_linear_rate
    (ε T : ℝ) (hε : 0 < ε) (hT : 0 ≤ T) :
    2 * Real.sqrt T ≤ 2 / ε + (ε / 2) * T := by
  have hroot : Real.sqrt T ^ 2 = T := Real.sq_sqrt hT
  have hsquare := sq_nonneg (ε * Real.sqrt T - 2)
  have hm : 0 ≤ (ε * Real.sqrt T - 2) ^ 2 := hsquare
  rw [sub_sq, mul_pow, hroot] at hm
  have hεne : ε ≠ 0 := hε.ne'
  have hmul : ε * (2 * Real.sqrt T) ≤
      ε * (2 / ε + (ε / 2) * T) := by
    have hright : ε * (2 / ε + (ε / 2) * T) =
        2 + (ε ^ 2 * T) / 2 := by
      field_simp [hεne]
      ring
    rw [hright]
    nlinarith [hm]
  exact (mul_le_mul_left hε).mp hmul

/-- A fixed natural power of 1+T/log(2) costs an arbitrarily
small positive exponential rate with an explicit finite constant. -/
theorem one_add_div_pow_le_exp_rate
    (r : ℕ) (a ε T : ℝ) (ha : 0 < a) (hε : 0 < ε)
    (hT : 0 ≤ T) :
    (1 + T / a) ^ r ≤
      (1 + 2 * ((r : ℝ) + 1) / (ε * a)) ^ r *
        Real.exp ((ε / 2) * T) := by
  let q : ℝ := ε / (2 * ((r : ℝ) + 1))
  have hq : 0 < q := by dsimp [q]; positivity
  let c : ℝ := 1 + (q * a)⁻¹
  have hqa : 0 < q * a := mul_pos hq ha
  have hqT : 0 ≤ q * T := mul_nonneg hq.le hT
  have hc : 0 ≤ c := by dsimp [c]; positivity
  have hlin : (1 + T / a) ≤ c * (1 + q * T) := by
    have hfactor : T / a = (q * a)⁻¹ * (q * T) := by
      dsimp
      field_simp [ha.ne', hq.ne']
      ring
    rw [hfactor]
    dsimp [c]
    have hInv : 0 ≤ (q * a)⁻¹ := inv_nonneg.mpr hqa.le
    nlinarith [mul_nonneg hInv hqT]
  have hexp : 1 + q * T ≤ Real.exp (q * T) := Real.add_one_le_exp _
  have hbound : (1 + T / a) ≤ c * Real.exp (q * T) :=
    hlin.trans (mul_le_mul_of_nonneg_left hexp hc)
  have hpow : (1 + T / a) ^ r ≤ (c * Real.exp (q * T)) ^ r := by
    exact pow_le_pow_left₀ (by positivity) hbound _
  have hpn : (r : ℝ) * (q * T) ≤ (ε / 2) * T := by
    have hqeq : 2 * ((r : ℝ) + 1) * q = ε := by
      dsimp [q]
      field_simp
      ring
    have hrate : (r : ℝ) * q ≤ ε / 2 := by nlinarith [hq.le]
    have hh := mul_le_mul_of_nonneg_right hrate hT
    nlinarith [hh]
  have he : Real.exp ((r : ℝ) * (q * T)) ≤
      Real.exp ((ε / 2) * T) := Real.exp_le_exp.mpr hpn
  have hpower : Real.exp (q * T) ^ r =
      Real.exp ((r : ℝ) * (q * T)) := by
    rw [← Real.exp_nat_mul]
  have hceq : c = 1 + 2 * ((r : ℝ) + 1) / (ε * a) := by
    dsimp [c, q]
    have hr : ((r : ℝ) + 1) ≠ 0 := by positivity
    have hden : ε * a ≠ 0 := mul_ne_zero hε.ne' ha.ne'
    field_simp [hε.ne', ha.ne', hr, hden]
    ring
  calc
    (1 + T / a) ^ r ≤ (c * Real.exp (q * T)) ^ r := hpow
    _ = c ^ r * Real.exp ((r : ℝ) * (q * T)) := by
      rw [mul_pow, hpower]
    _ ≤ c ^ r * Real.exp ((ε / 2) * T) :=
      mul_le_mul_of_nonneg_left he (pow_nonneg hc _)
    _ = _ := by rw [hceq]

/-- The original required ALL-POSITIVE-RATE proposition: for a
fixed true-prime bank, no Mertens or RH hypothesis is needed for
the isolated SAME-SHELL HH+HL+LH subpacket. -/
theorem highIncidentSameShellAllRate_of_arithmetic_and_Gram :
    HighIncidentSameShellAllRateTarget := by
  intro B ε hε
  let a : ℝ := Real.log 2
  let c : ℝ := 1 + 2 * ((B.primes.card : ℝ) + 1) / (ε * a)
  let C : ℝ := 8 * a * Real.exp (2 / ε) * c ^ B.primes.card
  have ha : 0 < a := Real.log_pos (by norm_num)
  have hc : 0 ≤ c := by dsimp [c]; positivity
  have hC : 0 ≤ C := by dsimp [C]; positivity
  refine ⟨C, hC, ?_⟩
  intro tagA tagB mask X hX
  let T : ℝ := Real.log (2 * (X : ℝ))
  have hT : 0 ≤ T := by
    apply Real.log_nonneg
    have hx : (1 : ℝ) ≤ X := by exact_mod_cast hX
    dsimp [T]
    linarith
  have hsqrt := two_sqrt_le_linear_rate ε T hε hT
  have hPoly := one_add_div_pow_le_exp_rate
    B.primes.card a ε T ha hε hT
  have hExp : Real.exp (2 * Real.sqrt T) ≤
      Real.exp (2 / ε) * Real.exp ((ε / 2) * T) := by
    have h := Real.exp_le_exp.mpr hsqrt
    simpa only [Real.exp_add] using h
  have hPnonneg : 0 ≤ (1 + T / a) ^ B.primes.card := by
    have hx : 0 ≤ 1 + T / a := by positivity
    positivity
  have hMultiply : Real.exp (2 * Real.sqrt T) *
      (1 + T / a) ^ B.primes.card ≤
      (Real.exp (2 / ε) * Real.exp ((ε / 2) * T)) *
      (c ^ B.primes.card * Real.exp ((ε / 2) * T)) := by
    apply mul_le_mul hExp
    · simpa only [c] using hPoly
    · exact hPnonneg
    · exact mul_nonneg (Real.exp_pos _).le (Real.exp_pos _).le
  have hOriginal := highIncident_abs_le_exp_sqrt_poly B tagA tagB mask X hX
  dsimp at hOriginal
  calc
    |highIncidentTaggedBlock B tagA tagB mask X T| ≤
      8 * a * (Real.exp (2 * Real.sqrt T) *
        (1 + T / a) ^ B.primes.card) := by
      simpa only [a, mul_assoc] using hOriginal
    _ ≤ 8 * a *
        ((Real.exp (2 / ε) * Real.exp ((ε / 2) * T)) *
         (c ^ B.primes.card * Real.exp ((ε / 2) * T))) :=
      mul_le_mul_of_nonneg_left hMultiply (by positivity)
    _ = C * Real.exp (ε * T) := by
      have hhalf : Real.exp ((ε / 2) * T) *
          Real.exp ((ε / 2) * T) = Real.exp (ε * T) := by
        rw [← Real.exp_add]
        congr 1
        ring
      calc
        _ = (8 * a * Real.exp (2 / ε) * c ^ B.primes.card) *
              (Real.exp ((ε / 2) * T) * Real.exp ((ε / 2) * T)) := by ring
        _ = C * Real.exp (ε * T) := by rw [hhalf]; rfl

end GRWTSK.NumberTheory.Moebius.HighSmoothAllRateProof