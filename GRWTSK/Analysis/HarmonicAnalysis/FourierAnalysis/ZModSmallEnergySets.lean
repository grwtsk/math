/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; Lean implementation: OpenAI Codex.
Mathlib authorship and licensing retained. -/
import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModCharacterEnergy
import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModIndependentSelection

/-!
# Small modular character-energy sets

Deterministic finite Fourier estimates for the sets in Lemmas 3.5–3.7 of
Pham–Sauermann, arXiv:2602.15797v1. The arbitrary-frequency-set formulation
of the Parseval bound avoids an unnecessary symmetry hypothesis.
-/

namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModSmallEnergySets
open scoped BigOperators
open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModCharacterEnergy

variable {p : ℕ} [NeZero p]

/-- Source deterministic frequency set `B_t`, with `Ψ(χ)=m E_S(χ)`. -/
noncomputable def smallEnergyFrequencies (S : Finset (ZMod p)) (m t : ℝ) :
    Finset (ZMod p) := by
  classical
  exact Finset.univ.filter (fun χ => m * pairEnergy S χ ≤ t)

/-- The set of points whose total energy over `B` is less than `δ |B|`. -/
noncomputable def smallEnergyPoints (B : Finset (ZMod p)) (δ : ℝ) : Finset (ZMod p) := by
  classical
  exact Finset.univ.filter (fun x =>
    (∑ χ ∈ B, modularDistance (χ * x) ^ 2) < δ * B.card)

@[simp] theorem mem_smallEnergyFrequencies (S : Finset (ZMod p)) (m t : ℝ)
    (χ : ZMod p) :
    χ ∈ smallEnergyFrequencies S m t ↔ m * pairEnergy S χ ≤ t := by
  classical
  simp [smallEnergyFrequencies]

@[simp] theorem mem_smallEnergyPoints (B : Finset (ZMod p)) (δ : ℝ) (x : ZMod p) :
    x ∈ smallEnergyPoints B δ ↔
      (∑ χ ∈ B, modularDistance (χ * x) ^ 2) < δ * B.card := by
  classical
  simp [smallEnergyPoints]

theorem zero_mem_smallEnergyFrequencies (S : Finset (ZMod p)) (m t : ℝ) (ht : 0 ≤ t) :
    0 ∈ smallEnergyFrequencies S m t := by simp [ht]

theorem smallEnergyFrequencies_nonempty (S : Finset (ZMod p)) (m t : ℝ) (ht : 0 ≤ t) :
    (smallEnergyFrequencies S m t).Nonempty :=
  ⟨0, zero_mem_smallEnergyFrequencies S m t ht⟩

theorem smallEnergyPoints_mono (B : Finset (ZMod p)) {δ ε : ℝ} (h : δ ≤ ε) :
    smallEnergyPoints B δ ⊆ smallEnergyPoints B ε := by
  intro x hx
  rw [mem_smallEnergyPoints] at hx ⊢
  exact hx.trans_le (mul_le_mul_of_nonneg_right h (by positivity))

/-- Source Lemma 3.7 for a finite nonempty family of summands. -/
theorem sum_mem_smallEnergyPoints {ι : Type*} (I : Finset ι) (hI : I.Nonempty)
    (B : Finset (ZMod p)) (δ : ℝ) (x : ι → ZMod p)
    (hx : ∀ i ∈ I, x i ∈ smallEnergyPoints B δ) :
    (∑ i ∈ I, x i) ∈ smallEnergyPoints B ((I.card : ℝ) ^ 2 * δ) := by
  rw [mem_smallEnergyPoints]
  have hsum : (∑ χ ∈ B, modularDistance (χ * ∑ i ∈ I, x i) ^ 2) ≤
      I.card * ∑ i ∈ I, ∑ χ ∈ B, modularDistance (χ * x i) ^ 2 := by
    calc
      _ ≤ ∑ χ ∈ B, I.card * ∑ i ∈ I, modularDistance (χ * x i) ^ 2 := by
        apply Finset.sum_le_sum
        intro χ _
        simpa only [Finset.mul_sum] using modularDistance_sum_sq_le I (fun i => χ * x i)
      _ = _ := by rw [← Finset.mul_sum, Finset.sum_comm]
  have hlt : (∑ i ∈ I, ∑ χ ∈ B, modularDistance (χ * x i) ^ 2) <
      ∑ _i ∈ I, δ * B.card := by
    exact Finset.sum_lt_sum_of_nonempty hI (fun i hi => (mem_smallEnergyPoints _ _ _).mp (hx i hi))
  have hc : (0 : ℝ) < I.card := by exact_mod_cast hI.card_pos
  have hm := mul_lt_mul_of_pos_left hlt hc
  simp only [Finset.sum_const, nsmul_eq_mul] at hm
  have heq : (I.card : ℝ) * ((I.card : ℝ) * (δ * B.card)) =
      (I.card : ℝ) ^ 2 * δ * B.card := by ring
  exact hsum.trans_lt (hm.trans_eq heq)

