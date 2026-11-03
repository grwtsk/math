/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusQuantitativeMertensAbsoluteAbel
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusNearSquareRootEulerPrefix
import Mathlib

/-!
# One classical Mertens input for integer, real-cutoff and quotient sources

The original source proposition ClassicalMertensLogPowerInput quantifies
over the positive integer Mertens prefix M(n). The two-coordinate and
near-square-root Euler routes use QuotientMertensLogPower A C, whose source
is M(floor(N/d)) but whose denominator uses the REAL ratio x=N/d.

For every A, the integer bound with constant C gives the exact REAL
cutoff bound with constant 2^A*C; the multiplier is necessary in this
simple comparison because x/(1+log x)^A need not be monotone near x=1.
The reverse transfer uses d=1 and does not inflate the constant.

No external Mertens theorem, Euler moment, near-square-root envelope,
all-positive-rate signed estimate, RH theorem, or new axiom is proved.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.ClassicalMertensRealQuotientBridge

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.Moebius.CausalMertensSquareBridge
open GRWTSK.NumberTheory.Moebius.QuantitativeMertensEulerPrefix
open GRWTSK.NumberTheory.Moebius.NearSquareRootEulerPrefix

/-- The literal original Icc 1..N Mertens source is the already-defined
finiteMertensPrefix N. The N=0 empty inventory is included. -/
theorem original_Icc_prefix_eq_finite (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, moebiusReal n) = finiteMertensPrefix N := by
  classical
  unfold finiteMertensPrefix
  have heq :
      Finset.Icc 1 N = (Finset.range N).image (fun j => j + 1) := by
    ext n
    simp only [Finset.mem_Icc, Finset.mem_image, Finset.mem_range]
    constructor
    · intro hn
      exact ⟨n - 1, by omega, by omega⟩
    · rintro ⟨j, hj, rfl⟩
      omega
  rw [heq, Finset.sum_image]
  intro a ha b hb hab
  omega

/-- A literal real-cutoff version of the *same* integer source, with
the exact floor convention and the real logarithmic denominator. -/
def RealCutoffMertensLogPower (A : ℕ) (D : ℝ) : Prop :=
  ∀ x : ℝ, 1 ≤ x →
    |finiteMertensPrefix ⌊x⌋₊| ≤
      D * x / (1 + Real.log x) ^ A

/-- Elementary floor/log transfer; the arithmetic statement is still
the explicitly supplied original integer Mertens bound. -/
theorem realCutoff_logPower_of_integer
    (A : ℕ) (C : ℝ) (hC : 0 ≤ C)
    (hM : ∀ n : ℕ, 1 ≤ n →
      |finiteMertensPrefix n| ≤
        C * (n : ℝ) / (1 + Real.log (n : ℝ)) ^ A) :
    RealCutoffMertensLogPower A ((2 : ℝ) ^ A * C) := by
  intro x hx
  let n : ℕ := ⌊x⌋₊
  have hxpos : 0 < x := by linarith
  have hn : 1 ≤ n := Nat.le_floor hx
  have hnone : (1 : ℝ) ≤ (n : ℝ) := by exact_mod_cast hn
  have hnpos : (0 : ℝ) < (n : ℝ) := by linarith
  have hfloorle : (n : ℝ) ≤ x := Nat.floor_le hxpos.le
  have hfloorlt : x < (n : ℝ) + 1 := by
    simpa [n] using (Nat.lt_floor_add_one x)
  have htwon : x ≤ 2 * (n : ℝ) := by linarith
  have hlogn : 0 ≤ Real.log (n : ℝ) := Real.log_nonneg hnone
  have hlogx : 0 ≤ Real.log x := Real.log_nonneg hx
  have hlogtwon :
      Real.log x ≤ Real.log (2 : ℝ) + Real.log (n : ℝ) := by
    calc
      Real.log x ≤ Real.log ((2 : ℝ) * (n : ℝ)) :=
        Real.log_le_log hxpos htwon
      _ = Real.log (2 : ℝ) + Real.log (n : ℝ) :=
        Real.log_mul (by norm_num) (ne_of_gt hnpos)
  have hlogtwo : Real.log (2 : ℝ) ≤ 1 := by
    have h := Real.log_le_sub_one_of_pos
      (show (0 : ℝ) < 2 by norm_num)
    linarith
  have hdenorder :
      1 + Real.log x ≤ 2 * (1 + Real.log (n : ℝ)) := by
    linarith
  have hdenn : 0 < (1 + Real.log (n : ℝ)) ^ A :=
    pow_pos (by linarith [hlogn]) _
  have hdenx : 0 < (1 + Real.log x) ^ A :=
    pow_pos (by linarith [hlogx]) _
  have hpow :
      (1 + Real.log x) ^ A ≤
        (2 : ℝ) ^ A * (1 + Real.log (n : ℝ)) ^ A := by
    calc
      (1 + Real.log x) ^ A ≤
          (2 * (1 + Real.log (n : ℝ))) ^ A := by
        gcongr <;> linarith
      _ = _ := by rw [mul_pow]
  have hsource := hM n hn
  change |finiteMertensPrefix n| ≤
    ((2 : ℝ) ^ A * C) * x / (1 + Real.log x) ^ A
  calc
    |finiteMertensPrefix n| ≤
        C * (n : ℝ) / (1 + Real.log (n : ℝ)) ^ A := hsource
    _ ≤ ((2 : ℝ) ^ A * C) * x / (1 + Real.log x) ^ A := by
      apply (div_le_div_iff₀ hdenn hdenx).2
      calc
        (C * (n : ℝ)) * (1 + Real.log x) ^ A ≤
            (C * (n : ℝ)) *
              ((2 : ℝ) ^ A * (1 + Real.log (n : ℝ)) ^ A) :=
          mul_le_mul_of_nonneg_left hpow (mul_nonneg hC hnpos.le)
        _ = ((2 : ℝ) ^ A * C * (n : ℝ)) *
            (1 + Real.log (n : ℝ)) ^ A := by ring
        _ ≤ ((2 : ℝ) ^ A * C * x) *
            (1 + Real.log (n : ℝ)) ^ A := by
          apply mul_le_mul_of_nonneg_right _ hdenn.le
          exact mul_le_mul_of_nonneg_left hfloorle
            (mul_nonneg (by positivity) hC)

/-- The quotient endpoint q=N/d is EXACTLY the real cutoff
floor((N:real)/(d:real)); the original closed summatory source is
reindexed without changing squareful zeros or positive endpoints. -/
theorem quotient_logPower_of_realCutoff
    (A : ℕ) (D : ℝ)
    (hReal : RealCutoffMertensLogPower A D) :
    QuotientMertensLogPower A D := by
  intro N d hd hdN
  have hdpos : (0 : ℝ) < (d : ℝ) := by exact_mod_cast hd
  have hNd : (d : ℝ) ≤ (N : ℝ) := by exact_mod_cast hdN
  have hx : (1 : ℝ) ≤ (N : ℝ) / (d : ℝ) := by
    apply (le_div_iff₀ hdpos).2
    simpa using hNd
  have hBound := hReal ((N : ℝ) / (d : ℝ)) hx
  rw [Nat.floor_div_eq_div N d] at hBound
  simpa only [original_Icc_prefix_eq_finite] using hBound

/-- A uniform C_A for integer Mertens supplies a uniform
2^A C_A for ALL original real quotient cutoffs. In particular C_A
does not vary with the bank, N, d or the observation time. -/
theorem classicalMertens_to_quotientLogPower
    (hClassical : ClassicalMertensLogPowerInput)
    (A : ℕ) (hA : 1 ≤ A) :
    ∃ D : ℝ, 0 ≤ D ∧ QuotientMertensLogPower A D := by
  obtain ⟨C, hC, hM⟩ := hClassical A hA
  refine ⟨(2 : ℝ) ^ A * C, mul_nonneg (by positivity) hC, ?_⟩
  exact quotient_logPower_of_realCutoff A ((2 : ℝ) ^ A * C)
    (realCutoff_logPower_of_integer A C hC hM)

/-- A named global quantifier package for the *existing* quotient
input; no analytic theorem is added by this definition. -/
def ClassicalQuotientMertensLogPowerInput : Prop :=
  ∀ A : ℕ, 1 ≤ A →
    ∃ D : ℝ, 0 ≤ D ∧ QuotientMertensLogPower A D

/-- The integer and real-quotient classical inputs are equivalent
as quantified existence statements. Forward constants inflate
by 2^A; the reverse direction takes d=1 unchanged. -/
theorem classical_integer_iff_quotient :
    ClassicalMertensLogPowerInput ↔
      ClassicalQuotientMertensLogPowerInput := by
  constructor
  · intro h A hA
    exact classicalMertens_to_quotientLogPower h A hA
  · intro h A hA
    obtain ⟨D, hD, hQuot⟩ := h A hA
    refine ⟨D, hD, ?_⟩
    intro n hn
    have hOne := hQuot n 1 (by norm_num) hn
    simpa only [Nat.div_one, Nat.cast_one, div_one,
      original_Icc_prefix_eq_finite] using hOne

/-- Connect the new near-square-root finite Euler consumer to the SAME
classical input used by the original untagged sharp Abel energy.
The near-square-root transfer and finite Euler moments remain
EXPLICIT proof parameters; no Euler or RH-sized analytic assumption
is silently discharged. -/
theorem nearSquareRoot_from_single_classical_source
    (hClassical : ClassicalMertensLogPowerInput)
    (hNear : NearSquareRootEulerFormalizationTarget)
    (B : PrimeBand) (A : ℕ) (hA : 1 ≤ A)
    (hMoments : FiniteSmoothEulerMoments B) :
    ∃ D : ℝ, 0 ≤ D ∧
      ∀ N : ℕ, 1 ≤ N →
        |∑ n ∈ Finset.Icc 1 N, taggedMoebius B.primes true n| ≤
          nearSquareRootRoughEnvelope B A D N ∧
        |∑ n ∈ Finset.Icc 1 N, taggedMoebius B.primes false n| ≤
          nearSquareRootMatchedEnvelope B A D N := by
  obtain ⟨D, hD, hQuot⟩ :=
    classicalMertens_to_quotientLogPower hClassical (2 * A) (by omega)
  refine ⟨D, hD, ?_⟩
  intro N hN
  exact hNear B A D hQuot hMoments N hN

end GRWTSK.NumberTheory.Moebius.ClassicalMertensRealQuotientBridge
