/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFirstPrimeDyadicReadout

/-!
# Finite forward dyadic tower on the original Weil window

At index `n` the tower sums positive exponents `k` at forward lag
`(k - n) * log 2`. The support cutoff gives a finite sum for each integer
`n` and an exact head-tail recurrence. Estimates for the signed window
also include the separate signed prime-3 atom.

SOURCE_PROOF_CANDIDATE. The finite reindexing uses the forward orientation
on complex tests. Compare PTG.1–3 in `PrimeLaplaceDirichletTwistedGreen.md`.
-/

set_option autoImplicit false
noncomputable section
open Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow

open SourcePrimeCorrelation

private def dyadicTowerCutoff (A : ℝ) (n : ℤ) : ℕ :=
  ⌈2 * A / Real.log 2⌉₊ + n.toNat

private def dyadicTowerPartial {A : ℝ} (a : ℂ) (f : WindowTest A) (n : ℤ) (M : ℕ) : ℂ :=
  ∑ k ∈ Finset.range M, dyadicRatio a ^ (k + 1) *
    correlation f.1 ((((k : ℤ) + 1 - n : ℤ) : ℝ) * Real.log 2)

/-- Sum all nonzero positive-exponent terms of the source tower at this index. -/
def dyadicForwardTower {A : ℝ} (a : ℂ) (f : WindowTest A) (n : ℤ) : ℂ :=
  dyadicTowerPartial a f n (dyadicTowerCutoff A n)

private theorem windowCorrelation_eq_zero {A lag : ℝ} (f : WindowTest A)
    (h : 2 * A ≤ lag) : correlation f.1 lag = 0 :=
  correlation_eq_zero_of_cutoff
    (fun _ ht => image_eq_zero_of_notMem_tsupport (fun hs => ht (f.2.2.2 hs))) h

private theorem dyadicForwardTower_eq_partial {A : ℝ} (a : ℂ) (f : WindowTest A)
    (n : ℤ) (M : ℕ) (hM : dyadicTowerCutoff A n ≤ M) :
    dyadicForwardTower a f n = dyadicTowerPartial a f n M := by
  unfold dyadicForwardTower dyadicTowerPartial
  apply Finset.sum_subset (Finset.range_mono hM)
  intro k _ hk
  -- Every omitted summand has lag at least the support width.
  have hcut : dyadicTowerCutoff A n ≤ k :=
    Nat.le_of_not_gt (fun h => hk (Finset.mem_range.mpr h))
  have hk' : (⌈2 * A / Real.log 2⌉₊ : ℤ) ≤ (k : ℤ) + 1 - n := by
    have hn := Int.self_le_toNat n
    have hsum : (⌈2 * A / Real.log 2⌉₊ : ℤ) + (n.toNat : ℤ) ≤ (k : ℤ) := by
      unfold dyadicTowerCutoff at hcut
      exact_mod_cast hcut
    omega
  have hlog : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hk'' : (⌈2 * A / Real.log 2⌉₊ : ℝ) ≤ (((k : ℤ) + 1 - n : ℤ) : ℝ) := by
    exact_mod_cast hk'
  have hlag : 2 * A ≤ (((k : ℤ) + 1 - n : ℤ) : ℝ) * Real.log 2 :=
    (div_le_iff₀ hlog).mp ((Nat.le_ceil (2 * A / Real.log 2)).trans hk'')
  rw [windowCorrelation_eq_zero f hlag, mul_zero]

private theorem dyadicTowerPartial_succ {A : ℝ} (a : ℂ) (f : WindowTest A)
    (n : ℤ) (M : ℕ) :
    dyadicTowerPartial a f n (M + 1) =
      dyadicRatio a * correlation f.1 (((1 - n : ℤ) : ℝ) * Real.log 2) +
        dyadicRatio a * dyadicTowerPartial a f (n - 1) M := by
  unfold dyadicTowerPartial
  rw [Finset.sum_range_succ', Finset.mul_sum, add_comm]
  simp only [Nat.cast_zero, zero_add, pow_one]
  apply congrArg (dyadicRatio a *
    correlation f.1 (((1 - n : ℤ) : ℝ) * Real.log 2) + ·)
  apply Finset.sum_congr rfl
  intro k _
  have hlag : ((k + 1 : ℕ) : ℤ) + 1 - n = (k : ℤ) + 1 - (n - 1) := by
    push_cast
    omega
  rw [hlag, pow_succ' (dyadicRatio a) (k + 1), mul_assoc]

/-- The source tower itself supplies the recurrence for every original test. -/
theorem dyadicForwardTower_step {A : ℝ} (a : ℂ) (f : WindowTest A) (n : ℤ) :
    dyadicForwardTower a f n =
      dyadicRatio a * correlation f.1 (((1 - n : ℤ) : ℝ) * Real.log 2) +
        dyadicRatio a * dyadicForwardTower a f (n - 1) := by
  let M := max (dyadicTowerCutoff A n) (dyadicTowerCutoff A (n - 1))
  have hn : dyadicTowerCutoff A n ≤ M + 1 := calc
    _ ≤ M := le_max_left _ _
    _ ≤ M + 1 := Nat.le_succ M
  have hprev : dyadicTowerCutoff A (n - 1) ≤ M := le_max_right _ _
  rw [dyadicForwardTower_eq_partial a f n (M + 1) hn,
    dyadicForwardTower_eq_partial a f (n - 1) M hprev]
  exact dyadicTowerPartial_succ a f n M

/-- The exact row uses the same forward correlation as the signed prime atom. -/
theorem dyadicForwardBoundary_eq {A : ℝ} (a : ℂ) (ha : ‖a‖ = 1)
    (f : WindowTest A) (n : ℤ) :
    dyadicBoundary a (dyadicForwardTower a f) n =
      2 * dyadicRatio a * correlation f.1 (((1 - n : ℤ) : ℝ) * Real.log 2) -
        correlation f.1 (((-n : ℤ) : ℝ) * Real.log 2) :=
  dyadicBoundary_eq a ha (fun j => correlation f.1 ((j : ℝ) * Real.log 2))
    (dyadicForwardTower a f) (dyadicForwardTower_step a f) n

/-- Ramification at 2 makes the signed prime-2 contribution zero. -/
def dyadicWindowEstimate (a : ℂ) (E : ℝ) (b0 bneg : ℂ) (threeEstimate : ℝ) : ℝ := by
  classical
  exact (if a = 0 then 0 else dyadicSignedEstimate a E b0 bneg) + threeEstimate

def dyadicWindowRadius (a : ℂ) (δ0 δneg ε3 : ℝ) : ℝ := by
  classical
  exact (if a = 0 then 0 else Real.log 2 * (3 / 2 * δ0 + δneg / Real.sqrt 2)) + ε3

/-- Transfer row and prime-3 enclosures on the same test to the literal readout. -/
theorem abs_dyadicWindowEstimate_sub_le {q : ℕ} {A : ℝ}
    (χ : DirichletCharacter ℂ q) (f : WindowTest A)
    (lo : Real.log 4 < 2 * A) (hi : 2 * A ≤ Real.log 5)
    (b0 bneg : ℂ) (δ0 δneg threeEstimate ε3 : ℝ)
    (h0 : χ (2 : ℕ) ≠ 0 →
      ‖b0 - dyadicBoundary (χ (2 : ℕ)) (dyadicForwardTower (χ (2 : ℕ)) f) 0‖ ≤ δ0)
    (hneg : χ (2 : ℕ) ≠ 0 →
      ‖bneg - dyadicBoundary (χ (2 : ℕ)) (dyadicForwardTower (χ (2 : ℕ)) f) (-1)‖ ≤ δneg)
    (h3 : |threeEstimate -
      primeReadout {3} (primeAtom χ⁻¹ (fun n => correlation f.1 (Real.log (n : ℝ))))| ≤ ε3) :
    |dyadicWindowEstimate (χ (2 : ℕ)) (energy f.1) b0 bneg threeEstimate -
      signedWindowValue χ A f.1| ≤ dyadicWindowRadius (χ (2 : ℕ)) δ0 δneg ε3 := by
  by_cases ha : χ (2 : ℕ) = 0
  · unfold dyadicWindowEstimate dyadicWindowRadius
    rw [ite_eq_left ha, ite_eq_left ha, signedWindowValue_eq_dyadic_add_three χ f.1 lo hi, ha]
    simpa [dyadicRatio] using h3
  · have hu : IsUnit ((2 : ℕ) : ZMod q) := by
      by_contra hn
      exact ha (χ.map_nonunit hn)
    have hn : ‖χ (2 : ℕ)‖ = 1 := χ.unit_norm_eq_one hu.unit
    simpa only [dyadicWindowEstimate, dyadicWindowRadius, ite_eq_right ha] using
      abs_dyadic_add_three_estimate_sub_signedWindowValue_le χ f lo hi hn
        (dyadicForwardTower (χ (2 : ℕ)) f) (dyadicForwardTower_step (χ (2 : ℕ)) f)
        b0 bneg δ0 δneg threeEstimate ε3 (h0 ha) (hneg ha) h3

end GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow
