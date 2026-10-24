# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ConductorThreeTypeIICoefficientNorms.Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6dfd6a331d07998d68d2e7d5d700bf4593184b07` · SHA-256 `f81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeVaughanBlocks
public import Mathlib.NumberTheory.Divisors
import Mathlib.Tactic

/-!
# Elementary coefficient bounds for conductor-three Type II blocks

This file records only bounds available from the finite Vaughan
coefficients and Mathlib's present divisor API.  In particular, the
subpolynomial divisor estimate is exposed below as a named proposition; it
is not assumed and is not silently replaced by an axiom.
-/

public section

namespace Surface.Core.ConductorThreeTypeIICoefficientNorms

noncomputable section

open scoped ArithmeticFunction BigOperators
open Surface.Core.ConductorThreeCharacterArithmetic
open Surface.Core.ConductorThreeTwistedVaughan
open Surface.Core.ConductorThreeVaughanBlocks
open Surface.Core.TypeII

/-! ## Truncated Möbius divisor coefficient -/

/-- The truncated Möbius divisor coefficient is bounded by the number of
divisors.  At `k = 0`, both sides are zero under Mathlib's conventions for
arithmetic functions and `Nat.divisors 0`. -/
@[surface_novel, surface_published]
theorem abs_vaughanDivisorCoefficient_le_card_divisors
    (V k : ℕ) :
    |vaughanDivisorCoefficient V k| ≤ (k.divisors.card : ℝ) := by
  by_cases hk : k = 0
  · subst k
    simp [Nat.divisors_zero]
  · rw [vaughanDivisorCoefficient,
      ArithmeticFunction.coe_mul_zeta_apply]
    calc
      |∑ d ∈ k.divisors, vaughanMoebiusBelow V d| ≤
          ∑ d ∈ k.divisors, |vaughanMoebiusBelow V d| :=
        Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ _d ∈ k.divisors, (1 : ℝ) := by
        apply Finset.sum_le_sum
        intro d hd
        simp only [vaughanMoebiusBelow,
          truncateArithmeticFunction_apply]
        split_ifs
        · rcases ArithmeticFunction.moebius_eq_or d with h | h | h
          · norm_num [h]
          · norm_num [h]
          · norm_num [h]
        · simp
      _ = (k.divisors.card : ℝ) := by simp

/-- Requested public spelling of the preceding checked bound. -/
@[surface_adapter, surface_published]
theorem truncatedMobiusDivisorSum_le_divisorCount
    (V k : ℕ) :
    |vaughanDivisorCoefficient V k| ≤ (k.divisors.card : ℝ) :=
  abs_vaughanDivisorCoefficient_le_card_divisors V k

/-! ## Euclidean block vectors -/

/-- The left dyadic Vaughan coefficients with their intended `ℓ²` norm. -/
@[expose]
def blockLeftEuclideanCoefficient {N : ℕ} (B : TypeIIDyadicBlock N) :
    EuclideanSpace ℂ B.Left :=
  WithLp.toLp 2 (blockLeftCoefficient B)

/-- The right dyadic Vaughan coefficients with their intended `ℓ²` norm. -/
@[expose]
def blockRightEuclideanCoefficient {N : ℕ} (B : TypeIIDyadicBlock N) :
    EuclideanSpace ℂ B.Right :=
  WithLp.toLp 2 (blockRightCoefficient B)

private def leftShellOffset {N : ℕ} (B : TypeIIDyadicBlock N) :
    B.Left → Fin B.M :=
  fun m ↦ ⟨m.1.1 - (B.M + 1), by omega⟩

private theorem leftShellOffset_injective {N : ℕ}
    (B : TypeIIDyadicBlock N) : Function.Injective (leftShellOffset B) := by
  intro m n h
  apply Subtype.ext
  apply Fin.ext
  have hoff : m.1.1 - (B.M + 1) = n.1.1 - (B.M + 1) :=
    congrArg Fin.val h
  have hm : B.M + 1 ≤ m.1.1 := by omega
  have hn : B.M + 1 ≤ n.1.1 := by omega
  calc
    m.1.1 = (m.1.1 - (B.M + 1)) + (B.M + 1) :=
      (Nat.sub_add_cancel hm).symm
    _ = (n.1.1 - (B.M + 1)) + (B.M + 1) := by rw [hoff]
    _ = n.1.1 := Nat.sub_add_cancel hn

