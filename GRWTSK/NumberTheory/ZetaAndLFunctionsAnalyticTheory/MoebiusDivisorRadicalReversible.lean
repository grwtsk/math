/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDivisorPNTTransfer
import Mathlib.NumberTheory.ArithmeticFunction.Misc
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Exact Dirichlet inverse of the original Möbius radical convolution

The genuine radical kernel h(n)=rad(n)^(-1/2) has h(1)=1. Its
pinned Mathlib Dirichlet inverse g gives g*(h*mu)=mu. The
complete original integer prefix is reconstructed by FINITE
Dirichlet Fubini, without assuming an RH-strength estimate.

The original coefficient bridge (h*mu)(n)=mu(n)*C(n), the
explicit prime-power inverse, and the analytic scale equivalence
remain explicitly named Lean targets where not formally proved.
The independent mathematical arguments appear in the review.

Not a new experimental observer or a proof of RH.
-/

namespace GRWTSK.NumberTheory.Moebius.DivisorRadicalReversible

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.DivisorCausalGramCollapse
open GRWTSK.NumberTheory.Moebius.DivisorPNTTransfer

/-- The original radical kernel equals one at its original n=1. -/
theorem radicalArithmetic_one :
    radicalArithmetic 1 = 1 := by
  simp [radicalArithmetic, radicalWeight, finiteRadical]

/-- The scalar h(1) is genuinely invertible in the reals. -/
private def radicalOneInvertible :
    Invertible (radicalArithmetic 1) := by
  rw [radicalArithmetic_one]
  infer_instance

/-- The actual Dirichlet inverse in pinned Mathlib. -/
noncomputable def radicalInverse : ArithmeticFunction ℝ :=
  ArithmeticFunction.dirichletInverse
    radicalArithmetic radicalOneInvertible

theorem radicalInverse_mul_radical :
    radicalInverse * radicalArithmetic = 1 := by
  unfold radicalInverse
  exact ArithmeticFunction.dirichletInverse_mul_self
    radicalArithmetic radicalOneInvertible

theorem radical_mul_radicalInverse :
    radicalArithmetic * radicalInverse = 1 := by
  unfold radicalInverse
  exact ArithmeticFunction.self_mul_dirichletInverse
    radicalArithmetic radicalOneInvertible

/-- No surrogate sign source: the inverse returns genuine mu. -/
theorem radicalInverse_mul_convolution :
    radicalInverse * radicalConvolution =
      realMoebiusArithmetic := by
  calc
    radicalInverse * radicalConvolution =
        radicalInverse *
          (radicalArithmetic * realMoebiusArithmetic) := rfl
    _ = (radicalInverse * radicalArithmetic) *
          realMoebiusArithmetic := by ac_rfl
    _ = realMoebiusArithmetic := by
      rw [radicalInverse_mul_radical, one_mul]

