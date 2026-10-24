/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.PrimeFilterEnergy
import GRWTSK.NumberTheory.Primes.ReciprocalMass

/-! Source-specific prime/block reverberation remains an open premise.
The exact induction and its polynomial/RH consumers do not assert that premise. -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC
open MeasureTheory Set Real
open scoped BigOperators

/-- The open signed local estimate, uniform over finite source-generated states. -/
def PrimeReverberation (A B q : ℝ) : Prop :=
  ∀ P : Finset ℕ, (∀ p ∈ P, p.Prime) → ∀ p : ℕ, p.Prime → p ∉ P →
    ∀ T : ℝ, 0 ≤ T →
      max 0 (-noteCorrelation (primeNoteCascade P) (log p) T) ≤
        (A / sqrt p) * noteEnergy (primeNoteCascade P) T + (B / sqrt p) * (1 + T)^q

/-- Open collective estimate. Every sign stays in the actual source cascade. -/
def PrimeBlockReverberation (C q : ℝ) : Prop :=
  ∀ P B : Finset ℕ, (∀ p ∈ P, p.Prime) → (∀ p ∈ B, p.Prime) → Disjoint P B →
    ∀ T : ℝ, 0 ≤ T →
      noteEnergy (primeNoteCascade (P ∪ B)) T ≤
        exp (C * harmonicPrimeMass B) * noteEnergy (primeNoteCascade P) T +
          C * harmonicPrimeMass B * (1 + T)^q

theorem baseNote_energy_bound {T : ℝ} (hT : 0 ≤ T) : noteEnergy baseNote T ≤ 4 * T := by
  unfold noteEnergy
  rw [max_eq_right hT]
  calc
    _ ≤ ∫ u in (0 : ℝ)..T, (4 : ℝ) := by
      apply intervalIntegral.integral_mono_on hT
        (((pickupResponse_continuous (by norm_num : 1 ≤ (1 : ℕ))).pow 2).intervalIntegrable 0 T)
        (continuous_const.intervalIntegrable _ _)
      intro u hu
      have he : exp (-u / 2) ≤ 1 := exp_le_one_iff.mpr (by linarith [hu.1])
      have hp := exp_pos (-u / 2)
      change pickupResponse 1 u ^ 2 ≤ 4
      simp only [pickupResponse, Nat.cast_one, log_one, if_pos hu.1, sqrt_one, inv_one]
      nlinarith
    _ = _ := by simp [mul_comm]

