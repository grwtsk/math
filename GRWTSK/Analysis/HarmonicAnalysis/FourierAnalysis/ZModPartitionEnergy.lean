/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; Lean implementation: OpenAI Codex.
Mathlib authorship and licensing retained. -/
import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiniteExponentialLayers
import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModCharacterEnergy
import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModIndependentSelection
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Data.Nat.Log
import Mathlib.Tactic

/-!
# Balanced part sizes and Fourier partition energy

The size estimate is elementary arithmetic under the source restriction
`4m ≤ n`. It supplies the normalization comparison in equation (3.3) of
Pham--Sauermann, arXiv:2602.15797v1. No random concentration bound is assumed.
-/

namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModPartitionEnergy
open scoped BigOperators

/-- A floor-or-ceiling part is small enough for the source factor `2`.
The hypothesis is proved for the actual balanced sizes in the sampling module. -/
theorem balanced_size_square_bound (n m c : ℕ) (hm : 0 < m)
    (hfour : 4 * m ≤ n) (hc : c ≤ n / m + 1) :
    (m : ℝ) ^ 2 * (c : ℝ) ^ 2 ≤ 2 * (n : ℝ) ^ 2 := by
  have hmul : m * c ≤ n + m := by
    calc
      m * c ≤ m * (n / m + 1) := Nat.mul_le_mul_left m hc
      _ = n / m * m + m := by ring
      _ ≤ n + m := Nat.add_le_add_right (Nat.div_mul_le_self n m) m
  have hmulR : (m : ℝ) * (c : ℝ) ≤ (n : ℝ) + m := by exact_mod_cast hmul
  have hfourR : 4 * (m : ℝ) ≤ n := by exact_mod_cast hfour
  have hmc : 4 * ((m : ℝ) * c) ≤ 5 * n := by linarith
  have hs := mul_self_le_mul_self (by positivity : 0 ≤ 4 * ((m : ℝ) * c)) hmc
  nlinarith [sq_nonneg (n : ℝ)]

/-- Reciprocal normalization comparison for every nonempty balanced part. -/
theorem balanced_inverse_square_bound (n m c : ℕ) (hm : 0 < m)
    (hfour : 4 * m ≤ n) (hc : c ≤ n / m + 1) (hpos : 0 < c) :
    (m : ℝ) ^ 2 / (2 * (n : ℝ) ^ 2) ≤ (c : ℝ)⁻¹ ^ 2 := by
  have hn : 0 < n := by omega
  have hnr : (0 : ℝ) < n := by exact_mod_cast hn
  have hcr : (0 : ℝ) < c := by exact_mod_cast hpos
  rw [inv_pow, ← one_div]
  exact (div_le_div_iff₀ (by positivity : 0 < 2 * (n : ℝ) ^ 2)
    (by positivity : 0 < (c : ℝ) ^ 2)).mpr (by simpa using balanced_size_square_bound n m c hm hfour hc)

open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModCharacterEnergy

variable {p : ℕ} [NeZero p] {m : ℕ}

/-- The energy of an actual finite part family, as in source (3.2). -/
noncomputable def partitionEnergy (parts : Fin m → Finset (ZMod p)) (χ : ZMod p) : ℝ :=
  ∑ i, pairEnergy (parts i) χ

omit [NeZero p] in
theorem partitionEnergy_nonneg (parts : Fin m → Finset (ZMod p)) (χ : ZMod p) :
    0 ≤ partitionEnergy parts χ :=
  Finset.sum_nonneg (fun i _ => pairEnergy_nonneg (parts i) χ)

omit [NeZero p] in
@[simp] theorem partitionEnergy_zero_frequency (parts : Fin m → Finset (ZMod p)) :
    partitionEnergy parts 0 = 0 := by simp [partitionEnergy]

theorem partitionEnergy_le_card (parts : Fin m → Finset (ZMod p)) (χ : ZMod p) :
    partitionEnergy parts χ ≤ m := by
  calc
    _ ≤ ∑ _i : Fin m, (1 : ℝ) := Finset.sum_le_sum (fun i _ => pairEnergy_le_one (parts i) χ)
    _ = m := by simp

