/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Lean, Mathlib and imported project sources retain their original credits/licenses.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. Owners: #335 / #334 RH-E02.
-/
import GRWTSK.NumberTheory.Moebius.EnergyAbscissa
import GRWTSK.Analysis.LaplaceTransform.ExponentialThreshold

/-!
# Cofinal positive dampings for the actual signed pickup

The existing convergence set, signed pickup, energy abscissa and RH consumer
are reused unchanged. The prescribed rates are `2 / (n + 1)`. Membership at
every stage, or every stage after a fixed index, is equivalent to the existing
all-positive-damping premise. No bound uniform in the stage on the values of
the integrals is required. Genuine integrability, not a totalized integral
value, remains the premise.

The source-specific successor implication is named but NOT proved. Its
conditional induction starts at the already-paid rate two. This reorganizes
the same arithmetic debt; it proves no new pickup estimate, no decrease of
the actual abscissa and no unconditional RH. No public root is modified.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC.CofinalDamping
open MeasureTheory Set

/-- A fixed source-independent schedule, with initial rate two. -/
def reciprocalDamping (n : ℕ) : ℝ := 2 / ((n : ℝ) + 1)

theorem reciprocalDamping_pos (n : ℕ) : 0 < reciprocalDamping n := by
  unfold reciprocalDamping
  positivity

theorem reciprocalDamping_zero : reciprocalDamping 0 = 2 := by
  norm_num [reciprocalDamping]

theorem reciprocalDamping_antitone : Antitone reciprocalDamping := by
  intro m n hmn
  have hm : (0 : ℝ) < (m : ℝ) + 1 := by positivity
  have hn : (0 : ℝ) < (n : ℝ) + 1 := by positivity
  have hcast : (m : ℝ) ≤ (n : ℝ) := by exact_mod_cast hmn
  unfold reciprocalDamping
  apply (div_le_div_iff₀ hn hm).2
  nlinarith

/-- Every strictly positive requested damping dominates a prescribed stage. -/
theorem reciprocalDamping_cofinal {σ : ℝ} (hσ : 0 < σ) :
    ∃ n : ℕ, reciprocalDamping n < σ := by
  obtain ⟨n, hn⟩ := exists_nat_gt (2 / σ)
  have hmul : (2 : ℝ) < (n : ℝ) * σ := (div_lt_iff₀ hσ).mp hn
  refine ⟨n, ?_⟩
  unfold reciprocalDamping
  apply (div_lt_iff₀ (show (0 : ℝ) < (n : ℝ) + 1 by positivity)).2
  nlinarith

theorem reciprocalDamping_tail_cofinal (N : ℕ) {σ : ℝ} (hσ : 0 < σ) :
    ∃ n : ℕ, N ≤ n ∧ reciprocalDamping n ≤ σ := by
  obtain ⟨k, hk⟩ := reciprocalDamping_cofinal hσ
  refine ⟨max N k, le_max_left N k, ?_⟩
  exact (reciprocalDamping_antitone (le_max_right N k)).trans hk.le

/-- A generic cofinal schedule is useful only with actual source membership. -/
theorem weightedEnergyAll_of_cofinal_membership
    (d : ℕ → ℝ)
    (hcofinal : ∀ σ : ℝ, 0 < σ → ∃ n : ℕ, d n ≤ σ)
    (hpaid : ∀ n : ℕ, d n ∈ pickupEnergyConvergenceSet) :
    PickupWeightedEnergyAll := by
  intro σ hσ
  obtain ⟨n, hn⟩ := hcofinal σ hσ
  exact pickup_weighted_energy_integrable_mono hn (hpaid n).2

theorem weightedEnergyAll_iff_cofinal_membership
    (d : ℕ → ℝ) (hpos : ∀ n : ℕ, 0 < d n)
    (hcofinal : ∀ σ : ℝ, 0 < σ → ∃ n : ℕ, d n ≤ σ) :
    PickupWeightedEnergyAll ↔ ∀ n : ℕ, d n ∈ pickupEnergyConvergenceSet := by
  constructor
  · intro hw n
    exact ⟨hpos n, hw (d n) (hpos n)⟩
  · exact weightedEnergyAll_of_cofinal_membership d hcofinal