private def rightShellOffset {N : ℕ} (B : TypeIIDyadicBlock N) :
    B.Right → Fin B.K :=
  fun k ↦ ⟨k.1.1 - (B.K + 1), by omega⟩

private theorem rightShellOffset_injective {N : ℕ}
    (B : TypeIIDyadicBlock N) : Function.Injective (rightShellOffset B) := by
  intro k l h
  apply Subtype.ext
  apply Fin.ext
  have hoff : k.1.1 - (B.K + 1) = l.1.1 - (B.K + 1) :=
    congrArg Fin.val h
  have hk : B.K + 1 ≤ k.1.1 := by omega
  have hl : B.K + 1 ≤ l.1.1 := by omega
  calc
    k.1.1 = (k.1.1 - (B.K + 1)) + (B.K + 1) :=
      (Nat.sub_add_cancel hk).symm
    _ = (l.1.1 - (B.K + 1)) + (B.K + 1) := by rw [hoff]
    _ = l.1.1 := Nat.sub_add_cancel hl

@[surface_novel, surface_published]
theorem blockLeft_card_le_scale {N : ℕ} (B : TypeIIDyadicBlock N) :
    Fintype.card B.Left ≤ B.M :=
  by
    simpa using Fintype.card_le_of_injective (leftShellOffset B)
      (leftShellOffset_injective B)

@[surface_novel, surface_published]
theorem blockRight_card_le_scale {N : ℕ} (B : TypeIIDyadicBlock N) :
    Fintype.card B.Right ≤ B.K :=
  by
    simpa using Fintype.card_le_of_injective (rightShellOffset B)
      (rightShellOffset_injective B)

private theorem abs_conductorThreeIntegerValue_cast_le_one (n : ℕ) :
    |(conductorThreeIntegerValue n : ℝ)| ≤ 1 := by
  rcases conductorThreeIntegerValue_cases n with h | h | h
  · rw [h.2]
    norm_num
  · rw [h.2]
    norm_num
  · rw [h.2]
    norm_num

private theorem block_index_le_two_mul_scale {N : ℕ}
    {B : TypeIIDyadicBlock N} (m : B.Left) : m.1.1 ≤ 2 * N := by
  exact Nat.le_of_lt_succ m.1.2

private theorem two_mul_N_pos_of_block {N : ℕ}
    (B : TypeIIDyadicBlock N) : 0 < 2 * N := by
  have hmk : 0 < B.M * B.K := Nat.mul_pos B.M_pos B.K_pos
  exact hmk.trans_le B.productRelevant

private theorem log_two_mul_N_nonneg {N : ℕ}
    (B : TypeIIDyadicBlock N) : 0 ≤ Real.log (2 * N : ℝ) := by
  apply Real.log_nonneg
  exact_mod_cast (two_mul_N_pos_of_block B)

