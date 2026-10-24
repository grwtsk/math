# Complete source: GRWTSK.NumberTheory.Moebius.MertensTerminalShortStripPayment

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d3626a03c6979a18430215d285f4405e6f98eaa` · SHA-256 `a5a68edb3fd356d403013972fe619270b4012851cd007b1f2e0ca0b0759f4a3e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #554. Direct stacked parent: draft PR #552 at
`3da1fbd6a9457feaa503737a48d138f8f7e40ce4`.
-/
import GRWTSK.NumberTheory.Moebius.MertensShallowLongRemainderPayment

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Deep depths whose complete active shift count is still below the
logarithmic threshold. -/
def terminalShortDeepDepths (j : ℕ) : Finset ℕ :=
  (Finset.Ico (logarithmicShallowDepthCount j) (2 ^ (j + 1))).filter
    (fun t => harmonicShiftCount j t < logarithmicShiftThreshold j)

/-- Genuine core depths: deep and with at least the logarithmic number of
active shifts, so the terminal Abel term is also long. -/
def coreLongDeepDepths (j : ℕ) : Finset ℕ :=
  (Finset.Ico (logarithmicShallowDepthCount j) (2 ^ (j + 1))).filter
    (fun t => logarithmicShiftThreshold j ≤ harmonicShiftCount j t)

/-- Elementary growth used only to locate the terminal strip. -/
theorem nat_add_two_le_two_pow_of_two_le
    {j : ℕ} (hj : 2 ≤ j) :
    j + 2 ≤ 2 ^ j := by
  induction j with
  | zero => omega
  | succ j ih =>
      by_cases hj' : 2 ≤ j
      · have hih := ih hj'
        rw [Nat.pow_succ]
        omega
      · have hj1 : j = 1 := by omega
        subst j
        norm_num

/-- The terminal-short deep set has only logarithmically many depths.  The
constant two in the padding covers the two smallest dyadic scales and the
right-endpoint subtraction convention. -/
theorem terminalShortDeepDepths_card_le
    (j : ℕ) :
    (terminalShortDeepDepths j).card ≤
      logarithmicShiftThreshold j + 2 := by
  let X : ℕ := 2 ^ j
  let Y : ℕ := 2 ^ (j + 1)
  let H : ℕ := logarithmicShiftThreshold j
  by_cases hj : 2 ≤ j
  · have hXH : H ≤ X := by
      dsimp [H, X, logarithmicShiftThreshold]
      exact nat_add_two_le_two_pow_of_two_le hj
    have hsubset :
        terminalShortDeepDepths j ⊆ Finset.Ico (Y - (H + 2)) Y := by
      intro t ht
      simp only [terminalShortDeepDepths, Finset.mem_filter,
        Finset.mem_Ico] at ht
      have htY : t < Y := by simpa [Y] using ht.1.2
      have hcount : harmonicShiftCount j t < H := by
        simpa [H] using ht.2
      have hXt : X ≤ t + 1 := by
        by_contra hnot
        have htX : t + 1 < X := Nat.lt_of_not_ge hnot
        have hlower :
            harmonicShiftLower j t = X - t - 1 := by
          unfold harmonicShiftLower
          apply max_eq_right
          omega
        have hupper :
            harmonicShiftUpper j t = Y - t - 1 := by
          rfl
        have hcountX :
            harmonicShiftCount j t = X := by
          unfold harmonicShiftCount
          rw [hlower, hupper]
          have hYX : Y = 2 * X := by
            dsimp [X, Y]
            rw [Nat.pow_succ]
            ring
          omega
        omega
      have hlower1 : harmonicShiftLower j t = 1 := by
        unfold harmonicShiftLower
        apply max_eq_left
        omega
      have hcountform :
          harmonicShiftCount j t = Y - t - 2 := by
        unfold harmonicShiftCount harmonicShiftUpper
        rw [hlower1]
        change Y - t - 1 - 1 = Y - t - 2
        omega
      have hleft : Y - (H + 2) ≤ t := by
        omega
      exact Finset.mem_Ico.mpr ⟨hleft, htY⟩
    calc
      (terminalShortDeepDepths j).card ≤
          (Finset.Ico (Y - (H + 2)) Y).card :=
        Finset.card_le_card hsubset
      _ = Y - (Y - (H + 2)) := by
        simp
      _ ≤ H + 2 := by omega
  · have hjsmall : j = 0 ∨ j = 1 := by omega
    rcases hjsmall with rfl | rfl <;>
      decide

