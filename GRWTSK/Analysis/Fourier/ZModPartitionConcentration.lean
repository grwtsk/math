/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; Lean implementation: OpenAI Codex.
Mathlib authorship and licensing retained. -/
import GRWTSK.Analysis.Fourier.ZModBalancedPartition
import GRWTSK.Analysis.Fourier.ZModConcentratedFrequencies
import GRWTSK.Combinatorics.Sequences.BalancedPartitionTails

/-!
# Concentration of balanced-partition character energy

Finite conditional exposure, hypergeometric tails, and the deterministic
energy implications in source Lemmas 3.1 and 3.3 of Pham–Sauermann,
arXiv:2602.15797v1.
-/
namespace GRWTSK.ZModPartitionConcentration
open scoped BigOperators
open GRWTSK.BalancedPartitionSampling GRWTSK.ZModBalancedPartition
open GRWTSK.ZModCharacterEnergy GRWTSK.ZModPartitionEnergy
open GRWTSK.ZModConcentratedFrequencies
noncomputable section
attribute [local instance] Classical.propDecidable
variable {p m : ℕ} [NeZero p] {A : Type*} [Fintype A]

omit [NeZero p] in
/-- Reindexing the pair energy by each element's unique containing part. -/
theorem sum_parts_pairs (label : A ↪ ZMod p) {sizes : Fin m → ℕ}
    (P : Partition (A := A) sizes) (χ : ZMod p) :
    (∑ i, ∑ x ∈ partValues label P i, ∑ y ∈ partValues label P i,
      modularDistance (χ * (x - y)) ^ 2) =
    ∑ a : A, ∑ b ∈ part P (P.val a), modularDistance (χ * (label a - label b)) ^ 2 := by
  simp_rw [partValues, Finset.sum_map]
  change (∑ i, ∑ a ∈ part P i, ∑ b ∈ part P i,
    modularDistance (χ * (label a - label b)) ^ 2) = _
  calc
    _ = ∑ i, ∑ a ∈ part P i, ∑ b ∈ part P (P.val a),
        modularDistance (χ * (label a - label b)) ^ 2 := by
      apply Finset.sum_congr rfl
      intro i _
      apply Finset.sum_congr rfl
      intro a ha
      rw [(mem_part P i a).mp ha]
    _ = _ := Finset.sum_fiberwise _ _ _

/-- Every balanced part retains at least `n/(2m)` other elements under
`4m ≤ n`; this checks the deletion in the conditional exposure law. -/
theorem balanced_remainder_size_lower (n m : ℕ) (hm : 0 < m)
    (hfour : 4 * m ≤ n) (i : Fin m) :
    (n : ℝ) / (2 * m) ≤ ((balancedSizes n m i - 1 : ℕ) : ℝ) := by
  have hq : 4 ≤ n / m := (Nat.le_div_iff_mul_le hm).mpr (by omega)
  have hdiv : n < (n / m + 1) * m := by simpa [mul_comm] using Nat.lt_mul_div_succ n hm
  have hc : n / m ≤ balancedSizes n m i := by unfold balancedSizes; split_ifs <;> omega
  have hr : n ≤ (balancedSizes n m i - 1) * (2 * m) := by
    calc
      n ≤ (n / m + 1) * m := hdiv.le
      _ ≤ (2 * (balancedSizes n m i - 1)) * m :=
        Nat.mul_le_mul_right m (by omega)
      _ = _ := by ring
  have hmR : (0 : ℝ) < m := by exact_mod_cast hm
  apply (div_le_iff₀ (by positivity : (0 : ℝ) < 2 * m)).mpr
  exact_mod_cast hr

omit [NeZero p] in
/-- A pointwise lower bound on each row of the within-part energy. -/
theorem row_sum_lower (label : A ↪ ZMod p) {sizes : Fin m → ℕ}
    (P : Partition (A := A) sizes) (χ : ZMod p) (a : A)
    (neighbors : Finset A) (hsub : neighbors ⊆ part P (P.val a))
    (q w : ℝ) (hw : 0 ≤ w) (hq : q ≤ neighbors.card)
    (hpoint : ∀ b ∈ neighbors, w ≤ modularDistance (χ * (label a - label b)) ^ 2) :
    q * w ≤ ∑ b ∈ part P (P.val a), modularDistance (χ * (label a - label b)) ^ 2 := by
  calc
    _ ≤ (neighbors.card : ℝ) * w := mul_le_mul_of_nonneg_right hq hw
    _ = ∑ _b ∈ neighbors, w := by simp
    _ ≤ ∑ b ∈ neighbors, modularDistance (χ * (label a - label b)) ^ 2 :=
      Finset.sum_le_sum hpoint
    _ ≤ _ := Finset.sum_le_sum_of_subset_of_nonneg hsub (by intros; positivity)

