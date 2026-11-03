/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / PINNED_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusNearSquareRootEulerPrefix
import Mathlib.NumberTheory.EulerProduct.Basic
import Mathlib.Topology.Algebra.InfiniteSum.Order
import Mathlib.NumberTheory.SmoothNumbers
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# The two original finite prime-smooth Euler moments

All finite sums range over the ORIGINAL positive integers 1..N and use
bankSmooth, not a truncated squarefree divisor algebra. The pinned
EulerProduct finite-bank theorem supplies the full infinite geometric
Euler mass. This source does not assume any Mertens/PNT/RH hypothesis.

Mathlib pin: d13f23b723b8a846827a245b89c10fc7d3f11612.
Lean pin: v4.34.1. Full parsing/elaboration/kernel replay NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Moebius.FiniteSmoothEulerMomentProof

open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense
open GRWTSK.NumberTheory.Moebius.PrimeSmoothFiniteConvolution
open GRWTSK.NumberTheory.Moebius.NearSquareRootEulerPrefix

/-- Match the literal bankSmooth predicate to the pinned Mathlib
factoredNumbers carrier, including its exclusion of zero. -/
theorem bankSmooth_iff_factoredNumbers (P : Finset ℕ) (d : ℕ) :
    bankSmooth P d ↔ d ∈ Nat.factoredNumbers P := by
  change (∀ q : ℕ, q.Prime → q ∣ d → q ∈ P) ↔ _
  exact (Nat.mem_factoredNumbers' (s := P) (m := d)).symm

/-- Completely multiplicative reciprocal NATURAL source weight.
Zero is assigned its ordinary real inverse value zero. -/
def reciprocalHom : ℕ →* ℝ where
  toFun d := (d : ℝ)⁻¹
  map_one' := by norm_num
  map_mul' m n := by simp only [Nat.cast_mul, mul_inv_rev]

/-- Completely multiplicative reciprocal-square-root source weight.
All positive prime powers are included. -/
def reciprocalSqrtHom : ℕ →* ℝ where
  toFun d := (Real.sqrt (d : ℝ))⁻¹
  map_one' := by norm_num
  map_mul' m n := by
    rw [Nat.cast_mul, Real.sqrt_mul (Nat.cast_nonneg m), mul_inv_rev]

private theorem inverse_of_gt_one_lt_one {x : ℝ} (hx : 1 < x) : x⁻¹ < 1 := by
  have hpos : 0 < x := lt_trans zero_lt_one hx
  have h := mul_lt_mul_of_pos_right hx (inv_pos.mpr hpos)
  simpa [mul_inv_cancel₀ hpos.ne'] using h

private theorem reciprocal_prime_norm_lt_one (p : ℕ) (hp : Nat.Prime p) :
    ‖reciprocalHom p‖ < 1 := by
  change ‖((p : ℝ)⁻¹)‖ < 1
  have hpReal : (1 : ℝ) < p := by exact_mod_cast hp.one_lt
  rw [Real.norm_eq_abs, abs_of_pos (inv_pos.mpr (lt_trans zero_lt_one hpReal))]
  exact inverse_of_gt_one_lt_one hpReal

private theorem reciprocal_sqrt_prime_norm_lt_one (p : ℕ) (hp : Nat.Prime p) :
    ‖reciprocalSqrtHom p‖ < 1 := by
  change ‖(Real.sqrt (p : ℝ))⁻¹‖ < 1
  have hpReal : (1 : ℝ) < p := by exact_mod_cast hp.one_lt
  have hpn : (0 : ℝ) ≤ p := by positivity
  have hsnonneg : 0 ≤ Real.sqrt (p : ℝ) := Real.sqrt_nonneg _
  have hsquare : Real.sqrt (p : ℝ) ^ 2 = (p : ℝ) := Real.sq_sqrt hpn
  have hs : (1 : ℝ) < Real.sqrt (p : ℝ) := by nlinarith
  rw [Real.norm_eq_abs, abs_of_pos (inv_pos.mpr (lt_trans zero_lt_one hs))]
  exact inverse_of_gt_one_lt_one hs

/-- A generic finite-bank geometric Euler bound. The source is
exactly Nat.factoredNumbers, with the finite prefix embedded in its
nonnegative convergent sum. No zero-free region is involved. -/
theorem finite_bank_geometric_bound
    (B : PrimeBand) (f : ℕ →* ℝ)
    (hprime : ∀ p : ℕ, Nat.Prime p → ‖f p‖ < 1)
    (hpos : ∀ d : ℕ, 0 ≤ f d) (N : ℕ) :
    (∑ d ∈ Finset.Icc 1 N,
       if bankSmooth B.primes d then f d else 0) ≤
      ∏ p ∈ B.primes, (1 - f p)⁻¹ := by
  classical
  let S : Finset (Nat.factoredNumbers B.primes) :=
    (Finset.Icc 1 N).subtype (fun d => d ∈ Nat.factoredNumbers B.primes)
  have hprod : HasSum (fun d : Nat.factoredNumbers B.primes => f d)
      (∏ p ∈ B.primes with p.Prime, (1 - f p)⁻¹) :=
    (EulerProduct.summable_and_hasSum_factoredNumbers_prod_filter_prime_geometric
      (f := f) (fun {p} hp => hprime p hp) B.primes).2
  have hfinite : (∑ d ∈ S, f (d : ℕ)) ≤
      (∏ p ∈ B.primes with p.Prime, (1 - f p)⁻¹) :=
    sum_le_hasSum S (fun d _ => hpos d) hprod
  have hindicator :
      (∑ d ∈ Finset.Icc 1 N,
        if bankSmooth B.primes d then f d else 0) =
        ∑ d ∈ S, f (d : ℕ) := by
    calc
      _ = ∑ d ∈ Finset.Icc 1 N,
          if d ∈ Nat.factoredNumbers B.primes then f d else 0 := by
        apply Finset.sum_congr rfl
        intro d _
        rw [← bankSmooth_iff_factoredNumbers]
      _ = ∑ d ∈ (Finset.Icc 1 N).filter
          (fun d => d ∈ Nat.factoredNumbers B.primes), f d := by
        rw [Finset.sum_filter]
      _ = ∑ d ∈ S, f (d : ℕ) := by
        simpa only [S, Finset.sum_subtype_eq_sum_filter]
  have hfilter : B.primes.filter Nat.Prime = B.primes :=
    Finset.filter_true_of_mem B.prime_mem
  rw [hindicator]
  simpa only [Finset.prod_filter, hfilter] using hfinite

/-- The first missing finite Euler moment in the original bank notation. -/
theorem reciprocal_moment_le_bankWeight (B : PrimeBand) (N : ℕ) :
    (∑ d ∈ Finset.Icc 1 N,
       if bankSmooth B.primes d then (d : ℝ)⁻¹ else 0) ≤
      bankReciprocalWeight B.primes := by
  have h := finite_bank_geometric_bound B reciprocalHom
    reciprocal_prime_norm_lt_one
    (fun d => by change 0 ≤ (d : ℝ)⁻¹; positivity) N
  simpa [reciprocalHom, bankReciprocalWeight] using h

/-- The second missing finite Euler moment in the original bank notation. -/
theorem reciprocal_sqrt_moment_le_bankWeight (B : PrimeBand) (N : ℕ) :
    (∑ d ∈ Finset.Icc 1 N,
       if bankSmooth B.primes d then (Real.sqrt (d : ℝ))⁻¹ else 0) ≤
      bankSquareRootWeight B.primes := by
  have h := finite_bank_geometric_bound B reciprocalSqrtHom
    reciprocal_sqrt_prime_norm_lt_one
    (fun d => by change 0 ≤ (Real.sqrt (d : ℝ))⁻¹; positivity) N
  simpa [reciprocalSqrtHom, bankSquareRootWeight] using h

/-- Source-specific intended complete discharge of the prior named
FiniteSmoothEulerMoments PROPOSITION, for every genuine-prime bank.
No hypothesis about an RH-strength source packet occurs. -/
theorem finiteSmoothEulerMoments_of_pinned_EulerProduct
    (B : PrimeBand) : FiniteSmoothEulerMoments B := by
  intro N hN
  exact ⟨reciprocal_moment_le_bankWeight B N,
    reciprocal_sqrt_moment_le_bankWeight B N⟩

end GRWTSK.NumberTheory.Moebius.FiniteSmoothEulerMomentProof