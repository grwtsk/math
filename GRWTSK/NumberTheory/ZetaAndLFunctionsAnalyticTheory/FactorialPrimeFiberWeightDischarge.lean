/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.FactorialPrimeFiberUniformEnergy
import Mathlib

/-!
# Factorial prime-fiber arithmetic weight: source-level proof candidate

The objective is the *actual* closed predicate
`FactorialBlockArithmeticWeightBound`, not a replacement estimate.  The
bound uses exact Möbius zeros in the p=2,3,5 blocks and a completely explicit
rational majorant for every remaining phase.  The coverage lemma allows
repeated labels in an arbitrary finite family; a global disjointness
hypothesis is not smuggled in.

IMPORTANT: This file has not undergone Lean elaboration, independent
kernel checking, or a transitive axiom audit.  Do not call its downstream
`blockEnergy_le_nine_twentyfifths` kernel-accepted until those checks pass.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC

namespace GRWTSK.NumberTheory.FactorialPrimeFiberUniformEnergy

private def phaseBlock (p : ℕ) : Finset ℕ :=
  Finset.univ.image (blockIndex p)

private theorem phaseBlock_mem (p : ℕ) (a : Fin p) :
    blockIndex p a ∈ phaseBlock p := by
  classical
  exact Finset.mem_image.mpr ⟨a, Finset.mem_univ _, rfl⟩

private theorem phaseBlock_sum (p : ℕ) :
    (∑ n ∈ phaseBlock p, sourceWeight n) =
      ∑ a : Fin p, sourceWeight (blockIndex p a) := by
  classical
  unfold phaseBlock
  rw [Finset.sum_image]
  intro a _ b _ h
  exact blockIndex_injective p h

private theorem sourceWeight_nonneg (n : ℕ) : 0 ≤ sourceWeight n := by
  unfold sourceWeight
  positivity

private theorem finite_union_weight_le {α β : Type*}
    [DecidableEq α] [DecidableEq β]
    (s : Finset α) (f : α → Finset β) (w : β → ℝ)
    (hw : ∀ b, 0 ≤ w b) :
    (∑ b ∈ s.biUnion f, w b) ≤ ∑ a ∈ s, ∑ b ∈ f a, w b := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | @insert a s ha ih =>
    rw [Finset.biUnion_insert, Finset.sum_insert ha]
    have hjoin :
        (∑ b ∈ f a ∪ s.biUnion f, w b) ≤
          (∑ b ∈ f a, w b) + (∑ b ∈ s.biUnion f, w b) := by
      let t : Finset β := s.biUnion f
      have hdis : Disjoint (f a) (t \ f a) := by
        apply Finset.disjoint_left.mpr
        intro b hb hbt
        exact (Finset.mem_sdiff.mp hbt).2 hb
      have heq : f a ∪ t = f a ∪ (t \ f a) := by
        ext b
        simp only [Finset.mem_union, Finset.mem_sdiff]
        tauto
      rw [heq, Finset.sum_union hdis]
      exact add_le_add_left
        (Finset.sum_le_sum_of_subset_of_nonneg
          (Finset.sdiff_subset) (by intro b _ _; exact hw b)) _
    exact hjoin.trans (add_le_add_left ih _)

private def primeCover (N : ℕ) : Finset ℕ :=
  (Finset.range (N + 1)).biUnion (fun p =>
    if Nat.Prime p then phaseBlock p else ∅)

private theorem activeBlock_subset_primeCover (N : ℕ) :
    activeBlock N ⊆ primeCover N := by
  classical
  intro n hn
  rcases (Finset.mem_filter.mp hn).2 with ⟨p, hp, a, hna⟩
  have hN : n ≤ N := (Finset.mem_Icc.mp (Finset.mem_filter.mp hn).1).2
  have hfact : p + 1 ≤ (p + 1).factorial := Nat.self_le_factorial _
  have hpN : p ≤ N := by
    dsimp [blockIndex] at hna
    omega
  unfold primeCover
  apply Finset.mem_biUnion.mpr
  refine ⟨p, Finset.mem_range.mpr (by omega), ?_⟩
  simp only [if_pos hp]
  exact hna ▸ phaseBlock_mem p a