private theorem blockLeftCoefficient_norm_le_log {N : ℕ}
    (B : TypeIIDyadicBlock N) (m : B.Left) :
    ‖blockLeftCoefficient B m‖ ≤ Real.log (2 * N : ℝ) := by
  by_cases hcut : vaughanFourthRootCutoff N < m.1.1
  · have hLambda : ArithmeticFunction.vonMangoldt m.1.1 ≤
        Real.log (m.1.1 : ℝ) :=
      ArithmeticFunction.vonMangoldt_le_log
    have hmpos : 0 < m.1.1 := by omega
    have hlog : Real.log (m.1.1 : ℝ) ≤ Real.log (2 * N : ℝ) := by
      apply Real.log_le_log
      · exact_mod_cast hmpos
      · exact_mod_cast block_index_le_two_mul_scale m
    rw [blockLeftCoefficient, conductorThreeVaughanLeft, if_pos hcut]
    rw [Complex.norm_real, Real.norm_eq_abs, abs_mul,
      abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg]
    calc
      |(conductorThreeIntegerValue m.1.1 : ℝ)| *
          ArithmeticFunction.vonMangoldt m.1.1 ≤
          1 * ArithmeticFunction.vonMangoldt m.1.1 := by
        exact mul_le_mul_of_nonneg_right
          (abs_conductorThreeIntegerValue_cast_le_one m.1.1)
          ArithmeticFunction.vonMangoldt_nonneg
      _ ≤ Real.log (2 * N : ℝ) := by linarith
  · simp [blockLeftCoefficient, conductorThreeVaughanLeft, hcut,
      log_two_mul_N_nonneg B]

private theorem blockRightCoefficient_norm_le_twice_scale {N : ℕ}
    (B : TypeIIDyadicBlock N) (k : B.Right) :
    ‖blockRightCoefficient B k‖ ≤ (2 * B.K : ℝ) := by
  by_cases hcut : vaughanFourthRootCutoff N < k.1.1
  · rw [blockRightCoefficient, conductorThreeVaughanRight, if_pos hcut]
    rw [Complex.norm_real, Real.norm_eq_abs, abs_mul]
    calc
      |(conductorThreeIntegerValue k.1.1 : ℝ)| *
          |vaughanDivisorCoefficient (vaughanFourthRootCutoff N) k.1.1| ≤
          1 * |vaughanDivisorCoefficient
            (vaughanFourthRootCutoff N) k.1.1| := by
        exact mul_le_mul_of_nonneg_right
          (abs_conductorThreeIntegerValue_cast_le_one k.1.1)
          (abs_nonneg _)
      _ ≤ (k.1.1.divisors.card : ℝ) := by
        simpa using abs_vaughanDivisorCoefficient_le_card_divisors
          (vaughanFourthRootCutoff N) k.1.1
      _ ≤ (k.1.1 : ℝ) := by
        exact_mod_cast Nat.card_divisors_le_self k.1.1
      _ ≤ (2 * B.K : ℝ) := by exact_mod_cast k.2.2
  · simp [blockRightCoefficient, conductorThreeVaughanRight, hcut]

private theorem sum_blockLeft_norm_sq_le {N : ℕ}
    (B : TypeIIDyadicBlock N) :
    (∑ m : B.Left, ‖blockLeftCoefficient B m‖ ^ 2) ≤
      (B.M : ℝ) * Real.log (2 * N : ℝ) ^ 2 := by
  calc
    (∑ m : B.Left, ‖blockLeftCoefficient B m‖ ^ 2) ≤
        ∑ _m : B.Left, Real.log (2 * N : ℝ) ^ 2 := by
      apply Finset.sum_le_sum
      intro m hm
      gcongr
      exact blockLeftCoefficient_norm_le_log B m
    _ = (Fintype.card B.Left : ℝ) *
        Real.log (2 * N : ℝ) ^ 2 := by simp
    _ ≤ (B.M : ℝ) * Real.log (2 * N : ℝ) ^ 2 := by
      gcongr
      exact_mod_cast blockLeft_card_le_scale B

private theorem sum_blockRight_norm_sq_le {N : ℕ}
    (B : TypeIIDyadicBlock N) :
    (∑ k : B.Right, ‖blockRightCoefficient B k‖ ^ 2) ≤
      (B.K : ℝ) * (2 * B.K : ℝ) ^ 2 := by
  calc
    (∑ k : B.Right, ‖blockRightCoefficient B k‖ ^ 2) ≤
        ∑ _k : B.Right, (2 * B.K : ℝ) ^ 2 := by
      apply Finset.sum_le_sum
      intro k hk
      gcongr
      exact blockRightCoefficient_norm_le_twice_scale B k
    _ = (Fintype.card B.Right : ℝ) * (2 * B.K : ℝ) ^ 2 := by simp
    _ ≤ (B.K : ℝ) * (2 * B.K : ℝ) ^ 2 := by
      gcongr
      exact_mod_cast blockRight_card_le_scale B