/-- No finite-prefix or rate-zero premise is substituted for this universal tail. -/
theorem weightedEnergyAll_iff_reciprocal_tail (N : ℕ) :
    PickupWeightedEnergyAll ↔
      ∀ n : ℕ, N ≤ n → reciprocalDamping n ∈ pickupEnergyConvergenceSet := by
  constructor
  · intro hw n _
    exact ⟨reciprocalDamping_pos n, hw _ (reciprocalDamping_pos n)⟩
  · intro hp σ hσ
    obtain ⟨n, hn, hns⟩ := reciprocalDamping_tail_cofinal N hσ
    exact pickup_weighted_energy_integrable_mono hns (hp n hn).2

theorem weightedEnergyAll_iff_reciprocal :
    PickupWeightedEnergyAll ↔
      ∀ n : ℕ, reciprocalDamping n ∈ pickupEnergyConvergenceSet := by
  apply weightedEnergyAll_iff_cofinal_membership reciprocalDamping reciprocalDamping_pos
  intro σ hσ
  obtain ⟨n, hn⟩ := reciprocalDamping_cofinal hσ
  exact ⟨n, hn.le⟩

theorem abscissa_zero_iff_reciprocal :
    pickupEnergyAbscissa = 0 ↔
      ∀ n : ℕ, reciprocalDamping n ∈ pickupEnergyConvergenceSet :=
  pickupEnergyAbscissa_zero_iff_weightedEnergyAll.trans weightedEnergyAll_iff_reciprocal

/-- The existing exact RH endpoint; its arithmetic membership premise remains open. -/
theorem riemannHypothesis_of_reciprocal
    (hp : ∀ n : ℕ, reciprocalDamping n ∈ pickupEnergyConvergenceSet) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupWeightedEnergyAll (weightedEnergyAll_iff_reciprocal.mpr hp)

theorem riemannHypothesis_of_reciprocal_tail {N : ℕ}
    (hp : ∀ n : ℕ, N ≤ n → reciprocalDamping n ∈ pickupEnergyConvergenceSet) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupWeightedEnergyAll
    ((weightedEnergyAll_iff_reciprocal_tail N).mpr hp)

/-- A single stage bounds the abscissa; it does not set the abscissa to zero. -/
theorem abscissa_le_of_paid_stage {n : ℕ}
    (hp : reciprocalDamping n ∈ pickupEnergyConvergenceSet) :
    pickupEnergyAbscissa ≤ reciprocalDamping n :=
  pickupEnergyAbscissa_le_of_integrable hp.1 hp.2

/-- The full actual integral constant is retained, with no uniform-in-n claim. -/
theorem energy_le_of_paid_stage {n : ℕ}
    (hp : reciprocalDamping n ∈ pickupEnergyConvergenceSet) {T : ℝ} (hT : 0 ≤ T) :
    pickupEnergy T ≤
      (∫ u in Ici (0 : ℝ), Real.exp (-(reciprocalDamping n) * u) * wholePickup u ^ 2) *
        Real.exp (reciprocalDamping n * T) :=
  pickupEnergy_le_weighted_integral hp.1 hT hp.2

/-- This is the old initial energy theorem, not a newly paid smaller damping. -/
theorem initial_stage_paid : reciprocalDamping 0 ∈ pickupEnergyConvergenceSet := by
  rw [reciprocalDamping_zero]
  exact ⟨by norm_num, pickup_weighted_energy_integrable_initial (by norm_num)⟩

/-- The exact positive exponential-moment cost of one smaller damping. -/
theorem reciprocalDamping_drop (n : ℕ) :
    reciprocalDamping n - reciprocalDamping (n + 1) =
      2 / (((n : ℝ) + 1) * ((n : ℝ) + 2)) := by
  have h1 : (n : ℝ) + 1 ≠ 0 := by positivity
  have h2 : (n : ℝ) + 2 ≠ 0 := by positivity
  have hcast : ((n + 1 : ℕ) : ℝ) + 1 = (n : ℝ) + 2 := by
    push_cast
    ring
  unfold reciprocalDamping
  rw [hcast]
  field_simp [h1, h2]
  ring