/-- For a frequency outside `D_t`, each element has at least a quarter of
all labels farther than the source radius. -/
theorem far_labels_card (S : Finset (ZMod p)) (m t : ℝ) (χ : ZMod p)
    (hχ : χ ≠ 0) (hD : χ ∉ concentratedFrequencies S m t) (a : S) :
    (S.card : ℝ) / 4 ≤
      ((Finset.univ : Finset S).filter (fun b =>
        8 * Real.sqrt (t / m) < modularDistance (χ * (a.val - b.val)))).card := by
  have hn : ¬ ∃ center : ZMod p,
      (3 / 4 : ℝ) * S.card ≤ (S ∩ phaseInterval χ center (8 * Real.sqrt (t / m))).card := by
    intro h
    exact hD ((mem_concentratedFrequencies _ _ _ _).mpr ⟨hχ, h⟩)
  have hnear : ((S ∩ phaseInterval χ (χ * a.val) (8 * Real.sqrt (t / m))).card : ℝ) <
      (3 / 4 : ℝ) * S.card := lt_of_not_ge (fun h => hn ⟨χ * a.val, h⟩)
  have heq : ((Finset.univ : Finset S).filter (fun b =>
      modularDistance (χ * (a.val - b.val)) ≤ 8 * Real.sqrt (t / m))).card =
      (S ∩ phaseInterval χ (χ * a.val) (8 * Real.sqrt (t / m))).card := by
    have hmap : (((Finset.univ : Finset S).filter (fun b =>
        modularDistance (χ * (a.val - b.val)) ≤ 8 * Real.sqrt (t / m))).map
        (residueEmbedding S)) = S ∩ phaseInterval χ (χ * a.val) (8 * Real.sqrt (t / m)) := by
      ext b
      simp only [Finset.mem_map, Finset.mem_filter, Finset.mem_univ, true_and,
        residueEmbedding, Function.Embedding.coeFn_mk, Finset.mem_inter, mem_phaseInterval]
      have he : ∀ a b : ZMod p, modularDistance (χ * (a - b)) =
          modularDistance (χ * b - χ * a) := by
        intro a b
        rw [show χ * (a - b) = -(χ * b - χ * a) by ring, modularDistance_neg]
      simp_rw [he]
      constructor
      · rintro ⟨b', hb', rfl⟩; exact ⟨b'.property, hb'⟩
      · rintro ⟨hb, hc⟩; exact ⟨⟨b, hb⟩, hc, rfl⟩
    rw [← hmap, Finset.card_map]
  have hsplit := Finset.card_filter_add_card_filter_not (s := (Finset.univ : Finset S))
    (p := fun b => modularDistance (χ * (a.val - b.val)) ≤ 8 * Real.sqrt (t / m))
  rw [heq, Finset.card_univ, Fintype.card_coe] at hsplit
  have hsplitR := congrArg (fun n : ℕ => (n : ℝ)) hsplit
  push_cast at hsplitR
  simp only [not_le] at hsplitR
  linarith

omit [NeZero p] in
/-- The common balanced energy normalization after reindexing by elements. -/
theorem balanced_energy_ge_rows (S : Finset (ZMod p)) (hm : 0 < m)
    (hfour : 4 * m ≤ S.card) (P : BalancedPartitions S m) (χ : ZMod p)
    (L : ℝ) (hrows : ∀ a : S, L ≤ ∑ b ∈ part P (P.val a),
      modularDistance (χ * (a.val - b.val)) ^ 2) :
    (m : ℝ) ^ 2 / (2 * (S.card : ℝ) ^ 2) * (S.card * L) ≤
      partitionEnergy (partValues (residueEmbedding S) P) χ := by
  have hs : (S.card : ℝ) * L ≤ ∑ a : S, ∑ b ∈ part P (P.val a),
      modularDistance (χ * (a.val - b.val)) ^ 2 := by
    calc
      _ = ∑ _a : S, L := by simp
      _ ≤ _ := Finset.sum_le_sum (fun a _ => hrows a)
  have he := balanced_partition_energy_lower_bound S hm hfour P χ
  rw [sum_parts_pairs] at he
  exact (mul_le_mul_of_nonneg_left hs (by positivity)).trans he