private theorem activeBlock_mass_le_phaseMass (N : ℕ) :
    sourceWeightBudget (activeBlock N) ≤
      ∑ p ∈ Finset.range (N + 1),
        if hp : Nat.Prime p then
          ∑ a : Fin p, sourceWeight (blockIndex p a)
        else 0 := by
  classical
  unfold sourceWeightBudget
  calc
    (∑ n ∈ activeBlock N, sourceWeight n) ≤
        ∑ n ∈ primeCover N, sourceWeight n := by
      apply Finset.sum_le_sum_of_subset_of_nonneg
      · exact activeBlock_subset_primeCover N
      · intro n _ _
        exact sourceWeight_nonneg n
    _ ≤ ∑ p ∈ Finset.range (N + 1),
        ∑ n ∈ (if Nat.Prime p then phaseBlock p else ∅), sourceWeight n := by
      exact finite_union_weight_le _ _ _ sourceWeight_nonneg
    _ = _ := by
      apply Finset.sum_congr rfl
      intro p _
      by_cases hp : Nat.Prime p
      · simp only [if_pos hp]
        exact phaseBlock_sum p
      · simp [hp]

/-! ### A purely rational geometric majorant of the factorial tail -/

private def tailTerm (p : ℕ) : ℝ :=
  if 7 ≤ p then (p : ℝ) / (100 * (3 : ℝ) ^ (p - 7)) else 0

private def tailPotential (p : ℕ) : ℝ :=
  ((6 : ℝ) * p + 3) / (400 * (3 : ℝ) ^ (p - 7))

private theorem tailTerm_nonneg (p : ℕ) : 0 ≤ tailTerm p := by
  unfold tailTerm
  split_ifs <;> positivity

private theorem tailPotential_nonneg (p : ℕ) : 0 ≤ tailPotential p := by
  unfold tailPotential
  positivity

private theorem tailStep (m : ℕ) :
    tailTerm (7 + m) =
      tailPotential (7 + m) - tailPotential (7 + m + 1) := by
  have h7 : 7 ≤ 7 + m := by omega
  have hpow1 : 7 + m - 7 = m := by omega
  have hpow2 : 7 + m + 1 - 7 = m + 1 := by omega
  unfold tailTerm tailPotential
  rw [if_pos h7, hpow1, hpow2, pow_succ]
  have h3 : (3 : ℝ) ^ m ≠ 0 := by positivity
  field_simp
  push_cast
  ring

private theorem tailBelowSeven :
    (∑ p ∈ Finset.range 7, tailTerm p) = 0 := by
  apply Finset.sum_eq_zero
  intro p hp
  have h : p < 7 := Finset.mem_range.mp hp
  simp [tailTerm, show ¬ 7 ≤ p by omega]

private theorem tailClosed (m : ℕ) :
    (∑ p ∈ Finset.range (7 + m), tailTerm p) =
      (9 : ℝ) / 80 - tailPotential (7 + m) := by
  induction m with
  | zero =>
      have h : tailPotential 7 = (9 : ℝ) / 80 := by
        norm_num [tailPotential]
      simpa [h] using tailBelowSeven
  | succ m ih =>
      have heq : 7 + (m + 1) = 7 + m + 1 := by omega
      rw [heq, Finset.sum_range_succ, ih, tailStep]
      ring

private theorem tailSum_le (N : ℕ) :
    (∑ p ∈ Finset.range N, tailTerm p) ≤ (9 : ℝ) / 80 := by
  by_cases hn : 7 ≤ N
  · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le hn
    rw [tailClosed]
    exact sub_le_self _ (tailPotential_nonneg _)
  · have hzero : ∑ p ∈ Finset.range N, tailTerm p = 0 := by
      apply Finset.sum_eq_zero
      intro p hp
      have hlt : p < 7 := (Finset.mem_range.mp hp).trans (by omega)
      simp [tailTerm, show ¬ 7 ≤ p by omega]
    rw [hzero]
    norm_num

