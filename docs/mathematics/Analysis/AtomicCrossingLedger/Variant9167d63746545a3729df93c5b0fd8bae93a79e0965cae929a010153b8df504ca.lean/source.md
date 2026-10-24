# Complete source: GRWTSK.Analysis.AtomicCrossingLedger.Variant9167d63746545a3729df93c5b0fd8bae93a79e0965cae929a010153b8df504ca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `193b7169b6d0a37b585fa7d3194634bafd11e5d8` · SHA-256 `9167d63746545a3729df93c5b0fd8bae93a79e0965cae929a010153b8df504ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.GeneralPrimeBirthLedger
import FormalResearch.RiemannHypothesis.Conversation.ReserveConsumer
import Mathlib.Analysis.Complex.ExponentialBounds

/-!
# Actual prime sign-crossing overshoots and the literal seam-budget certificate

CL01 retains the ordinary-prime storage and every integer minus-one correction.
Upcrossings occur only at primes; downcrossings from index three cannot occur at
primes. Their exact overshoots price every explicitly selected finite crossing
set by its log-weighted native cells. The infinite-tail integral comparison is a proposition, not an axiom;
NativeCrossingTail now supplies its proved instance. This module checks the
source's literal N-star numerical budget without assuming that budget controls
any signed cycle load.

Human atomic-seam requirement: grwtsk contributors. Local crossing and numerical
consumer: OpenAI Codex. Mathlib logarithm, exponential and square-root laws retain
upstream names and notices.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.AtomicCrossingLedger
open ArithmeticPrimitive OpenArithmeticSuppliers NativeRecordConsumer
open scoped BigOperators
noncomputable section

def storage (n : ℕ) : ℝ := cumulativeDiscrepancy ordinaryPrimeCoefficient n

def isCrossing (n : ℕ) : Prop :=
  (storage (n - 1) ≤ 0 ∧ 0 < storage n) ∨
  (0 < storage (n - 1) ∧ storage n ≤ 0)

theorem actual_integer_increment {n : ℕ} (hn : 2 ≤ n) :
    storage n - storage (n - 1) = (if n.Prime then Real.log n else 0) - 1 := by
  have h := PrimeStorage.actual_storage_step (n := n - 1) (by omega)
  rw [Nat.sub_add_cancel (by omega : 1 ≤ n),
    ordinaryPrimeCoefficient_at_source_index hn] at h
  exact h

theorem log_index_gt_one {n : ℕ} (hn : 3 ≤ n) : 1 < Real.log (n : ℝ) := by
  apply (Real.lt_log_iff_exp_lt (by positivity)).mpr
  exact Real.exp_one_lt_three.trans_le (by exact_mod_cast hn)

theorem actual_upcrossing {n : ℕ} (hn : 2 ≤ n)
    (hprev : storage (n - 1) ≤ 0) (hcur : 0 < storage n) :
    n.Prime ∧ -Real.log n < storage (n - 1) ∧ storage n < Real.log n := by
  have h := actual_integer_increment hn
  have hp : n.Prime := by
    by_contra hp
    rw [if_neg hp] at h
    linarith
  rw [if_pos hp] at h
  exact ⟨hp, by linarith, by linarith⟩

theorem actual_downcrossing {n : ℕ} (hn : 3 ≤ n)
    (hprev : 0 < storage (n - 1)) (hcur : storage n ≤ 0) :
    ¬ n.Prime ∧ storage (n - 1) ≤ 1 ∧ -1 < storage n := by
  have h := actual_integer_increment (by omega : 2 ≤ n)
  have hp : ¬ n.Prime := by
    intro hp
    rw [if_pos hp] at h
    linarith [log_index_gt_one hn]
  rw [if_neg hp] at h
  exact ⟨hp, by linarith, by linarith⟩