def radicalConvolutionPrefix (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N, radicalConvolution n

/-- Complete ORIGINAL finite Mertens prefix recovered by finite
inverse convolution. Includes all integer quotients and n=1. -/
theorem originalMertensPrefix_inverse_convolution (N : ℕ) :
    mertensPrefix (N : ℝ) =
      ∑ d ∈ Finset.Icc 1 N,
        radicalInverse d * radicalConvolutionPrefix (N / d) := by
  have h := ArithmeticFunction.sum_Ioc_mul_eq_sum_sum
    radicalInverse radicalConvolution N
  rw [radicalInverse_mul_convolution] at h
  simp only [ioc_zero_eq_icc_one] at h
  calc
    mertensPrefix (N : ℝ) =
        ∑ n ∈ Finset.Icc 1 N, realMoebiusArithmetic n := by
      simp [mertensPrefix, realMoebiusArithmetic, moebiusReal]
    _ = ∑ d ∈ Finset.Icc 1 N,
          radicalInverse d *
            (∑ k ∈ Finset.Icc 1 (N / d),
              radicalConvolution k) := h
    _ = ∑ d ∈ Finset.Icc 1 N,
          radicalInverse d *
            radicalConvolutionPrefix (N / d) := rfl

/-- Unconditional original finite signed coefficient-error allowance. -/
theorem originalMertensPrefix_inverse_abs_le (N : ℕ) :
    |mertensPrefix (N : ℝ)| ≤
      ∑ d ∈ Finset.Icc 1 N,
        |radicalInverse d| *
          |radicalConvolutionPrefix (N / d)| := by
  rw [originalMertensPrefix_inverse_convolution]
  calc
    |∑ d ∈ Finset.Icc 1 N,
        radicalInverse d *
          radicalConvolutionPrefix (N / d)| ≤
      ∑ d ∈ Finset.Icc 1 N,
        |radicalInverse d *
          radicalConvolutionPrefix (N / d)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ = _ := by
      apply Finset.sum_congr rfl
      intro d hd
      rw [abs_mul]

/-- True original weighted divisor coefficient prefix. Its equality
to the convolution retains the explicit previous source hypothesis. -/
def originalWeightedPrefix (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N,
    moebiusReal n * divisorReciprocalRoot n

theorem radicalConvolutionPrefix_eq_originalWeighted
    (hcoeff : OriginalWeightedRadicalConvolution) (N : ℕ) :
    radicalConvolutionPrefix N = originalWeightedPrefix N := by
  unfold radicalConvolutionPrefix originalWeightedPrefix
  apply Finset.sum_congr rfl
  intro n hn
  exact hcoeff n (by
    have hpos := (Finset.mem_Icc.mp hn).1
    omega)

theorem originalMertensPrefix_inverse_weighted
    (hcoeff : OriginalWeightedRadicalConvolution) (N : ℕ) :
    mertensPrefix (N : ℝ) =
      ∑ d ∈ Finset.Icc 1 N,
        radicalInverse d *
          originalWeightedPrefix (N / d) := by
  rw [originalMertensPrefix_inverse_convolution]
  apply Finset.sum_congr rfl
  intro d hd
  rw [radicalConvolutionPrefix_eq_originalWeighted hcoeff]

/-- Exact mathematical local formula g(p^k)=-p^-1/2 *
(1-p^-1/2)^(k-1). Named UNPROVED Lean target, not an axiom. -/
def RadicalInversePrimePowerFormula : Prop :=
  ∀ p k : ℕ, Nat.Prime p → 0 < k →
    radicalInverse (p ^ k) =
      -((Real.sqrt (p : ℝ))⁻¹) *
        (1 - (Real.sqrt (p : ℝ))⁻¹) ^ (k - 1)

/-- The reversible signed kernel majorant. Mathematical argument:
the prime-power factors have magnitude at most p^-1/2.
Named UNPROVED Lean proposition, not a new axiom. -/
def RadicalInverseCoefficientMajorant : Prop :=
  ∀ n : ℕ, |radicalInverse n| ≤ radicalWeight n

def finiteRadicalMoment (σ : ℝ) (N : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 N,
    radicalWeight d / (d : ℝ) ^ σ

/-- New finite true-Mertens two-zone estimate at 1/2 < σ < 1,
without any free source error. Its real-power proof remains an
explicit unproved Lean Prop target (paper proof complete). -/
def TwoZoneRadicalPowerEnvelope : Prop :=
  ∀ (K N : ℕ) (δ σ : ℝ),
    1 ≤ K → 1 ≤ N → 0 ≤ δ →
      (1 / 2 : ℝ) < σ → σ < 1 →
      ActualMertensTailAt K δ →
      |radicalConvolutionPrefix N| ≤
        δ * (N : ℝ) * finiteRadicalMoment 1 N +
          (K : ℝ) ^ (1 - σ) * (N : ℝ) ^ σ *
            finiteRadicalMoment σ N

def PowerBoundOnPositive (f : ℕ → ℝ) (σ : ℝ) : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    ∀ N : ℕ, 1 ≤ N →
      |f N| ≤ C * (N : ℝ) ^ σ

/-- RH-scale equivalence of the ACTUAL original Mertens and
radical-weighted source: mathematically follows from both finite
convolutions and the inverse majorant, but is NOT Lean-proved. -/
def RadicalMertensPowerEquivalence : Prop :=
  ∀ σ : ℝ, (1 / 2 : ℝ) < σ →
    (PowerBoundOnPositive
        (fun N => mertensPrefix (N : ℝ)) σ ↔
      PowerBoundOnPositive originalWeightedPrefix σ)

end GRWTSK.NumberTheory.Moebius.DivisorRadicalReversible