/-- Unconditional left-block `ℓ²` estimate. -/
@[surface_novel, surface_published]
theorem conductorThreeVaughanLeft_l2 {N : ℕ}
    (B : TypeIIDyadicBlock N) :
    ‖blockLeftEuclideanCoefficient B‖ ≤
      Real.sqrt B.M * Real.log (2 * N : ℝ) := by
  rw [EuclideanSpace.norm_eq]
  change √(∑ m : B.Left, ‖blockLeftCoefficient B m‖ ^ 2) ≤ _
  calc
    √(∑ m : B.Left, ‖blockLeftCoefficient B m‖ ^ 2) ≤
        √((B.M : ℝ) * Real.log (2 * N : ℝ) ^ 2) :=
      Real.sqrt_le_sqrt (sum_blockLeft_norm_sq_le B)
    _ = Real.sqrt B.M * Real.log (2 * N : ℝ) := by
      rw [Real.sqrt_mul (by positivity), Real.sqrt_sq
        (log_two_mul_N_nonneg B)]

/-- The strongest unconditional right-block estimate furnished by the
current Mathlib divisor API (`# divisors k ≤ k`).  The sharper
subpolynomial divisor estimate is isolated as an obligation below. -/
@[surface_novel, surface_published]
theorem conductorThreeVaughanRight_l2_unconditional {N : ℕ}
    (B : TypeIIDyadicBlock N) :
    ‖blockRightEuclideanCoefficient B‖ ≤
      Real.sqrt B.K * (2 * B.K : ℝ) := by
  rw [EuclideanSpace.norm_eq]
  change √(∑ k : B.Right, ‖blockRightCoefficient B k‖ ^ 2) ≤ _
  calc
    √(∑ k : B.Right, ‖blockRightCoefficient B k‖ ^ 2) ≤
        √((B.K : ℝ) * (2 * B.K : ℝ) ^ 2) :=
      Real.sqrt_le_sqrt (sum_blockRight_norm_sq_le B)
    _ = Real.sqrt B.K * (2 * B.K : ℝ) := by
      rw [Real.sqrt_mul (by positivity), Real.sqrt_sq]
      positivity

/-! ## Explicit open analytic obligation -/

/-- The classical subpolynomial divisor-count estimate needed to improve
the unconditional right-block bound to `K^(1/2+η)`.  No theorem with this
strength is available in the Mathlib snapshot used by Surface, so this is a
named open proposition, not an axiom or a field of structural data. -/
@[expose]
def DivisorCountSubpolynomial : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ k : ℕ, 1 ≤ k →
        (k.divisors.card : ℝ) ≤ C * (k : ℝ) ^ η

/-- Public spelling matching the intended asymptotic endpoint.  This is an
alias for the open proposition and deliberately has no unconditional proof
in this module. -/
@[expose]
def divisorCount_subpolynomial : Prop :=
  DivisorCountSubpolynomial