theorem actual_crossing_magnitude {n : ℕ} (hn : 3 ≤ n) (hc : isCrossing n) :
    max |storage (n - 1)| |storage n| ≤ Real.log n := by
  have hl := log_index_gt_one hn
  rcases hc with ⟨hp, hq⟩ | ⟨hp, hq⟩
  · have h := actual_upcrossing (by omega : 2 ≤ n) hp hq
    apply max_le
    · apply abs_le.mpr; constructor <;> linarith [h.2.1]
    · apply abs_le.mpr; constructor <;> linarith [h.2.2]
  · have h := actual_downcrossing hn hp hq
    apply max_le
    · apply abs_le.mpr; constructor <;> linarith [h.2.1]
    · apply abs_le.mpr; constructor <;> linarith [h.2.2]

theorem selected_finite_crossing_price {s : Finset ℕ}
    (hs : ∀ n ∈ s, 3 ≤ n ∧ isCrossing n) :
    (∑ n ∈ s, cellClock n (n + 1 : ℕ) * max |storage (n - 1)| |storage n|) ≤
      ∑ n ∈ s, cellClock n (n + 1 : ℕ) * Real.log n := by
  apply Finset.sum_le_sum
  intro n hn
  exact mul_le_mul_of_nonneg_left (actual_crossing_magnitude (hs n hn).1 (hs n hn).2)
    (cellClock_pos (by have := (hs n hn).1; omega)).le

def tailPrice (N : ℕ) : ℝ := by
  classical
  exact ∑' n : ℕ,
  if N ≤ n ∧ isCrossing n then
    cellClock n (n + 1 : ℕ) * max |storage (n - 1)| |storage n| else 0

def envelope (N : ℕ) : ℝ :=
  2 * (Real.log ((N : ℝ) - 1) + 2) / Real.sqrt ((N : ℝ) - 1)

/-- The tail comparison interface; NativeCrossingTail proves its full instance. -/
def TailEnvelope : Prop := ∀ N : ℕ, 3 ≤ N → tailPrice N ≤ envelope N

theorem literal_entrance_log_certificate :
    Real.log ((ReserveConsumer.entranceScale : ℝ) - 1) < 40 := by
  apply (Real.log_lt_iff_lt_exp (by norm_num [ReserveConsumer.entranceScale])).mpr
  have he : (19 / 7 : ℝ) < Real.exp 1 := by linarith [Real.exp_one_gt_d9]
  have hp : (19 / 7 : ℝ) ^ 40 ≤ (Real.exp 1) ^ 40 :=
    pow_le_pow_left₀ (by norm_num) he.le 40
  have hr : ((ReserveConsumer.entranceScale : ℝ) - 1) < (19 / 7 : ℝ) ^ 40 := by
    norm_num [ReserveConsumer.entranceScale]
  have hex : Real.exp (40 : ℝ) = (Real.exp 1) ^ 40 := by
    simp [← Real.exp_nat_mul]
  rw [hex]
  exact hr.trans_le hp

theorem literal_entrance_sqrt_certificate :
    (370000000 : ℝ) < Real.sqrt ((ReserveConsumer.entranceScale : ℝ) - 1) := by
  have hs := Real.sq_sqrt (by norm_num [ReserveConsumer.entranceScale] :
    (0 : ℝ) ≤ (ReserveConsumer.entranceScale : ℝ) - 1)
  have hpos := Real.sqrt_nonneg ((ReserveConsumer.entranceScale : ℝ) - 1)
  have hlarge : (370000000 : ℝ) ^ 2 < (ReserveConsumer.entranceScale : ℝ) - 1 := by
    norm_num [ReserveConsumer.entranceScale]
  nlinarith

theorem literal_envelope_below_seam_budget :
    envelope ReserveConsumer.entranceScale < 1 / 4000000 := by
  have hl := literal_entrance_log_certificate
  have hs := literal_entrance_sqrt_certificate
  have hden : 0 < Real.sqrt ((ReserveConsumer.entranceScale : ℝ) - 1) := by linarith
  unfold envelope
  apply (div_lt_iff₀ hden).mpr
  nlinarith

theorem supplied_tail_envelope_pays_literal_seam_budget (h : TailEnvelope) :
    tailPrice ReserveConsumer.entranceScale < 1 / 4000000 :=
  (h _ (by norm_num [ReserveConsumer.entranceScale])).trans_lt
    literal_envelope_below_seam_budget

end
end GRWTSK.RiemannHypothesis.Conversation.AtomicCrossingLedger
```
