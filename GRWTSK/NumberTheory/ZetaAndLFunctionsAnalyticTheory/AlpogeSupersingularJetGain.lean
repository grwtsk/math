/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.RingTheory.PowerSeries.Derivative
import Mathlib.NumberTheory.Padics.PadicVal.Basic
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Basic.Real.Basic

/-!
# Invariant differentiation and the even theta logarithm

The Honda derivative is a constant multiple of the ordinary derivative modulo `p`.
The differentiation lemmas give a factor of `p` for every block of `p` derivatives on the
integral ordinary coordinate ring. The digit estimate controls exponential composition
for the normalized even section in §20 of `AlpogeEllipticCubicalB4.md`.
-/

set_option autoImplicit false
namespace GRWTSK.NumberTheory.AlpogeSupersingularJetGain

/-- In characteristic `p`, the `p`-fold ordinary derivative kills all power series. -/
theorem iterate_derivative_eq_zero {R : Type*} [CommSemiring R] (p : ℕ) [CharP R p]
    (hp : 0 < p) (f : PowerSeries R) :
    ((PowerSeries.derivative : PowerSeries R → PowerSeries R)^[p]) f = 0 := by
  ext n
  rw [PowerSeries.coeff_iterate_derivative, map_zero]
  have hd := dvd_trans (Nat.dvd_factorial hp (le_refl p)) ((n + 1).factorial_dvd_ascFactorial p)
  rw [(CharP.cast_eq_zero_iff R p _).mpr hd, zero_mul]

open PowerSeries

/-- A vector field which is a constant multiple of the ordinary derivative modulo `p`
sends the entire ordinary power series ring into `p` times that ring after `p` steps. -/
theorem lift_honda_derivative_block {R : Type*} [CommRing R] (p : ℕ) (hp : 0 < p)
    (c : R) (b f : PowerSeries R) :
    ∃ g, (fun h : PowerSeries R => (C c + (p : PowerSeries R) * b) * derivative h)^[p] f =
      (p : PowerSeries R) * g := by
  let D (h : PowerSeries R) := (C c + (p : PowerSeries R) * b) * derivative h
  have hcong (n : ℕ) : ∃ g : PowerSeries R, D^[n] f = C (c ^ n) * derivative^[n] f + p * g := by
    induction n with
    | zero => exact ⟨0, by simp⟩
    | succ n ih =>
      obtain ⟨g, hg⟩ := ih
      rw [Function.iterate_succ_apply', hg]
      refine ⟨C c * derivative g + b * (C (c ^ n) * derivative (derivative^[n] f) + p * derivative g), ?_⟩
      simp only [D, map_add, Derivation.leibniz, derivative_C, smul_eq_mul, mul_zero,
        add_zero, Derivation.map_natCast, Function.iterate_succ_apply', pow_succ, map_mul]
      ring
  obtain ⟨u, hu⟩ := hcong p
  have hd (n : ℕ) : p ∣ (n + 1).ascFactorial p :=
    dvd_trans (Nat.dvd_factorial hp le_rfl) ((n + 1).factorial_dvd_ascFactorial p)
  choose a ha using hd
  let v := PowerSeries.mk fun n => (a n : R) * coeff (n + p) f
  have hv : derivative^[p] f = (p : PowerSeries R) * v := by
    ext n
    rw [coeff_iterate_derivative, coeff_natCast_mul, ha, Nat.cast_mul, PowerSeries.coeff_mk]
    ring
  refine ⟨C (c ^ p) * v + u, ?_⟩
  change D^[p] f = _
  rw [hu, hv]
  ring

/-- An additive operator with one factor of `p` in each block of `p` steps supplies
one factor per completed block, even on a module over a ramified valuation ring. -/
theorem iterate_blocks_dvd {M : Type*} [AddCommMonoid M] (D : M →+ M) (p : ℕ)
    (block : ∀ x, ∃ y, D^[p] x = p • y) (n : ℕ) (x : M) :
    ∃ y, D^[p * n] x = p ^ n • y := by
  induction n generalizing x with
  | zero => exact ⟨x, by simp⟩
  | succ n ih =>
    obtain ⟨y, hy⟩ := block x
    obtain ⟨z, hz⟩ := ih y
    refine ⟨z, ?_⟩
    rw [Nat.mul_succ, Function.iterate_add_apply, hy]
    have hcomm : Function.Commute D (fun t : M => p • t) := fun t => map_nsmul D p t
    rw [(hcomm.iterate_left (p * n)).eq, hz, smul_smul, pow_succ']

/-- The invariant vector field in a Honda coordinate contributes a full factor of
`p` per block of `p` derivatives, for every input series in the integral ring. -/
theorem honda_derivative_dvd {R : Type*} [CommRing R] (p : ℕ) (hp : 0 < p)
    (c : R) (b f : PowerSeries R) (n : ℕ) :
    ∃ g, (fun h : PowerSeries R => (C c + (p : PowerSeries R) * b) * derivative h)^[n] f =
      (p : PowerSeries R) ^ (n / p) * g := by
  let D : PowerSeries R →+ PowerSeries R := {
    toFun h := (C c + (p : PowerSeries R) * b) * derivative h
    map_zero' := by simp
    map_add' x y := by simp [mul_add] }
  have block (x : PowerSeries R) : ∃ y, D^[p] x = p • y := by
    simpa [D, nsmul_eq_mul] using lift_honda_derivative_block p hp c b x
  obtain ⟨g, hg⟩ := iterate_blocks_dvd D p block (n / p) (D^[n % p] f)
  refine ⟨g, ?_⟩
  change D^[n] f = _
  rw [← Function.iterate_add_apply, Nat.div_add_mod] at hg
  simpa [nsmul_eq_mul] using hg

/-- Cleared digit estimate for an even positive logarithm degree. The exceptional
intermediate degree `p+1` attains equality; degree `p` has to be excluded. -/
theorem even_log_digit_bound {p k : ℕ} (hp : 3 ≤ p) (hk : 2 ≤ k) (hne : k ≠ p) :
    k ≤ (p + 1) * ((p.digits k).sum - 1 + (p - 1) * ((k - 2) / p)) := by
  by_cases hsmall : k < p
  · rw [Nat.digits_of_lt p k (by omega) hsmall]
    simp only [List.sum_cons, List.sum_nil, Nat.add_zero]
    have h1 : k ≤ (p + 1) * (k - 1) := by
      have hp' : 2 ≤ p + 1 := by omega
      have h := Nat.mul_le_mul_right (k - 1) hp'
      omega
    exact h1.trans (Nat.mul_le_mul_left _ (Nat.le_add_right _ _))
  by_cases heq : k = p + 1
  · subst k
    have hd : p.digits (p + 1) = [1, 1] := by
      have h := Nat.digits_add p (by omega) 1 1 (by omega) (Or.inl one_ne_zero)
      simpa [Nat.digits_of_lt p 1 one_ne_zero (by omega : 1 < p), Nat.add_comm] using h
    rw [hd]
    simp only [List.sum_cons, List.sum_nil, Nat.add_zero]
    simp
  · let q := (k - 2) / p
    have hq : 1 ≤ q := (Nat.le_div_iff_mul_le (by omega : 0 < p)).mpr (by omega)
    have hr := Nat.mod_lt (k - 2) (by omega : 0 < p)
    have hdiv := Nat.mod_add_div (k - 2) p
    change (k - 2) % p + p * q = k - 2 at hdiv
    have hq1 : p ≤ p * q := by simpa using Nat.mul_le_mul_left p hq
    have hq3 : 2 * q ≤ (p - 1) * q := Nat.mul_le_mul_right q (by omega)
    have hq4 := Nat.mul_le_mul_left (p + 1) hq3
    have hb : k ≤ (p + 1) * ((p - 1) * q) := by
      have hk2 : k - 2 + 2 = k := by omega
      nlinarith
    exact hb.trans (Nat.mul_le_mul_left _ (Nat.le_add_left _ _))

/-- The precise factorial cost of exponentiating an even logarithm. No rounding of
valuations in the ambient valued field is used. -/
theorem even_log_factorial_cost {p k : ℕ} [Fact p.Prime] (hp : 3 ≤ p) (hk : 2 ≤ k)
    (hne : k ≠ p) :
    (p + 1) * ((p - 1) * padicValNat p k.factorial + 1) ≤
      p * k + (p + 1) * (p - 1) * ((k - 2) / p) := by
  have h := even_log_digit_bound hp hk hne
  have hleg := sub_one_mul_padicValNat_factorial (p := p) k
  have hpos := sub_one_mul_padicValNat_factorial_lt_of_ne_zero p (by omega : k ≠ 0)
  have hsum := Nat.digit_sum_le p k
  have hs : 1 ≤ (p.digits k).sum := by omega
  have h1 : (p.digits k).sum - 1 + 1 = (p.digits k).sum := by omega
  have h2 : (p - 1) * padicValNat p k.factorial + (p.digits k).sum = k := by omega
  nlinarith [congrArg (fun t : ℕ => (p + 1) * t) h1,
    congrArg (fun t : ℕ => (p + 1) * t) h2]

/-- Exact valuation of the multinomial integer multiplying the `p`th power of the
Hurwitz monomial `z^n/n!`. It is positive whenever the monomial has positive degree. -/
theorem hurwitz_power_factorial_valuation {p : ℕ} [hp : Fact p.Prime] (n : ℕ) :
    padicValNat p (p * n).factorial = p * padicValNat p n.factorial + (p.digits n).sum := by
  rw [padicValNat_factorial_mul]
  have h := sub_one_mul_padicValNat_factorial (p := p) n
  have hs := Nat.digit_sum_le p n
  have hp1 : p - 1 + 1 = p := by have := hp.out.pos; omega
  nlinarith [congrArg (fun t : ℕ => t * padicValNat p n.factorial) hp1,
    Nat.sub_add_cancel hs]

/-- A flow with one incoming copy and an outgoing cost at least `p` costs at least
`p+1` per unit in total. Each allowed lag permutes the sites. -/
theorem flow_cost_lower {S I : Type*} [Fintype S] [Fintype I] (lag : I → S ≃ S)
    (p : ℝ) (w : I → ℝ) (x : S → I → ℝ) (D : S → ℝ)
    (hw : ∀ i, p ≤ w i) (hx : ∀ s i, 0 ≤ x s i)
    (hcap : ∀ s, (∑ i, w i * x s i) + (∑ i, x (lag i s) i) ≤ D s) :
    (p + 1) * (∑ s, ∑ i, x s i) ≤ ∑ s, D s := by
  classical
  have hout : p * (∑ s, ∑ i, x s i) ≤ ∑ s, ∑ i, w i * x s i := by
    simp only [Finset.mul_sum]
    exact Finset.sum_le_sum fun s _ => Finset.sum_le_sum fun i _ =>
      mul_le_mul_of_nonneg_right (hw i) (hx s i)
  have hin : (∑ s, ∑ i, x (lag i s) i) = ∑ s, ∑ i, x s i := by
    rw [Finset.sum_comm, Finset.sum_comm (f := fun s i => x s i)]
    exact Finset.sum_congr rfl fun i _ => (lag i).sum_comp (fun s => x s i)
  have h := Finset.sum_le_sum (s := Finset.univ) (fun s _ => hcap s)
  rw [Finset.sum_add_distrib, hin] at h
  linarith

/-- Feasibility and exact value of the adjacent minimum flow used to control
the loss in the marked-row comparison by discrete variation. -/
theorem adjacent_min_flow {S : Type*} [Fintype S] (e : S ≃ S) (D : S → ℝ) {p : ℝ}
    (hp : 0 ≤ p) :
    let x (s : S) := min (D s) (D (e s)) / (p + 1)
    (∀ s, p * x s + x (e.symm s) ≤ D s) ∧
      (p + 1) * (∑ s, x s) = (∑ s, D s) - (∑ s, |D s - D (e s)|) / 2 := by
  dsimp only
  have hden : 0 < p + 1 := by linarith
  constructor
  · intro s
    rw [Equiv.apply_symm_apply, mul_div_assoc', ← add_div, div_le_iff₀ hden]
    have h := mul_le_mul_of_nonneg_left (min_le_left (D s) (D (e s))) hp
    linarith [min_le_right (D (e.symm s)) (D s)]
  · rw [Finset.mul_sum]
    simp only [mul_div_cancel₀ _ hden.ne']
    have hid (s : S) : min (D s) (D (e s)) = (D s + D (e s) - |D s - D (e s)|) / 2 := by
      rcases le_total (D s) (D (e s)) with h | h
      · rw [min_eq_left h, abs_of_nonpos (sub_nonpos.mpr h)]; ring
      · rw [min_eq_right h, abs_of_nonneg (sub_nonneg.mpr h)]; ring
    simp only [hid, div_eq_mul_inv, ← Finset.sum_mul, Finset.sum_sub_distrib, Finset.sum_add_distrib, e.sum_comp D]
    ring

end GRWTSK.NumberTheory.AlpogeSupersingularJetGain
