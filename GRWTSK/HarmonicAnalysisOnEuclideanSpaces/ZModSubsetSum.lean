/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; Lean implementation: OpenAI Codex.
Mathlib authorship and licensing retained. -/
import Mathlib.Analysis.Fourier.ZMod
import Mathlib.Data.Finset.Powerset
import Mathlib.Tactic

/-!
# Finite subset-sum laws and their discrete Fourier inversion

These are counting laws, with no independence assumption on nested subsets.
The Fourier inversion identity is unconditional. The quantitative estimates of
Pham–Sauermann, arXiv:2602.15797v1, Theorem 1.3, are NOT proved here.
-/

namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModSubsetSum
open scoped BigOperators

variable {Ω : Type*} [DecidableEq Ω]

/-- Uniform probability on an explicitly retained finite sample space.
The empty space has mass zero; normalization requires nonemptiness. -/
def probability (space event : Finset Ω) : ℚ :=
  ((space ∩ event).card : ℚ) / (space.card : ℚ)

theorem probability_nonneg (space event : Finset Ω) : 0 ≤ probability space event := by
  unfold probability
  positivity

theorem probability_le_one (space event : Finset Ω) : probability space event ≤ 1 := by
  unfold probability
  exact div_le_one_of_le₀ (by exact_mod_cast Finset.card_le_card Finset.inter_subset_left)
    (by positivity)

theorem probability_self (space : Finset Ω) (hne : space.Nonempty) :
    probability space space = 1 := by
  simp [probability, ne_of_gt (show (0 : ℚ) < space.card by exact_mod_cast hne.card_pos)]

theorem probability_union_le (space A B : Finset Ω) :
    probability space (A ∪ B) ≤ probability space A + probability space B := by
  unfold probability
  rw [← add_div]
  apply div_le_div_of_nonneg_right _ (by positivity)
  have h : space ∩ (A ∪ B) = (space ∩ A) ∪ (space ∩ B) := by ext; simp [and_or_left]
  rw [h]
  exact_mod_cast Finset.card_union_le (space ∩ A) (space ∩ B)

/-- A strictly positive counting probability supplies an actual witness. -/
theorem exists_of_probability_pos (space event : Finset Ω)
    (h : 0 < probability space event) : ∃ x ∈ space, x ∈ event := by
  have hn : (space ∩ event).Nonempty := by
    by_contra hn
    have hz : space ∩ event = ∅ := Finset.not_nonempty_iff_eq_empty.mp hn
    simp [probability, hz] at h
  obtain ⟨x, hx⟩ := hn
  exact ⟨x, (Finset.mem_inter.mp hx).1, (Finset.mem_inter.mp hx).2⟩

/-- The numerical union-bound step, conditional on the THREE actual event bounds.
It does not prove those bounds or manufacture a good permutation. -/
theorem three_failure_good_mass (space B₁ B₂ B₃ : Finset Ω) (hne : space.Nonempty)
    (h₁ : probability space B₁ ≤ 1 / 100)
    (h₂ : probability space B₂ ≤ 3 / 100)
    (h₃ : probability space B₃ ≤ 1 / 25) :
    (23 / 25 : ℚ) ≤ probability space (space \ (B₁ ∪ B₂ ∪ B₃)) := by
  have hu := probability_union_le space (B₁ ∪ B₂) B₃
  have hu2 := probability_union_le space B₁ B₂
  have hd : probability space (space \ (B₁ ∪ B₂ ∪ B₃)) =
      1 - probability space (B₁ ∪ B₂ ∪ B₃) := by
    unfold probability
    have hsub : space ∩ (B₁ ∪ B₂ ∪ B₃) ⊆ space := Finset.inter_subset_left
    have hset : space ∩ (space \ (B₁ ∪ B₂ ∪ B₃)) =
        space \ (space ∩ (B₁ ∪ B₂ ∪ B₃)) := by
      ext x
      simp only [Finset.mem_inter, Finset.mem_sdiff]
      tauto
    rw [hset, Finset.card_sdiff_of_subset hsub, Nat.cast_sub (Finset.card_le_card hsub)]
    have hn : (space.card : ℚ) ≠ 0 := by exact_mod_cast ne_of_gt hne.card_pos
    field_simp
  rw [hd]
  linarith

