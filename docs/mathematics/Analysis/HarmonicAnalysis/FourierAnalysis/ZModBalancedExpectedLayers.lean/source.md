# Complete source: GRWTSK.Analysis.Fourier.ZModBalancedExpectedLayers

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f3b03b9316c6b7d0722ca187f97820bf3455cb8` · SHA-256 `af749d3f9fd2bf9b9a2ebae5b8237c41cbfe6e9fe697806d07001a4ef6794a47`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; Lean implementation: OpenAI Codex.
Mathlib authorship and licensing retained. -/
import GRWTSK.Analysis.Fourier.ZModExpectedLayers
import GRWTSK.Analysis.Fourier.ZModPartitionConcentration

/-!
# Balanced-partition expectations and fixed-size anti-concentration

The probability estimates used here are theorems about the actual finite space
of balanced partitions, not fields or assumed analytical interfaces. Together
with the proved deterministic spectrum bounds, they supply the expected-layer
estimates in the proof of Pham--Sauermann, arXiv:2602.15797v1, Theorem 1.3.
-/

namespace GRWTSK.ZModBalancedExpectedLayers
open scoped BigOperators
open GRWTSK.BalancedPartitionSampling GRWTSK.ZModBalancedPartition
open GRWTSK.ZModPartitionEnergy GRWTSK.ZModExpectedLayers
open GRWTSK.ZModPartitionConcentration GRWTSK.FiniteExponentialLayers
noncomputable section
attribute [local instance] Classical.propDecidable

variable {p m : ℕ} [NeZero p]

/-- The source random energy, on the actual balanced-partition sample space. -/
def balancedEnergy (S : Finset (ZMod p)) (m : ℕ)
    (P : BalancedPartitions S m) (χ : ZMod p) : ℝ :=
  partitionEnergy (partValues (residueEmbedding S) P) χ

/-- Expected cardinality of the low band of the actual random energy. -/
def expectedLowCard (S : Finset (ZMod p)) (m : ℕ) : ℝ :=
  mean (fun P : BalancedPartitions S m => ((lowBand (balancedEnergy S m P)).card : ℝ))

/-- Expected cardinality of an actual dyadic Fourier-energy band. -/
def expectedLayerCard (S : Finset (ZMod p)) (m k : ℕ) : ℝ :=
  mean (fun P : BalancedPartitions S m => ((dyadicBand (balancedEnergy S m P) k).card : ℝ))

omit [NeZero p] in
private theorem balancedPartitions_nonempty (S : Finset (ZMod p)) (hm : 0 < m) :
    Nonempty (BalancedPartitions S m) := by
  apply partition_nonempty
  simpa only [Fintype.card_coe] using balancedSizes_sum S.card m hm

/-- The actual expected low-band estimate from the source, including the unique
trivial frequency. Its event bound is the proved partition-concentration theorem. -/
theorem expectedLowCard_le (hp : p.Prime) (S : Finset (ZMod p))
    (hn : 2 ≤ S.card) (hl : (2 : ℝ) ^ 24 * Real.log S.card ≤ m)
    (hu : (m : ℝ) ≤ (1 / 1000 : ℝ) * S.card / Real.log S.card) :
    expectedLowCard S m ≤ 1 + 10000 * p / ((S.card : ℝ) * Real.sqrt m) := by
  obtain ⟨hm, hfour⟩ := source_range_size_bounds S.card m hn hl hu
  obtain ⟨hmlarge, hnlarge⟩ := source_range_large S.card m hn hl hu
  let : Nonempty (BalancedPartitions S m) := balancedPartitions_nonempty S hm
  apply mean_lowBand_le_10000 hp S (by norm_num at hnlarge; omega) (balancedEnergy S m) m
    (by exact_mod_cast (show 2000 ^ 2 ≤ m by norm_num at hmlarge ⊢; omega))
    (by exact_mod_cast (show m ≤ S.card by omega))
  intro χ hχ hB
  simpa only [balancedEnergy, mul_one] using
    outside_smallEnergy_probability_le S hn hl hu 1 (by norm_num) χ hχ (by simpa using hB)

/-- Every small dyadic layer has the actual expected-cardinality source bound. -/
theorem expectedLayerCard_le_small (hp : p.Prime) (S : Finset (ZMod p))
    (hn : 2 ≤ S.card) (hl : (2 : ℝ) ^ 24 * Real.log S.card ≤ m)
    (hu : (m : ℝ) ≤ (1 / 1000 : ℝ) * S.card / Real.log S.card)
    (k : ℕ) (hk : k ∈ smallLayerRange m) :
    expectedLayerCard S m k ≤
      10000 * p * Real.sqrt ((2 : ℝ) ^ k) / ((S.card : ℝ) * Real.sqrt m) := by
  obtain ⟨hm, hfour⟩ := source_range_size_bounds S.card m hn hl hu
  obtain ⟨hmlarge, hnlarge⟩ := source_range_large S.card m hn hl hu
  apply mean_dyadicBand_le_10000 hp S (by norm_num at hnlarge; omega) (balancedEnergy S m)
    (fun P => by simp [balancedEnergy]) m
    (by exact_mod_cast (show 1 ≤ m by omega)) (by exact_mod_cast (show m ≤ S.card by omega)) k
    (smallLayerRange_size_le m (by norm_num at hmlarge ⊢; omega) k hk)
  intro χ hχ hB
  exact outside_smallEnergy_probability_le S hn hl hu ((2 : ℝ) ^ k) (by positivity) χ hχ hB

/-- Every actual expected layer cardinality satisfies the trivial ambient bound. -/
theorem expectedLayerCard_le_card (S : Finset (ZMod p)) (hm : 0 < m) (k : ℕ) :
    expectedLayerCard S m k ≤ p := by
  let : Nonempty (BalancedPartitions S m) := balancedPartitions_nonempty S hm
  calc
    _ ≤ mean (fun _P : BalancedPartitions S m => (p : ℝ)) := by
      apply mean_mono
      intro P
      have h := Finset.card_filter_le (Finset.univ : Finset (ZMod p))
        (fun χ => (2 : ℝ) ^ k ≤ balancedEnergy S m P χ ∧
          balancedEnergy S m P χ < 2 ^ (k + 1))
      simp only [Finset.card_univ, ZMod.card] at h
      unfold dyadicBand
      exact_mod_cast h
    _ = _ := mean_const _

private theorem mean_const_mul {Ω : Type*} [Fintype Ω] (c : ℝ) (f : Ω → ℝ) :
    mean (fun ω => c * f ω) = c * mean f := by
  unfold mean
  rw [← Finset.mul_sum]
  ring

private theorem mean_mul_const {Ω : Type*} [Fintype Ω] (f : Ω → ℝ) (c : ℝ) :
    mean (fun ω => f ω * c) = mean f * c := by
  unfold mean
  rw [← Finset.sum_mul]
  ring

private theorem mean_finset_sum {Ω ι : Type*} [Fintype Ω] (I : Finset ι)
    (f : Ω → ι → ℝ) : mean (fun ω => ∑ i ∈ I, f ω i) = ∑ i ∈ I, mean (fun ω => f ω i) := by
  unfold mean
  rw [Finset.sum_comm, Finset.mul_sum]

/-- The exact expected-cardinality form of source (3.4), for the actual uniform
fixed-size subset law. No concentration premise is assumed. -/
theorem subsetSumProbability_le_expectedLayers (S : Finset (ZMod p))
    (hm : 0 < m) (hmn : m ≤ S.card) (z : ZMod p) :
    (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
      (p : ℝ)⁻¹ * (expectedLowCard S m +
        ∑ k ∈ Finset.range (Nat.log 2 m + 1),
          expectedLayerCard S m k * Real.exp (-(2 : ℝ) ^ k)) := by
  have h := subsetSumProbability_le_balanced_layers S hm hmn z
  change _ ≤ mean (fun P : BalancedPartitions S m => (p : ℝ)⁻¹ *
    (((lowBand (balancedEnergy S m P)).card : ℝ) +
      ∑ k ∈ Finset.range (Nat.log 2 m + 1),
        ((dyadicBand (balancedEnergy S m P) k).card : ℝ) * Real.exp (-(2 : ℝ) ^ k))) at h
  simpa only [mean_const_mul, mean_add, mean_finset_sum, mean_mul_const,
    expectedLowCard, expectedLayerCard] using h

/-- The source's small-layer summation, with both its expected-cardinality and
universal dyadic-series estimates proved. -/
theorem smallLayer_sum_le (hp : p.Prime) (S : Finset (ZMod p))
    (hn : 2 ≤ S.card) (hl : (2 : ℝ) ^ 24 * Real.log S.card ≤ m)
    (hu : (m : ℝ) ≤ (1 / 1000 : ℝ) * S.card / Real.log S.card) :
    (∑ k ∈ smallLayerRange m, expectedLayerCard S m k * Real.exp (-(2 : ℝ) ^ k)) ≤
      20000 * p / ((S.card : ℝ) * Real.sqrt m) := by
  calc
    _ ≤ ∑ k ∈ smallLayerRange m,
        (10000 * p * Real.sqrt ((2 : ℝ) ^ k) / ((S.card : ℝ) * Real.sqrt m)) *
          Real.exp (-(2 : ℝ) ^ k) := by
      apply Finset.sum_le_sum
      intro k hk
      exact mul_le_mul_of_nonneg_right (expectedLayerCard_le_small hp S hn hl hu k hk)
        (Real.exp_nonneg _)
    _ = (10000 * p / ((S.card : ℝ) * Real.sqrt m)) *
        ∑ k ∈ smallLayerRange m,
          Real.sqrt ((2 : ℝ) ^ k) * Real.exp (-(2 : ℝ) ^ k) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intros
      ring
    _ ≤ (10000 * p / ((S.card : ℝ) * Real.sqrt m)) * 2 :=
      mul_le_mul_of_nonneg_left (sum_sqrt_dyadic_exp_le_two _) (by positivity)
    _ = _ := by ring

/-- The source's high-layer summation, with its 22-term count and fourth-power
exponential estimate proved from the original slice range. -/
theorem largeLayer_sum_le (S : Finset (ZMod p))
    (hn : 2 ≤ S.card) (hl : (2 : ℝ) ^ 24 * Real.log S.card ≤ m)
    (hu : (m : ℝ) ≤ (1 / 1000 : ℝ) * S.card / Real.log S.card) :
    (∑ k ∈ largeLayerRange m, expectedLayerCard S m k * Real.exp (-(2 : ℝ) ^ k)) ≤
      22 * p / (S.card : ℝ) ^ 4 := by
  obtain ⟨hm, _⟩ := source_range_size_bounds S.card m hn hl hu
  calc
    _ ≤ ∑ k ∈ largeLayerRange m, (p : ℝ) * Real.exp (-(2 : ℝ) ^ k) := by
      apply Finset.sum_le_sum
      intro k _
      exact mul_le_mul_of_nonneg_right (expectedLayerCard_le_card S hm k) (Real.exp_nonneg _)
    _ = (p : ℝ) * ∑ k ∈ largeLayerRange m, Real.exp (-(2 : ℝ) ^ k) :=
      (Finset.mul_sum _ _ _).symm
    _ ≤ (p : ℝ) * (22 * Real.exp (-(m : ℝ) / (2 : ℝ) ^ 22)) :=
      mul_le_mul_of_nonneg_left (largeLayerRange_exp_sum_le m) (by positivity)
    _ ≤ (p : ℝ) * (22 * (1 / (S.card : ℝ) ^ 4)) := by
      apply mul_le_mul_of_nonneg_left _ (by positivity)
      exact mul_le_mul_of_nonneg_left
        (source_tail_exp_le S.card m (by exact_mod_cast (show 0 < S.card by omega)) hl)
        (by norm_num)
    _ = _ := by ring

/-- Source Theorem 1.3 with the intermediate constant 30022, derived from the
actual balanced sampling law, the proved concentration estimates, and finite
Fourier analysis. -/
theorem subsetSumProbability_le_30022 (hp : p.Prime) (S : Finset (ZMod p))
    (hn : 2 ≤ S.card) (hl : (2 : ℝ) ^ 24 * Real.log S.card ≤ m)
    (hu : (m : ℝ) ≤ (1 / 1000 : ℝ) * S.card / Real.log S.card) (z : ZMod p) :
    (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
      1 / p + 30022 / ((S.card : ℝ) * Real.sqrt m) := by
  obtain ⟨hm, hfour⟩ := source_range_size_bounds S.card m hn hl hu
  have hmn : m ≤ S.card := by omega
  have hnp : (0 : ℝ) < S.card := by exact_mod_cast (show 0 < S.card by omega)
  have hmR : (1 : ℝ) ≤ m := by exact_mod_cast (show 1 ≤ m by omega)
  have hmnR : (m : ℝ) ≤ S.card := by exact_mod_cast hmn
  have hpR : (p : ℝ) ≠ 0 := by exact_mod_cast NeZero.ne p
  have hd : (S.card : ℝ) * Real.sqrt m ≠ 0 :=
    ne_of_gt (mul_pos hnp (Real.sqrt_pos.mpr (by exact_mod_cast hm)))
  have hsplit : (∑ k ∈ Finset.range (Nat.log 2 m + 1),
      expectedLayerCard S m k * Real.exp (-(2 : ℝ) ^ k)) =
        (∑ k ∈ smallLayerRange m, expectedLayerCard S m k * Real.exp (-(2 : ℝ) ^ k)) +
        ∑ k ∈ largeLayerRange m, expectedLayerCard S m k * Real.exp (-(2 : ℝ) ^ k) := by
    have h := Finset.sum_sdiff (f := fun k =>
      expectedLayerCard S m k * Real.exp (-(2 : ℝ) ^ k)) (smallLayerRange_subset m)
    simpa only [largeLayerRange, add_comm] using h.symm
  have hbound := subsetSumProbability_le_expectedLayers S hm hmn z
  rw [hsplit] at hbound
  have hsum := add_le_add (expectedLowCard_le hp S hn hl hu)
    (add_le_add (smallLayer_sum_le hp S hn hl hu) (largeLayer_sum_le S hn hl hu))
  have hfinal := hbound.trans (mul_le_mul_of_nonneg_left hsum (by positivity : 0 ≤ (p : ℝ)⁻¹))
  have halgebra : (p : ℝ)⁻¹ *
      (1 + 10000 * p / ((S.card : ℝ) * Real.sqrt m) +
        (20000 * p / ((S.card : ℝ) * Real.sqrt m) + 22 * p / (S.card : ℝ) ^ 4)) =
      1 / p + 30000 / ((S.card : ℝ) * Real.sqrt m) + 22 / (S.card : ℝ) ^ 4 := by
    field_simp
    ring
  rw [halgebra] at hfinal
  have htail := reciprocal_tail_le S.card m
    (by exact_mod_cast (show 1 ≤ S.card by omega)) hmR hmnR
  calc
    _ ≤ 1 / p + 30000 / ((S.card : ℝ) * Real.sqrt m) + 22 / (S.card : ℝ) ^ 4 := hfinal
    _ ≤ 1 / p + 30000 / ((S.card : ℝ) * Real.sqrt m) +
        22 / ((S.card : ℝ) * Real.sqrt m) := add_le_add le_rfl htail
    _ = _ := by ring

/-- The exact quantitative statement of source Theorem 1.3 with `C = 2^24`.
Every estimate in its proof is proved in Lean; there is no analytical premise. -/
theorem subsetSumProbability_le_source_constant (hp : p.Prime) (S : Finset (ZMod p))
    (hn : 2 ≤ S.card) (hl : (2 : ℝ) ^ 24 * Real.log S.card ≤ m)
    (hu : (m : ℝ) ≤ (1 / 1000 : ℝ) * S.card / Real.log S.card) (z : ZMod p) :
    (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
      1 / p + (2 : ℝ) ^ 24 / ((S.card : ℝ) * Real.sqrt m) := by
  apply (subsetSumProbability_le_30022 hp S hn hl hu z).trans
  apply add_le_add le_rfl
  exact div_le_div_of_nonneg_right (by norm_num : (30022 : ℝ) ≤ 2 ^ 24) (by positivity)

omit [NeZero p] in
/-- Prime-only facade of Theorem 1.3. The nonzero-modulus instance is constructed
from primality, rather than requested as an additional hypothesis. -/
theorem prime_subsetSumProbability_le_source_constant (hp : p.Prime)
    (S : Finset (ZMod p)) (hn : 2 ≤ S.card)
    (hl : (2 : ℝ) ^ 24 * Real.log S.card ≤ m)
    (hu : (m : ℝ) ≤ (1 / 1000 : ℝ) * S.card / Real.log S.card) (z : ZMod p) :
    (@GRWTSK.ZModSubsetSum.subsetSumProbability p ⟨hp.ne_zero⟩ S m z : ℝ) ≤
      1 / p + (2 : ℝ) ^ 24 / ((S.card : ℝ) * Real.sqrt m) := by
  let : NeZero p := ⟨hp.ne_zero⟩
  exact subsetSumProbability_le_source_constant hp S hn hl hu z

/-- Absolute-constant form of source Theorem 1.3. The constant is uniform in
both the prime modulus and the chosen finite residue set. -/
theorem exists_anticoncentration_constant :
    ∃ C : ℝ, 0 < C ∧ ∀ (q : ℕ) (hq : q.Prime),
      ∀ (S : Finset (ZMod q)) (k : ℕ), 2 ≤ S.card →
        C * Real.log S.card ≤ k →
        (k : ℝ) ≤ (1 / 1000 : ℝ) * S.card / Real.log S.card →
        ∀ z : ZMod q,
          (@GRWTSK.ZModSubsetSum.subsetSumProbability q ⟨hq.ne_zero⟩ S k z : ℝ) ≤
            1 / q + C / ((S.card : ℝ) * Real.sqrt k) := by
  refine ⟨(2 : ℝ) ^ 24, by positivity, ?_⟩
  intro q hq S k hn hl hu z
  exact prime_subsetSumProbability_le_source_constant hq S hn hl hu z

end
end GRWTSK.ZModBalancedExpectedLayers
```