private theorem blockRightCoefficient_norm_le_of_divisorCountSubpolynomial
    {η C : ℝ} (hη : 0 < η) (hC : 0 ≤ C)
    (hCbound : ∀ k : ℕ, 1 ≤ k →
      (k.divisors.card : ℝ) ≤ C * (k : ℝ) ^ η)
    {N : ℕ} (B : TypeIIDyadicBlock N) (k : B.Right) :
    ‖blockRightCoefficient B k‖ ≤ C * (2 * B.K : ℝ) ^ η := by
  by_cases hcut : vaughanFourthRootCutoff N < k.1.1
  · have hk_one : 1 ≤ k.1.1 := by omega
    rw [blockRightCoefficient, conductorThreeVaughanRight, if_pos hcut]
    rw [Complex.norm_real, Real.norm_eq_abs, abs_mul]
    calc
      |(conductorThreeIntegerValue k.1.1 : ℝ)| *
          |vaughanDivisorCoefficient (vaughanFourthRootCutoff N) k.1.1| ≤
          1 * |vaughanDivisorCoefficient
            (vaughanFourthRootCutoff N) k.1.1| := by
        exact mul_le_mul_of_nonneg_right
          (abs_conductorThreeIntegerValue_cast_le_one k.1.1)
          (abs_nonneg _)
      _ ≤ (k.1.1.divisors.card : ℝ) := by
        simpa using abs_vaughanDivisorCoefficient_le_card_divisors
          (vaughanFourthRootCutoff N) k.1.1
      _ ≤ C * (k.1.1 : ℝ) ^ η := hCbound k.1.1 hk_one
      _ ≤ C * (2 * B.K : ℝ) ^ η := by
        apply mul_le_mul_of_nonneg_left _ hC
        apply Real.rpow_le_rpow
        · positivity
        · exact_mod_cast k.2.2
        · exact hη.le
  · have htarget : 0 ≤ C * (2 * B.K : ℝ) ^ η :=
      mul_nonneg hC (Real.rpow_nonneg (by positivity) η)
    simp [blockRightCoefficient, conductorThreeVaughanRight, hcut, htarget]

/-- Conditional improvement supplied exactly by the named divisor-count
obligation.  The displayed bound is the direct finite `ℓ²` consequence;
rewriting its right side gives the customary `K^(1/2+η)` form up to the
fixed factor `2^η`. -/
@[surface_novel, surface_published]
theorem conductorThreeVaughanRight_l2_of_divisorCountSubpolynomial
    (hdiv : DivisorCountSubpolynomial) (η : ℝ) (hη : 0 < η) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ (N : ℕ) (B : TypeIIDyadicBlock N),
        ‖blockRightEuclideanCoefficient B‖ ≤
          Real.sqrt B.K * (C * (2 * B.K : ℝ) ^ η) := by
  rcases hdiv η hη with ⟨C, hC, hCbound⟩
  refine ⟨C, hC, ?_⟩
  intro N B
  rw [EuclideanSpace.norm_eq]
  change √(∑ k : B.Right, ‖blockRightCoefficient B k‖ ^ 2) ≤ _
  have hcoordinate : ∀ k : B.Right,
      ‖blockRightCoefficient B k‖ ≤ C * (2 * B.K : ℝ) ^ η :=
    fun k ↦ blockRightCoefficient_norm_le_of_divisorCountSubpolynomial
      hη hC hCbound B k
  have hsum :
      (∑ k : B.Right, ‖blockRightCoefficient B k‖ ^ 2) ≤
        (B.K : ℝ) * (C * (2 * B.K : ℝ) ^ η) ^ 2 := by
    calc
      (∑ k : B.Right, ‖blockRightCoefficient B k‖ ^ 2) ≤
          ∑ _k : B.Right, (C * (2 * B.K : ℝ) ^ η) ^ 2 := by
        apply Finset.sum_le_sum
        intro k hk
        gcongr
        exact hcoordinate k
      _ = (Fintype.card B.Right : ℝ) *
          (C * (2 * B.K : ℝ) ^ η) ^ 2 := by simp
      _ ≤ (B.K : ℝ) * (C * (2 * B.K : ℝ) ^ η) ^ 2 := by
        gcongr
        exact_mod_cast blockRight_card_le_scale B
  calc
    √(∑ k : B.Right, ‖blockRightCoefficient B k‖ ^ 2) ≤
        √((B.K : ℝ) * (C * (2 * B.K : ℝ) ^ η) ^ 2) :=
      Real.sqrt_le_sqrt hsum
    _ = Real.sqrt B.K * (C * (2 * B.K : ℝ) ^ η) := by
      rw [Real.sqrt_mul (by positivity), Real.sqrt_sq]
      exact mul_nonneg hC (Real.rpow_nonneg (by positivity) η)

end

end Surface.Core.ConductorThreeTypeIICoefficientNorms

end
```