omit [NeZero p] in
/-- Source (3.3). The only size premises are nonempty floor-or-ceiling parts and
`4m ≤ n`; the inverse-square factor is derived rather than assumed. -/
theorem partitionEnergy_lower_bound (parts : Fin m → Finset (ZMod p)) (n : ℕ)
    (hm : 0 < m) (hfour : 4 * m ≤ n)
    (hpos : ∀ i, (parts i).Nonempty) (hsize : ∀ i, (parts i).card ≤ n / m + 1)
    (χ : ZMod p) :
    (m : ℝ) ^ 2 / (2 * (n : ℝ) ^ 2) *
      (∑ i, ∑ x ∈ parts i, ∑ y ∈ parts i, modularDistance (χ * (x - y)) ^ 2) ≤
      partitionEnergy parts χ := by
  unfold partitionEnergy
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro i _
  apply mul_le_mul_of_nonneg_right
    (balanced_inverse_square_bound n m (parts i).card hm hfour (hsize i) (hpos i).card_pos)
  positivity

/-- Fixed-part Fourier/exponential estimate: source (3.1) composed with (3.2).
Independence is constructed by the full Cartesian product of part subtypes. -/
theorem part_mass_le_exponential (parts : Fin m → Finset (ZMod p))
    (hpos : ∀ i, (parts i).Nonempty) (z : ZMod p) :
    GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModIndependentSelection.valueProbability
      (GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModIndependentSelection.selectionSum
        (fun i (x : (parts i : Type)) => (x : ZMod p))) z ≤
      (p : ℝ)⁻¹ * ∑ χ : ZMod p, Real.exp (-partitionEnergy parts χ) := by
  apply (GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModIndependentSelection.part_mass_bound parts z).trans
  apply mul_le_mul_of_nonneg_left _ (by positivity)
  apply Finset.sum_le_sum
  intro χ _
  exact prod_characterAverage_norm_le Finset.univ parts (fun i _ => hpos i) χ

/-- Dyadic cardinality bound for an actual part family. It contains no
hypothesis about the distribution or concentration of layer cardinalities. -/
theorem part_mass_le_dyadic_layers (parts : Fin m → Finset (ZMod p))
    (hpos : ∀ i, (parts i).Nonempty) (z : ZMod p) (L : ℕ)
    (hL : (m : ℝ) < 2 ^ (L + 1)) :
    GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModIndependentSelection.valueProbability
      (GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModIndependentSelection.selectionSum
        (fun i (x : (parts i : Type)) => (x : ZMod p))) z ≤
      (p : ℝ)⁻¹ *
        (((GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiniteExponentialLayers.lowBand (partitionEnergy parts)).card : ℝ) +
          ∑ k ∈ Finset.range (L + 1),
            ((GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiniteExponentialLayers.dyadicBand (partitionEnergy parts) k).card : ℝ) *
              Real.exp (-(2 : ℝ) ^ k)) := by
  apply (part_mass_le_exponential parts hpos z).trans
  apply mul_le_mul_of_nonneg_left _ (by positivity)
  exact GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiniteExponentialLayers.sum_exp_neg_le_layers _ L
    (partitionEnergy_nonneg parts) (fun χ => (partitionEnergy_le_card parts χ).trans_lt hL)

/-- The exact finite upper layer index from source (3.4), with the dyadic
cutoff proved from `Nat.log`; no choice of a large cutoff is assumed. -/
theorem part_mass_le_log_layers (parts : Fin m → Finset (ZMod p))
    (hpos : ∀ i, (parts i).Nonempty) (z : ZMod p) :
    GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModIndependentSelection.valueProbability
      (GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModIndependentSelection.selectionSum
        (fun i (x : (parts i : Type)) => (x : ZMod p))) z ≤
      (p : ℝ)⁻¹ *
        (((GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiniteExponentialLayers.lowBand (partitionEnergy parts)).card : ℝ) +
          ∑ k ∈ Finset.range (Nat.log 2 m + 1),
            ((GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiniteExponentialLayers.dyadicBand (partitionEnergy parts) k).card : ℝ) *
              Real.exp (-(2 : ℝ) ^ k)) := by
  apply part_mass_le_dyadic_layers parts hpos z (Nat.log 2 m)
  exact_mod_cast Nat.lt_pow_succ_log_self (by decide : 1 < 2) m

