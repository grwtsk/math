# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ShiftedDyadicReserve.Variantbc4949138d61d2dcbcca4294d0d21c2227544aeb4ad38c4be288f51ffc06a36e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9152258b381110d849f087560cb96d542713db4` · SHA-256 `bc4949138d61d2dcbcca4294d0d21c2227544aeb4ad38c4be288f51ffc06a36e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.DyadicDebtConsumer
import FormalResearch.RiemannHypothesis.Conversation.ShortPrimeHead

/-!
# Shifted dyadic debt consumes an actual entrance reserve

The next consumer starts at an arbitrary actual integer entrance N>=2.
Blocks [N*2^j,N*2^(j+1)) partition every sufficiently long finite native
prefix. Their summable positive debt pays every real source prefix. If its
total fits the actual negative entrance reserve, the unchanged prime primitive
is nonpositive thereafter. At the literal N-star, the checked short head and
an explicit finite theta envelope supply the entrance, while the full shifted
dyadic debt cap remains a separate arithmetic hypothesis. RH additionally
retains the explicit analytic Landau return.

Human entrance, reserve and all-real direction: grwtsk contributors. Local exact
shifted partition and next consumers: OpenAI Codex. Cached Mathlib dependency
identity and the external finite-theta evidence boundary remain explicit.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.ShiftedDyadicReserve

open DyadicEnergyBudget DyadicDebtConsumer ArithmeticPrimitive NativeRecordConsumer
open NativeCellBound OpenArithmeticSuppliers AnalyticSuppliers
open scoped BigOperators
noncomputable section

theorem shifted_block_start_positive {N : ℕ} (hN : 1 ≤ N) (j : ℕ) : 1 ≤ N * 2 ^ j := by
  have h := Nat.mul_pos (by omega : 0 < N) (Nat.pow_pos (by omega : 0 < (2 : ℕ)) : 0 < 2 ^ j)
  omega

theorem exact_shifted_dyadic_partition (N k : ℕ) :
    positiveDebt N (N * (2 ^ k - 1)) =
      ∑ j ∈ Finset.range k, positiveDebt (N * 2 ^ j) (N * 2 ^ j) := by
  induction k with
  | zero => simp [positiveDebt]
  | succ k ih =>
      have hp : 1 ≤ (2 : ℕ) ^ k := Nat.one_le_pow k 2 (by omega)
      have hl : (2 : ℕ) ^ (k + 1) - 1 = (2 ^ k - 1) + 2 ^ k := by
        rw [pow_succ]
        omega
      have hs : N + N * ((2 : ℕ) ^ k - 1) = N * 2 ^ k := by
        calc
          _ = N * (1 + (2 ^ k - 1)) := by ring
          _ = _ := by rw [show 1 + ((2 : ℕ) ^ k - 1) = 2 ^ k by omega]
      rw [Finset.sum_range_succ, ← ih, hl, Nat.mul_add, positive_debt_add, hs]

theorem every_shifted_positive_prefix_le_total {N : ℕ} (hN : 1 ≤ N)
    (hsum : Summable (fun j : ℕ => positiveDebt (N * 2 ^ j) (N * 2 ^ j))) (K : ℕ) :
    positiveDebt N K ≤ ∑' j : ℕ, positiveDebt (N * 2 ^ j) (N * 2 ^ j) := by
  have hp : K + 1 < (2 : ℕ) ^ (K + 1) := Nat.lt_two_pow_self
  have hsmall : K ≤ (2 : ℕ) ^ (K + 1) - 1 := by omega
  have hK : K ≤ N * ((2 : ℕ) ^ (K + 1) - 1) := by nlinarith
  apply (positive_debt_mono hN hK).trans
  rw [exact_shifted_dyadic_partition]
  exact hsum.sum_le_tsum (Finset.range (K + 1))
    (fun j _ => positive_debt_nonneg (shifted_block_start_positive hN j) _)

theorem shifted_debts_bound_every_real_prefix {N : ℕ} (hN : 1 ≤ N)
    (hsum : Summable (fun j : ℕ => positiveDebt (N * 2 ^ j) (N * 2 ^ j)))
    {x : ℝ} (hx : (N : ℝ) ≤ x) :
    ordinaryPrimePrimitive x - ordinaryPrimePrimitive N ≤
      ∑' j : ℕ, positiveDebt (N * 2 ^ j) (N * 2 ^ j) := by
  apply actual_integer_upper_implies_all_real hN _ x hx
  intro K
  have h := AccordionConsumer.actual_signed_work_le_positive_debt hN K
  rw [← positive_debt_is_existing_source_debt] at h
  exact h.trans (every_shifted_positive_prefix_le_total hN hsum K)

theorem shifted_dyadic_debt_consumes_entrance {N : ℕ} (hN : 2 ≤ N)
    (hsum : Summable (fun j : ℕ => positiveDebt (N * 2 ^ j) (N * 2 ^ j)))
    (hstart : ordinaryPrimePrimitive N ≤
      -(∑' j : ℕ, positiveDebt (N * 2 ^ j) (N * 2 ^ j))) :
    OrdinaryPrimeEventualSignSupplier := by
  refine ⟨N, by exact_mod_cast hN, ?_⟩
  intro x hx
  have h := shifted_debts_bound_every_real_prefix (by omega : 1 ≤ N) hsum hx
  linarith

theorem literal_reserve_and_shifted_debt_imply_eventual_sign
    (hfinite : FiniteHeadConsumer.FiniteThetaEnvelope)
    (hsum : Summable (fun j : ℕ =>
      positiveDebt (ReserveConsumer.entranceScale * 2 ^ j) (ReserveConsumer.entranceScale * 2 ^ j)))
    (hcap : (∑' j : ℕ,
      positiveDebt (ReserveConsumer.entranceScale * 2 ^ j) (ReserveConsumer.entranceScale * 2 ^
        j)) ≤
        ReserveConsumer.reserve) : OrdinaryPrimeEventualSignSupplier := by
  apply shifted_dyadic_debt_consumes_entrance
    (by norm_num [ReserveConsumer.entranceScale]) hsum
  have hstart := ShortPrimeHead.finite_theta_envelope_implies_entrance_reserve hfinite
  linarith

theorem rh_of_literal_shifted_debt_and_landau_return
    (hfinite : FiniteHeadConsumer.FiniteThetaEnvelope)
    (hsum : Summable (fun j : ℕ =>
      positiveDebt (ReserveConsumer.entranceScale * 2 ^ j) (ReserveConsumer.entranceScale * 2 ^ j)))
    (hcap : (∑' j : ℕ,
      positiveDebt (ReserveConsumer.entranceScale * 2 ^ j) (ReserveConsumer.entranceScale * 2 ^
        j)) ≤
        ReserveConsumer.reserve)
    (hreturn : OrdinaryPrimeSignLandauReturn) : RiemannHypothesis :=
  rh_of_primeSign_and_landauReturn
    (literal_reserve_and_shifted_debt_imply_eventual_sign hfinite hsum hcap) hreturn

end
end GRWTSK.RiemannHypothesis.Conversation.ShiftedDyadicReserve
```