/-- Source Theorem 1.3 uses `S.powersetCard m`, not independent Bernoulli choices. -/
def subsetSumFiber {p : ℕ} [NeZero p] (S : Finset (ZMod p)) (m : ℕ) (z : ZMod p) :
    Finset (Finset (ZMod p)) :=
  (S.powersetCard m).filter (fun R => ∑ x ∈ R, x = z)

def subsetSumProbability {p : ℕ} [NeZero p] (S : Finset (ZMod p)) (m : ℕ)
    (z : ZMod p) : ℚ :=
  ((subsetSumFiber S m z).card : ℚ) / ((S.powersetCard m).card : ℚ)

theorem subsetSumFiber_mem {p : ℕ} [NeZero p] (S : Finset (ZMod p)) (m : ℕ)
    (z : ZMod p) (R : Finset (ZMod p)) :
    R ∈ subsetSumFiber S m z ↔ R ⊆ S ∧ R.card = m ∧ ∑ x ∈ R, x = z := by
  simp [subsetSumFiber, Finset.mem_powersetCard, and_assoc]

/-- Nonempty fixed-size sample spaces have the expected binomial denominator. -/
theorem fixed_size_space_card {p : ℕ} [NeZero p] (S : Finset (ZMod p)) (m : ℕ) :
    (S.powersetCard m).card = S.card.choose m := Finset.card_powersetCard _ _

/-- Exact inverse DFT with Mathlib's counting-measure normalization. -/
theorem fourier_inversion {p : ℕ} [NeZero p] (f : ZMod p → ℂ) (z : ZMod p) :
    f z = (p : ℂ)⁻¹ * ∑ χ : ZMod p,
      ZMod.stdAddChar (χ * z) * ZMod.dft f χ := by
  have h := congrFun (ZMod.dft.symm_apply_apply f) z
  simpa only [ZMod.invDFT_apply, smul_eq_mul] using h.symm

/-- The elementary Fourier bound before ANY anti-concentration estimate. -/
theorem fourier_mass_bound {p : ℕ} [NeZero p] (f : ZMod p → ℂ) (z : ZMod p) :
    ‖f z‖ ≤ ‖(p : ℂ)⁻¹‖ * ∑ χ : ZMod p, ‖ZMod.dft f χ‖ := by
  rw [fourier_inversion f z, norm_mul]
  apply mul_le_mul_of_nonneg_left _ (norm_nonneg _)
  calc
    ‖∑ χ : ZMod p, ZMod.stdAddChar (χ * z) * ZMod.dft f χ‖ ≤
        ∑ χ : ZMod p, ‖ZMod.stdAddChar (χ * z) * ZMod.dft f χ‖ := norm_sum_le _ _
    _ = ∑ χ : ZMod p, ‖ZMod.dft f χ‖ := by simp

/-- Conditional one-element exposure bound: after retaining `R`, at most one
remaining label attains a prescribed new sum. This is a genuine counting bound,
not independence of nested slices. -/
theorem completion_fiber_card_le_one {p : ℕ} [NeZero p]
    (S R : Finset (ZMod p)) (z : ZMod p) :
    ((S \ R).filter (fun x => (∑ r ∈ R, r) + x = z)).card ≤ 1 := by
  apply Finset.card_le_one.mpr
  intro a ha b hb
  have ha' := (Finset.mem_filter.mp ha).2
  have hb' := (Finset.mem_filter.mp hb).2
  exact add_left_cancel (ha'.trans hb'.symm)

