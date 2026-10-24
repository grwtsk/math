# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TriangularPulseDebt.Variant64815399ecbf8a5750b534973a4d8e384017f9abc4ff0aed456afa1e74c87501

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a466853a2657ccfa2c4e87e75d3ab471bb4e78b6` · SHA-256 `64815399ecbf8a5750b534973a4d8e384017f9abc4ff0aed456afa1e74c87501`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.TriangularNativeGeometry

/-!
# Every literal triangular pulse has a fixed positive square-energy price

The entire source pulse inventory is retained. Its M central atoms prove debt
at least a/(16M), while all 2M+1 native cells prove width at most 3/M^2.
Consequently D^2/U >= a^2/768. Any infinite sequence of these individual full
pulse prices is nonsummable when a>0. This is the source's p=2 payment, not
an infinite global counting-system or regulator identification: disjoint-bank
assembly and the 1<p<2 growth construction remain separate.
Human complete pulse inventory and regulator direction: grwtsk contributors.
Local debt and square-payment consumer: OpenAI Codex. Mathlib finite sums,
positive division and summability retain upstream identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.TriangularPulseDebt
open ArithmeticPrimitive NativeRecordConsumer TriangularCountingPulse TriangularNativeGeometry
open Filter
open scoped BigOperators Topology
noncomputable section

def inventory (M : ℕ) : Finset ℕ := Finset.Icc (M ^ 2) (M ^ 2 + 2 * M)
def debt (M : ℕ) (a : ℝ) : ℝ :=
  ∑ n ∈ inventory M, storage M a n * cellClock n (n + 1 : ℕ)
def width (M : ℕ) : ℝ := ∑ n ∈ inventory M, cellClock n (n + 1 : ℕ)

theorem complete_pulse_width_positive {M : ℕ} (hM : 2 ≤ M) : 0 < width M := by
  apply Finset.sum_pos
  · intro n hn
    have h := (Finset.mem_Icc.mp hn).1
    exact cellClock_pos (by nlinarith)
  · exact ⟨M ^ 2, Finset.mem_Icc.mpr ⟨le_rfl, by omega⟩⟩

theorem complete_pulse_width_upper {M : ℕ} (hM : 2 ≤ M) :
    width M ≤ 3 / (M : ℝ) ^ 2 := by
  have hM0 : (0 : ℝ) < M := by exact_mod_cast (show 0 < M by omega)
  have hcard : (inventory M).card = 2 * M + 1 := by
    simp only [inventory, Nat.card_Icc]
    omega
  have hu : width M ≤ (2 * (M : ℝ) + 1) / (M : ℝ) ^ 3 := by
    calc
      width M ≤ ∑ _n ∈ inventory M, (1 / (M : ℝ) ^ 3) := by
        apply Finset.sum_le_sum
        intro n hn
        obtain ⟨hlo, hhi⟩ := Finset.mem_Icc.mp hn
        exact (literal_pulse_cell_bounds hM hlo hhi).2
      _ = _ := by simp [hcard]; ring
  apply hu.trans
  apply (div_le_div_iff₀ (by positivity : 0 < (M : ℝ) ^ 3)
    (by positivity : 0 < (M : ℝ) ^ 2)).mpr
  have hm1 : (1 : ℝ) ≤ M := by exact_mod_cast (show 1 ≤ M by omega)
  nlinarith [mul_nonneg (sq_nonneg (M : ℝ)) (sub_nonneg.mpr hm1)]

theorem complete_pulse_debt_lower {M : ℕ} (hM : 2 ≤ M) {a : ℝ} (ha : 0 ≤ a) :
    a / (16 * M) ≤ debt M a := by
  let idx : ℕ → ℕ := fun i ↦ M ^ 2 + (M + 1) / 2 + i
  let central : Finset ℕ := (Finset.range M).image idx
  have hM0 : (0 : ℝ) < M := by exact_mod_cast (show 0 < M by omega)
  have hsub : central ⊆ inventory M := by
    intro n hn
    obtain ⟨i, hi, rfl⟩ := Finset.mem_image.mp hn
    exact Finset.mem_Icc.mpr (retained_central_indices_belong (Finset.mem_range.mp hi))
  have hsum : (∑ n ∈ central, storage M a n * cellClock n (n + 1 : ℕ)) =
      ∑ i ∈ Finset.range M, storage M a (idx i) * cellClock (idx i) (idx i + 1 : ℕ) := by
    dsimp only [central]
    rw [Finset.sum_image]
    intro i _ j _ hij
    dsimp only [idx] at hij
    omega
  have hterm (i : ℕ) (hi : i ∈ Finset.range M) :
      a / (16 * (M : ℝ) ^ 2) ≤ storage M a (idx i) * cellClock (idx i) (idx i + 1 : ℕ) := by
    have hiM := Finset.mem_range.mp hi
    have hindex := retained_central_indices_belong hiM
    have hb := retained_central_storage_lower hiM ha
    have hw := (literal_pulse_cell_bounds hM hindex.1 hindex.2).1
    calc
      _ = (a * M / 2) * (1 / (8 * (M : ℝ) ^ 3)) := by field_simp [hM0.ne']; ring
      _ ≤ _ := mul_le_mul hb hw (by positivity) (by unfold storage; positivity)
  calc
    a / (16 * M) = ∑ _i ∈ Finset.range M, a / (16 * (M : ℝ) ^ 2) := by
      simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
      field_simp [hM0.ne']
    _ ≤ ∑ i ∈ Finset.range M, storage M a (idx i) * cellClock (idx i) (idx i + 1 : ℕ) :=
      Finset.sum_le_sum hterm
    _ = ∑ n ∈ central, storage M a n * cellClock n (n + 1 : ℕ) := hsum.symm
    _ ≤ debt M a := by
      apply Finset.sum_le_sum_of_subset_of_nonneg hsub
      intro n hn _
      have h := (Finset.mem_Icc.mp hn).1
      exact mul_nonneg (by unfold storage; positivity) (cellClock_pos (by nlinarith)).le

theorem complete_pulse_square_price {M : ℕ} (hM : 2 ≤ M) {a : ℝ} (ha : 0 ≤ a) :
    a ^ 2 / 768 ≤ (debt M a) ^ 2 / width M := by
  have hM0 : (0 : ℝ) < M := by exact_mod_cast (show 0 < M by omega)
  have hD := complete_pulse_debt_lower hM ha
  have hmin : 0 ≤ a / (16 * M) := by positivity
  have hsq : (a / (16 * M)) ^ 2 ≤ (debt M a) ^ 2 := by nlinarith
  apply (le_div_iff₀ (complete_pulse_width_positive hM)).mpr
  calc
    _ ≤ (a ^ 2 / 768) * (3 / (M : ℝ) ^ 2) :=
      mul_le_mul_of_nonneg_left (complete_pulse_width_upper hM) (by positivity)
    _ = (a / (16 * M)) ^ 2 := by field_simp [hM0.ne']; ring
    _ ≤ _ := hsq

theorem complete_pulse_square_prices_not_summable (M : ℕ → ℕ) (hM : ∀ j, 2 ≤ M j)
    {a : ℝ} (ha : 0 < a) :
    ¬ Summable (fun j ↦ (debt (M j) a) ^ 2 / width (M j)) := by
  have hc : 0 < a ^ 2 / 768 := by positivity
  intro hs
  have he := hs.tendsto_atTop_zero.eventually_lt_const hc
  obtain ⟨j, hj⟩ := he.exists
  exact (not_lt_of_ge (complete_pulse_square_price (hM j) ha.le)) hj

end
end GRWTSK.RiemannHypothesis.Conversation.TriangularPulseDebt
```
