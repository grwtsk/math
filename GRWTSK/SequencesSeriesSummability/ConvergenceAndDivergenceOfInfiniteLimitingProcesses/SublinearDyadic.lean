import Mathlib.Analysis.Asymptotics.Defs
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Data.Nat.Find
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Algebra.Order.Ring.Star

/-!
Research direction: grwtsk contributors.
Authored formalization of the supplied mathematical argument, with ChatGPT assistance.
Mathlib and inherited results retain their authorship and licenses.
Status: proof source prepared; a successful pinned Lean kernel replay is required.
This file neither assumes nor proves the unresolved all-depth arithmetic bound.
-/

noncomputable section
open scoped BigOperators Topology
open Filter
namespace GRWTSK.Analysis.SublinearDyadic

/-- The actual epsilon definition of an upper sublinear budget. Nonnegativity is
separate, so callers cannot discard a signed lower error without noticing. -/
def UpperSublinear (f : ℕ → ℝ) : Prop :=
  ∀ ε : ℝ, 0 < ε → ∃ n₀ : ℕ, ∀ n : ℕ, n₀ ≤ n → f n ≤ ε * (n : ℝ)

/-- On nonnegative sequences this is precisely Mathlib's little-o relation. -/
theorem upperSublinear_iff_isLittleO (f : ℕ → ℝ) (hf : ∀ n, 0 ≤ f n) :
    UpperSublinear f ↔ Asymptotics.IsLittleO Filter.atTop f (fun n : ℕ => (n : ℝ)) := by
  constructor
  · intro h
    apply Asymptotics.IsLittleO.of_bound
    intro ε hε
    obtain ⟨n₀, hn₀⟩ := h ε hε
    filter_upwards [Filter.eventually_ge_atTop n₀] with n hn
    simpa only [Real.norm_eq_abs, abs_of_nonneg (hf n),
      abs_of_nonneg (by positivity : (0 : ℝ) ≤ (n : ℝ))] using hn₀ n hn
  · intro h ε hε
    have he := h.def hε
    obtain ⟨n₀, hn₀⟩ := Filter.eventually_atTop.1 he
    refine ⟨n₀, ?_⟩
    intro n hn
    simpa only [Real.norm_eq_abs, abs_of_nonneg (hf n),
      abs_of_nonneg (by positivity : (0 : ℝ) ≤ (n : ℝ))] using hn₀ n hn

theorem UpperSublinear.mono {f g : ℕ → ℝ} (hg : UpperSublinear g)
    (hfg : ∀ n, f n ≤ g n) : UpperSublinear f := by
  intro ε hε
  obtain ⟨n₀, hn₀⟩ := hg ε hε
  exact ⟨n₀, fun n hn => (hfg n).trans (hn₀ n hn)⟩

theorem UpperSublinear.add {f g : ℕ → ℝ}
    (hf : UpperSublinear f) (hg : UpperSublinear g) :
    UpperSublinear (fun n => f n + g n) := by
  intro ε hε
  obtain ⟨a, ha⟩ := hf (ε/2) (by linarith)
  obtain ⟨b, hb⟩ := hg (ε/2) (by linarith)
  refine ⟨max a b, ?_⟩
  intro n hn
  have h₁ := ha n ((le_max_left a b).trans hn)
  have h₂ := hb n ((le_max_right a b).trans hn)
  linarith

/-- Absorb a fixed initial cost. The constant may depend on epsilon, not on n. -/
theorem upperSublinear_of_affine_bounds (f : ℕ → ℝ)
    (h : ∀ ε : ℝ, 0 < ε → ∃ C : ℝ, 0 ≤ C ∧
      ∀ n : ℕ, 1 ≤ n → f n ≤ C + ε * (n : ℝ)) :
    UpperSublinear f := by
  intro ε hε
  obtain ⟨C, hC, hbound⟩ := h (ε/2) (by linarith)
  obtain ⟨n₀, hn₀⟩ := exists_nat_ge (2*C/ε)
  refine ⟨max 1 n₀, ?_⟩
  intro n hn
  have hn1 : 1 ≤ n := (le_max_left 1 n₀).trans hn
  have hn0 : n₀ ≤ n := (le_max_right 1 n₀).trans hn
  have hreal : 2*C/ε ≤ (n : ℝ) := hn₀.trans (by exact_mod_cast hn0)
  have hc : 2*C ≤ (n : ℝ)*ε := (div_le_iff₀ hε).mp hreal
  have ht := hbound n hn1
  nlinarith

lemma nat_le_two_pow (n : ℕ) : n ≤ 2^n := by
  induction n with
  | zero => norm_num
  | succ n ih =>
      rw [pow_succ]
      have hp : 1 ≤ 2^n := Nat.one_le_pow n 2 (by norm_num)
      omega

/-- A covering dyadic scale costs at most a factor two. -/
theorem dyadic_cover (n : ℕ) (hn : 1 ≤ n) :
    ∃ j : ℕ, n ≤ 2^j ∧ 2^j ≤ 2*n := by
  have hex : ∃ j : ℕ, n ≤ 2^j := ⟨n, nat_le_two_pow n⟩
  let j := Nat.find hex
  have hj : n ≤ 2^j := Nat.find_spec hex
  refine ⟨j, hj, ?_⟩
  cases he : j with
  | zero => simp only [pow_zero]; omega
  | succ k =>
      have hk : ¬ n ≤ 2^k := Nat.find_min hex (by dsimp [j] at he ⊢; omega)
      simp only [pow_succ]
      omega

/-- Finite dyadic prefix cost. Nothing is inferred from finitely many tests. -/
theorem dyadic_iteration (u loss : ℕ → ℝ)
    (step : ∀ n, 1 ≤ n → u (2*n) ≤ u n + loss n) :
    ∀ J : ℕ, u (2^J) ≤ u 1 + ∑ j ∈ Finset.range J, loss (2^j) := by
  intro J
  induction J with
  | zero => simp
  | succ J ih =>
      have hp : 1 ≤ 2^J := Nat.one_le_pow J 2 (by norm_num)
      have hs := step (2^J) hp
      rw [pow_succ, Nat.mul_comm (2^J) 2, Finset.sum_range_succ]
      linarith

lemma prefix_le (loss : ℕ → ℝ) (hpos : ∀ n, 0 ≤ loss n) {J K : ℕ}
    (hJK : J ≤ K) :
    (∑ j ∈ Finset.range J, loss (2^j)) ≤ ∑ j ∈ Finset.range K, loss (2^j) := by
  exact Finset.sum_le_sum_of_subset_of_nonneg (Finset.range_mono hJK)
    (fun j _ _ => hpos (2^j))

/-- The tail bound is used only past its declared threshold; the whole head is retained. -/
theorem dyadic_tail_budget (loss : ℕ → ℝ) (hpos : ∀ n, 0 ≤ loss n)
    (ε : ℝ) (hε : 0 ≤ ε) (K : ℕ)
    (htail : ∀ n, K ≤ n → loss n ≤ ε*(n : ℝ)) :
    ∀ J : ℕ, (∑ j ∈ Finset.range J, loss (2^j)) ≤
      (∑ j ∈ Finset.range K, loss (2^j)) + ε*(2 : ℝ)^J := by
  intro J
  induction J with
  | zero =>
      simp only [Finset.range_zero, Finset.sum_empty, pow_zero, mul_one]
      exact add_nonneg (Finset.sum_nonneg (fun j _ => hpos (2^j))) hε
  | succ J ih =>
      by_cases hJK : J < K
      · have hp := prefix_le loss hpos (show J+1 ≤ K by omega)
        exact hp.trans (le_add_of_nonneg_right (mul_nonneg hε (by positivity)))
      · have hK : K ≤ 2^J := (by omega : K ≤ J).trans (nat_le_two_pow J)
        have hs := htail (2^J) hK
        simp only [Nat.cast_pow, Nat.cast_ofNat] at hs
        rw [Finset.sum_range_succ, pow_succ]
        linarith

/-- An exact increasing family with a sublinear dyadic loss has sublinear log growth.
This is the universal induction theorem, not the missing arithmetic step estimate. -/
theorem upperSublinear_of_doubling (u loss : ℕ → ℝ)
    (hu : ∀ n, 0 ≤ u n) (hmono : Monotone u)
    (hpos : ∀ n, 0 ≤ loss n) (hloss : UpperSublinear loss)
    (step : ∀ n, 1 ≤ n → u (2*n) ≤ u n + loss n) :
    UpperSublinear u := by
  apply upperSublinear_of_affine_bounds
  intro ε hε
  obtain ⟨K, hK⟩ := hloss (ε/2) (by linarith)
  let C := u 1 + ∑ j ∈ Finset.range K, loss (2^j)
  refine ⟨C, add_nonneg (hu 1) (Finset.sum_nonneg (fun j _ => hpos (2^j))), ?_⟩
  intro n hn
  obtain ⟨J, hlow, hupp⟩ := dyadic_cover n hn
  have hiter := dyadic_iteration u loss step J
  have hsum := dyadic_tail_budget loss hpos (ε/2) (by linarith) K hK J
  have hpow : (2 : ℝ)^J ≤ 2*(n : ℝ) := by exact_mod_cast hupp
  have hmn := hmono hlow
  dsimp [C]
  nlinarith

/-- Multiplicative norm return, with the complete relative Hankel budget retained. -/
theorem sublinear_log_of_doubling (A β : ℕ → ℝ)
    (hA : ∀ n, 1 ≤ A n) (hmono : Monotone A) (hβ : ∀ n, 0 ≤ β n)
    (step : ∀ n, 1 ≤ n → A (2*n) ≤ (1+β n)*A n)
    (hbudget : UpperSublinear (fun n => Real.log (1+β n))) :
    UpperSublinear (fun n => Real.log (A n)) := by
  apply upperSublinear_of_doubling (fun n => Real.log (A n))
    (fun n => Real.log (1+β n))
  · intro n; exact Real.log_nonneg (hA n)
  · intro n m hnm
    exact Real.log_le_log (lt_of_lt_of_le (by norm_num) (hA n)) (hmono hnm)
  · intro n; exact Real.log_nonneg (by linarith [hβ n])
  · exact hbudget
  · intro n hn
    have hl := Real.log_le_log
      (lt_of_lt_of_le (by norm_num) (hA (2*n))) (step n hn)
    rw [Real.log_mul (ne_of_gt (by linarith [hβ n]))
      (ne_of_gt (lt_of_lt_of_le (by norm_num) (hA n)))] at hl
    linarith

end GRWTSK.Analysis.SublinearDyadic