/-- Orthogonality of the standard additive characters, for every nonzero modulus. -/
theorem character_orthogonality (a : ZMod p) :
    (∑ x : ZMod p, ZMod.stdAddChar (a * x)) = if a = 0 then (p : ℂ) else 0 := by
  simpa only [mul_comm] using GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModIndependentSelection.character_orthogonality a

theorem character_orthogonality_re (a : ZMod p) :
    (∑ x : ZMod p, (ZMod.stdAddChar (a * x)).re) =
      if a = 0 then (p : ℝ) else 0 := by
  rw [← Complex.re_sum, character_orthogonality]
  split_ifs <;> simp

/-- Finite Parseval for the character sum of an arbitrary frequency set. -/
theorem character_sum_parseval (B : Finset (ZMod p)) :
    (∑ x : ZMod p, ‖∑ χ ∈ B, ZMod.stdAddChar (χ * x)‖ ^ 2) = (p : ℝ) * B.card := by
  have hpoint (x : ZMod p) : ‖∑ χ ∈ B, ZMod.stdAddChar (χ * x)‖ ^ 2 =
      ∑ a ∈ B, ∑ b ∈ B, (ZMod.stdAddChar (x * (a - b))).re := by
    simpa only [mul_comm] using character_sum_norm_sq B x
  have hswap : (∑ x : ZMod p, ∑ a ∈ B, ∑ b ∈ B,
      (ZMod.stdAddChar (x * (a - b))).re) =
      ∑ a ∈ B, ∑ b ∈ B, ∑ x : ZMod p, (ZMod.stdAddChar ((a - b) * x)).re := by
    calc
      _ = ∑ a ∈ B, ∑ x : ZMod p, ∑ b ∈ B,
          (ZMod.stdAddChar (x * (a - b))).re := Finset.sum_comm
      _ = _ := by
        apply Finset.sum_congr rfl
        intro a _
        rw [Finset.sum_comm]
        simp only [mul_comm]
  simp_rw [hpoint]
  rw [hswap]
  simp_rw [character_orthogonality_re, sub_eq_zero]
  simp [mul_comm]

/-- The pointwise Fourier lower bound in source Lemma 3.6. -/
theorem character_sum_norm_sq_lower (B : Finset (ZMod p)) (x : ZMod p)
    (hx : x ∈ smallEnergyPoints B (1 / 200)) :
    (4 / 5 : ℝ) * (B.card : ℝ) ^ 2 ≤
      ‖∑ χ ∈ B, ZMod.stdAddChar (χ * x)‖ ^ 2 := by
  have htrig := Finset.sum_le_sum (s := B) (fun χ _ =>
    one_sub_modularDistance_sq_le_stdAddChar_re (χ * x))
  have hre : (B.card : ℝ) - 20 * ∑ χ ∈ B, modularDistance (χ * x) ^ 2 ≤
      (∑ χ ∈ B, ZMod.stdAddChar (χ * x)).re := by
    simpa only [Complex.re_sum, Finset.sum_sub_distrib, Finset.sum_const,
      nsmul_eq_mul, mul_one, ← Finset.mul_sum] using htrig
  rw [mem_smallEnergyPoints] at hx
  have hnorm := Complex.re_le_norm (∑ χ ∈ B, ZMod.stdAddChar (χ * x))
  have hc : (0 : ℝ) ≤ B.card := by positivity
  nlinarith [norm_nonneg (∑ χ ∈ B, ZMod.stdAddChar (χ * x))]

