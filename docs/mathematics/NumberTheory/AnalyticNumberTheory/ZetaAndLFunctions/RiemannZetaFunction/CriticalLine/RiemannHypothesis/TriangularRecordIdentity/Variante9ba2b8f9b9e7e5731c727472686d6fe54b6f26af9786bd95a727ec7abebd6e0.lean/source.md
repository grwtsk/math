# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TriangularRecordIdentity.Variante9ba2b8f9b9e7e5731c727472686d6fe54b6f26af9786bd95a727ec7abebd6e0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `52f43cd4df54ab4cb3217c9d56924364fa1470e1` · SHA-256 `e9ba2b8f9b9e7e5731c727472686d6fe54b6f26af9786bd95a727ec7abebd6e0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.TriangularBankSquareEnergy
import FormalResearch.RiemannHypothesis.Conversation.CausalRecords

/-!
# The bank energy is the record energy of its unchanged native primitive

Complete counting coefficients reconstruct the literal inverse-root primitive.
Its storage is nonnegative, so every chronological endpoint is its running
record. Record increments are exactly storage times the full native cell width;
their square-over-width energy is precisely the bank's complete cell energy.
The dyadic positive counting model therefore has divergent native record square
energy. It is not the actual prime path or the source's 1<p<2 construction.
Human causal-regulator and changed-weight boundary: grwtsk contributors.
Local exact primitive/record consumer: OpenAI Codex. Imported local source and
Mathlib record/summability identities retain their names and provenance.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.TriangularRecordIdentity
open ArithmeticPrimitive NativeRecordConsumer TriangularDisjointBank TriangularBankSquareEnergy
open scoped BigOperators
noncomputable section

def coefficient (M : ℕ → ℕ) (a : ℝ) (n : ℕ) : ℝ := bankWeight M a n - 1
def path (M : ℕ → ℕ) (a : ℝ) (n : ℕ) : ℝ := finitePrimitive (coefficient M a) n n

def recordLevel (M : ℕ → ℕ) (a : ℝ) (N : ℕ) : ℕ → ℝ
  | 0 => 0
  | j + 1 => max (recordLevel M a N j) (path M a (N + j + 1) - path M a N)

def recordIncrement (M : ℕ → ℕ) (a : ℝ) (N j : ℕ) : ℝ :=
  recordLevel M a N (j + 1) - recordLevel M a N j

theorem exact_bank_cumulative_storage (M : ℕ → ℕ) (hM : ∀ j, j + 2 ≤ M j)
    {n : ℕ} (hn : 1 ≤ n) (a : ℝ) :
    cumulativeDiscrepancy (coefficient M a) n = bankStorage M a n := by
  induction n with
  | zero => omega
  | succ n ih =>
    by_cases hz : n = 0
    · subst n
      simpa [cumulativeDiscrepancy] using (zero_initial_bank M hM (by omega : 1 ≤ 1) a).symm
    · have hstep : cumulativeDiscrepancy (coefficient M a) (n + 1) =
          cumulativeDiscrepancy (coefficient M a) n + coefficient M a (n + 1) := by
        unfold cumulativeDiscrepancy
        rw [Finset.sum_Icc_succ_top (by omega : 2 ≤ n + 1)]
      rw [hstep, ih (by omega)]
      simp only [coefficient, bankWeight, Nat.add_sub_cancel]
      ring

theorem unchanged_bank_primitive_increment (M : ℕ → ℕ) (hM : ∀ j, j + 2 ≤ M j)
    {n : ℕ} (hn : 1 ≤ n) (a : ℝ) :
    path M a (n + 1) - path M a n = bankStorage M a n * cellClock n (n + 1 : ℕ) := by
  rw [path, path, adjacent_integer_increment _ n hn, exact_bank_cumulative_storage M hM hn]

theorem bank_primitive_monotone (M : ℕ → ℕ) (hM : ∀ j, j + 2 ≤ M j)
    {a : ℝ} (ha : 0 ≤ a) : Monotone (path M a) := by
  apply monotone_nat_of_le_succ
  intro n
  by_cases hz : n = 0
  · subst n
    simp [path, finitePrimitive]
  · have hn : 1 ≤ n := by omega
    have hprod := mul_nonneg (bank_square_root_storage M n ha).1 (cellClock_pos hn).le
    have hstep := unchanged_bank_primitive_increment M hM hn a
    linarith

theorem every_endpoint_is_its_bank_record (M : ℕ → ℕ) (hM : ∀ j, j + 2 ≤ M j)
    {a : ℝ} (ha : 0 ≤ a) (N K : ℕ) :
    recordLevel M a N K = path M a (N + K) - path M a N := by
  induction K with
  | zero => simp [recordLevel]
  | succ K ih =>
    rw [recordLevel, ih]
    have h := bank_primitive_monotone M hM ha (by omega : N + K ≤ N + K + 1)
    rw [max_eq_right (by linarith)]
    congr 1

theorem exact_bank_record_increment (M : ℕ → ℕ) (hM : ∀ j, j + 2 ≤ M j)
    {a : ℝ} (ha : 0 ≤ a) {N : ℕ} (hN : 1 ≤ N) (j : ℕ) :
    recordIncrement M a N j = bankStorage M a (N + j) * cellClock (N + j) (N + j + 1 : ℕ) := by
  rw [recordIncrement, every_endpoint_is_its_bank_record M hM ha,
    every_endpoint_is_its_bank_record M hM ha]
  have h := unchanged_bank_primitive_increment M hM (by omega : 1 ≤ N + j) a
  simpa only [Nat.add_assoc, sub_sub_sub_cancel_right] using h

theorem exact_dyadic_record_square_payment {a : ℝ} (ha : 0 ≤ a) {N : ℕ}
    (hN : 1 ≤ N) (j : ℕ) :
    recordIncrement dyadicSize a N j ^ 2 / cellClock (N + j) (N + j + 1 : ℕ) =
      cellEnergy a (N + j) := by
  have hn : 1 ≤ N + j := by omega
  rw [exact_bank_record_increment dyadicSize dyadic_size_sufficient ha hN,
    cellEnergy, if_pos hn]
  field_simp [(cellClock_pos hn).ne']

theorem dyadic_record_square_energy_not_summable {a : ℝ} (ha : 0 < a) :
    ¬ Summable (fun j ↦ recordIncrement dyadicSize a 2 j ^ 2 /
      cellClock (2 + j) (2 + j + 1 : ℕ)) := by
  simp_rw [exact_dyadic_record_square_payment ha.le (by norm_num : 1 ≤ (2 : ℕ))]
  intro hs
  apply full_dyadic_bank_square_energy_not_summable ha
  exact (summable_nat_add_iff 2).mp (by simpa [Nat.add_comm] using hs)

end
end GRWTSK.RiemannHypothesis.Conversation.TriangularRecordIdentity
```