theorem completion_probability_bound {p : ℕ} [NeZero p]
    (S R : Finset (ZMod p)) (z : ZMod p) (hR : R ⊆ S) :
    (((S \ R).filter (fun x => (∑ r ∈ R, r) + x = z)).card : ℚ) /
      ((S \ R).card : ℚ) ≤ 1 / ((S.card - R.card : ℕ) : ℚ) := by
  rw [Finset.card_sdiff_of_subset hR]
  apply div_le_div_of_nonneg_right _ (by positivity)
  exact_mod_cast completion_fiber_card_le_one S R z

/-- Exact normalization of the fixed-size subset-sum law. -/
theorem subsetSumProbability_total {p : ℕ} [NeZero p]
    (S : Finset (ZMod p)) (m : ℕ) (hm : m ≤ S.card) :
    ∑ z : ZMod p, subsetSumProbability S m z = 1 := by
  have hcount : ∑ z : ZMod p, (subsetSumFiber S m z).card = (S.powersetCard m).card := by
    symm
    apply Finset.card_eq_sum_card_fiberwise (f := fun R : Finset (ZMod p) => ∑ x ∈ R, x)
    intro R _
    exact Finset.mem_univ _
  unfold subsetSumProbability
  rw [← Finset.sum_div]
  have hcast : ∑ z : ZMod p, ((subsetSumFiber S m z).card : ℚ) =
      ((S.powersetCard m).card : ℚ) := by exact_mod_cast hcount
  rw [hcast]
  have hn : ((S.powersetCard m).card : ℚ) ≠ 0 := by
    rw [fixed_size_space_card]
    exact_mod_cast ne_of_gt (Nat.choose_pos hm)
  exact div_self hn

/-- Separating the trivial frequency identifies exactly the remaining analytic
obligation for any normalized finite law. -/
theorem fourier_nontrivial_mass_bound {p : ℕ} [NeZero p]
    (f : ZMod p → ℂ) (hf : ∑ z, f z = 1) (z : ZMod p) :
    ‖f z‖ ≤ (p : ℝ)⁻¹ * (1 + ∑ χ ∈ (Finset.univ.erase (0 : ZMod p)), ‖ZMod.dft f χ‖) := by
  have h := fourier_mass_bound f z
  have hzero : ‖ZMod.dft f 0‖ = 1 := by rw [ZMod.dft_apply_zero, hf]; simp
  have hsum : (∑ χ : ZMod p, ‖ZMod.dft f χ‖) =
      1 + ∑ χ ∈ (Finset.univ.erase (0 : ZMod p)), ‖ZMod.dft f χ‖ := by
    rw [← Finset.sum_erase_add _ _ (Finset.mem_univ (0 : ZMod p)), hzero, add_comm]
  simpa only [hsum, norm_inv, Complex.norm_natCast] using h

/-- Uniform counting law on finite bijections. Nonemptiness follows from the
identity permutation, and all events are explicit finite sets. -/
def permutationSpace (n : ℕ) : Finset (Equiv.Perm (Fin n)) := Finset.univ

theorem permutationSpace_nonempty (n : ℕ) : (permutationSpace n).Nonempty :=
  ⟨1, Finset.mem_univ _⟩

/-- Retained positions of one prefix in a finite uniform permutation model. -/
def exposedPrefix {n : ℕ} (σ : Equiv.Perm (Fin n)) (k : ℕ) : Finset (Fin n) :=
  (Finset.univ.filter (fun i : Fin n => i.val < k)).image σ

theorem exposedPrefix_mono {n : ℕ} (σ : Equiv.Perm (Fin n)) {j k : ℕ} (h : j ≤ k) :
    exposedPrefix σ j ⊆ exposedPrefix σ k := by
  apply Finset.image_subset_image
  intro i hi
  simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hi ⊢
  omega

/-- Empty prefixes demonstrate why nested prefix events cannot be assigned
independent distributions merely because the permutation is uniform. -/
theorem exposedPrefix_zero {n : ℕ} (σ : Equiv.Perm (Fin n)) :
    exposedPrefix σ 0 = ∅ := by simp [exposedPrefix]

end GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModSubsetSum
