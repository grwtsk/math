import ProperPowerTransport
import ClosedProperPowerPrefix

/-! Genuine finite-to-countable proper-power closed-prefix transport.
Research direction grwtsk contributors; focused construction OpenAI Codex.
No Laurent identification, Ramaré, arithmetic intercept or signed-budget premise. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ProperPowerAssembly
open Finset MeasureTheory Set
open ContinuousResearch.ProperPowerMoments
open ContinuousResearch.ProperPowerTransport
open ContinuousResearch.ClosedProperPowerPrefix
open FormalResearch.RiemannHypothesis.WeightedPrimeMertens
open FormalResearch.RiemannHypothesis.WeightedPrimeAbel

def shiftedInventory (N : ℕ) : Finset (Nat.Primes × ℕ) :=
  (((range (N+1)).subtype Nat.Prime).product (range (N+1))).filter
    (fun pk => pk.1.val ^ (pk.2+2) ≤ N)

theorem mem_shiftedInventory_iff (N : ℕ) (p : Nat.Primes) (k : ℕ) :
    (p,k) ∈ shiftedInventory N ↔ p.val^(k+2) ≤ N := by
  constructor
  · intro h
    exact (mem_filter.mp h).2
  · intro h
    have hpN : p.val ≤ N := by
      have hpk : p.val ≤ p.val^(k+2) := by
        conv_lhs => rw [←pow_one p.val]
        exact Nat.pow_le_pow_right p.property.one_lt.le (by omega)
      exact hpk.trans h
    have hkN : k ≤ N := by
      have hpow := (Nat.lt_pow_self p.property.one_lt (n:=k+2)).le.trans h
      omega
    exact mem_filter.mpr ⟨mem_product.mpr
      ⟨mem_subtype.mpr (mem_range.mpr (Nat.lt_succ_iff.mpr hpN)),
        mem_range.mpr (Nat.lt_succ_iff.mpr hkN)⟩,h⟩

theorem shiftedInventory_onset_iff (t : ℝ) (p : Nat.Primes) (k : ℕ) :
    (p,k) ∈ shiftedInventory ⌊Real.exp t⌋₊ ↔ powerOnset p k ≤ t := by
  rw [mem_shiftedInventory_iff,prime_power_closed_onset_iff t p.property]
  rfl

theorem closedOnsetAtom_zero_outside (t : ℝ) (pk : Nat.Primes × ℕ)
    (h : pk ∉ shiftedInventory ⌊Real.exp t⌋₊) :
    closedOnsetAtom t pk.1 pk.2 = 0 := by
  unfold closedOnsetAtom
  exact if_neg (fun hp => h ((shiftedInventory_onset_iff t pk.1 pk.2).mpr hp))

theorem closedOnsetPrefix_eq_finite_shifted (t : ℝ) :
    closedOnsetPrefix t =
      ∑ pk ∈ shiftedInventory ⌊Real.exp t⌋₊, powerWeight pk.1 pk.2 := by
  unfold closedOnsetPrefix
  rw [tsum_eq_sum (s:=shiftedInventory ⌊Real.exp t⌋₊)
    (fun pk h => closedOnsetAtom_zero_outside t pk h)]
  apply sum_congr rfl
  intro pk h
  exact if_pos ((shiftedInventory_onset_iff t pk.1 pk.2).mp h)

end ContinuousResearch.ProperPowerAssembly
