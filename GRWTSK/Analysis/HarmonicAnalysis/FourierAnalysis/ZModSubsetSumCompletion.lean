/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; Lean implementation: OpenAI Codex.
Mathlib authorship and licensing retained. -/
import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModSubsetSum

/-!
# One-element exposure and fixed-size subset anti-concentration

This closes the elementary estimate in Pham--Sauermann,
*On Graham's rearrangement conjecture*, arXiv:2602.15797v1, Lemma 4.1.
The proof double-counts a sum-constrained subset together with a deleted
element. A retained `(m-1)`-subset has at most one sum-constrained completion.
Every `m`-subset has exactly `m` deletion exposures, so the argument applies
to the actual uniform fixed-size law, without an independence assumption.
Primality is unnecessary for this elementary estimate.
-/

namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModSubsetSum

open scoped BigOperators

variable {A : Type*} [AddCommGroup A] [DecidableEq A]

/-- A prescribed sum and a one-element deletion determine the original
subset and the deleted element uniquely. -/
theorem deletion_exposure_injective (z : A) :
    ∀ R T : Finset A, ∀ x ∈ R, ∀ y ∈ T,
      (∑ r ∈ R, r) = z → (∑ t ∈ T, t) = z →
      R.erase x = T.erase y → R = T ∧ x = y := by
  intro R T x hx y hy hR hT he
  have hsR : (∑ r ∈ R.erase x, r) + x = z :=
    (Finset.sum_erase_add R (fun r => r) hx).trans hR
  have hsT : (∑ t ∈ T.erase y, t) + y = z :=
    (Finset.sum_erase_add T (fun t => t) hy).trans hT
  rw [he] at hsR
  have hxy : x = y := add_left_cancel (hsR.trans hsT.symm)
  refine ⟨?_, hxy⟩
  rw [← Finset.insert_erase hx, ← Finset.insert_erase hy, he, hxy]

/-- Exact deletion exposure count followed by its injection into all
`(m-1)`-subsets. This is the counting bridge from conditional completion
uniqueness to the actual fixed-size subset law. -/
theorem constrained_deletion_count (S : Finset A) (m : ℕ) (z : A) :
    ((S.powersetCard m).filter (fun R => ∑ x ∈ R, x = z)).card * m ≤
      (S.powersetCard (m - 1)).card := by
  classical
  let F := (S.powersetCard m).filter (fun R => ∑ x ∈ R, x = z)
  let E : Finset ((R : Finset A) × A) := F.sigma fun R => R
  have hcard : E.card = F.card * m := by
    rw [Finset.card_sigma]
    calc
      ∑ R ∈ F, R.card = ∑ _R ∈ F, m := by
        apply Finset.sum_congr rfl
        intro R hR
        exact (Finset.mem_powersetCard.mp (Finset.mem_filter.mp hR).1).2
      _ = F.card * m := by simp
  rw [← hcard]
  apply Finset.card_le_card_of_injOn (fun e : (R : Finset A) × A => e.1.erase e.2)
  · intro e he
    obtain ⟨hR, hx⟩ := Finset.mem_sigma.mp he
    obtain ⟨hRS, hRm⟩ := Finset.mem_powersetCard.mp (Finset.mem_filter.mp hR).1
    exact Finset.mem_powersetCard.mpr
      ⟨(Finset.erase_subset e.2 e.1).trans hRS,
        by rw [Finset.card_erase_of_mem hx, hRm]⟩
  · intro e he f hf hef
    obtain ⟨heR, hex⟩ := Finset.mem_sigma.mp he
    obtain ⟨hfR, hfx⟩ := Finset.mem_sigma.mp hf
    have hRsum := (Finset.mem_filter.mp heR).2
    have hTsum := (Finset.mem_filter.mp hfR).2
    obtain ⟨hR, hxy⟩ := deletion_exposure_injective z e.1 f.1 e.2 hex f.2 hfx hRsum hTsum hef
    exact Sigma.ext hR (by simpa using hxy)

/-- Elementary anti-concentration as a cardinal inequality. The hypotheses
are precisely positive sample size and `m ≤ |S|`; no primality is used. -/
theorem subsetSumFiber_card_mul_remaining_le {p : ℕ} [NeZero p]
    (S : Finset (ZMod p)) (m : ℕ) (z : ZMod p) (hm : 1 ≤ m) (hmS : m ≤ S.card) :
    (subsetSumFiber S m z).card * (S.card - m + 1) ≤ (S.powersetCard m).card := by
  have hc := constrained_deletion_count S m z
  change (subsetSumFiber S m z).card * m ≤ (S.powersetCard (m - 1)).card at hc
  rw [Finset.card_powersetCard] at hc ⊢
  have hbin : S.card.choose m * m = S.card.choose (m - 1) * (S.card - m + 1) := by
    have h := Nat.choose_succ_right_eq S.card (m - 1)
    have hm' : m - 1 + 1 = m := by omega
    have hsub : S.card - (m - 1) = S.card - m + 1 := by omega
    simpa only [hm', hsub] using h
  have hmul := Nat.mul_le_mul_right (S.card - m + 1) hc
  nlinarith

/-- Pham--Sauermann Lemma 4.1 for the actual uniform fixed-size subset
distribution. It holds for every target `z`, hence bounds its maximum. -/
theorem subsetSumProbability_le_one_div_remaining {p : ℕ} [NeZero p]
    (S : Finset (ZMod p)) (m : ℕ) (z : ZMod p) (hm : 1 ≤ m) (hmS : m ≤ S.card) :
    subsetSumProbability S m z ≤ 1 / ((S.card - m + 1 : ℕ) : ℚ) := by
  have hc := subsetSumFiber_card_mul_remaining_le S m z hm hmS
  have hC : (0 : ℚ) < (S.powersetCard m).card := by
    rw [Finset.card_powersetCard]
    exact_mod_cast Nat.choose_pos hmS
  have hrem : (0 : ℚ) < ((S.card - m + 1 : ℕ) : ℚ) := by positivity
  unfold subsetSumProbability
  apply (div_le_div_iff₀ hC hrem).mpr
  simpa using (show ((subsetSumFiber S m z).card : ℚ) *
    ((S.card - m + 1 : ℕ) : ℚ) ≤ ((S.powersetCard m).card : ℚ) by exact_mod_cast hc)

/-- Complement exposure conserves the complete sum. -/
theorem complement_sum (S R : Finset A) (hR : R ⊆ S) :
    (∑ x ∈ S \ R, x) = (∑ x ∈ S, x) - ∑ x ∈ R, x :=
  Finset.sum_sdiff_eq_sub hR

theorem subsetSumFiber_complement_mem {p : ℕ} [NeZero p]
    (S R : Finset (ZMod p)) (m : ℕ) (z : ZMod p)
    (hR : R ∈ subsetSumFiber S m z) :
    S \ R ∈ subsetSumFiber S (S.card - m) ((∑ x ∈ S, x) - z) := by
  obtain ⟨hRS, hRm, hRz⟩ := (subsetSumFiber_mem S m z R).mp hR
  apply (subsetSumFiber_mem _ _ _ _).mpr
  refine ⟨Finset.sdiff_subset, ?_, ?_⟩
  · rw [Finset.card_sdiff_of_subset hRS, hRm]
  · rw [complement_sum S R hRS, hRz]

/-- The complement map gives the actual transformed fiber, not merely a
bound on its cardinality. -/
theorem subsetSumFiber_complement_image {p : ℕ} [NeZero p]
    (S : Finset (ZMod p)) (m : ℕ) (z : ZMod p) (hmS : m ≤ S.card) :
    (subsetSumFiber S m z).image (fun R => S \ R) =
      subsetSumFiber S (S.card - m) ((∑ x ∈ S, x) - z) := by
  ext T
  constructor
  · intro hT
    obtain ⟨R, hR, rfl⟩ := Finset.mem_image.mp hT
    exact subsetSumFiber_complement_mem S R m z hR
  · intro hT
    have hTS := ((subsetSumFiber_mem _ _ _ _).mp hT).1
    refine Finset.mem_image.mpr ⟨S \ T, ?_, Finset.sdiff_sdiff_eq_self hTS⟩
    have hc := subsetSumFiber_complement_mem S T (S.card - m) ((∑ x ∈ S, x) - z) hT
    simpa only [Nat.sub_sub_self hmS, sub_sub_cancel] using hc

/-- Complementation is a bijection on fixed-size sum fibers. -/
theorem subsetSumFiber_complement_card {p : ℕ} [NeZero p]
    (S : Finset (ZMod p)) (m : ℕ) (z : ZMod p) (hmS : m ≤ S.card) :
    (subsetSumFiber S m z).card =
      (subsetSumFiber S (S.card - m) ((∑ x ∈ S, x) - z)).card := by
  rw [← subsetSumFiber_complement_image S m z hmS]
  symm
  apply Finset.card_image_iff.mpr
  intro R hR T hT he
  have hRS := ((subsetSumFiber_mem _ _ _ _).mp hR).1
  have hTS := ((subsetSumFiber_mem _ _ _ _).mp hT).1
  have hc := congrArg (fun U => S \ U) he
  simpa only [Finset.sdiff_sdiff_eq_self hRS, Finset.sdiff_sdiff_eq_self hTS] using hc

/-- Exact complement symmetry of the uniform fixed-size subset-sum law.
This supplies a valid change of exposure direction in nested-chain proofs;
it does not assert independence of nested subsets. -/
theorem subsetSumProbability_complement {p : ℕ} [NeZero p]
    (S : Finset (ZMod p)) (m : ℕ) (z : ZMod p) (hmS : m ≤ S.card) :
    subsetSumProbability S m z =
      subsetSumProbability S (S.card - m) ((∑ x ∈ S, x) - z) := by
  unfold subsetSumProbability
  rw [subsetSumFiber_complement_card S m z hmS,
    Finset.card_powersetCard, Finset.card_powersetCard, Nat.choose_symm hmS]

end GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModSubsetSum
