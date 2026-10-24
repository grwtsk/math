# Complete source: GRWTSK.NumberTheory.Moebius.DyadicSignedAbelShiftPacket

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb7875864a27596de835ed5c87df8cbc801b8f1c` · SHA-256 `d89ecc5fa9526b112dcdb0bd7609827dac2ef4d78bb5d96766d4dc646e99d4f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #468. Direct stacked parent: draft PR #465 at
`ef00d2505cf775470e570d7093a47438abda6ac5`.
-/
import GRWTSK.NumberTheory.Moebius.TwoPointCarlesonEnergy

/-!
# Exact signed Abel presentation of the dyadic Möbius shift packet

The positive max-per-scale and maximal-prefix suppliers are sufficient
majorants, but they discard cancellation.  This module returns to the exact
signed source and exposes the finite Abel representation currently hidden
inside those envelope estimates.

For one dyadic scale `j`, positive shift `h`, and admissible cutoff

`N(j,h) = 2^(j+1) - h - 1`,

the weight drop is

`Delta(j,h,t) = w_j(t+1+h) - w_j(t+2+h)`.

The exact shift contribution is represented as

`2 * sum_(t<N(j,h)) C_h(t+1) * Delta(j,h,t)`,

where `C_h` is the ordinary signed two-point Möbius prefix.  The drops are
nonnegative and telescope to the initial kernel weight, but the prefixes and
complete packet remain signed.  No absolute value, square, arithmetic estimate,
or new positivity premise is introduced.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- One forward difference of the exact dyadic shift weight.  This is the
finite positive coefficient multiplying the signed prefix at depth `t+1`. -/
def dyadicMertensShiftWeightDrop (j h t : ℕ) : ℝ :=
  dyadicMertensShiftWeight j (t + 1 + h) -
    dyadicMertensShiftWeight j ((t + 1) + 1 + h)

/-- Exact finite Abel presentation of one positive-shift contribution. -/
def weightedMertensDyadicShiftAbelContribution (j h : ℕ) : ℝ :=
  2 * ∑ t ∈ Finset.range (2 ^ (j + 1) - h - 1),
    mertensTwoPointPrefix h (t + 1) *
      dyadicMertensShiftWeightDrop j h t

/-- Complete signed Abel packet over every positive shift below the dyadic
right endpoint. -/
def weightedMertensDyadicSignedAbelPacket (j : ℕ) : ℝ :=
  ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
    weightedMertensDyadicShiftAbelContribution j h

/-- Finite Abel summation with the terminal term retained.  Consumers may erase
that term only after proving the selected terminal weight is zero. -/
theorem finiteAbelPrefixIdentity
    (x q : ℕ → ℝ) (N : ℕ) :
    (∑ k ∈ Finset.range N, x k * q k) =
      (∑ t ∈ Finset.range N,
        (∑ k ∈ Finset.range (t + 1), x k) *
          (q t - q (t + 1))) +
        (∑ k ∈ Finset.range N, x k) * q N := by
  induction N with
  | zero => simp
  | succ N ih =>
      rw [Finset.sum_range_succ, ih]
      simp only [Finset.sum_range_succ]
      ring

/-- Finite forward differences telescope exactly. -/
theorem finiteWeightDropTelescope
    (q : ℕ → ℝ) (N : ℕ) :
    (∑ t ∈ Finset.range N, (q t - q (t + 1))) =
      q 0 - q N := by
  induction N with
  | zero => simp
  | succ N ih =>
      rw [Finset.sum_range_succ, ih]
      ring

/-- Every selected weight drop is nonnegative.  The monotonicity is global, so
no cutoff hypothesis is needed for this local sign statement. -/
theorem dyadicMertensShiftWeightDrop_nonneg
    (j h t : ℕ) :
    0 ≤ dyadicMertensShiftWeightDrop j h t := by
  unfold dyadicMertensShiftWeightDrop
  have hstep := dyadicMertensShiftWeight_step_antitone
    (j := j) (b := t + 1 + h)
  have hindex : t + 1 + h + 1 = (t + 1) + 1 + h := by omega
  rw [hindex] at hstep
  linarith

/-- At the exact arithmetic cutoff, the shifted kernel reaches the dyadic right
endpoint and vanishes. -/
theorem dyadicMertensShiftWeight_at_cutoff
    {j h : ℕ} (hhY : h < 2 ^ (j + 1)) :
    dyadicMertensShiftWeight j
        ((2 ^ (j + 1) - h - 1) + 1 + h) = 0 := by
  have hindex :
      (2 ^ (j + 1) - h - 1) + 1 + h = 2 ^ (j + 1) := by
    omega
  rw [hindex, dyadicMertensShiftWeight_at_right]

/-- The finite drop mass at one shift is exactly its initial kernel weight. -/
theorem sum_dyadicMertensShiftWeightDrop
    {j h : ℕ} (hhY : h < 2 ^ (j + 1)) :
    (∑ t ∈ Finset.range (2 ^ (j + 1) - h - 1),
      dyadicMertensShiftWeightDrop j h t) =
        dyadicMertensShiftWeight j (1 + h) := by
  let N : ℕ := 2 ^ (j + 1) - h - 1
  let q : ℕ → ℝ := fun t =>
    dyadicMertensShiftWeight j (t + 1 + h)
  have htel := finiteWeightDropTelescope q N
  have hterminal : q N = 0 := by
    dsimp [q, N]
    exact dyadicMertensShiftWeight_at_cutoff hhY
  calc
    (∑ t ∈ Finset.range N,
      dyadicMertensShiftWeightDrop j h t) =
        ∑ t ∈ Finset.range N, (q t - q (t + 1)) := by
      apply Finset.sum_congr rfl
      intro t _ht
      rfl
    _ = q 0 - q N := htel
    _ = dyadicMertensShiftWeight j (1 + h) := by
      rw [hterminal, sub_zero]

/-- The initial weight is nonnegative on every admissible positive shift. -/
theorem dyadicMertensShiftInitialWeight_nonneg
    {j h : ℕ} (hhY : h < 2 ^ (j + 1)) :
    0 ≤ dyadicMertensShiftWeight j (1 + h) := by
  apply dyadicMertensShiftWeight_nonneg
  omega

