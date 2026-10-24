# Complete source: GRWTSK.NumberTheory.Moebius.PrimePrefixGrowth

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e1f338f352df006cd8a754f22905c03887c8b23` · SHA-256 `79ea89d20b43e90086b080af98f4ed36cd278f0616f10611c1290ec0445ac917`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.PrimeFilterGrowth

/-! A sufficient supplier restricted to the natural increasing prime prefixes.
No estimate for arbitrary prime subsets or insertion orders is required. -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC
open MeasureTheory Set Real
open scoped BigOperators

def primePrefix (n : ℕ) : Finset ℕ := (Finset.range n).filter Nat.Prime

theorem primePrefix_primes (n : ℕ) : ∀ p ∈ primePrefix n, p.Prime :=
  fun _ hp ↦ (Finset.mem_filter.mp hp).2

theorem not_mem_primePrefix (n : ℕ) : n ∉ primePrefix n := by
  simp [primePrefix]

theorem primePrefix_succ (n : ℕ) :
    primePrefix (n+1) = if n.Prime then insert n (primePrefix n) else primePrefix n := by
  simp [primePrefix, Finset.range_add_one, Finset.filter_insert]

theorem pickupPrimes_eq_primePrefix (T : ℝ) :
    pickupPrimes T = primePrefix (⌊exp T⌋₊ + 1) := by
  ext p
  simp only [pickupPrimes, primePrefix, Finset.mem_filter, Finset.mem_Icc, Finset.mem_range]
  constructor
  · rintro ⟨⟨_, hp⟩, hprime⟩
    exact ⟨by omega, hprime⟩
  · rintro ⟨hp, hprime⟩
    exact ⟨⟨hprime.one_le, by omega⟩, hprime⟩

/-- Open signed bound only for the exact state immediately before prime p. -/
def PrimePrefixReverberation (A B q : ℝ) : Prop :=
  ∀ p : ℕ, p.Prime → ∀ T : ℝ, 0 ≤ T →
    max 0 (-noteCorrelation (primeNoteCascade (primePrefix p)) (log p) T) ≤
      (A / sqrt p) * noteEnergy (primeNoteCascade (primePrefix p)) T +
        (B / sqrt p) * (1+T)^q

theorem PrimeReverberation.prefix {A B q : ℝ} (h : PrimeReverberation A B q) :
    PrimePrefixReverberation A B q := by
  intro p hp T hT
  exact h (primePrefix p) (primePrefix_primes p) p hp (not_mem_primePrefix p) T hT

/-- The causal source itself is unchanged by the restriction of supplier scope. -/
theorem pickup_eq_prime_prefix {u T : ℝ} (hu : 0 ≤ u) (huT : u ≤ T) :
    wholePickup u = primeNoteCascade (primePrefix (⌊exp T⌋₊+1)) u := by
  rw [← pickupPrimes_eq_primePrefix]
  exact pickup_eq_prime_note_cascade hu huT

private theorem prefix_compensated_bound {C q T : ℝ} (hT : 0 ≤ T)
    (hstep : ∀ p : ℕ, p.Prime →
      noteEnergy (primeNoteCascade (primePrefix (p+1))) T + (1+T)^q ≤
        exp (C / p) * (noteEnergy (primeNoteCascade (primePrefix p)) T + (1+T)^q)) :
    ∀ n : ℕ, noteEnergy (primeNoteCascade (primePrefix n)) T + (1+T)^q ≤
      exp (C * harmonicPrimeMass (primePrefix n)) * (4*T+(1+T)^q) := by
  intro n
  induction n with
  | zero =>
    simpa [primePrefix, harmonicPrimeMass] using add_le_add_right (baseNote_energy_bound hT) ((1+T)^q)
  | succ n ih =>
    by_cases hp : n.Prime
    · calc
        _ ≤ exp (C / n) * (noteEnergy (primeNoteCascade (primePrefix n)) T + (1+T)^q) := hstep n hp
        _ ≤ exp (C / n) * (exp (C * harmonicPrimeMass (primePrefix n)) * (4*T+(1+T)^q)) :=
          mul_le_mul_of_nonneg_left ih (exp_pos _).le
        _ = _ := by
          rw [primePrefix_succ, if_pos hp]
          simp only [harmonicPrimeMass, Finset.sum_insert (not_mem_primePrefix n), mul_add,
            div_eq_mul_inv]
          rw [exp_add]
          ring
    · simpa only [primePrefix_succ, if_neg hp] using ih

private theorem pickup_poly_of_prefix_step {C q : ℝ} (hC : 0 ≤ C) (hq : 0 ≤ q)
    (hstep : ∀ p : ℕ, p.Prime → ∀ T : ℝ, 0 ≤ T →
      noteEnergy (primeNoteCascade (primePrefix (p+1))) T + (1+T)^q ≤
        exp (C / p) * (noteEnergy (primeNoteCascade (primePrefix p)) T + (1+T)^q)) :
    PickupEnergyPoly := by
  let K := log 4 * ((log 2)⁻¹ + |log (log 2)|)
  let L := log 4
  have hL : 0 ≤ L := log_nonneg (by norm_num)
  refine ⟨5 * exp (C*K), C*L+max 1 q, by positivity,
    add_nonneg (mul_nonneg hC hL) (le_trans hq (le_max_right _ _)), ?_⟩
  intro T hT
  have hb : 1 ≤ 1+T := by linarith
  have hbpos : 0 < 1+T := by linarith
  have hc := prefix_compensated_bound hT (fun p hp ↦ hstep p hp T hT) (⌊exp T⌋₊+1)
  rw [← pickupPrimes_eq_primePrefix] at hc
  have hm : exp (C * harmonicPrimeMass (pickupPrimes T)) ≤
      exp (C*K) * (1+T)^(C*L) := by
    calc
      _ ≤ exp (C*(K+L*log (1+T))) :=
        exp_le_exp.mpr (mul_le_mul_of_nonneg_left (harmonicPrimeMass_log_bound hT) hC)
      _ = _ := by rw [Real.rpow_def_of_pos hbpos, ← exp_add]; congr 1; dsimp [K,L]; ring
  have hp1 : 1+T ≤ (1+T)^(max 1 q) := by
    simpa only [Real.rpow_one] using Real.rpow_le_rpow_of_exponent_le hb (le_max_left 1 q)
  have hpq := Real.rpow_le_rpow_of_exponent_le hb (le_max_right 1 q)
  have hbase : 4*T+(1+T)^q ≤ 5*(1+T)^(max 1 q) := by linarith
  rw [pickupEnergy_eq_cascade_energy hT]
  calc
    _ ≤ noteEnergy (primeNoteCascade (pickupPrimes T)) T + (1+T)^q :=
      le_add_of_nonneg_right (Real.rpow_nonneg hbpos.le _)
    _ ≤ _ := hc
    _ ≤ (exp (C*K)*(1+T)^(C*L))*(5*(1+T)^(max 1 q)) :=
      mul_le_mul hm hbase (by positivity) (by positivity)
    _ = _ := by rw [Real.rpow_add hbpos]; ring

/-- Natural-order induction requires only the smaller, still-open source class. -/
theorem pickupEnergyPoly_of_prefix_reverberation {A B q : ℝ}
    (hA : 0 ≤ A) (hB : 0 ≤ B) (hq : 0 ≤ q)
    (hR : PrimePrefixReverberation A B q) : PickupEnergyPoly := by
  apply pickup_poly_of_prefix_step (C := 1+2*A+2*B) (by positivity) hq
  intro p hp T hT
  let P := primePrefix p
  have hP := primePrefix_primes p
  have hpP := not_mem_primePrefix p
  have hc := hR p hp T hT
  have hneg : -noteCorrelation (primeNoteCascade P) (log p) T ≤
      (A / sqrt p) * noteEnergy (primeNoteCascade P) T + (B / sqrt p) * (1+T)^q :=
    (le_max_right _ _).trans hc
  have hp0 : 0 < (p : ℝ) := by exact_mod_cast hp.pos
  have hmono := noteEnergy_mono (primeNoteCascade_continuous hP)
    (show T - log p ≤ T by have := log_nonneg (by exact_mod_cast hp.one_le : (1:ℝ) ≤ p); linarith)
  have hcost := mul_le_mul_of_nonneg_left hneg (show 0 ≤ 2 * (sqrt p)⁻¹ by positivity)
  have hsq : sqrt (p : ℝ)^2 = p := Real.sq_sqrt hp0.le
  have hE := noteEnergy_nonneg (primeNoteCascade P) T
  have hH := Real.rpow_nonneg (by linarith : 0 ≤ 1+T) q
  have hexp := Real.add_one_le_exp ((1+2*A+2*B)/p)
  have hfinal := mul_le_mul_of_nonneg_right hexp (add_nonneg hE hH)
  rw [primePrefix_succ, if_pos hp, energy_after_prime_insertion hP hp hpP hT]
  have hcost' : -2 * (sqrt p)⁻¹ * noteCorrelation (primeNoteCascade P) (log p) T ≤
      (2*A/p) * noteEnergy (primeNoteCascade P) T + (2*B/p) * (1+T)^q := by
    have hid : 2 * (sqrt p)⁻¹ *
        (A / sqrt p * noteEnergy (primeNoteCascade P) T + B / sqrt p * (1+T)^q) =
        (2*A/p) * noteEnergy (primeNoteCascade P) T + (2*B/p) * (1+T)^q := by
      have hi : (p : ℝ)⁻¹ = (sqrt p)⁻¹ ^ 2 := by rw [inv_pow, hsq]
      simp only [div_eq_mul_inv, hi]
      ring
    rw [hid] at hcost
    nlinarith
  have hmono' := mul_le_mul_of_nonneg_left hmono (inv_nonneg.mpr hp0.le)
  have hcoefE : 1+(p:ℝ)⁻¹+2*A/p ≤ 1+(1+2*A+2*B)/p := by
    rw [div_eq_mul_inv, div_eq_mul_inv]
    nlinarith [mul_nonneg hB (inv_nonneg.mpr hp0.le)]
  have hcoefH : 1+2*B/p ≤ 1+(1+2*A+2*B)/p := by
    rw [div_eq_mul_inv, div_eq_mul_inv]
    nlinarith [mul_nonneg hA (inv_nonneg.mpr hp0.le), inv_nonneg.mpr hp0.le]
  have hterms := add_le_add (mul_le_mul_of_nonneg_right hcoefE hE)
    (mul_le_mul_of_nonneg_right hcoefH hH)
  calc
    _ ≤ noteEnergy (primeNoteCascade P) T + (p:ℝ)⁻¹ * noteEnergy (primeNoteCascade P) T +
        (2*A/p) * noteEnergy (primeNoteCascade P) T + (2*B/p) * (1+T)^q + (1+T)^q := by
      linarith only [hcost', hmono']
    _ = (1+(p:ℝ)⁻¹+2*A/p) * noteEnergy (primeNoteCascade P) T + (1+2*B/p) * (1+T)^q := by ring
    _ ≤ (1+(1+2*A+2*B)/p) * noteEnergy (primeNoteCascade P) T +
        (1+(1+2*A+2*B)/p) * (1+T)^q := hterms
    _ = ((1+2*A+2*B)/p+1) * (noteEnergy (primeNoteCascade P) T+(1+T)^q) := by ring
    _ ≤ _ := hfinal

theorem p04_of_prefix_reverberation {A B q : ℝ}
    (hA : 0 ≤ A) (hB : 0 ≤ B) (hq : 0 ≤ q)
    (hR : PrimePrefixReverberation A B q) : PickupCrossPoly :=
  pickupCrossPoly_iff_pickupEnergyPoly.mpr (pickupEnergyPoly_of_prefix_reverberation hA hB hq hR)

theorem riemannHypothesis_of_prefix_reverberation {A B q : ℝ}
    (hA : 0 ≤ A) (hB : 0 ≤ B) (hq : 0 ≤ q)
    (hR : PrimePrefixReverberation A B q) : _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupCrossPoly (p04_of_prefix_reverberation hA hB hq hR)

end GRWTSK.RiemannHypothesis.CCC
```
