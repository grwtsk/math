import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiDyadicPrimeBias
import Lean.Elab.Tactic.Omega
import Mathlib.Tactic.Ring

/-!
# Detecting runs of doubling-block violations on perfect-power samples

A run starting at `N` with all offsets `h` satisfying `h^(2*d) ≤ N^(2*d-1)`
contains a perfect `d`-th power for every sufficiently large `N`. The integer
form avoids rounding a real power. Specializing the sampling lemma to the
ordinary-prime harmonic prefix transfers any cofinal family of such positive
runs to cofinal strict violations on the sampled grid. The analytic assertion
supplying those runs is a hypothesis of this specialization.
-/

namespace GRWTSK.XiDyadicBlockSampling

/-- An integer bound for the gap between consecutive powers. -/
theorem consecutive_power_le (k n : ℕ) :
    (n+1)^(k+1) ≤ n^(k+1) + (k+1)*(n+1)^k := by
  induction k with
  | zero => simp
  | succ k ih =>
    calc
      (n+1)^(k+1+1) = (n+1)^(k+1) * (n+1) := pow_succ _ _
      _ ≤ (n^(k+1) + (k+1)*(n+1)^k) * (n+1) := Nat.mul_le_mul_right _ ih
      _ = n^(k+1+1) + (k+1)*(n+1)^(k+1) + n^(k+1) := by rw [pow_succ n (k+1), pow_succ (n+1) k]; ring
      _ ≤ n^(k+1+1) + (k+1)*(n+1)^(k+1) + (n+1)^(k+1) :=
        Nat.add_le_add_left (Nat.pow_le_pow_left (Nat.le_succ n) _) _
      _ = n^(k+1+1) + (k+1+1)*(n+1)^(k+1) := by ring

/-- The forward distance to a degree-`k+1` power is bounded explicitly.
Raising the gap to its degree keeps the comparison entirely in naturals. -/
theorem exists_power_gap (k N : ℕ) (hN : 0 < N) :
    ∃ r : ℕ, N < r^(k+1) ∧
      (r^(k+1)-N)^(k+1) ≤ ((k+1)*2^k)^(k+1)*N^k := by
  have hex : ∃ n : ℕ, N < (n+1)^(k+1) :=
    ⟨N, (Nat.lt_succ_self N).trans_le (Nat.le_pow (Nat.succ_pos k))⟩
  let n := Nat.find hex
  have hupper : N < (n+1)^(k+1) := Nat.find_spec hex
  have hn : 0 < n := by
    by_contra! hz
    have he : n = 0 := by omega
    simp [he] at hupper
    omega
  have hlower : n^(k+1) ≤ N := by
    have hprev := Nat.find_min hex (m := n-1) (show n-1 < n by omega)
    have hsucc : n-1+1=n := by omega
    simpa [hsucc] using Nat.le_of_not_gt hprev
  have hgap : (n+1)^(k+1)-N ≤ ((k+1)*2^k)*n^k := by
    have h₁ := consecutive_power_le k n
    have h₂ : (n+1)^k ≤ 2^k*n^k := by
      rw [← mul_pow]
      exact Nat.pow_le_pow_left (by omega) k
    have h₃ := Nat.mul_le_mul_left (k+1) h₂
    rw [← Nat.mul_assoc] at h₃
    omega
  refine ⟨n+1, hupper, ?_⟩
  calc
    ((n+1)^(k+1)-N)^(k+1) ≤ (((k+1)*2^k)*n^k)^(k+1) := Nat.pow_le_pow_left hgap _
    _ = ((k+1)*2^k)^(k+1)*(n^(k+1))^k := by
      rw [mul_pow, ← pow_mul, Nat.mul_comm k (k+1), pow_mul]
    _ ≤ ((k+1)*2^k)^(k+1)*N^k :=
      Nat.mul_le_mul_left _ (Nat.pow_le_pow_left hlower _)

/-- For large starting indices a run of width `N^(1-1/(2d))` contains a
strictly later perfect `d`-th power, using only integer comparisons. -/
theorem exists_power_in_run (k N : ℕ)
    (hN : ((k+1)*2^k)^(2*(k+1)) ≤ N) (hpos : 0 < N) :
    ∃ r : ℕ, N < r^(k+1) ∧
      (r^(k+1)-N)^(2*(k+1)) ≤ N^(2*k+1) := by
  obtain ⟨r, hr, hg⟩ := exists_power_gap k N hpos
  refine ⟨r, hr, ?_⟩
  let C := (k+1)*2^k
  change C^(2*(k+1)) ≤ N at hN
  calc
    (r^(k+1)-N)^(2*(k+1)) = ((r^(k+1)-N)^(k+1))^2 := by
      rw [← pow_mul, Nat.mul_comm 2 (k+1)]
    _ ≤ (C^(k+1)*N^k)^2 := Nat.pow_le_pow_left hg 2
    _ = C^(2*(k+1))*N^(2*k) := by
      rw [mul_pow, ← pow_mul, ← pow_mul, Nat.mul_comm 2 (k+1), Nat.mul_comm 2 k]
    _ ≤ N*N^(2*k) := Nat.mul_le_mul_right _ hN
    _ = N^(2*k+1) := by rw [pow_succ, Nat.mul_comm]

/-- A property occurring on arbitrarily late long runs occurs arbitrarily far
along each fixed perfect-power grid. -/
theorem cofinal_power_of_runs (P : ℕ → Prop) (k : ℕ)
    (hruns : ∀ B : ℕ, ∃ N ≥ B, ∀ h : ℕ, h^(2*(k+1)) ≤ N^(2*k+1) → P (N+h)) :
    ∀ R : ℕ, ∃ r ≥ R, P (r^(k+1)) := by
  intro R
  obtain ⟨N, hN, hrun⟩ := hruns (max (R^(k+1)) (((k+1)*2^k)^(2*(k+1))+1))
  have hcut : ((k+1)*2^k)^(2*(k+1))+1 ≤ N := (Nat.le_max_right _ _).trans hN
  obtain ⟨r, hpow, hwidth⟩ := exists_power_in_run k N (by omega) (by omega)
  refine ⟨r, ?_, ?_⟩
  · by_contra! h
    have h₁ : r^(k+1) ≤ R^(k+1) := Nat.pow_le_pow_left h.le _
    have h₂ : R^(k+1) ≤ N := (Nat.le_max_left _ _).trans hN
    omega
  · simpa [Nat.add_sub_of_le hpow.le] using hrun (r^(k+1)-N) hwidth

/-- A cofinal positive-run theorem for the actual ordinary-prime doubling
blocks would force strict sampled violations at every fixed power degree. -/
theorem cofinal_sampled_block_increase (k : ℕ)
    (hruns : ∀ B : ℕ, ∃ N ≥ B, ∀ h : ℕ, h^(2*(k+1)) ≤ N^(2*k+1) →
      XiDyadicPrimeBias.harmonicPrefix (N+h) < XiDyadicPrimeBias.harmonicPrefix (2*(N+h))) :
    ∀ R : ℕ, ∃ r ≥ R, XiDyadicPrimeBias.harmonicPrefix (r^(k+1)) <
      XiDyadicPrimeBias.harmonicPrefix (2*r^(k+1)) :=
  cofinal_power_of_runs
    (fun n ↦ XiDyadicPrimeBias.harmonicPrefix n < XiDyadicPrimeBias.harmonicPrefix (2*n)) k hruns

/-- Eventual descent on the grid precludes cofinal runs of strict increases
at the indicated length scale. -/
theorem no_positive_runs_of_eventual_sampled_descent (k : ℕ)
    (hgrid : ∃ R : ℕ, ∀ r ≥ R,
      XiDyadicPrimeBias.harmonicPrefix (2*r^(k+1)) ≤ XiDyadicPrimeBias.harmonicPrefix (r^(k+1))) :
    ¬ (∀ B : ℕ, ∃ N ≥ B, ∀ h : ℕ, h^(2*(k+1)) ≤ N^(2*k+1) →
      XiDyadicPrimeBias.harmonicPrefix (N+h) < XiDyadicPrimeBias.harmonicPrefix (2*(N+h))) := by
  intro hruns
  obtain ⟨R, hR⟩ := hgrid
  obtain ⟨r, hr, hpos⟩ := cofinal_sampled_block_increase k hruns R
  exact (not_lt_of_ge (hR r hr)) hpos

end GRWTSK.XiDyadicBlockSampling