private theorem cascade_compensated_bound {C q T : ℝ} (_hC : 0 ≤ C) (hT : 0 ≤ T)
    (hstep : ∀ P : Finset ℕ, (∀ p ∈ P, p.Prime) → ∀ p : ℕ, p.Prime → p ∉ P →
      noteEnergy (primeNoteCascade (insert p P)) T + (1 + T)^q ≤
        exp (C / p) * (noteEnergy (primeNoteCascade P) T + (1 + T)^q))
    {P : Finset ℕ} (hP : ∀ p ∈ P, p.Prime) :
    noteEnergy (primeNoteCascade P) T + (1 + T)^q ≤
      exp (C * harmonicPrimeMass P) * (4 * T + (1 + T)^q) := by
  induction P using Finset.induction_on with
  | empty =>
    simpa [harmonicPrimeMass] using add_le_add_right (baseNote_energy_bound hT) ((1 + T)^q)
  | @insert p P hpP ih =>
    have hp := hP p (by simp)
    have hP' : ∀ r ∈ P, r.Prime := fun r hr ↦ hP r (by simp [hr])
    calc
      _ ≤ exp (C / p) * (noteEnergy (primeNoteCascade P) T + (1 + T)^q) := hstep P hP' p hp hpP
      _ ≤ exp (C / p) * (exp (C * harmonicPrimeMass P) * (4 * T + (1 + T)^q)) :=
        mul_le_mul_of_nonneg_left (ih hP') (exp_pos _).le
      _ = _ := by
        simp only [harmonicPrimeMass, Finset.sum_insert hpP, mul_add, div_eq_mul_inv]
        rw [exp_add]
        ring

private theorem pickup_poly_of_compensated_step {C q : ℝ} (hC : 0 ≤ C) (hq : 0 ≤ q)
    (hstep : ∀ P : Finset ℕ, (∀ p ∈ P, p.Prime) → ∀ p : ℕ, p.Prime → p ∉ P →
      ∀ T : ℝ, 0 ≤ T →
      noteEnergy (primeNoteCascade (insert p P)) T + (1 + T)^q ≤
        exp (C / p) * (noteEnergy (primeNoteCascade P) T + (1 + T)^q)) :
    PickupEnergyPoly := by
  let K := log 4 * ((log 2)⁻¹ + |log (log 2)|)
  let L := log 4
  have hL : 0 ≤ L := log_nonneg (by norm_num)
  refine ⟨5 * exp (C * K), C * L + max 1 q, by positivity,
    add_nonneg (mul_nonneg hC hL) (le_trans hq (le_max_right _ _)), ?_⟩
  intro T hT
  have hb : 1 ≤ 1 + T := by linarith
  have hbpos : 0 < 1 + T := by linarith
  have hP : ∀ p ∈ pickupPrimes T, p.Prime := fun p hp ↦ (Finset.mem_filter.mp hp).2
  have hc := cascade_compensated_bound hC hT (fun P hP p hp hn ↦ hstep P hP p hp hn T hT) hP
  have hm : exp (C * harmonicPrimeMass (pickupPrimes T)) ≤
      exp (C * K) * (1 + T)^(C * L) := by
    calc
      _ ≤ exp (C * (K + L * log (1 + T))) :=
        exp_le_exp.mpr (mul_le_mul_of_nonneg_left (harmonicPrimeMass_log_bound hT) hC)
      _ = _ := by rw [Real.rpow_def_of_pos hbpos, ← exp_add]; congr 1; dsimp [K, L]; ring
  have hp1 : 1 + T ≤ (1 + T)^(max 1 q) := by
    simpa only [Real.rpow_one] using Real.rpow_le_rpow_of_exponent_le hb (le_max_left 1 q)
  have hpq := Real.rpow_le_rpow_of_exponent_le hb (le_max_right 1 q)
  have hbase : 4 * T + (1 + T)^q ≤ 5 * (1 + T)^(max 1 q) := by linarith
  rw [pickupEnergy_eq_cascade_energy hT]
  calc
    _ ≤ noteEnergy (primeNoteCascade (pickupPrimes T)) T + (1 + T)^q :=
      le_add_of_nonneg_right (Real.rpow_nonneg hbpos.le _)
    _ ≤ _ := hc
    _ ≤ (exp (C * K) * (1 + T)^(C * L)) * (5 * (1 + T)^(max 1 q)) :=
      mul_le_mul hm hbase (by positivity) (by positivity)
    _ = _ := by rw [Real.rpow_add hbpos]; ring

/-- Exact scale induction: the only source-specific premise is the open block bound. -/
theorem p04_of_block_reverberation {C q : ℝ} (hC : 0 ≤ C) (hq : 0 ≤ q)
    (hBR : PrimeBlockReverberation C q) : PickupCrossPoly := by
  apply pickupCrossPoly_iff_pickupEnergyPoly.mpr
  apply pickup_poly_of_compensated_step hC hq
  intro P hP p hp hpP T hT
  have h := hBR P {p} hP (by simpa using hp)
    (Finset.disjoint_singleton_right.mpr hpP) T hT
  simp only [Finset.union_singleton, harmonicPrimeMass, Finset.sum_singleton] at h
  have hm : C / p + 1 ≤ exp (C / p) := Real.add_one_le_exp _
  have hn := Real.rpow_nonneg (by linarith : 0 ≤ 1 + T) q
  have hmul := mul_le_mul_of_nonneg_right hm hn
  rw [div_eq_mul_inv] at hm hmul ⊢
  nlinarith

theorem p04_of_prime_reverberation {A B q : ℝ}
    (hA : 0 ≤ A) (hB : 0 ≤ B) (hq : 0 ≤ q)
    (hR : PrimeReverberation A B q) : PickupCrossPoly := by
  apply pickupCrossPoly_iff_pickupEnergyPoly.mpr
  apply pickup_poly_of_compensated_step (C := 1 + 2*A + 2*B) (by positivity) hq
  intro P hP p hp hpP T hT
  have hc := hR P hP p hp hpP T hT
  have hneg : -noteCorrelation (primeNoteCascade P) (log p) T ≤
      (A / sqrt p) * noteEnergy (primeNoteCascade P) T + (B / sqrt p) * (1+T)^q :=
    (le_max_right _ _).trans hc
  have hspos : 0 < sqrt (p : ℝ) := sqrt_pos.mpr (by exact_mod_cast hp.pos)
  have hp0 : 0 < (p : ℝ) := by exact_mod_cast hp.pos
  have hmono := noteEnergy_mono (primeNoteCascade_continuous hP)
    (show T - log p ≤ T by have := log_nonneg (by exact_mod_cast hp.one_le : (1:ℝ) ≤ p); linarith)
  have hcost := mul_le_mul_of_nonneg_left hneg (show 0 ≤ 2 * (sqrt p)⁻¹ by positivity)
  have hsq : sqrt (p : ℝ)^2 = p := Real.sq_sqrt hp0.le
  have hE := noteEnergy_nonneg (primeNoteCascade P) T
  have hH := Real.rpow_nonneg (by linarith : 0 ≤ 1+T) q
  have hexp := Real.add_one_le_exp ((1+2*A+2*B)/p)
  have hfinal := mul_le_mul_of_nonneg_right hexp (add_nonneg hE hH)
  rw [energy_after_prime_insertion hP hp hpP hT]
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
  have hcoefE : 1 + (p:ℝ)⁻¹ + 2*A/p ≤ 1 + (1+2*A+2*B)/p := by
    rw [div_eq_mul_inv, div_eq_mul_inv]
    nlinarith [mul_nonneg hB (inv_nonneg.mpr hp0.le)]
  have hcoefH : 1 + 2*B/p ≤ 1 + (1+2*A+2*B)/p := by
    rw [div_eq_mul_inv, div_eq_mul_inv]
    nlinarith [mul_nonneg hA (inv_nonneg.mpr hp0.le), inv_nonneg.mpr hp0.le]
  have hterms := add_le_add (mul_le_mul_of_nonneg_right hcoefE hE)
    (mul_le_mul_of_nonneg_right hcoefH hH)
  calc
    _ ≤ noteEnergy (primeNoteCascade P) T + (p:ℝ)⁻¹ * noteEnergy (primeNoteCascade P) T +
        (2*A/p) * noteEnergy (primeNoteCascade P) T + (2*B/p) * (1+T)^q + (1+T)^q := by
      linarith only [hcost', hmono']
    _ = (1+(p:ℝ)⁻¹+2*A/p) * noteEnergy (primeNoteCascade P) T +
        (1+2*B/p) * (1+T)^q := by ring
    _ ≤ (1+(1+2*A+2*B)/p) * noteEnergy (primeNoteCascade P) T +
        (1+(1+2*A+2*B)/p) * (1+T)^q := hterms
    _ = ((1+2*A+2*B)/p+1) * (noteEnergy (primeNoteCascade P) T+(1+T)^q) := by ring
    _ ≤ _ := hfinal

theorem riemannHypothesis_of_block_reverberation {C q : ℝ} (hC : 0 ≤ C) (hq : 0 ≤ q)
    (hBR : PrimeBlockReverberation C q) : _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupCrossPoly (p04_of_block_reverberation hC hq hBR)

end GRWTSK.RiemannHypothesis.CCC