private theorem factorial_growth (m : ℕ) :
    (40000 : ℝ) * (9 : ℝ) ^ m ≤ ((8 + m).factorial : ℝ) := by
  have hh : 40000 * 9 ^ m ≤ (8 + m).factorial := by
    calc
      40000 * 9 ^ m ≤ (8 : ℕ).factorial * 9 ^ m := by
        apply Nat.mul_le_mul_right
        norm_num
      _ = (8 : ℕ).factorial * (8 + 1) ^ m := by norm_num
      _ ≤ (8 + m).factorial := Nat.factorial_mul_pow_le_factorial
  exact_mod_cast hh

private theorem factorial_sqrt_growth (m : ℕ) :
    (200 : ℝ) * (3 : ℝ) ^ m ≤ Real.sqrt (((8 + m).factorial : ℝ)) := by
  have hfact : (40000 : ℝ) * (9 : ℝ) ^ m ≤
      ((8 + m).factorial : ℝ) := factorial_growth m
  have hnonneg : 0 ≤ Real.sqrt (((8 + m).factorial : ℝ)) :=
    Real.sqrt_nonneg _
  have hsquare : (Real.sqrt (((8 + m).factorial : ℝ))) ^ 2 =
      ((8 + m).factorial : ℝ) := Real.sq_sqrt (by positivity)
  have hpow : ((200 : ℝ) * (3 : ℝ) ^ m) ^ 2 =
      (40000 : ℝ) * (9 : ℝ) ^ m := by
    simp [mul_pow, ← pow_mul, ← mul_pow]
    norm_num
  have hleft : 0 ≤ (200 : ℝ) * (3 : ℝ) ^ m := by positivity
  nlinarith [hfact, hsquare, hpow]

private theorem blockIndex_sqrt_lower {p : ℕ} (hp : 7 ≤ p) (a : Fin p) :
    (200 : ℝ) * (3 : ℝ) ^ (p - 7) ≤
      Real.sqrt (blockIndex p a : ℝ) := by
  have hnum : (p + 1).factorial ≤ blockIndex p a := by
    dsimp [blockIndex]
    omega
  have hcast : ((p + 1).factorial : ℝ) ≤ (blockIndex p a : ℝ) := by
    exact_mod_cast hnum
  have hroot : Real.sqrt ((p + 1).factorial : ℝ) ≤
      Real.sqrt (blockIndex p a : ℝ) := Real.sqrt_le_sqrt hcast
  have hp' : 8 + (p - 7) = p + 1 := by omega
  simpa only [hp'] using
    (factorial_sqrt_growth (p - 7)).trans hroot

private theorem sourceWeight_block_le_tail {p : ℕ} (hp : 7 ≤ p)
    (a : Fin p) :
    sourceWeight (blockIndex p a) ≤
      1 / (100 * (3 : ℝ) ^ (p - 7)) := by
  have hm : |moebiusReal (blockIndex p a)| ≤ 1 :=
    abs_moebiusReal_le_one _
  have hr := blockIndex_sqrt_lower hp a
  have hs : 0 < Real.sqrt (blockIndex p a : ℝ) := by
    apply Real.sqrt_pos.2
    exact_mod_cast (by
      have h : 0 < (p + 1).factorial := Nat.factorial_pos _
      dsimp [blockIndex]
      omega : 0 < blockIndex p a)
  have hbound : (2 : ℝ) / Real.sqrt (blockIndex p a : ℝ) ≤
      1 / (100 * (3 : ℝ) ^ (p - 7)) := by
    have he : (0 : ℝ) < 100 * (3 : ℝ) ^ (p - 7) := by positivity
    apply (div_le_div_iff₀ hs he).2
    nlinarith [hr]
  have hmu : 0 ≤ |moebiusReal (blockIndex p a)| := abs_nonneg _
  unfold sourceWeight
  have hfirst : |moebiusReal (blockIndex p a)| *
      (2 * (Real.sqrt (blockIndex p a : ℝ))⁻¹) ≤
      (2 : ℝ) / Real.sqrt (blockIndex p a : ℝ) := by
    have h2 : 0 ≤ (2 : ℝ) * (Real.sqrt (blockIndex p a : ℝ))⁻¹ := by
      positivity
    have hc := mul_nonneg (sub_nonneg.mpr hm) h2
    rw [div_eq_mul_inv]
    nlinarith
  exact hfirst.trans hbound

private theorem phaseBlock_tail_mass {p : ℕ} (hp : 7 ≤ p) :
    (∑ a : Fin p, sourceWeight (blockIndex p a)) ≤ tailTerm p := by
  have hb : ∀ a : Fin p, sourceWeight (blockIndex p a) ≤
      1 / (100 * (3 : ℝ) ^ (p - 7)) :=
    sourceWeight_block_le_tail hp
  calc
    (∑ a : Fin p, sourceWeight (blockIndex p a)) ≤
        ∑ _a : Fin p, (1 : ℝ) / (100 * (3 : ℝ) ^ (p - 7)) := by
      exact Finset.sum_le_sum (fun a _ => hb a)
    _ = tailTerm p := by
      simp [tailTerm, hp, nsmul_eq_mul, div_eq_mul_inv]
      ring

/-! ### Exact small Möbius values -/

private theorem phaseBlock_two_mass :
    (∑ a : Fin 2, sourceWeight (blockIndex 2 a)) = 0 := by
  -- Both original integers, 8 and 9, are squareful.
  norm_num [sourceWeight, blockIndex, moebiusReal,
    ArithmeticFunction.moebius]

private theorem phaseBlock_three_mass :
    (∑ a : Fin 3, sourceWeight (blockIndex 3 a)) =
      2 * (Real.sqrt (26 : ℝ))⁻¹ := by
  -- Original indices 26,27,28 have Möbius coefficients +1,0,0.
  norm_num [sourceWeight, blockIndex, moebiusReal,
    ArithmeticFunction.moebius]

private theorem phaseBlock_five_mass :
    (∑ a : Fin 5, sourceWeight (blockIndex 5 a)) =
      2 * (Real.sqrt (723 : ℝ))⁻¹ := by
  -- Original indices 722..726 have Möbius coefficients 0,+1,0,0,0.
  norm_num [sourceWeight, blockIndex, moebiusReal,
    ArithmeticFunction.moebius]

private theorem phaseBlock_three_le :
    (∑ a : Fin 3, sourceWeight (blockIndex 3 a)) ≤ (2 : ℝ) / 5 := by
  rw [phaseBlock_three_mass]
  have h : (5 : ℝ) ≤ Real.sqrt (26 : ℝ) := by
    nlinarith [Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 26),
      Real.sqrt_nonneg (26 : ℝ)]
  have hs : (0 : ℝ) < Real.sqrt 26 := Real.sqrt_pos.2 (by norm_num)
  apply (div_le_div_iff₀ hs (by norm_num : (0 : ℝ) < 5)).2
  nlinarith

private theorem phaseBlock_five_le :
    (∑ a : Fin 5, sourceWeight (blockIndex 5 a)) ≤ (1 : ℝ) / 13 := by
  rw [phaseBlock_five_mass]
  have h : (26 : ℝ) ≤ Real.sqrt (723 : ℝ) := by
    nlinarith [Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 723),
      Real.sqrt_nonneg (723 : ℝ)]
  have hs : (0 : ℝ) < Real.sqrt 723 := Real.sqrt_pos.2 (by norm_num)
  apply (div_le_div_iff₀ hs (by norm_num : (0 : ℝ) < 13)).2
  nlinarith