/-- The final inherited depth has empty triangular support. -/
theorem signedAbelDepthSlice_at_final_eq_zero
    (j : ℕ) :
    weightedMertensDyadicSignedAbelDepthSlice
      j (2 ^ (j + 1) - 1) = 0 := by
  unfold weightedMertensDyadicSignedAbelDepthSlice
  apply Finset.sum_eq_zero
  intro h hh
  apply weightedMertensDyadicSignedAbelCell_eq_zero_of_cutoff_le
  omega

/-- A terminal-short deep long-depth remainder is bounded by the complete
depth cost plus its already-paid normalized short budget. -/
theorem abs_longDepthRemainder_le_two_add_shortBudget
    {j t : ℕ}
    (htY : t < 2 ^ (j + 1)) :
    |logarithmicLongDepthRemainder j t| ≤
      2 + normalizedShortDepthBudget j t := by
  unfold logarithmicLongDepthRemainder
  calc
    |weightedMertensDyadicSignedAbelDepthSlice j t -
      2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
        harmonicCumulativeShortContribution
          j t (logarithmicShiftThreshold j)| ≤
      |weightedMertensDyadicSignedAbelDepthSlice j t| +
      |2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
        harmonicCumulativeShortContribution
          j t (logarithmicShiftThreshold j)| := abs_sub _ _
    _ ≤ 2 + normalizedShortDepthBudget j t := by
      apply add_le_add
      · by_cases hfinal : t = 2 ^ (j + 1) - 1
        · subst t
          rw [signedAbelDepthSlice_at_final_eq_zero]
          norm_num
        · apply abs_signedAbelDepthSlice_le_two_of_depth
          omega
      · rw [abs_mul, abs_of_nonneg (by positivity :
          0 ≤ 2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹)]
        exact normalized_shortContribution_le_budget j t

/-- Terminal-strip contribution to the deep long remainder. -/
def terminalShortDeepRemainderPacket (j : ℕ) : ℝ :=
  ∑ t ∈ terminalShortDeepDepths j,
    logarithmicLongDepthRemainder j t

/-- Genuine core contribution: every retained depth has a long terminal active
count in addition to the long interior cumulative lengths. -/
def coreLongDeepRemainderPacket (j : ℕ) : ℝ :=
  ∑ t ∈ coreLongDeepDepths j,
    logarithmicLongDepthRemainder j t

/-- Exact terminal-strip/core partition of the deep long remainder. -/
theorem deepLongRemainder_eq_terminalShort_add_core
    (j : ℕ) :
    logarithmicDeepLongRemainderPacket j =
      terminalShortDeepRemainderPacket j +
        coreLongDeepRemainderPacket j := by
  unfold logarithmicDeepLongRemainderPacket
    terminalShortDeepRemainderPacket coreLongDeepRemainderPacket
    terminalShortDeepDepths coreLongDeepDepths
  simpa only [not_lt] using (Finset.sum_filter_add_sum_filter_not
    (s := Finset.Ico (logarithmicShallowDepthCount j) (2 ^ (j + 1)))
    (p := fun t => harmonicShiftCount j t < logarithmicShiftThreshold j)
    (f := fun t => logarithmicLongDepthRemainder j t)).symm

/-- Nonnegative short-budget mass restricted to the terminal strip. -/
def terminalShortNormalizedBudget (j : ℕ) : ℝ :=
  ∑ t ∈ terminalShortDeepDepths j,
    normalizedShortDepthBudget j t

/-- The restricted short budget is bounded by the complete normalized short
packet budget. -/
theorem terminalShortNormalizedBudget_le_full
    (j : ℕ) :
    terminalShortNormalizedBudget j ≤ normalizedShortPacketBudget j := by
  unfold terminalShortNormalizedBudget normalizedShortPacketBudget
  apply Finset.sum_le_sum_of_subset_of_nonneg
  · intro t ht
    simp only [terminalShortDeepDepths, Finset.mem_filter,
      Finset.mem_Ico] at ht
    simp only [Finset.mem_range]
    exact ht.1.2
  · intro t _ht _hnot
    exact normalizedShortDepthBudget_nonneg j t

/-- Deterministic terminal-strip bound. -/
theorem abs_terminalShortDeepRemainderPacket_le
    (j : ℕ) :
    |terminalShortDeepRemainderPacket j| ≤
      2 * (logarithmicShiftThreshold j + 2 : ℝ) +
        normalizedShortPacketBudget j := by
  unfold terminalShortDeepRemainderPacket
  calc
    |∑ t ∈ terminalShortDeepDepths j,
      logarithmicLongDepthRemainder j t| ≤
      ∑ t ∈ terminalShortDeepDepths j,
        |logarithmicLongDepthRemainder j t| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ t ∈ terminalShortDeepDepths j,
        (2 + normalizedShortDepthBudget j t) := by
      apply Finset.sum_le_sum
      intro t ht
      have htY :
          t < 2 ^ (j + 1) := by
        simp only [terminalShortDeepDepths, Finset.mem_filter,
          Finset.mem_Ico] at ht
        exact ht.1.2
      exact abs_longDepthRemainder_le_two_add_shortBudget htY
    _ = 2 * ((terminalShortDeepDepths j).card : ℝ) +
        terminalShortNormalizedBudget j := by
      unfold terminalShortNormalizedBudget
      rw [Finset.sum_add_distrib]
      simp [mul_comm]
    _ ≤ 2 * (logarithmicShiftThreshold j + 2 : ℝ) +
        normalizedShortPacketBudget j := by
      apply add_le_add
      · apply mul_le_mul_of_nonneg_left
        · exact_mod_cast terminalShortDeepDepths_card_le j
        · norm_num
      · exact terminalShortNormalizedBudget_le_full j

/-- The terminal-short deep strip is subpolynomial. -/
def SubpolynomialTerminalShortDeepRemainderPacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      |terminalShortDeepRemainderPacket j| ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Deterministic source-level terminal-strip supplier. -/
theorem subpolynomialTerminalShortDeepRemainderPacket :
    SubpolynomialTerminalShortDeepRemainderPacket := by
  intro δ hδ
  obtain ⟨A, hA, hlog⟩ :=
    nat_add_two_le_const_mul_dyadic_rpow hδ
  obtain ⟨Cshort, hCshort, hshort⟩ :=
    subpolynomialLogThresholdShortPacketBudget δ hδ
  refine ⟨4 * A + Cshort,
    add_nonneg (mul_nonneg (by norm_num) hA) hCshort, ?_⟩
  intro j
  calc
    |terminalShortDeepRemainderPacket j| ≤
      2 * (logarithmicShiftThreshold j + 2 : ℝ) +
        normalizedShortPacketBudget j :=
      abs_terminalShortDeepRemainderPacket_le j
    _ ≤ 4 * (j + 2 : ℝ) +
        normalizedShortPacketBudget j := by
      apply add_le_add _ le_rfl
      unfold logarithmicShiftThreshold
      norm_num
      nlinarith
    _ ≤ 4 * (A * (((2 ^ j : ℕ) : ℝ) ^ δ)) +
        Cshort * (((2 ^ j : ℕ) : ℝ) ^ δ) := by
      exact add_le_add
        (mul_le_mul_of_nonneg_left (hlog j) (by norm_num))
        (hshort j)
    _ = (4 * A + Cshort) *
        (((2 ^ j : ℕ) : ℝ) ^ δ) := by ring

/-- Final analytic source after all deterministic endpoint strips are paid. -/
def SubpolynomialCoreLongDeepRemainderPacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      coreLongDeepRemainderPacket j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- The core supplier restores the complete deep-long supplier. -/
theorem subpolynomialDeepLongHarmonicRemainderPacket_of_core
    (hCore : SubpolynomialCoreLongDeepRemainderPacket) :
    SubpolynomialDeepLongHarmonicRemainderPacket := by
  intro δ hδ
  obtain ⟨Cterminal, hCterminal, hterminal⟩ :=
    subpolynomialTerminalShortDeepRemainderPacket δ hδ
  obtain ⟨Ccore, hCcore, hcore⟩ := hCore δ hδ
  refine ⟨Cterminal + Ccore, add_nonneg hCterminal hCcore, ?_⟩
  intro j
  rw [deepLongRemainder_eq_terminalShort_add_core]
  calc
    terminalShortDeepRemainderPacket j +
        coreLongDeepRemainderPacket j ≤
      |terminalShortDeepRemainderPacket j| +
        coreLongDeepRemainderPacket j := by
      exact add_le_add (le_abs_self _) le_rfl
    _ ≤ Cterminal * (((2 ^ j : ℕ) : ℝ) ^ δ) +
        Ccore * (((2 ^ j : ℕ) : ℝ) ^ δ) := by
      exact add_le_add (hterminal j) (hcore j)
    _ = (Cterminal + Ccore) *
        (((2 ^ j : ℕ) : ℝ) ^ δ) := by ring

/-- Conditional RH endpoint from the genuine core supplier. -/
theorem riemannHypothesis_of_subpolynomialCoreLongDeepRemainderPacket
    (hCore : SubpolynomialCoreLongDeepRemainderPacket) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDeepLongHarmonicRemainderPacket
    (subpolynomialDeepLongHarmonicRemainderPacket_of_core hCore)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.terminalShortDeepDepths_card_le
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialTerminalShortDeepRemainderPacket
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialCoreLongDeepRemainderPacket
```
