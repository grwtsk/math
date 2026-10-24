# Complete source: GRWTSK.Analysis.Fourier.ZModBalancedPartition

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `674dfd64142382e83d5ca6e3e9725a1ec8dbd5a8` · SHA-256 `abe7b1dff4395b98ec1fb8c91d6931f44fd02c002b961cf09169da9037ff780a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; Lean implementation: OpenAI Codex.
Mathlib authorship and licensing retained. -/
import GRWTSK.Combinatorics.Sequences.BalancedPartitionSampling
import GRWTSK.Analysis.Fourier.ZModIndependentSelection
import GRWTSK.Analysis.Fourier.ZModCharacterEnergy
import GRWTSK.Analysis.Fourier.ZModPartitionEnergy

/-!
# Actual balanced-partition Fourier averages

The sampler includes all ordered partitions with prescribed sizes and all
independent part choices. Its uniform output law and its conditional Fourier
bound are combined by finite counting. No concentration estimate is assumed.
-/

namespace GRWTSK.ZModBalancedPartition
open scoped BigOperators
open GRWTSK.BalancedPartitionSampling
open GRWTSK.ZModIndependentSelection
open GRWTSK.ZModCharacterEnergy
open GRWTSK.ZModPartitionEnergy
noncomputable section
attribute [local instance] Classical.propDecidable

variable {p m : ℕ} [NeZero p]
variable {A : Type*} [Fintype A]

/-- An actual part of an actual prescribed-size partition, mapped to residues. -/
def partValues (label : A ↪ ZMod p) {sizes : Fin m → ℕ}
    (P : Partition (A := A) sizes) (i : Fin m) : Finset (ZMod p) := by
  classical exact (Finset.univ.filter (fun a => P.val a = i)).map label

omit [NeZero p] in
theorem partValues_card (label : A ↪ ZMod p) {sizes : Fin m → ℕ}
    (P : Partition (A := A) sizes) (i : Fin m) :
    (partValues label P i).card = sizes i := by
  classical
  rw [partValues, Finset.card_map, ← Fintype.card_subtype, P.property]

omit [NeZero p] in
theorem partValues_nonempty (label : A ↪ ZMod p) {sizes : Fin m → ℕ}
    (hpos : ∀ i, 0 < sizes i) (P : Partition (A := A) sizes) (i : Fin m) :
    (partValues label P i).Nonempty := by
  rw [← Finset.card_pos, partValues_card]
  exact hpos i

/-- The conditional Fourier coefficients are exactly the character means of
these actual parts, including their actual cardinality normalization. -/
theorem coordinate_average_eq_partValues (label : A ↪ ZMod p) {sizes : Fin m → ℕ}
    (P : Partition (A := A) sizes) (i : Fin m) (χ : ZMod p) :
    coordinateCharacterAverage (fun i (x : {a // P.val a = i}) => label x.val) i χ =
      GRWTSK.ZModCharacterEnergy.characterAverage (partValues label P i) χ := by
  classical
  unfold coordinateCharacterAverage GRWTSK.ZModCharacterEnergy.characterAverage
  rw [P.property, partValues_card]
  congr 1
  rw [partValues, Finset.sum_map]
  exact (Finset.sum_subtype (Finset.univ.filter (fun a => P.val a = i))
    (by intro a; simp) (fun a => ZMod.stdAddChar (χ * label a))).symm

omit [NeZero p] in
/-- Distinct chosen parts ensure that summing their output set equals summing
one chosen value per part. No independence assertion is used in this identity. -/
theorem sum_output (label : A → ZMod p) {sizes : Fin m → ℕ}
    (s : Sample (A := A) sizes) :
    ∑ a ∈ output s, label a = ∑ i, label (s.val.2 i) := by
  classical
  unfold output
  rw [Finset.sum_image]
  intro i _ j _ hij
  exact choices_injective s hij

/-- Joint counting probability of the selected modular sum. -/
def jointSumProbability (sizes : Fin m → ℕ) (label : A → ZMod p) (z : ZMod p) : ℝ :=
  (jointProbability sizes (fun s => ∑ i, label (s.val.2 i) = z) : ℝ)

omit [NeZero p] in
/-- Exact conditional averaging over all actual partitions. -/
theorem jointSumProbability_eq_average (sizes : Fin m → ℕ)
    (label : A → ZMod p) (z : ZMod p) :
    jointSumProbability sizes label z =
      (Fintype.card (Partition (A := A) sizes) : ℝ)⁻¹ *
        ∑ P : Partition (A := A) sizes,
          valueProbability (selectionSum (fun i (x : {a // P.val a = i}) => label x.val)) z := by
  classical
  have h := jointProbability_eq_partition_average sizes
    (fun s : Sample (A := A) sizes => ∑ i, label (s.val.2 i) = z)
  have hr := congrArg (fun q : ℚ => (q : ℝ)) h
  push_cast at hr
  unfold jointSumProbability
  rw [hr, div_eq_inv_mul]
  congr 1
  apply Finset.sum_congr rfl
  intro P _
  unfold valueProbability selectionSum
  rw [Fintype.card_subtype, selection_card]
  push_cast
  congr 2

omit [NeZero p] in
/-- Uniform fixed-size sum law, obtained from the proved uniform output law. -/
theorem jointSumProbability_eq_fixedSize (sizes : Fin m → ℕ)
    (hpos : ∀ i, 0 < sizes i) (hsum : ∑ i, sizes i = Fintype.card A)
    (label : A → ZMod p) (z : ZMod p) :
    jointSumProbability sizes label z =
      ((((Finset.univ : Finset A).powersetCard m).filter
        (fun R => ∑ a ∈ R, label a = z)).card : ℝ) /
          (((Finset.univ : Finset A).powersetCard m).card : ℝ) := by
  have h := output_event_probability sizes hpos hsum
    (fun R : Finset A => ∑ a ∈ R, label a = z)
  simp_rw [sum_output] at h
  unfold jointSumProbability
  have hr := congrArg (fun q : ℚ => (q : ℝ)) h
  push_cast at hr
  convert hr using 1
  congr 2
  congr 1
  ext R
  simp only [Finset.mem_filter]

/-- The actual fixed-size law is bounded by the average exponential Fourier
energy over genuine prescribed-size partitions. -/
theorem fixedSize_mass_le_average_exponential (sizes : Fin m → ℕ)
    (hpos : ∀ i, 0 < sizes i) (hsum : ∑ i, sizes i = Fintype.card A)
    (label : A ↪ ZMod p) (z : ZMod p) :
    ((((Finset.univ : Finset A).powersetCard m).filter
      (fun R => ∑ a ∈ R, label a = z)).card : ℝ) /
        (((Finset.univ : Finset A).powersetCard m).card : ℝ) ≤
      (Fintype.card (Partition (A := A) sizes) : ℝ)⁻¹ *
        ∑ P : Partition (A := A) sizes,
          (p : ℝ)⁻¹ * ∑ χ : ZMod p,
            Real.exp (-partitionEnergy (partValues label P) χ) := by
  rw [← jointSumProbability_eq_fixedSize sizes hpos hsum, jointSumProbability_eq_average]
  apply mul_le_mul_of_nonneg_left _ (by positivity)
  apply Finset.sum_le_sum
  intro P _
  apply (independent_mass_bound
    (fun i (x : {a // P.val a = i}) => label x.val) z).trans
  apply mul_le_mul_of_nonneg_left _ (by positivity)
  apply Finset.sum_le_sum
  intro χ _
  simp_rw [coordinate_average_eq_partValues]
  exact prod_characterAverage_norm_le Finset.univ _
    (fun i _ => partValues_nonempty label hpos P i) χ

/-- The canonical injection from a finite residue set to the ambient cyclic group. -/
def residueEmbedding (S : Finset (ZMod p)) : S ↪ ZMod p :=
  ⟨Subtype.val, Subtype.val_injective⟩

/-- Passing between finite subsets of the subtype `S` and subsets of `S` preserves
both the fixed-size sample space and every modular sum fiber. -/
theorem subtype_fixedSize_eq_subsetSum (S : Finset (ZMod p)) (z : ZMod p) :
    ((((Finset.univ : Finset S).powersetCard m).filter
      (fun R : Finset S => ∑ a ∈ R, (a : ZMod p) = z)).card : ℝ) /
        (((Finset.univ : Finset S).powersetCard m).card : ℝ) =
      (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) := by
  classical
  have hmap : (Finset.univ : Finset S).map (residueEmbedding S) = S := by
    ext x
    simp [residueEmbedding]
  have hp := Finset.powersetCard_map (residueEmbedding S) m (Finset.univ : Finset S)
  rw [hmap] at hp
  have hf : GRWTSK.ZModSubsetSum.subsetSumFiber S m z =
      (((Finset.univ : Finset S).powersetCard m).filter
        (fun R : Finset S => ∑ a ∈ R, (a : ZMod p) = z)).map
          (Finset.mapEmbedding (residueEmbedding S)).toEmbedding := by
    unfold GRWTSK.ZModSubsetSum.subsetSumFiber
    rw [hp, Finset.filter_map]
    congr 1
    ext R
    rw [Finset.mem_filter, Finset.mem_filter]
    change (R ∈ (Finset.univ : Finset S).powersetCard m ∧
      (∑ x ∈ R.map (residueEmbedding S), x) = z) ↔
      (R ∈ (Finset.univ : Finset S).powersetCard m ∧ (∑ a ∈ R, (a : ZMod p)) = z)
    rw [Finset.sum_map]
    rfl
  unfold GRWTSK.ZModSubsetSum.subsetSumProbability
  push_cast
  rw [hf, hp, Finset.card_map, Finset.card_map]

/-- All actual balanced ordered partitions of the given residue set. -/
abbrev BalancedPartitions (S : Finset (ZMod p)) (m : ℕ) :=
  Partition (A := S) (balancedSizes S.card m)

/-- The exact balanced-partition mixture identity for the original fixed-size
subset-sum probability. The nonempty sample space is proved from `0 < m ≤ |S|`. -/
theorem subsetSumProbability_eq_balanced_average (S : Finset (ZMod p))
    (hm : 0 < m) (hmn : m ≤ S.card) (z : ZMod p) :
    (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) =
      (Fintype.card (BalancedPartitions S m) : ℝ)⁻¹ *
        ∑ P : BalancedPartitions S m,
          valueProbability (selectionSum
            (fun i (x : {a : S // P.val a = i}) => (x.val : ZMod p))) z := by
  rw [← subtype_fixedSize_eq_subsetSum]
  rw [← jointSumProbability_eq_fixedSize (balancedSizes S.card m)
    (balancedSizes_pos _ _ hm hmn) (by simpa using balancedSizes_sum S.card m hm)]
  exact jointSumProbability_eq_average _ _ _

/-- Source (3.1)--(3.2), averaged over the actual balanced partition space. This
is an unconditional estimate for the original uniform fixed-size subset law. -/
theorem subsetSumProbability_le_balanced_exponential (S : Finset (ZMod p))
    (hm : 0 < m) (hmn : m ≤ S.card) (z : ZMod p) :
    (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
      (Fintype.card (BalancedPartitions S m) : ℝ)⁻¹ *
        ∑ P : BalancedPartitions S m,
          (p : ℝ)⁻¹ * ∑ χ : ZMod p,
            Real.exp (-partitionEnergy (partValues (residueEmbedding S) P) χ) := by
  rw [← subtype_fixedSize_eq_subsetSum]
  exact fixedSize_mass_le_average_exponential (balancedSizes S.card m)
    (balancedSizes_pos _ _ hm hmn) (by simpa using balancedSizes_sum S.card m hm)
    (residueEmbedding S) z

omit [NeZero p] in
/-- The normalization comparison (3.3) holds for every actual balanced partition;
its part-size and nonemptiness premises follow from numerical assumptions. -/
theorem balanced_partition_energy_lower_bound (S : Finset (ZMod p))
    (hm : 0 < m) (hfour : 4 * m ≤ S.card) (P : BalancedPartitions S m)
    (χ : ZMod p) :
    (m : ℝ) ^ 2 / (2 * (S.card : ℝ) ^ 2) *
      (∑ i, ∑ x ∈ partValues (residueEmbedding S) P i,
        ∑ y ∈ partValues (residueEmbedding S) P i,
          modularDistance (χ * (x - y)) ^ 2) ≤
      partitionEnergy (partValues (residueEmbedding S) P) χ := by
  apply partitionEnergy_lower_bound _ S.card hm hfour
  · exact partValues_nonempty _ (balancedSizes_pos _ _ hm (by omega)) P
  · intro i
    rw [partValues_card]
    unfold balancedSizes
    split_ifs <;> omega

/-- Source (3.4) for the actual balanced-partition sampling law, before the
remaining random layer-cardinality concentration estimates. The finite cutoff
is derived from the number of parts and is not an additional hypothesis. -/
theorem subsetSumProbability_le_balanced_layers (S : Finset (ZMod p))
    (hm : 0 < m) (hmn : m ≤ S.card) (z : ZMod p) :
    (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
      (Fintype.card (BalancedPartitions S m) : ℝ)⁻¹ *
        ∑ P : BalancedPartitions S m,
          (p : ℝ)⁻¹ *
            (((GRWTSK.FiniteExponentialLayers.lowBand
                (partitionEnergy (partValues (residueEmbedding S) P))).card : ℝ) +
              ∑ k ∈ Finset.range (Nat.log 2 m + 1),
                ((GRWTSK.FiniteExponentialLayers.dyadicBand
                  (partitionEnergy (partValues (residueEmbedding S) P)) k).card : ℝ) *
                    Real.exp (-(2 : ℝ) ^ k)) := by
  apply (subsetSumProbability_le_balanced_exponential S hm hmn z).trans
  apply mul_le_mul_of_nonneg_left _ (by positivity)
  apply Finset.sum_le_sum
  intro P _
  apply mul_le_mul_of_nonneg_left _ (by positivity)
  exact GRWTSK.FiniteExponentialLayers.sum_exp_neg_le_layers _ (Nat.log 2 m)
    (partitionEnergy_nonneg _) (fun χ => (partitionEnergy_le_card _ χ).trans_lt (by
      exact_mod_cast Nat.lt_pow_succ_log_self (by decide : 1 < 2) m))

/-- In the exact numerical range of source Section 3, the balanced sampler and
its averaged Fourier-layer bound require no extra feasibility assumption. This
is not the final anti-concentration estimate of Theorem 1.3. -/
theorem source_slice_mass_le_balanced_layers (S : Finset (ZMod p))
    (hn : 2 ≤ S.card)
    (hl : (2 : ℝ) ^ 24 * Real.log S.card ≤ m)
    (hu : (m : ℝ) ≤ (1 / 1000 : ℝ) * S.card / Real.log S.card)
    (z : ZMod p) :
    (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
      (Fintype.card (BalancedPartitions S m) : ℝ)⁻¹ *
        ∑ P : BalancedPartitions S m,
          (p : ℝ)⁻¹ *
            (((GRWTSK.FiniteExponentialLayers.lowBand
                (partitionEnergy (partValues (residueEmbedding S) P))).card : ℝ) +
              ∑ k ∈ Finset.range (Nat.log 2 m + 1),
                ((GRWTSK.FiniteExponentialLayers.dyadicBand
                  (partitionEnergy (partValues (residueEmbedding S) P)) k).card : ℝ) *
                    Real.exp (-(2 : ℝ) ^ k)) := by
  obtain ⟨hm, hfour⟩ := source_range_size_bounds S.card m hn hl hu
  exact subsetSumProbability_le_balanced_layers S hm (by omega) z

end
end GRWTSK.ZModBalancedPartition
```
