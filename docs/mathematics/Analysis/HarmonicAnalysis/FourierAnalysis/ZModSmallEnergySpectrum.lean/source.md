# Complete source: GRWTSK.Analysis.Fourier.ZModSmallEnergySpectrum

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95681c2768eeac33856177ca2e0114d68f0c544c` · SHA-256 `a3f81e9b6e8e9b7ab80a5dac5d618babeb0584b6609d50e484715b2efe26fb32`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; Lean implementation: OpenAI Codex.
Mathlib authorship and licensing retained. -/
import GRWTSK.Analysis.Fourier.ZModSmallEnergySets
import GRWTSK.Combinatorics.Sequences.CyclicSumsetGrowth

/-!
# Cardinality of low-energy modular frequencies

This module combines the proved small-energy set estimates with iterated
Cauchy--Davenport growth. It proves the deterministic spectral counting estimate
of Pham--Sauermann, arXiv:2602.15797v1, Lemma 3.4. The auxiliary floor parameter
is constructed, and all its numerical bounds are proved. The real-parameter
formulation implies the source's positive-integer formulation.
-/

namespace GRWTSK.ZModSmallEnergySpectrum
open scoped BigOperators Pointwise
open GRWTSK.ZModSmallEnergySets GRWTSK.CyclicSumsetGrowth

variable {p : ℕ} [NeZero p]

/-- Source Lemma 3.7 expressed as containment of the actual iterated sumset. -/
theorem iteratedSumset_smallEnergyPoints_subset (B : Finset (ZMod p)) (δ : ℝ)
    (k : ℕ) (hk : 0 < k) :
    iteratedSumset (smallEnergyPoints B δ) k ⊆
      smallEnergyPoints B ((k : ℝ) ^ 2 * δ) := by
  intro z hz
  obtain ⟨xs, hlen, hmem, hsum⟩ := (mem_iteratedSumset_iff _ _ _).mp hz
  have hI : (Finset.univ : Finset (Fin xs.length)).Nonempty :=
    ⟨⟨0, by omega⟩, Finset.mem_univ _⟩
  have hs := sum_mem_smallEnergyPoints Finset.univ hI B δ xs.get
    (fun i _ => hmem _ (List.get_mem xs i))
  have heq : (∑ i : Fin xs.length, xs.get i) = xs.sum := by
    rw [← List.sum_ofFn, List.ofFn_get]
  simpa only [Finset.card_univ, Fintype.card_fin, hlen, heq, hsum] using hs

/-- The retained expansion length used in the source proof. -/
noncomputable def expansionLength (m t : ℝ) : ℕ :=
  ⌊Real.sqrt (m / (2000 * t))⌋₊

/-- The floor parameter is positive, keeps the expanded energy below `1/200`,
and is large enough to give the source's numerical constant. -/
theorem expansionLength_spec (m t : ℝ) (hm : 0 < m) (ht : 0 < t)
    (htm : t ≤ m / 2000) :
    0 < expansionLength m t ∧
      (expansionLength m t : ℝ) ^ 2 * (10 * t / m) ≤ 1 / 200 ∧
      (1 / 100 : ℝ) * Real.sqrt (m / t) ≤ expansionLength m t := by
  let r := Real.sqrt (m / (2000 * t))
  have hden : 0 < 2000 * t := by positivity
  have hr0 : 0 ≤ r := Real.sqrt_nonneg _
  have hrsq : r ^ 2 = m / (2000 * t) := Real.sq_sqrt (by positivity)
  have hr1 : 1 ≤ r := by
    apply (Real.le_sqrt (by norm_num) (by positivity)).mpr
    apply (le_div_iff₀ hden).mpr
    linarith
  have hk : 0 < expansionLength m t := Nat.floor_pos.mpr hr1
  have hk1 : (1 : ℝ) ≤ expansionLength m t := by exact_mod_cast hk
  have hk0 : (0 : ℝ) ≤ expansionLength m t := by positivity
  have hku : (expansionLength m t : ℝ) ≤ r := Nat.floor_le hr0
  have hkl : r < (expansionLength m t : ℝ) + 1 := Nat.lt_floor_add_one r
  have hhalf : r / 2 ≤ (expansionLength m t : ℝ) := by linarith
  have hksq : (expansionLength m t : ℝ) ^ 2 ≤ r ^ 2 := by nlinarith
  have henergy : (expansionLength m t : ℝ) ^ 2 * (10 * t / m) ≤ 1 / 200 := by
    calc
      _ ≤ r ^ 2 * (10 * t / m) :=
        mul_le_mul_of_nonneg_right hksq (by positivity)
      _ = 1 / 200 := by rw [hrsq]; field_simp; norm_num
  have hratio : (Real.sqrt (m / t)) ^ 2 = 2000 * r ^ 2 := by
    rw [Real.sq_sqrt (by positivity), hrsq]
    field_simp
  have hlower : (1 / 100 : ℝ) * Real.sqrt (m / t) ≤ expansionLength m t := by
    have hs0 := Real.sqrt_nonneg (m / t)
    have htwentieth : Real.sqrt (m / t) / 50 ≤ r := by nlinarith
    linarith
  exact ⟨hk, henergy, hlower⟩

/-- Source Lemma 3.4. The source's `|S| ≥ 10^7` is weakened here to `10 ≤ |S|`;
all other analytical ingredients are proved in the imported modules. In
particular no anti-concentration or spectral-cardinality hypothesis is assumed. -/
theorem smallEnergyFrequencies_card_le (hp : p.Prime) (S : Finset (ZMod p))
    (hS10 : 10 ≤ S.card) (m t : ℝ) (hm : 0 < m) (ht : 0 < t)
    (htm : t ≤ m / 2000) :
    ((smallEnergyFrequencies S m t).card : ℝ) ≤
      1 + 200 * p * Real.sqrt t / ((S.card : ℝ) * Real.sqrt m) := by
  let B := smallEnergyFrequencies S m t
  by_cases hB2 : 2 ≤ B.card
  · have hB : B.Nonempty := Finset.card_pos.mp (by omega)
    have hBpos : (0 : ℝ) < B.card := by exact_mod_cast hB.card_pos
    have hB2R : (2 : ℝ) ≤ B.card := by exact_mod_cast hB2
    have hS : S.Nonempty := Finset.card_pos.mp (by omega)
    have hSpos : (0 : ℝ) < S.card := by exact_mod_cast hS.card_pos
    have hS10R : (10 : ℝ) ≤ S.card := by exact_mod_cast hS10
    have hppos : (0 : ℝ) < p := by exact_mod_cast hp.pos
    let Q := smallEnergyPoints B (10 * t / m)
    let W := smallEnergyPoints B (1 / 200)
    let k := expansionLength m t
    obtain ⟨hk, henergy, hklower⟩ := expansionLength_spec m t hm ht htm
    have hk' : 0 < k := hk
    have hQlower : (9 / 10 : ℝ) * S.card ≤ Q.card :=
      smallEnergyPoints_card_lower S hS m t hm ht
    have hQ : Q.Nonempty := Finset.card_pos.mp (by
      have : (0 : ℝ) < Q.card := by linarith
      exact_mod_cast this)
    have hWupper : (W.card : ℝ) ≤ (5 / 4 : ℝ) * p / B.card :=
      smallEnergyPoints_card_le B hB
    have hWmul : (W.card : ℝ) * B.card ≤ (5 / 4 : ℝ) * p :=
      (le_div_iff₀ hBpos).mp hWupper
    have hWlt : (W.card : ℝ) < p := by
      have htwice := mul_le_mul_of_nonneg_left hB2R (show (0 : ℝ) ≤ W.card by positivity)
      nlinarith
    have hsubset : iteratedSumset Q k ⊆ W :=
      (iteratedSumset_smallEnergyPoints_subset B (10 * t / m) k hk').trans
        (smallEnergyPoints_mono B henergy)
    have hne : iteratedSumset Q k ≠ Finset.univ := by
      intro he
      have hc := Finset.card_le_card hsubset
      rw [he] at hc
      simp only [Finset.card_univ, ZMod.card] at hc
      have hc' : (p : ℝ) ≤ W.card := by exact_mod_cast hc
      exact (not_le_of_gt hWlt) hc'
    have hgrowth := prime_card_lower_bound_of_ne_univ hp Q hQ k hne
    have hQone : 1 ≤ Q.card := hQ.card_pos
    have hgrR : (1 : ℝ) + (k : ℝ) * ((Q.card : ℝ) - 1) ≤
        (iteratedSumset Q k).card := by
      have hcast := (Nat.cast_le (α := ℝ)).mpr hgrowth
      simpa only [Nat.cast_add, Nat.cast_mul, Nat.cast_one, Nat.cast_sub hQone] using hcast
    have hbase : (4 / 5 : ℝ) * S.card ≤ (Q.card : ℝ) - 1 := by linarith
    have hlower : (4 / 5 : ℝ) * (k : ℝ) * S.card ≤ W.card := by
      have hmul := mul_le_mul_of_nonneg_left hbase (show (0 : ℝ) ≤ k by positivity)
      have hcard : ((iteratedSumset Q k).card : ℝ) ≤ W.card := by
        exact_mod_cast Finset.card_le_card hsubset
      nlinarith
    have hlowerB := mul_le_mul_of_nonneg_right hlower (le_of_lt hBpos)
    have hchain : (4 / 5 : ℝ) * (k : ℝ) * S.card * B.card ≤ (5 / 4 : ℝ) * p :=
      hlowerB.trans hWmul
    have hst : 0 < Real.sqrt t := Real.sqrt_pos.mpr ht
    have hsm : 0 < Real.sqrt m := Real.sqrt_pos.mpr hm
    have hkroot : (1 / 100 : ℝ) * Real.sqrt m ≤ (k : ℝ) * Real.sqrt t := by
      calc
        _ = ((1 / 100 : ℝ) * Real.sqrt (m / t)) * Real.sqrt t := by
          rw [Real.sqrt_div hm.le]
          field_simp
        _ ≤ _ := mul_le_mul_of_nonneg_right hklower hst.le
    have hrootmul := mul_le_mul_of_nonneg_right hkroot
      (show (0 : ℝ) ≤ (S.card : ℝ) * B.card by positivity)
    have hchainsqrt := mul_le_mul_of_nonneg_right hchain hst.le
    have hfinalmul : (B.card : ℝ) * ((S.card : ℝ) * Real.sqrt m) ≤
        200 * p * Real.sqrt t := by
      nlinarith [mul_nonneg (show (0 : ℝ) ≤ p by positivity) hst.le]
    have hfinal : (B.card : ℝ) ≤
        200 * p * Real.sqrt t / ((S.card : ℝ) * Real.sqrt m) :=
      (le_div_iff₀ (mul_pos hSpos hsm)).mpr hfinalmul
    change (B.card : ℝ) ≤ _
    linarith
  · have hBsmall : (B.card : ℝ) ≤ 1 := by exact_mod_cast (show B.card ≤ 1 by omega)
    change (B.card : ℝ) ≤ _
    have hnonneg : 0 ≤ 200 * p * Real.sqrt t / ((S.card : ℝ) * Real.sqrt m) := by positivity
    linarith

end GRWTSK.ZModSmallEnergySpectrum
```