/-- A simple lower logarithm bound used only to discharge source range arithmetic. -/
theorem log_nat_ge_half (n : ℕ) (hn : 2 ≤ n) : (1 / 2 : ℝ) ≤ Real.log n := by
  have hnR : (2 : ℝ) ≤ n := by exact_mod_cast hn
  have hnp : (0 : ℝ) < n := by linarith
  have hinv : (n : ℝ)⁻¹ ≤ (1 / 2 : ℝ) := by
    simpa only [one_div] using one_div_le_one_div_of_le (by norm_num : (0 : ℝ) < 2) hnR
  linarith [Real.one_sub_inv_le_log_of_pos hnp]

/-- The source upper slice restriction already implies `4m ≤ n`.
This discharges the numerical hypothesis of the balanced normalization bound. -/
theorem source_upper_range_gives_quarter (n m : ℕ) (hn : 2 ≤ n)
    (hu : (m : ℝ) ≤ (1 / 1000 : ℝ) * n / Real.log n) : 4 * m ≤ n := by
  have hnR : (2 : ℝ) ≤ n := by exact_mod_cast hn
  have hnp : (0 : ℝ) < n := by linarith
  have hinv : (n : ℝ)⁻¹ ≤ (1 / 2 : ℝ) := by
    simpa only [one_div] using one_div_le_one_div_of_le (by norm_num : (0 : ℝ) < 2) hnR
  have hlog : (1 / 2 : ℝ) ≤ Real.log n := by
    linarith [Real.one_sub_inv_le_log_of_pos hnp]
  have hprod := (le_div_iff₀ (by linarith : 0 < Real.log (n : ℝ))).mp hu
  have hmR : (0 : ℝ) ≤ m := by positivity
  have hmul := mul_le_mul_of_nonneg_left hlog hmR
  exact_mod_cast (show 4 * (m : ℝ) ≤ n by nlinarith)

/-- With the fixed constant used in source Section 3, the original hypotheses
also prove positive sample size; neither positivity nor `4m ≤ n` is added. -/
theorem source_range_size_bounds (n m : ℕ) (hn : 2 ≤ n)
    (hl : (2 : ℝ) ^ 24 * Real.log n ≤ m)
    (hu : (m : ℝ) ≤ (1 / 1000 : ℝ) * n / Real.log n) :
    0 < m ∧ 4 * m ≤ n := by
  have hnR : (1 : ℝ) < n := by exact_mod_cast (show 1 < n by omega)
  have hlog := Real.log_pos hnR
  have hpositive : (0 : ℝ) < m := (mul_pos (by positivity : (0 : ℝ) < 2 ^ 24) hlog).trans_le hl
  exact ⟨by exact_mod_cast hpositive, source_upper_range_gives_quarter n m hn hu⟩

/-- The source slice range entails the large integer bounds used in Section 3.
This avoids treating the paper's "in particular" statements as new assumptions. -/
theorem source_range_large (n m : ℕ) (hn : 2 ≤ n)
    (hl : (2 : ℝ) ^ 24 * Real.log n ≤ m)
    (hu : (m : ℝ) ≤ (1 / 1000 : ℝ) * n / Real.log n) :
    2 ^ 24 ≤ m ∧ 2 ^ 26 ≤ n := by
  have hh := log_nat_ge_half n hn
  have hmR : (2 : ℝ) ^ 23 ≤ m := by
    have := mul_le_mul_of_nonneg_left hh (by positivity : (0 : ℝ) ≤ 2 ^ 24)
    nlinarith
  have hmN : 2 ^ 23 ≤ m := by exact_mod_cast hmR
  have hfour := source_upper_range_gives_quarter n m hn hu
  have hnN : 2 ^ 25 ≤ n := by norm_num at hmN ⊢; omega
  have hp : (2 : ℝ) ^ 25 ≤ n := by exact_mod_cast hnN
  have hlarger := Real.log_le_log (by positivity : (0 : ℝ) < 2 ^ 25) hp
  rw [Real.log_pow] at hlarger
  have htwo := log_nat_ge_half 2 (by decide)
  have hlog : (1 : ℝ) ≤ Real.log n := by norm_num at htwo hlarger; linarith
  have hmR' := (mul_le_mul_of_nonneg_left hlog (by positivity : (0 : ℝ) ≤ 2 ^ 24)).trans hl
  have hmN' : 2 ^ 24 ≤ m := by exact_mod_cast (show (2 : ℝ) ^ 24 ≤ m by simpa using hmR')
  exact ⟨hmN', by norm_num at hmN' ⊢; omega⟩

end GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModPartitionEnergy
