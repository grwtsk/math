/- Copyright (c) 2026 grwtsk contributors. MIT.
Human direction: grwtsk contributors; OpenAI Codex formalization assistance.
Classical scheduling argument; Mathlib authorship retained. -/
import Mathlib.Data.Finset.Max
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

set_option autoImplicit false
namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling
open scoped BigOperators

def clock (b : ℕ → ℕ) : ℕ → ℕ :=
  Nat.rec 0 (fun n r => r + b n)

@[simp] theorem clock_zero (b : ℕ → ℕ) : clock b 0 = 0 := rfl
@[simp] theorem clock_succ (b : ℕ → ℕ) (n : ℕ) : clock b (n+1) = clock b n + b n := rfl

theorem clock_ge (b : ℕ → ℕ) (hb : ∀ n, 1 ≤ b n) (n : ℕ) : n ≤ clock b n := by
  induction n with
  | zero => simp
  | succ n ih => simp; have := hb n; omega

/-- Service the pinned obligation indices in this exact half-open interval. -/
def serves (b : ℕ → ℕ) (n j : ℕ) : Prop := clock b n ≤ j ∧ j < clock b (n+1)

theorem coverage (b : ℕ → ℕ) (hb : ∀ n, 1 ≤ b n) (j : ℕ) : ∃ n, serves b n j := by
  have hex : ∃ n, j < clock b n := ⟨j+1, by have := clock_ge b hb (j+1); omega⟩
  let k := Nat.find hex
  have hk : j < clock b k := Nat.find_spec hex
  have hk0 : k ≠ 0 := by intro h; simp [h,clock] at hk
  obtain ⟨n, hn⟩ := Nat.exists_eq_succ_of_ne_zero hk0
  have hprev : ¬ j < clock b n := Nat.find_min hex (by omega : n < k)
  rw [hn] at hk
  exact ⟨n, Nat.le_of_not_gt hprev, hk⟩

/-- Divergent work alone gives no coverage for a schedule that always chooses zero. -/
theorem starvation_counterexample :
    (∀ n, n ≤ clock (fun _ => 1) n) ∧ ¬ ∃ n : ℕ, (fun _ : ℕ => 0) n = 1 := by
  exact ⟨clock_ge _ (fun _ => le_rfl), by simp⟩

/-- Credit and quota use integers; exactly one unit of service costs Q credits. -/
def step {m : ℕ} (Q : ℤ) (d p : Fin m → ℤ) (w : Fin m) (i : Fin m) : ℤ :=
  d i + p i - if i = w then Q else 0

theorem maximal_exists {m : ℕ} (hm : 0 < m) (a : Fin m → ℤ) :
    ∃ w, ∀ i, a i ≤ a w := by
  have : NeZero m := ⟨by omega⟩
  obtain ⟨w, _, hw⟩ := Finset.exists_max_image Finset.univ a Finset.univ_nonempty
  exact ⟨w, fun i => hw i (Finset.mem_univ i)⟩

theorem step_sum {m : ℕ} (Q : ℤ) (d p : Fin m → ℤ) (w : Fin m)
    (hd : ∑ i, d i = 0) (hp : ∑ i, p i = Q) : ∑ i, step Q d p w i = 0 := by
  simp [step,Finset.sum_sub_distrib,Finset.sum_add_distrib,hd,hp]

theorem step_lower {m : ℕ} (Q : ℤ) (hQ : 0 < Q) (d p : Fin m → ℤ) (w : Fin m)
    (hd : ∑ i, d i = 0) (hp : ∑ i, p i = Q)
    (hl : ∀ i, -Q ≤ d i) (hn : ∀ i, 0 ≤ p i)
    (hw : ∀ i, d i + p i ≤ d w + p w) : ∀ i, -Q ≤ step Q d p w i := by
  have hmax : 0 ≤ d w + p w := by
    by_contra h
    have hs : (∑ i, (d i + p i)) ≤ 0 := Finset.sum_nonpos (fun i _ => (hw i).trans (by omega))
    simp [Finset.sum_add_distrib,hd,hp] at hs
    omega
  intro i
  by_cases hi : i = w
  · simp [step,hi]; omega
  · simp [step,hi]; have := hl i; have := hn i; omega

theorem upper_from_lower {m : ℕ} (hm : 0 < m) (Q : ℤ) (d : Fin m → ℤ)
    (hd : ∑ i, d i = 0) (hl : ∀ i, -Q ≤ d i) (i : Fin m) :
    d i ≤ ((m : ℤ)-1)*Q := by
  have he := Finset.sum_erase_add (s := Finset.univ) d (Finset.mem_univ i)
  have hs : (∑ _j ∈ Finset.univ.erase i, -Q) ≤ ∑ j ∈ Finset.univ.erase i, d j :=
    Finset.sum_le_sum (fun j _ => hl j)
  have hm' : 1 ≤ m := hm
  simp only [Finset.sum_const, nsmul_eq_mul, Finset.card_erase_of_mem (Finset.mem_univ i),
    Finset.card_univ, Fintype.card_fin, Int.natCast_sub hm', Int.natCast_one] at hs
  rw [hd] at he
  nlinarith

def debt {m : ℕ} (Q : ℤ) (p : ℕ → Fin m → ℤ) (w : ℕ → Fin m) : ℕ → Fin m → ℤ
  := Nat.rec (fun _ => 0)
    (fun n r => step Q r (p n) (w n))
def count {m : ℕ} (w : ℕ → Fin m) (i : Fin m) : ℕ → ℕ
  := Nat.rec 0 (fun n r => r + if i = w n then 1 else 0)

@[simp] theorem debt_zero {m : ℕ} (Q : ℤ) (p : ℕ → Fin m → ℤ) (w : ℕ → Fin m) :
    debt Q p w 0 = fun _ => 0 := rfl
@[simp] theorem debt_succ {m : ℕ} (Q : ℤ) (p : ℕ → Fin m → ℤ) (w : ℕ → Fin m)
    (n : ℕ) : debt Q p w (n+1) = step Q (debt Q p w n) (p n) (w n) := rfl
@[simp] theorem count_zero {m : ℕ} (w : ℕ → Fin m) (i : Fin m) : count w i 0 = 0 := rfl
@[simp] theorem count_succ {m : ℕ} (w : ℕ → Fin m) (i : Fin m) (n : ℕ) :
    count w i (n+1) = count w i n + if i = w n then 1 else 0 := rfl

theorem debt_invariant {m : ℕ} (Q : ℤ) (hQ : 0 < Q) (p : ℕ → Fin m → ℤ)
    (w : ℕ → Fin m) (hp : ∀ n, ∑ i, p n i = Q) (hn : ∀ n i, 0 ≤ p n i)
    (hw : ∀ n i, debt Q p w n i + p n i ≤ debt Q p w n (w n) + p n (w n)) :
    ∀ n, (∑ i, debt Q p w n i = 0) ∧ ∀ i, -Q ≤ debt Q p w n i := by
  intro n
  induction n with
  | zero => simp [debt]; omega
  | succ n ih => exact ⟨step_sum Q _ _ _ ih.1 (hp n), step_lower Q hQ _ _ _ ih.1 (hp n) ih.2 (hn n) (hw n)⟩

theorem debt_accounting {m : ℕ} (Q : ℤ) (p : ℕ → Fin m → ℤ) (w : ℕ → Fin m)
    (i : Fin m) (n : ℕ) :
    debt Q p w n i = (∑ k ∈ Finset.range n, p k i) - Q * (count w i n : ℤ) := by
  induction n with
  | zero => simp [debt,count]
  | succ n ih =>
    simp only [debt_succ, step, count_succ, Finset.sum_range_succ, Int.natCast_add]
    rw [ih]
    by_cases h : i = w n <;> simp [h] <;> ring

/-- Positive integer quota floors give an explicit lower service bound for every prefix. -/
theorem service_bound {m : ℕ} (hm : 0 < m) (Q : ℤ) (hQ : 0 < Q)
    (p : ℕ → Fin m → ℤ) (w : ℕ → Fin m) (i : Fin m) (q : ℤ) (_hq : 0 < q)
    (hp : ∀ n, ∑ j, p n j = Q) (hn : ∀ n j, 0 ≤ p n j)
    (hfloor : ∀ n, q ≤ p n i)
    (hw : ∀ n j, debt Q p w n j + p n j ≤ debt Q p w n (w n) + p n (w n)) (n : ℕ) :
    (n : ℤ)*q ≤ Q*(count w i n : ℤ) + ((m : ℤ)-1)*Q := by
  obtain ⟨hs,hl⟩ := debt_invariant Q hQ p w hp hn hw n
  have hu := upper_from_lower hm Q _ hs hl i
  have hsum : (∑ _k ∈ Finset.range n, q) ≤ ∑ k ∈ Finset.range n, p k i :=
    Finset.sum_le_sum (fun k _ => hfloor k)
  simp only [Finset.sum_const,Finset.card_range,nsmul_eq_mul] at hsum
  rw [debt_accounting] at hu
  omega

/-- Every channel with a positive quota floor receives arbitrarily many service slots. -/
theorem no_starvation {m : ℕ} (hm : 0 < m) (Q : ℕ) (hQ : 0 < Q)
    (p : ℕ → Fin m → ℤ) (w : ℕ → Fin m) (i : Fin m)
    (hp : ∀ n, ∑ j, p n j = (Q : ℤ)) (hn : ∀ n j, 0 ≤ p n j)
    (hfloor : ∀ n, 1 ≤ p n i)
    (hw : ∀ n j, debt (Q : ℤ) p w n j + p n j ≤ debt (Q : ℤ) p w n (w n) + p n (w n))
    (K : ℕ) : ∃ n, K < count w i n := by
  let n := Q*K + (m-1)*Q + 1
  refine ⟨n, ?_⟩
  have h := service_bound hm (Q : ℤ) (by exact_mod_cast hQ) p w i 1 (by omega) hp hn hfloor hw n
  have hm' : 1 ≤ m := hm
  have hn' : (n : ℤ) = (Q : ℤ)*(K : ℤ)+((m : ℤ)-1)*(Q : ℤ)+1 := by
    simp [n,Int.natCast_sub hm']
  have hpos : (0 : ℤ) < Q := by exact_mod_cast hQ
  by_contra hc
  have hc' : (count w i n : ℤ) ≤ K := by exact_mod_cast (show count w i n ≤ K by omega)
  rw [hn'] at h
  nlinarith
end GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform.Scheduling