private theorem primePhaseMass_le_small_add_tail (p : ℕ) :
    (if hp : Nat.Prime p then
        ∑ a : Fin p, sourceWeight (blockIndex p a) else 0) ≤
      (if p = 3 then (2 : ℝ) / 5 else 0) +
      (if p = 5 then (1 : ℝ) / 13 else 0) + tailTerm p := by
  by_cases hp : Nat.Prime p
  · simp only [dif_pos hp]
    by_cases hbig : 7 ≤ p
    · have h := phaseBlock_tail_mass hbig
      simp [hbig, show p ≠ 3 by omega, show p ≠ 5 by omega] at *
      exact h
    · have hp2 : 2 ≤ p := hp.two_le
      have hp6 : p ≤ 6 := by omega
      have hcases : p = 2 ∨ p = 3 ∨ p = 5 := by
        interval_cases p <;> norm_num at hp ⊢
      rcases hcases with htwo | hthree | hfive
      · subst p
        simpa [tailTerm] using phaseBlock_two_mass
      · subst p
        simpa [tailTerm] using phaseBlock_three_le
      · subst p
        simpa [tailTerm] using phaseBlock_five_le
  · simp only [dif_neg hp]
    have htail := tailTerm_nonneg p
    split_ifs <;> positivity

private theorem primeCoverMass_bound (N : ℕ) :
    (∑ p ∈ Finset.range (N + 1),
      if hp : Nat.Prime p then
        ∑ a : Fin p, sourceWeight (blockIndex p a) else 0) ≤
      (2 : ℝ) / 5 + 1 / 13 + 9 / 80 := by
  have hsum := Finset.sum_le_sum
    (s := Finset.range (N + 1))
    (fun p _ => primePhaseMass_le_small_add_tail p)
  have ht := tailSum_le (N + 1)
  have hsmall3 :
      (∑ p ∈ Finset.range (N + 1),
        if p = 3 then (2 : ℝ) / 5 else 0) ≤ (2 : ℝ) / 5 := by
    rw [Finset.sum_ite_eq']
    split_ifs <;> norm_num
  have hsmall5 :
      (∑ p ∈ Finset.range (N + 1),
        if p = 5 then (1 : ℝ) / 13 else 0) ≤ (1 : ℝ) / 13 := by
    rw [Finset.sum_ite_eq']
    split_ifs <;> norm_num
  simp_rw [Finset.sum_add_distrib] at hsum
  linarith

/-- The ORIGINAL missing arithmetic mass is now supplied by explicit
small Möbius values, finite prime-fiber covering and a rational factorial
tail.  No RH premise and no random-sign input occurs in this statement. -/
theorem factorialBlockArithmeticWeightBound :
    FactorialBlockArithmeticWeightBound := by
  intro N
  change sourceWeightBudget (activeBlock N) ≤ (3 : ℝ) / 5
  have hc := activeBlock_mass_le_phaseMass N
  have hm := primeCoverMass_bound N
  have hn : (2 : ℝ) / 5 + 1 / 13 + 9 / 80 ≤ (3 : ℝ) / 5 := by
    norm_num
  exact hc.trans (hm.trans hn)

/-- The full unconditional (mathematically source-correct) energy budget.
Verification remains NOT_RUN at the exact source blob. -/
theorem uniform_energy_factorialBlock (T : ℝ) (hT : 0 ≤ T) :
    blockEnergy T ≤ (9 : ℝ) / 25 * T :=
  blockEnergy_le_nine_twentyfifths_of_weightBound
    factorialBlockArithmeticWeightBound T hT

/-- The sparse block has every-positive-rate energy unconditionally,
without providing the still-open dense all-positive-rate supplier. -/
theorem uniform_energy_factorialBlock_allRate :
    ∀ δ : ℝ, 0 < δ → ∃ Cδ : ℝ, 0 ≤ Cδ ∧
      ∀ j : ℕ,
      blockEnergy ((j : ℝ) * Real.log 2) ≤
        Cδ * (2 : ℝ) ^ (δ * (j : ℝ)) :=
  block_allRate_of_weightBound factorialBlockArithmeticWeightBound

end GRWTSK.NumberTheory.FactorialPrimeFiberUniformEnergy