omit [NeZero p] in
/-- Deterministic success implication for source Lemma 3.1. The local counts
will be supplied by the checked conditional hypergeometric law. -/
theorem energy_ge_two_of_far_counts (S : Finset (ZMod p)) (hm : 0 < m)
    (hfour : 4 * m ≤ S.card) (P : BalancedPartitions S m) (χ : ZMod p)
    (t : ℝ) (ht : 0 ≤ t)
    (hcounts : ∀ a : S, (S.card : ℝ) / (16 * m) ≤
      ((part P (P.val a)).filter (fun b =>
        8 * Real.sqrt (t / m) < modularDistance (χ * (a.val - b.val)))).card) :
    2 * t ≤ partitionEnergy (partValues (residueEmbedding S) P) χ := by
  have hmR : (0 : ℝ) < m := by exact_mod_cast hm
  have hnR : (0 : ℝ) < S.card := by exact_mod_cast (show 0 < S.card by omega)
  have hrows (a : S) : (S.card : ℝ) / (16 * m) * (64 * (t / m)) ≤
      ∑ b ∈ part P (P.val a), modularDistance (χ * (a.val - b.val)) ^ 2 := by
    apply row_sum_lower (residueEmbedding S) P χ a
      ((part P (P.val a)).filter (fun b =>
        8 * Real.sqrt (t / m) < modularDistance (χ * (a.val - b.val))))
      (Finset.filter_subset _ _) _ _ (by positivity) (hcounts a)
    intro b hb
    have hb' := (Finset.mem_filter.mp hb).2
    have hsq := pow_le_pow_left₀ (by positivity : 0 ≤ 8 * Real.sqrt (t / m)) hb'.le 2
    change 64 * (t / m) ≤ modularDistance (χ * (a.val - b.val)) ^ 2
    nlinarith [Real.sq_sqrt (div_nonneg ht hmR.le)]
  have he := balanced_energy_ge_rows S hm hfour P χ _ hrows
  have hn : (S.card : ℝ) ≠ 0 := ne_of_gt hnR
  have hmn : (m : ℝ) ≠ 0 := ne_of_gt hmR
  convert he using 1; field_simp; ring