/-- Lowering damping adds an exponential moment; finite mass alone does not pay it. -/
theorem successor_density_identity (n : ℕ) (u : ℝ) :
    Real.exp (-(reciprocalDamping (n + 1)) * u) * wholePickup u ^ 2 =
      Real.exp ((reciprocalDamping n - reciprocalDamping (n + 1)) * u) *
        (Real.exp (-(reciprocalDamping n) * u) * wholePickup u ^ 2) := by
  rw [← mul_assoc, ← Real.exp_add]
  congr 2; ring

theorem successor_membership_iff_extra_moment (n : ℕ) :
    reciprocalDamping (n + 1) ∈ pickupEnergyConvergenceSet ↔
      IntegrableOn (fun u : ℝ ↦
        Real.exp ((reciprocalDamping n - reciprocalDamping (n + 1)) * u) *
          (Real.exp (-(reciprocalDamping n) * u) * wholePickup u ^ 2)) (Ici 0) := by
  have hid : (fun u : ℝ ↦
      Real.exp (-(reciprocalDamping (n + 1)) * u) * wholePickup u ^ 2) =
      (fun u : ℝ ↦
        Real.exp ((reciprocalDamping n - reciprocalDamping (n + 1)) * u) *
          (Real.exp (-(reciprocalDamping n) * u) * wholePickup u ^ 2)) :=
    funext (successor_density_identity n)
  constructor
  · intro hp
    rw [← hid]
    exact hp.2
  · intro hi
    rw [← hid] at hi
    exact ⟨reciprocalDamping_pos (n + 1), hi⟩

/-- OPEN arithmetic supplier. An implication field is not a construction of its proof. -/
def ReciprocalDescent : Prop :=
  ∀ n : ℕ, reciprocalDamping n ∈ pickupEnergyConvergenceSet →
    reciprocalDamping (n + 1) ∈ pickupEnergyConvergenceSet

theorem paid_stages_of_descent (hstep : ReciprocalDescent) :
    ∀ n : ℕ, reciprocalDamping n ∈ pickupEnergyConvergenceSet := by
  intro n
  induction n with
  | zero => exact initial_stage_paid
  | succ n ih => exact hstep n ih

theorem riemannHypothesis_of_reciprocalDescent (hstep : ReciprocalDescent) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_reciprocal (paid_stages_of_descent hstep)

/-- Any strictly positive floor obstructs cofinality at zero, even with infinitely many rates. -/
theorem positive_floor_not_cofinal (d : ℕ → ℝ) {a : ℝ} (ha : 0 < a)
    (hfloor : ∀ n : ℕ, a ≤ d n) :
    ¬ (∀ σ : ℝ, 0 < σ → ∃ n : ℕ, d n ≤ σ) := by
  intro h
  obtain ⟨n, hn⟩ := h (a / 2) (by linarith)
  have hf := hfloor n
  linarith

/-- Finite prefixes of the prescribed schedule cannot cover arbitrarily small dampings. -/
theorem finite_prefix_not_cofinal (N : ℕ) :
    ¬ (∀ σ : ℝ, 0 < σ →
      ∃ n : ℕ, n ≤ N ∧ reciprocalDamping n ≤ σ) := by
  intro h
  have hpos := reciprocalDamping_pos N
  obtain ⟨n, hn, hsmall⟩ := h (reciprocalDamping N / 2) (by linarith)
  have hf := reciprocalDamping_antitone hn
  linarith

/-- Reuse the old synthetic exponential control; it is NOT the arithmetic pickup. -/
theorem one_paid_rate_not_all :
    ∃ f : ℝ → ℝ, Continuous f ∧
      IntegrableOn (fun u : ℝ ↦ Real.exp (-2 * u) * f u ^ 2) (Ici 0) ∧
      ¬ (∀ σ : ℝ, 0 < σ →
        IntegrableOn (fun u : ℝ ↦ Real.exp (-σ * u) * f u ^ 2) (Ici 0)) := by
  obtain ⟨hc, htwo, hone⟩ := exponential_boundary_control
  refine ⟨fun u : ℝ ↦ Real.exp (u / 2), hc, htwo, ?_⟩
  intro hall
  exact hone (by simpa using hall 1 (by norm_num))

end GRWTSK.RiemannHypothesis.CCC.CofinalDamping
