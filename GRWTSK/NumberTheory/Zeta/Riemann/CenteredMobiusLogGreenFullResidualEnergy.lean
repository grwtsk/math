/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFiniteExhaustion
import Mathlib.Topology.Algebra.InfiniteSum.Real
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

def greenFullResidualEnergyBound (X : ℕ) : ℝ :=
  (1 + 1 / Real.pi)^2 / (X : ℝ) +
  ((15 / (16 * Real.pi^2)) *
      greenPSeriesC2 * greenPSeriesC2 +
    ((Real.log 2)^2 / Real.pi^2) * greenPSeriesC2) /
      (X : ℝ)^2 +
  ((243 / (16 * Real.pi^4)) *
      greenPSeriesC4 * greenPSeriesC4 +
    (15 / (16 * Real.pi^2)) *
      greenPSeriesC2 * greenPSeriesC2 +
    (9 / (4 * Real.pi^4)) * greenPSeriesC4) /
      (X : ℝ)^4

/-- Any finite set of integer frequencies is contained in a symmetric interval,
so the symmetric finite exhaustion bound controls arbitrary finite sums. -/
theorem greenResidual_any_finset_le
    {X : ℕ} (hX : 2 ≤ X) (s : Finset ℤ) :
    ∑ k ∈ s, (if k = 0 then 0 else ‖greenCenteringResidual X k‖^2) ≤
      greenFullResidualEnergyBound X := by
  let M : ℕ := ∑ k ∈ s, Int.natAbs k
  have hsub :
      s.filter (fun k => k ≠ 0) ⊆
        (Finset.Icc (-(M : ℤ)) (M : ℤ)).erase 0 := by
    intro k hk
    have hks := (Finset.mem_filter.mp hk).1
    have hk0 := (Finset.mem_filter.mp hk).2
    apply Finset.mem_erase.mpr
    refine ⟨hk0, Finset.mem_Icc.mpr ?_⟩
    have habs : Int.natAbs k ≤ M := by
      exact Finset.single_le_sum
        (fun j _ => Nat.zero_le (Int.natAbs j)) hks
    omega
  calc
    ∑ k ∈ s, (if k = 0 then 0 else ‖greenCenteringResidual X k‖^2) =
      ∑ k ∈ s.filter (fun k => k ≠ 0),
        ‖greenCenteringResidual X k‖^2 := by
      rw [Finset.sum_filter]
      apply Finset.sum_congr rfl
      intro k hk
      simp [hk]
    _ ≤ greenSymmetricFrequencyEnergy X M := by
      unfold greenSymmetricFrequencyEnergy
      exact Finset.sum_le_sum_of_subset_of_nonneg hsub
        (fun _ _ _ => sq_nonneg _)
    _ ≤ greenFiniteHybridResidualEnergy X
        (greenFrequencyQuotientCutoff X M) :=
      greenSymmetricFrequencyEnergy_le_hybrid hX
    _ ≤ greenFullResidualEnergyBound X := by
      exact greenFiniteHybridResidualEnergy_le_canonical hX

/-- Summability of the full deterministic residual energy follows from the
uniform bound on arbitrary finite sums. -/
theorem summable_sq_norm_greenCenteringResidual
    {X : ℕ} (hX : 2 ≤ X) :
    Summable (fun k : ℤ =>
      if k = 0 then 0 else ‖greenCenteringResidual X k‖^2) := by
  apply summable_of_sum_le
  · intro k
    split_ifs <;> positivity
  · intro s
    exact greenResidual_any_finset_le hX s

/-- Full-frame deterministic residual energy bound. -/
theorem tsum_sq_norm_greenCenteringResidual_le
    {X : ℕ} (hX : 2 ≤ X) :
    (∑' k : ℤ,
      if k = 0 then 0 else ‖greenCenteringResidual X k‖^2) ≤
      greenFullResidualEnergyBound X := by
  exact Real.tsum_le_of_sum_le
    (fun k => by split_ifs <;> positivity)
    (greenResidual_any_finset_le hX)

/-- The explicit full-frame bound tends to zero at the level of its three
inverse powers. This theorem records the elementary epsilon consequence
without introducing asymptotic notation. -/
theorem greenFullResidualEnergyBound_eventually_small
    {ε : ℝ} (hε : 0 < ε) :
    ∃ X0 : ℕ, ∀ X ≥ X0, 2 ≤ X →
      greenFullResidualEnergyBound X < ε := by
  let A := (1 + 1 / Real.pi)^2
  let B := (15 / (16 * Real.pi^2)) *
      greenPSeriesC2 * greenPSeriesC2 +
    ((Real.log 2)^2 / Real.pi^2) * greenPSeriesC2
  let C := (243 / (16 * Real.pi^4)) *
      greenPSeriesC4 * greenPSeriesC4 +
    (15 / (16 * Real.pi^2)) *
      greenPSeriesC2 * greenPSeriesC2 +
    (9 / (4 * Real.pi^4)) * greenPSeriesC4
  obtain ⟨N, hN⟩ : ∃ N : ℕ, max A (max B C) * 3 / ε < N := by
    exact exists_nat_gt _
  refine ⟨max N 2, ?_⟩
  intro X hX hX2
  unfold greenFullResidualEnergyBound
  have hXr : 0 < (X : ℝ) := by exact_mod_cast hX2
  have hNX : (N : ℝ) ≤ X := by exact_mod_cast (le_trans (le_max_left _ _) hX)
  have hABC : 0 ≤ max A (max B C) := by
    dsimp [A, B, C]
    positivity
  dsimp [A, B, C] at hN ⊢
  have hsmall : max A (max B C) / (X : ℝ) < ε / 3 := by
    apply (div_lt_iff₀ hXr).2
    nlinarith
  have hA : A ≤ max A (max B C) := le_max_left _ _
  have hB : B ≤ max A (max B C) := le_trans (le_max_left _ _) (le_max_right _ _)
  have hC : C ≤ max A (max B C) := le_trans (le_max_right _ _) (le_max_right _ _)
  have hXone : 1 ≤ (X : ℝ) := by exact_mod_cast hX2
  have h2 : B / (X : ℝ)^2 ≤ max A (max B C) / X := by
    apply div_le_div_of_nonneg_right (hB.trans ?_) hXr.le
    nlinarith [sq_nonneg ((X : ℝ) - 1)]
  have h4 : C / (X : ℝ)^4 ≤ max A (max B C) / X := by
    have hxpow : (X : ℝ) ≤ X^4 := by nlinarith [sq_nonneg ((X : ℝ)^2 - 1)]
    positivity
  nlinarith

end GRWTSK.RiemannHypothesis