/-- Source Lemma 3.6, valid for every nonempty frequency set, without symmetry. -/
theorem smallEnergyPoints_card_le (B : Finset (ZMod p)) (hB : B.Nonempty) :
    ((smallEnergyPoints B (1 / 200)).card : ℝ) ≤ (5 / 4 : ℝ) * p / B.card := by
  have hb : (0 : ℝ) < B.card := by exact_mod_cast hB.card_pos
  have hsum : (∑ x ∈ smallEnergyPoints B (1 / 200),
      ‖∑ χ ∈ B, ZMod.stdAddChar (χ * x)‖ ^ 2) ≤
      (∑ x : ZMod p, ‖∑ χ ∈ B, ZMod.stdAddChar (χ * x)‖ ^ 2) := by
    apply Finset.sum_le_sum_of_subset_of_nonneg (Finset.subset_univ _)
    intro x _ _
    exact sq_nonneg _
  have hlower : ((smallEnergyPoints B (1 / 200)).card : ℝ) *
      ((4 / 5 : ℝ) * (B.card : ℝ) ^ 2) ≤ (p : ℝ) * B.card := by
    calc
      _ = ∑ _x ∈ smallEnergyPoints B (1 / 200), (4 / 5 : ℝ) * (B.card : ℝ) ^ 2 := by
        simp
      _ ≤ _ := (Finset.sum_le_sum fun x hx => character_sum_norm_sq_lower B x hx).trans
        (hsum.trans_eq (character_sum_parseval B))
  apply (le_div_iff₀ hb).mpr
  apply (mul_le_mul_iff_of_pos_right hb).mp
  nlinarith [hlower]

omit [NeZero p] in
/-- Reordering the three finite sums reconstructs the exact pair-energy average. -/
theorem sum_pair_frequency_energy (S B : Finset (ZMod p)) (hS : S.Nonempty) :
    (∑ y ∈ S, ∑ x ∈ S, ∑ χ ∈ B, modularDistance (χ * (x - y)) ^ 2) =
      (S.card : ℝ) ^ 2 * ∑ χ ∈ B, pairEnergy S χ := by
  have hswap : (∑ y ∈ S, ∑ x ∈ S, ∑ χ ∈ B, modularDistance (χ * (x - y)) ^ 2) =
      ∑ χ ∈ B, ∑ x ∈ S, ∑ y ∈ S, modularDistance (χ * (x - y)) ^ 2 := by
    calc
      _ = ∑ y ∈ S, ∑ χ ∈ B, ∑ x ∈ S, modularDistance (χ * (x - y)) ^ 2 := by
        apply Finset.sum_congr rfl
        intro y _
        rw [Finset.sum_comm]
      _ = ∑ χ ∈ B, ∑ y ∈ S, ∑ x ∈ S, modularDistance (χ * (x - y)) ^ 2 :=
        Finset.sum_comm
      _ = _ := by
        apply Finset.sum_congr rfl
        intro χ _
        rw [Finset.sum_comm]
  rw [hswap]
  unfold pairEnergy
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro χ _
  have hc : (S.card : ℝ) ≠ 0 := by exact_mod_cast ne_of_gt hS.card_pos
  field_simp

/-- Finite Markov inequality, expressed entirely as a counting estimate. -/
theorem filter_card_mul_le_sum {ι : Type*} (I : Finset ι) (f : ι → ℝ)
    (hf : ∀ i ∈ I, 0 ≤ f i) (a : ℝ) :
    ((I.filter (fun i => a ≤ f i)).card : ℝ) * a ≤ ∑ i ∈ I, f i := by
  classical
  calc
    _ = ∑ _i ∈ I.filter (fun i => a ≤ f i), a := by simp
    _ ≤ ∑ i ∈ I.filter (fun i => a ≤ f i), f i :=
      Finset.sum_le_sum fun i hi => (Finset.mem_filter.mp hi).2
    _ ≤ _ := by
      apply Finset.sum_le_sum_of_subset_of_nonneg (Finset.filter_subset _ _)
      intro i hi _
      exact hf i hi

