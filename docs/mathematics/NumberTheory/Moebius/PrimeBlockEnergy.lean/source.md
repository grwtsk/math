# Complete source: GRWTSK.NumberTheory.Moebius.PrimeBlockEnergy

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a083b29e3728de5a9395cf4008c1268efe3631d` · SHA-256 `992c19c5262446e738d50ce828a352b2c1dc08650069976416963f9c558b7081`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.PrimeFilterEnergy

/-! Exact block linearization when two distinct block delays cannot fit in the
recording window. The square of the block echo retains all ordered cross terms. -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC
open MeasureTheory Set Real
open scoped BigOperators

theorem cascade_eq_zero_of_nonpos {P : Finset ℕ} (hP : ∀ p ∈ P, p.Prime)
    {u : ℝ} (hu : u ≤ 0) : primeNoteCascade P u = 0 := by
  rcases hu.eq_or_lt with h | h
  · rw [h, primeNoteCascade_zero hP]
  · exact primeNoteCascade_negative hP h

theorem cascade_insert_before_delay {P : Finset ℕ} (hP : ∀ p ∈ P, p.Prime)
    {p : ℕ} (hp : p.Prime) (hpP : p ∉ P) {u : ℝ} (hu : u ≤ log p) :
    primeNoteCascade (insert p P) u = primeNoteCascade P u := by
  rw [primeNoteCascade_insert hP hp hpP]
  unfold primeNoteFilter causalShift
  split_ifs with h
  · have hz : primeNoteCascade P (u-log p) = 0 :=
      cascade_eq_zero_of_nonpos hP (by linarith)
    rw [hz, mul_zero, sub_zero]
  · simp

/-- Adding only notes whose birth times lie after the horizon does nothing there. -/
theorem cascade_union_before_delays {P B : Finset ℕ}
    (hP : ∀ p ∈ P, p.Prime) (hB : ∀ p ∈ B, p.Prime) (hd : Disjoint P B)
    {u : ℝ} (hu : ∀ p ∈ B, u ≤ log p) :
    primeNoteCascade (P ∪ B) u = primeNoteCascade P u := by
  induction B using Finset.induction_on with
  | empty => simp
  | @insert p B hpB ih =>
    have hp := hB p (by simp)
    have hB' : ∀ q ∈ B, q.Prime := fun q hq ↦ hB q (by simp [hq])
    have hd' : Disjoint P B := hd.mono_right (Finset.subset_insert p B)
    have hpP : p ∉ P := fun h ↦ Finset.disjoint_left.mp hd h (by simp)
    rw [Finset.union_insert, cascade_insert_before_delay
      (fun q hq ↦ (Finset.mem_union.mp hq).elim (hP q) (hB' q)) hp
      (by simp [hpP, hpB]) (hu p (by simp))]
    exact ih hB' hd' (fun q hq ↦ hu q (by simp [hq]))

def primeBlockEcho (P B : Finset ℕ) (u : ℝ) : ℝ :=
  ∑ p ∈ B, (sqrt p)⁻¹ * causalShift (log p) (primeNoteCascade P) u

/-- Distinct block primes can occur only singly on this window. Equality at a
double birth is permitted because every source waveform vanishes at zero. -/
theorem cascade_union_eq_sub_echo {P B : Finset ℕ}
    (hP : ∀ p ∈ P, p.Prime) (hB : ∀ p ∈ B, p.Prime) (hd : Disjoint P B)
    {T u : ℝ} (huT : u ≤ T)
    (hpair : ∀ p ∈ B, ∀ q ∈ B, p ≠ q → T ≤ log p + log q) :
    primeNoteCascade (P ∪ B) u = primeNoteCascade P u - primeBlockEcho P B u := by
  induction B using Finset.induction_on with
  | empty => simp [primeBlockEcho]
  | @insert p B hpB ih =>
    have hp := hB p (by simp)
    have hB' : ∀ q ∈ B, q.Prime := fun q hq ↦ hB q (by simp [hq])
    have hd' : Disjoint P B := hd.mono_right (Finset.subset_insert p B)
    have hpP : p ∉ P := fun h ↦ Finset.disjoint_left.mp hd h (by simp)
    have hshift : causalShift (log p) (primeNoteCascade (P ∪ B)) u =
        causalShift (log p) (primeNoteCascade P) u := by
      unfold causalShift
      split_ifs
      · exact cascade_union_before_delays hP hB' hd' (fun q hq ↦ by
          have hqp : p ≠ q := fun h ↦ hpB (h ▸ hq)
          have := hpair p (by simp) q (by simp [hq]) hqp
          linarith)
      · rfl
    rw [Finset.union_insert, primeNoteCascade_insert
      (fun q hq ↦ (Finset.mem_union.mp hq).elim (hP q) (hB' q)) hp
      (by simp [hpP, hpB])]
    unfold primeNoteFilter
    rw [hshift, ih hB' hd' (fun q hq r hr hqr ↦ hpair q (by simp [hq]) r (by simp [hr]) hqr)]
    simp only [primeBlockEcho, Finset.sum_insert hpB]
    ring

theorem primeBlockEcho_continuous {P B : Finset ℕ} (hP : ∀ p ∈ P, p.Prime) :
    Continuous (primeBlockEcho P B) := by
  apply continuous_finsetSum
  intro p _
  exact continuous_const.mul (causalShift_continuous
    (primeNoteCascade_continuous hP) (primeNoteCascade_zero hP) (log p))

/-- Exact polarization, including every interaction inside the block echo. -/
theorem energy_after_causal_block {P B : Finset ℕ}
    (hP : ∀ p ∈ P, p.Prime) (hB : ∀ p ∈ B, p.Prime) (hd : Disjoint P B)
    {T : ℝ} (hT : 0 ≤ T)
    (hpair : ∀ p ∈ B, ∀ q ∈ B, p ≠ q → T ≤ log p + log q) :
    noteEnergy (primeNoteCascade (P ∪ B)) T =
      noteEnergy (primeNoteCascade P) T + noteEnergy (primeBlockEcho P B) T -
        2 * ∫ u in (0 : ℝ)..T, primeNoteCascade P u * primeBlockEcho P B u := by
  have hf := primeNoteCascade_continuous hP
  have hg := primeBlockEcho_continuous (B := B) hP
  unfold noteEnergy
  rw [max_eq_right hT]
  calc
    _ = ∫ u in (0 : ℝ)..T, primeNoteCascade P u ^ 2 + primeBlockEcho P B u ^ 2 -
        2 * (primeNoteCascade P u * primeBlockEcho P B u) := by
      apply intervalIntegral.integral_congr
      intro u hu
      rw [uIcc_of_le hT] at hu
      change primeNoteCascade (P ∪ B) u ^ 2 = _
      rw [cascade_union_eq_sub_echo hP hB hd hu.2 hpair]
      ring
    _ = _ := by
      have hi : IntervalIntegrable (fun u ↦ primeNoteCascade P u ^ 2) volume 0 T :=
        (hf.pow 2).intervalIntegrable _ _
      have hj : IntervalIntegrable (fun u ↦ primeBlockEcho P B u ^ 2) volume 0 T :=
        (hg.pow 2).intervalIntegrable _ _
      have hk : IntervalIntegrable (fun u ↦ 2 * (primeNoteCascade P u * primeBlockEcho P B u))
          volume 0 T := ((hf.mul hg).const_mul 2).intervalIntegrable _ _
      rw [intervalIntegral.integral_sub (hi.add hj) hk,
        intervalIntegral.integral_add hi hj, intervalIntegral.integral_const_mul]

/-- The upper half of the logarithmic recording window satisfies the exact
no-double-delay condition, independently of a correlation estimate. -/
theorem causal_block_condition_of_half_horizon {B : Finset ℕ} {T : ℝ}
    (hB : ∀ p ∈ B, T / 2 ≤ log p) :
    ∀ p ∈ B, ∀ q ∈ B, p ≠ q → T ≤ log p + log q := by
  intro p hp q hq _
  linarith [hB p hp, hB q hq]

end GRWTSK.RiemannHypothesis.CCC
```