/-- Deterministic success implication for source Lemma 3.3, with its exact
far/near separation and the already proved tail energy lemma. -/
theorem energy_ge_two_of_near_counts (S : Finset (ZMod p)) (hm : 0 < m)
    (hfour : 4 * m ≤ S.card) (P : BalancedPartitions S m) (χ center : ZMod p)
    (t : ℝ) (ht : 0 ≤ t) (hE : 2000 * t ≤ (m : ℝ) * pairEnergy S χ)
    (hcounts : ∀ a : S,
      a.val ∉ phaseInterval χ center (16 * Real.sqrt (t / m)) →
      (S.card : ℝ) / (4 * m) ≤
        ((part P (P.val a)).filter (fun b =>
          b.val ∈ phaseInterval χ center (8 * Real.sqrt (t / m)))).card) :
    2 * t ≤ partitionEnergy (partValues (residueEmbedding S) P) χ := by
  have hmR : (0 : ℝ) < m := by exact_mod_cast hm
  have hnN : 0 < S.card := by omega
  have hnR : (0 : ℝ) < S.card := by exact_mod_cast hnN
  have hS : S.Nonempty := Finset.card_pos.mp hnN
  let J := phaseInterval χ center (16 * Real.sqrt (t / m))
  have hrows (a : S) :
      (if a.val ∉ J then (S.card : ℝ) / (16 * m) *
        modularDistance (χ * a.val - center) ^ 2 else 0) ≤
      ∑ b ∈ part P (P.val a), modularDistance (χ * (a.val - b.val)) ^ 2 := by
    by_cases ha : a.val ∉ J
    · rw [if_pos ha]
      have h := row_sum_lower (residueEmbedding S) P χ a
        ((part P (P.val a)).filter (fun b =>
          b.val ∈ phaseInterval χ center (8 * Real.sqrt (t / m))))
        (Finset.filter_subset _ _) ((S.card : ℝ) / (4 * m))
        (modularDistance (χ * a.val - center) ^ 2 / 4) (by positivity) (hcounts a ha)
        (fun b hb => far_near_pair_distance_sq_ge_quarter χ center a.val b.val m t
          ha (Finset.mem_filter.mp hb).2)
      calc
        _ = (S.card : ℝ) / (4 * m) *
            (modularDistance (χ * a.val - center) ^ 2 / 4) := by ring
        _ ≤ _ := by simpa only [residueEmbedding, Function.Embedding.coeFn_mk] using h
    · rw [if_neg ha]
      exact Finset.sum_nonneg (fun _ _ => sq_nonneg _)
  have hsum := Finset.sum_le_sum (s := Finset.univ) (fun a _ => hrows a)
  have heq : (∑ a : S, if a.val ∉ J then (S.card : ℝ) / (16 * m) *
        modularDistance (χ * a.val - center) ^ 2 else 0) =
      (S.card : ℝ) / (16 * m) *
        ∑ x ∈ S \ J, modularDistance (χ * x - center) ^ 2 := by
    rw [Finset.mul_sum]
    rw [← Finset.sum_filter]
    apply Finset.sum_bij (fun a _ => a.val)
    · intro a ha
      exact Finset.mem_sdiff.mpr ⟨a.property, (Finset.mem_filter.mp ha).2⟩
    · intro a _ b _ h; exact Subtype.ext h
    · intro b hb
      exact ⟨⟨b, (Finset.mem_sdiff.mp hb).1⟩,
        Finset.mem_filter.mpr ⟨Finset.mem_univ _, (Finset.mem_sdiff.mp hb).2⟩, rfl⟩
    · intros; rfl
  rw [heq] at hsum
  have he := balanced_partition_energy_lower_bound S hm hfour P χ
  rw [sum_parts_pairs] at he
  have htail := normalized_tail_center_sum_ge_200 S hS χ center m t hmR ht hE
  have hnorm := (mul_le_mul_of_nonneg_left hsum
    (by positivity : 0 ≤ (m : ℝ) ^ 2 / (2 * (S.card : ℝ) ^ 2))).trans he
  have hn : (S.card : ℝ) ≠ 0 := ne_of_gt hnR
  have hmn : (m : ℝ) ≠ 0 := ne_of_gt hmR
  have heqnorm : (m : ℝ) ^ 2 / (2 * (S.card : ℝ) ^ 2) *
      ((S.card : ℝ) / (16 * m) * ∑ x ∈ S \ J,
        modularDistance (χ * x - center) ^ 2) =
      ((m : ℝ) / S.card * ∑ x ∈ S \ J,
        modularDistance (χ * x - center) ^ 2) / 32 := by field_simp; ring
  rw [heqnorm] at hnorm
  change 200 * t ≤ _ at htail
  change _ / 32 ≤ _ at hnorm
  linarith

/-- The source upper slice restriction absorbs the union of all pointwise
hypergeometric failures. Both source exponents (`64` and `48`) fit this bound. -/
theorem source_union_exp_le (n m : ℕ) (hn : 2 ≤ n) (hm : 0 < m)
    (hu : (m : ℝ) ≤ (1 / 1000 : ℝ) * n / Real.log n)
    (c : ℝ) (hc : 0 < c) (hcrate : 10 * c ≤ 1000) :
    (n : ℝ) * Real.exp (-(n : ℝ) / (c * m)) ≤ 1 / (n : ℝ) ^ 9 := by
  have hnR : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  have hmR : (0 : ℝ) < m := by exact_mod_cast hm
  have hlog : 0 < Real.log (n : ℝ) := Real.log_pos (by exact_mod_cast (show 1 < n by omega))
  have hmul := (le_div_iff₀ hlog).mp hu
  have hrate := mul_le_mul_of_nonneg_right hcrate (mul_nonneg hmR.le hlog.le)
  have hratio : 10 * Real.log (n : ℝ) ≤ (n : ℝ) / (c * m) := by
    apply (le_div_iff₀ (mul_pos hc hmR)).mpr
    nlinarith
  calc
    _ ≤ (n : ℝ) * Real.exp (-(10 * Real.log n)) := by
      apply mul_le_mul_of_nonneg_left _ hnR.le
      apply Real.exp_le_exp.mpr
      simpa only [neg_div] using neg_le_neg hratio
    _ = _ := by
      rw [Real.exp_neg, show (10 : ℝ) * Real.log n = (10 : ℕ) * Real.log n by norm_num,
        Real.exp_nat_mul, Real.exp_log hnR]
      field_simp

open GRWTSK.ZModIndependentSelection

/-- The union bound for the actual finite uniform sample space. -/
theorem eventProbability_exists_le {Ω ι : Type*} [Fintype Ω] [Fintype ι]
    (E : ι → Ω → Prop) :
    eventProbability (fun x => ∃ i, E i x) ≤ ∑ i, eventProbability (E i) := by
  have hc : ((Finset.univ : Finset Ω).filter (fun x => ∃ i, E i x)).card ≤
      ∑ i : ι, ((Finset.univ : Finset Ω).filter (E i)).card := by
    calc
      _ = (Finset.univ.biUnion (fun i : ι => Finset.univ.filter (E i))).card := by
        congr 1; ext x; simp
      _ ≤ _ := Finset.card_biUnion_le
  unfold eventProbability
  rw [← Finset.sum_div]
  apply div_le_div_of_nonneg_right _ (by positivity)
  norm_cast
  convert hc using 1
  congr 1; ext x; simp

theorem eventProbability_mono {Ω : Type*} [Fintype Ω]
    (E F : Ω → Prop) (h : ∀ x, E x → F x) : eventProbability E ≤ eventProbability F := by
  unfold eventProbability
  apply div_le_div_of_nonneg_right _ (by positivity)
  apply Nat.cast_le.mpr
  apply Finset.card_le_card
  intro x hx
  exact Finset.mem_filter.mpr ⟨Finset.mem_univ _, h x (Finset.mem_filter.mp hx).2⟩

open GRWTSK.ConditionalPartitionExposure GRWTSK.BalancedPartitionTails
open GRWTSK.ZModSmallEnergySets

/-- The conditional-exposure normalization is the same actual finite law used
by the Fourier expectation lemmas. -/
theorem partitionProbabilityReal_eq_event {sizes : Fin m → ℕ}
    (E : Partition (A := A) sizes → Prop) :
    partitionProbabilityReal sizes E = eventProbability E := by
  simp only [partitionProbabilityReal, eventProbability, Fintype.card_subtype]

/-- The single-element failure estimate used in source Lemma 3.1. -/
theorem far_count_bad_probability_le (S : Finset (ZMod p)) (hm : 0 < m)
    (hfour : 4 * m ≤ S.card) (χ : ZMod p) (hχ : χ ≠ 0) (t : ℝ)
    (hD : χ ∉ concentratedFrequencies S m t) (a : S) :
    eventProbability (fun P : BalancedPartitions S m =>
      (((part P (P.val a)).filter (fun b =>
        8 * Real.sqrt (t / m) < modularDistance (χ * (a.val - b.val)))).card : ℝ) <
        (S.card : ℝ) / (16 * m)) ≤ Real.exp (-(S.card : ℝ) / (64 * m)) := by
  let G : Finset S := Finset.univ.filter (fun b =>
    8 * Real.sqrt (t / m) < modularDistance (χ * (a.val - b.val)))
  have ha : a ∉ G := by
    simp only [G, Finset.mem_filter, Finset.mem_univ, true_and, sub_self, mul_zero,
      modularDistance_zero]
    nlinarith [Real.sqrt_nonneg (t / m)]
  have hcard := far_labels_card S m t χ hχ hD a
  have hpred : (((Fintype.card S - 1 : ℕ) : ℝ) / 4) ≤ G.card := by
    have hc : ((Fintype.card S - 1 : ℕ) : ℝ) ≤ S.card := by
      exact_mod_cast (show Fintype.card S - 1 ≤ S.card by simp)
    change (S.card : ℝ) / 4 ≤ (G.card : ℝ) at hcard
    linarith
  have hsize : ∀ i : Fin m, (S.card : ℝ) / (2 * m) ≤
      ((balancedSizes S.card m i - 1 : ℕ) : ℝ) :=
    balanced_remainder_size_lower S.card m hm hfour
  have htail := partition_currentPart_quarter_lowerTail (balancedSizes S.card m)
    (by simpa using balancedSizes_sum S.card m hm)
    (balancedSizes_pos S.card m hm (by omega)) a G (by
      intro b hb
      simp only [Finset.mem_erase, Finset.mem_univ, and_true]
      intro h; exact ha (h ▸ hb)) hpred _ hsize
  rw [partitionProbabilityReal_eq_event] at htail
  have heq : -((S.card : ℝ) / (2 * m)) / 32 = -(S.card : ℝ) / (64 * m) := by ring
  rw [heq] at htail
  apply (eventProbability_mono _ _ (fun P hP => ?_)).trans htail
  have hbound : (((part P (P.val a)).filter (fun b =>
      8 * Real.sqrt (t / m) < modularDistance (χ * (a.val - b.val)))).card : ℝ) <
      (1 / 8 : ℝ) * ((balancedSizes S.card m (P.val a) - 1 : ℕ) : ℝ) := by
    calc
      _ < (S.card : ℝ) / (16 * m) := hP
      _ = (1 / 8 : ℝ) * ((S.card : ℝ) / (2 * m)) := by ring
      _ ≤ _ := mul_le_mul_of_nonneg_left (hsize (P.val a)) (by norm_num)
  unfold currentPartCountBad
  convert hbound using 1
  congr 2
  ext b
  simp [G]

/-- Source Lemma 3.1: for a nonconcentrated nonzero frequency, the actual
balanced-partition lower-tail probability is at most `|S|⁻⁹`. No Fourier or
probability estimate is an input hypothesis. -/
theorem nonconcentrated_probability_le (S : Finset (ZMod p))
    (hn : 2 ≤ S.card) (hm : 0 < m)
    (hu : (m : ℝ) ≤ (1 / 1000 : ℝ) * S.card / Real.log S.card)
    (t : ℝ) (ht : 0 ≤ t) (χ : ZMod p) (hχ : χ ≠ 0)
    (hD : χ ∉ concentratedFrequencies S m t) :
    eventProbability (fun P : BalancedPartitions S m =>
      partitionEnergy (partValues (residueEmbedding S) P) χ < 2 * t) ≤
      1 / (S.card : ℝ) ^ 9 := by
  have hfour := source_upper_range_gives_quarter S.card m hn hu
  let E (a : S) (P : BalancedPartitions S m) : Prop :=
    (((part P (P.val a)).filter (fun b =>
      8 * Real.sqrt (t / m) < modularDistance (χ * (a.val - b.val)))).card : ℝ) <
        (S.card : ℝ) / (16 * m)
  have hfail (P : BalancedPartitions S m)
      (hP : partitionEnergy (partValues (residueEmbedding S) P) χ < 2 * t) :
      ∃ a : S, E a P := by
    by_contra h
    have hc : ∀ a : S, (S.card : ℝ) / (16 * m) ≤
        (((part P (P.val a)).filter (fun b =>
          8 * Real.sqrt (t / m) < modularDistance (χ * (a.val - b.val)))).card : ℝ) :=
      fun a => le_of_not_gt (fun ha => h ⟨a, ha⟩)
    exact (not_lt_of_ge (energy_ge_two_of_far_counts S hm hfour P χ t ht hc)) hP
  calc
    _ ≤ eventProbability (fun P => ∃ a : S, E a P) := eventProbability_mono _ _ hfail
    _ ≤ ∑ a : S, eventProbability (E a) := eventProbability_exists_le E
    _ ≤ ∑ _a : S, Real.exp (-(S.card : ℝ) / (64 * m)) :=
      Finset.sum_le_sum (fun a _ => far_count_bad_probability_le S hm hfour χ hχ t hD a)
    _ = (S.card : ℝ) * Real.exp (-(S.card : ℝ) / (64 * m)) := by simp
    _ ≤ _ := source_union_exp_le S.card m hn hm hu 64 (by norm_num) (by norm_num)

/-- A concentrated near-center set retains its full three-quarter density in
the population remaining after deleting any far element. -/
theorem near_labels_card (S : Finset (ZMod p)) (χ center : ZMod p) (m t : ℝ)
    (hc : (3 / 4 : ℝ) * S.card ≤
      (S ∩ phaseInterval χ center (8 * Real.sqrt (t / m))).card) :
    (3 / 4 : ℝ) * ((Fintype.card S - 1 : ℕ) : ℝ) ≤
      ((Finset.univ : Finset S).filter (fun b =>
        b.val ∈ phaseInterval χ center (8 * Real.sqrt (t / m)))).card := by
  have heq : (((Finset.univ : Finset S).filter (fun b =>
      b.val ∈ phaseInterval χ center (8 * Real.sqrt (t / m)))).map
      (residueEmbedding S)) = S ∩ phaseInterval χ center (8 * Real.sqrt (t / m)) := by
    ext x
    simp [residueEmbedding, and_comm]
  have hcard : (((Finset.univ : Finset S).filter (fun b =>
      b.val ∈ phaseInterval χ center (8 * Real.sqrt (t / m)))).card : ℝ) =
      (S ∩ phaseInterval χ center (8 * Real.sqrt (t / m))).card := by
    rw [← heq, Finset.card_map]
  rw [hcard]
  have hle : ((Fintype.card S - 1 : ℕ) : ℝ) ≤ S.card := by
    exact_mod_cast (show Fintype.card S - 1 ≤ S.card by simp)
  linarith

/-- The single-far-element failure estimate used in source Lemma 3.3. -/
theorem near_count_bad_probability_le (S : Finset (ZMod p)) (hm : 0 < m)
    (hfour : 4 * m ≤ S.card) (χ center : ZMod p) (t : ℝ)
    (hc : (3 / 4 : ℝ) * S.card ≤
      (S ∩ phaseInterval χ center (8 * Real.sqrt (t / m))).card) (a : S)
    (ha : a.val ∉ phaseInterval χ center (16 * Real.sqrt (t / m))) :
    eventProbability (fun P : BalancedPartitions S m =>
      (((part P (P.val a)).filter (fun b =>
        b.val ∈ phaseInterval χ center (8 * Real.sqrt (t / m)))).card : ℝ) <
        (S.card : ℝ) / (4 * m)) ≤ Real.exp (-(S.card : ℝ) / (48 * m)) := by
  let G : Finset S := Finset.univ.filter (fun b =>
    b.val ∈ phaseInterval χ center (8 * Real.sqrt (t / m)))
  have haG : a ∉ G := by
    intro h
    have hnear := (mem_phaseInterval _ _ _ _).mp (Finset.mem_filter.mp h).2
    have hfar : 16 * Real.sqrt (t / m) < modularDistance (χ * a.val - center) :=
      lt_of_not_ge (by simpa only [mem_phaseInterval] using ha)
    nlinarith [Real.sqrt_nonneg (t / m)]
  have hd := near_labels_card S χ center m t hc
  have hsize : ∀ i : Fin m, (S.card : ℝ) / (2 * m) ≤
      ((balancedSizes S.card m i - 1 : ℕ) : ℝ) :=
    balanced_remainder_size_lower S.card m hm hfour
  have htail := partition_currentPart_threeQuarters_lowerTail (balancedSizes S.card m)
    (by simpa using balancedSizes_sum S.card m hm)
    (balancedSizes_pos S.card m hm (by omega)) a G (by
      intro b hb
      simp only [Finset.mem_erase, Finset.mem_univ, and_true]
      intro h; exact haG (h ▸ hb)) hd _ hsize
  rw [partitionProbabilityReal_eq_event] at htail
  have heq : -((S.card : ℝ) / (2 * m)) / 24 = -(S.card : ℝ) / (48 * m) := by ring
  rw [heq] at htail
  apply (eventProbability_mono _ _ (fun P hP => ?_)).trans htail
  have hbound : (((part P (P.val a)).filter (fun b =>
      b.val ∈ phaseInterval χ center (8 * Real.sqrt (t / m)))).card : ℝ) <
      (1 / 2 : ℝ) * ((balancedSizes S.card m (P.val a) - 1 : ℕ) : ℝ) := by
    calc
      _ < (S.card : ℝ) / (4 * m) := hP
      _ = (1 / 2 : ℝ) * ((S.card : ℝ) / (2 * m)) := by ring
      _ ≤ _ := mul_le_mul_of_nonneg_left (hsize (P.val a)) (by norm_num)
  unfold currentPartCountBad
  convert hbound using 1
  congr 2
  ext b
  simp [G]

/-- Source Lemma 3.3, retaining the actual center witness and the strict
outside-`B_(2000t)` premise. -/
theorem concentrated_probability_le (S : Finset (ZMod p))
    (hn : 2 ≤ S.card) (hm : 0 < m)
    (hu : (m : ℝ) ≤ (1 / 1000 : ℝ) * S.card / Real.log S.card)
    (t : ℝ) (ht : 0 ≤ t) (χ : ZMod p)
    (hχ : χ ∈ concentratedFrequencies S m t \ smallEnergyFrequencies S m (2000 * t)) :
    eventProbability (fun P : BalancedPartitions S m =>
      partitionEnergy (partValues (residueEmbedding S) P) χ < 2 * t) ≤
      1 / (S.card : ℝ) ^ 9 := by
  have hfour := source_upper_range_gives_quarter S.card m hn hu
  have hmR : (0 : ℝ) < m := by exact_mod_cast hm
  have hS : S.Nonempty := Finset.card_pos.mp (by omega)
  obtain ⟨center, hc, _htail⟩ := exists_concentrated_center_tail S hS m t hmR ht χ hχ
  have hE : 2000 * t ≤ (m : ℝ) * pairEnergy S χ := by
    exact le_of_lt (lt_of_not_ge (by simpa only [mem_smallEnergyFrequencies] using
      (Finset.mem_sdiff.mp hχ).2))
  let E (a : S) (P : BalancedPartitions S m) : Prop :=
    a.val ∉ phaseInterval χ center (16 * Real.sqrt (t / m)) ∧
      (((part P (P.val a)).filter (fun b =>
        b.val ∈ phaseInterval χ center (8 * Real.sqrt (t / m)))).card : ℝ) <
          (S.card : ℝ) / (4 * m)
  have hfail (P : BalancedPartitions S m)
      (hP : partitionEnergy (partValues (residueEmbedding S) P) χ < 2 * t) :
      ∃ a : S, E a P := by
    by_contra h
    have hc' : ∀ a : S,
        a.val ∉ phaseInterval χ center (16 * Real.sqrt (t / m)) →
        (S.card : ℝ) / (4 * m) ≤
          (((part P (P.val a)).filter (fun b =>
            b.val ∈ phaseInterval χ center (8 * Real.sqrt (t / m)))).card : ℝ) :=
      fun a ha => le_of_not_gt (fun hb => h ⟨a, ha, hb⟩)
    exact (not_lt_of_ge (energy_ge_two_of_near_counts S hm hfour P χ center t ht hE hc')) hP
  have hlocal (a : S) : eventProbability (E a) ≤ Real.exp (-(S.card : ℝ) / (48 * m)) := by
    by_cases ha : a.val ∈ phaseInterval χ center (16 * Real.sqrt (t / m))
    · calc
        _ ≤ eventProbability (fun _P : BalancedPartitions S m => False) :=
          eventProbability_mono _ _ (fun _ h => h.1 ha)
        _ ≤ _ := by
          simp only [eventProbability, Finset.filter_false, Finset.card_empty,
            Nat.cast_zero, zero_div]
          exact (Real.exp_pos _).le
    · exact (eventProbability_mono _ _ (fun _ h => h.2)).trans
        (near_count_bad_probability_le S hm hfour χ center t hc a ha)
  calc
    _ ≤ eventProbability (fun P => ∃ a : S, E a P) := eventProbability_mono _ _ hfail
    _ ≤ ∑ a : S, eventProbability (E a) := eventProbability_exists_le E
    _ ≤ ∑ _a : S, Real.exp (-(S.card : ℝ) / (48 * m)) :=
      Finset.sum_le_sum (fun a _ => hlocal a)
    _ = (S.card : ℝ) * Real.exp (-(S.card : ℝ) / (48 * m)) := by simp
    _ ≤ _ := source_union_exp_le S.card m hn hm hu 48 (by norm_num) (by norm_num)

/-- Both source concentration cases combined, with positivity and balanced
feasibility derived from the original Section 3 numerical restrictions. -/
theorem outside_smallEnergy_probability_le (S : Finset (ZMod p))
    (hn : 2 ≤ S.card)
    (hl : (2 : ℝ) ^ 24 * Real.log S.card ≤ m)
    (hu : (m : ℝ) ≤ (1 / 1000 : ℝ) * S.card / Real.log S.card)
    (t : ℝ) (ht : 0 < t) (χ : ZMod p) (hχ : χ ≠ 0)
    (hB : χ ∉ smallEnergyFrequencies S m (2000 * t)) :
    eventProbability (fun P : BalancedPartitions S m =>
      partitionEnergy (partValues (residueEmbedding S) P) χ < 2 * t) ≤
      1 / (S.card : ℝ) ^ 9 := by
  obtain ⟨hm, _hfour⟩ := source_range_size_bounds S.card m hn hl hu
  by_cases hD : χ ∈ concentratedFrequencies S m t
  · exact concentrated_probability_le S hn hm hu t ht.le χ (Finset.mem_sdiff.mpr ⟨hD, hB⟩)
  · exact nonconcentrated_probability_le S hn hm hu t ht.le χ hχ hD

end
end GRWTSK.ZModPartitionConcentration