/-- The total finite drop mass is at most the reciprocal dyadic endpoint. -/
theorem dyadicMertensShiftInitialWeight_le_right_inv
    {j h : ℕ} (hhY : h < 2 ^ (j + 1)) :
    dyadicMertensShiftWeight j (1 + h) ≤
      (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ := by
  apply dyadicMertensShiftWeight_le_right_inv
  omega

/-- The complete drop mass is a nonnegative finite subprobability mass at the
exact source normalization. -/
theorem sum_dyadicMertensShiftWeightDrop_bounds
    {j h : ℕ} (hhY : h < 2 ^ (j + 1)) :
    0 ≤ (∑ t ∈ Finset.range (2 ^ (j + 1) - h - 1),
        dyadicMertensShiftWeightDrop j h t) ∧
      (∑ t ∈ Finset.range (2 ^ (j + 1) - h - 1),
        dyadicMertensShiftWeightDrop j h t) ≤
          (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ := by
  rw [sum_dyadicMertensShiftWeightDrop hhY]
  exact ⟨dyadicMertensShiftInitialWeight_nonneg hhY,
    dyadicMertensShiftInitialWeight_le_right_inv hhY⟩

/-- Exact shiftwise Abel identity.  The terminal term is removed only through
`dyadicMertensShiftWeight_at_cutoff`. -/
theorem weightedMertensDyadicShiftContribution_eq_abel
    {j h : ℕ} (hh : 1 ≤ h) (hhY : h < 2 ^ (j + 1)) :
    weightedMertensDyadicShiftContribution j h =
      weightedMertensDyadicShiftAbelContribution j h := by
  let N : ℕ := 2 ^ (j + 1) - h - 1
  let x : ℕ → ℝ := fun a =>
    moebiusReal (a + 1) * moebiusReal (a + 1 + h)
  let q : ℕ → ℝ := fun a =>
    dyadicMertensShiftWeight j (a + 1 + h)
  have hterminal : q N = 0 := by
    dsimp [q, N]
    exact dyadicMertensShiftWeight_at_cutoff hhY
  have habel := finiteAbelPrefixIdentity x q N
  rw [weightedMertensDyadicShiftContribution_eq_range hh hhY]
  unfold weightedMertensDyadicShiftAbelContribution
  change
    2 * (∑ a ∈ Finset.range N, x a * q a) =
      2 * ∑ t ∈ Finset.range N,
        mertensTwoPointPrefix h (t + 1) *
          dyadicMertensShiftWeightDrop j h t
  rw [habel, hterminal, mul_zero, add_zero]
  congr 1

/-- The complete exact signed packet is the sum of the signed Abel
contributions.  Cancellation between shifts remains available. -/
theorem weightedMertensDyadicShiftPacket_eq_signedAbelPacket
    (j : ℕ) :
    weightedMertensDyadicShiftPacket j =
      weightedMertensDyadicSignedAbelPacket j := by
  unfold weightedMertensDyadicShiftPacket
    weightedMertensDyadicSignedAbelPacket
  apply Finset.sum_congr rfl
  intro h hh
  exact weightedMertensDyadicShiftContribution_eq_abel
    (Finset.mem_Ico.mp hh).1 (Finset.mem_Ico.mp hh).2

/-- All-scale source-facing condition stated directly on the exact signed Abel
packet. -/
def SubpolynomialDyadicSignedAbelShiftPacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      weightedMertensDyadicSignedAbelPacket j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Exact all-scale equivalence with the inherited signed shift-packet
criterion.  This is representation, not an estimate. -/
theorem subpolynomialDyadicSignedAbelShiftPacket_iff_shiftPacket :
    SubpolynomialDyadicSignedAbelShiftPacket ↔
      SubpolynomialDyadicMertensShiftPacket := by
  constructor
  · intro hAbel δ hδ
    obtain ⟨C, hC, hscale⟩ := hAbel δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [weightedMertensDyadicShiftPacket_eq_signedAbelPacket]
    exact hscale j
  · intro hPacket δ hδ
    obtain ⟨C, hC, hscale⟩ := hPacket δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← weightedMertensDyadicShiftPacket_eq_signedAbelPacket]
    exact hscale j

/-- The exact signed Abel supplier discharges the existing signed-packet
criterion without changing constants. -/
theorem subpolynomialDyadicMertensShiftPacket_of_signedAbel
    (hAbel : SubpolynomialDyadicSignedAbelShiftPacket) :
    SubpolynomialDyadicMertensShiftPacket :=
  subpolynomialDyadicSignedAbelShiftPacket_iff_shiftPacket.mp hAbel

/-- Conversely, the existing signed-packet criterion has the exact Abel
presentation. -/
theorem subpolynomialDyadicSignedAbelShiftPacket_of_shiftPacket
    (hPacket : SubpolynomialDyadicMertensShiftPacket) :
    SubpolynomialDyadicSignedAbelShiftPacket :=
  subpolynomialDyadicSignedAbelShiftPacket_iff_shiftPacket.mpr hPacket

/-- Conditional RH endpoint from the exact signed Abel supplier.  The arithmetic
supplier itself remains open. -/
theorem riemannHypothesis_of_subpolynomialDyadicSignedAbelShiftPacket
    (hAbel : SubpolynomialDyadicSignedAbelShiftPacket) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicMertensShiftPacket
    (subpolynomialDyadicMertensShiftPacket_of_signedAbel hAbel)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.finiteAbelPrefixIdentity
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensDyadicShiftContribution_eq_abel
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensDyadicShiftPacket_eq_signedAbelPacket
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialDyadicSignedAbelShiftPacket_iff_shiftPacket
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialDyadicSignedAbelShiftPacket
```