/-- The deterministic pair-energy hypothesis supplies the large point set used
in source Lemma 3.5. Its proof is finite averaging followed by finite Markov. -/
theorem smallEnergyPoints_card_lower_of_pairEnergy (S B : Finset (ZMod p))
    (hS : S.Nonempty) (hB : B.Nonempty) (r : ℝ) (hr : 0 < r)
    (hE : ∀ χ ∈ B, pairEnergy S χ ≤ r) :
    (9 / 10 : ℝ) * S.card ≤ ((smallEnergyPoints B (10 * r)).card : ℝ) := by
  classical
  let f : ZMod p → ZMod p → ℝ := fun y x =>
    ∑ χ ∈ B, modularDistance (χ * (x - y)) ^ 2
  have htotal : (∑ y ∈ S, ∑ x ∈ S, f y x) ≤
      ∑ _y ∈ S, (S.card : ℝ) * ((B.card : ℝ) * r) := by
    calc
      _ = (S.card : ℝ) ^ 2 * ∑ χ ∈ B, pairEnergy S χ :=
        sum_pair_frequency_energy S B hS
      _ ≤ (S.card : ℝ) ^ 2 * ∑ _χ ∈ B, r := by
        exact mul_le_mul_of_nonneg_left (Finset.sum_le_sum hE) (sq_nonneg _)
      _ = _ := by simp; ring
  obtain ⟨y, hy, hrow⟩ := Finset.exists_le_of_sum_le hS htotal
  let a : ℝ := 10 * r * B.card
  let bad := S.filter (fun x => a ≤ f y x)
  let good := S.filter (fun x => ¬a ≤ f y x)
  have hf (x : ZMod p) (_hx : x ∈ S) : 0 ≤ f y x := by unfold f; positivity
  have hbad : (bad.card : ℝ) * a ≤ (S.card : ℝ) * ((B.card : ℝ) * r) :=
    (filter_card_mul_le_sum S (f y) hf a).trans hrow
  have hbr : (0 : ℝ) < (B.card : ℝ) * r := by
    exact mul_pos (by exact_mod_cast hB.card_pos) hr
  have hbad' : 10 * (bad.card : ℝ) ≤ S.card := by
    apply (mul_le_mul_iff_of_pos_right hbr).mp
    dsimp [a] at hbad
    nlinarith [hbad]
  have hcards : bad.card + good.card = S.card := by
    exact Finset.card_filter_add_card_filter_not (s := S) (fun x => a ≤ f y x)
  have hcards' : (bad.card : ℝ) + good.card = S.card := by exact_mod_cast hcards
  have hgood : (9 / 10 : ℝ) * S.card ≤ (good.card : ℝ) := by linarith
  have himage : good.image (fun x => x - y) ⊆ smallEnergyPoints B (10 * r) := by
    intro z hz
    obtain ⟨x, hx, rfl⟩ := Finset.mem_image.mp hz
    rw [mem_smallEnergyPoints]
    have hx' := (Finset.mem_filter.mp hx).2
    dsimp [a, f] at hx'
    exact lt_of_not_ge hx'
  have hcardimage : (good.image (fun x => x - y)).card = good.card :=
    Finset.card_image_of_injective good (fun x z h => sub_left_inj.mp h)
  have hcard : good.card ≤ (smallEnergyPoints B (10 * r)).card := by
    rw [← hcardimage]
    exact Finset.card_le_card himage
  exact hgood.trans (by exact_mod_cast hcard)

/-- Source Lemma 3.5 for the actual deterministic set `B_t`. -/
theorem smallEnergyPoints_card_lower (S : Finset (ZMod p)) (hS : S.Nonempty)
    (m t : ℝ) (hm : 0 < m) (ht : 0 < t) :
    (9 / 10 : ℝ) * S.card ≤
      ((smallEnergyPoints (smallEnergyFrequencies S m t) (10 * t / m)).card : ℝ) := by
  have h := smallEnergyPoints_card_lower_of_pairEnergy S (smallEnergyFrequencies S m t)
    hS (smallEnergyFrequencies_nonempty S m t ht.le) (t / m) (div_pos ht hm) (by
      intro χ hχ
      apply (le_div_iff₀ hm).mpr
      simpa only [mul_comm] using (mem_smallEnergyFrequencies _ _ _ _).mp hχ)
  simpa only [mul_div_assoc] using h

end GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModSmallEnergySets
