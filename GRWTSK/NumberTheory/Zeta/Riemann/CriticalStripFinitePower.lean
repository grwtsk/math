/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinBounds
import Mathlib.NumberTheory.AbelSummation
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

set_option autoImplicit false

/-!
# Exact finite power representation of the pole-normalized zeta source

Finite Abel summation removes the quadrature integral from the existing truncated
Mellin model. The result is a finite sum of powers at POSITIVE integer bases plus
one endpoint power. It is not a claim that complex powers are rationally computable
without an enclosure supplier. The old, genuinely proved Mellin tail is retained.

The proof handles s=1 separately and never divides by s-1 there. Every source
identity below requires a positive integer cutoff and Re(s)>0. These are source
proofs awaiting the pinned Lean elaboration and transitive axiom audit.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent

open Complex MeasureTheory Set Filter
open scoped Topology

noncomputable section

/-- The coefficient at zero is deliberately excluded from finite Abel summation. -/
def positiveUnitCoefficient (k : ℕ) : ℂ := if k = 0 then 0 else 1

lemma sum_Icc_zero_eq_sum_Icc_one (u : ℕ → ℂ) (hzero : u 0 = 0) (N : ℕ) :
    (∑ k ∈ Finset.Icc 0 N, u k) = ∑ k ∈ Finset.Icc 1 N, u k := by
  rw [← Finset.insert_Icc_add_one_left_eq_Icc (Nat.zero_le N),
    Finset.sum_insert (by simp), hzero, zero_add]

lemma positiveUnitCoefficient_sum (N : ℕ) :
    (∑ k ∈ Finset.Icc 0 N, positiveUnitCoefficient k) = (N : ℂ) := by
  rw [sum_Icc_zero_eq_sum_Icc_one positiveUnitCoefficient (by simp [positiveUnitCoefficient])]
  calc
    (∑ k ∈ Finset.Icc 1 N, positiveUnitCoefficient k) =
        ∑ k ∈ Finset.Icc 1 N, (1 : ℂ) := by
      apply Finset.sum_congr rfl
      intro k hk
      simp [positiveUnitCoefficient, Nat.ne_of_gt
        (lt_of_lt_of_le Nat.zero_lt_one (Finset.mem_Icc.mp hk).1)]
    _ = (N : ℂ) := by simp

/-- Finite sum only; the undefined-at-zero power term is not part of the carrier. -/
def finiteDirichletPowerSum (N : ℕ) (s : ℂ) : ℂ :=
  ∑ k ∈ Finset.Icc 1 N, (k : ℂ) ^ (-s)

/-- This expression has no apparent pole at s=1. The endpoint power is essential. -/
def finitePowerPoleModel (N : ℕ) (s : ℂ) : ℂ :=
  (s - 1) * finiteDirichletPowerSum N s + (N : ℂ) ^ (1 - s)

@[simp] theorem finitePowerPoleModel_at_one (N : ℕ) :
    finitePowerPoleModel N 1 = 1 := by simp [finitePowerPoleModel]

@[simp] theorem finitePowerPoleModel_cutoff_one (s : ℂ) :
    finitePowerPoleModel 1 s = s := by
  simp [finitePowerPoleModel, finiteDirichletPowerSum]

lemma nat_neg_cpow_mul {N : ℕ} (hN : 1 ≤ N) (s : ℂ) :
    (N : ℂ) ^ (-s) * (N : ℂ) = (N : ℂ) ^ (1 - s) := by
  have hN0 : (N : ℂ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt (lt_of_lt_of_le
    Nat.zero_lt_one hN))
  calc
    (N : ℂ) ^ (-s) * (N : ℂ) = (N : ℂ) ^ (-s) * (N : ℂ) ^ (1 : ℂ) := by
      rw [Complex.cpow_one]
    _ = (N : ℂ) ^ (-s + 1) := (Complex.cpow_add _ _ hN0).symm
    _ = (N : ℂ) ^ (1 - s) := by congr 1; ring

/-- Finite Abel summation with every positive integer counted exactly once. -/
theorem finiteDirichletPowerSum_abel {N : ℕ} {s : ℂ}
    (hN : 1 ≤ N) (hs : 0 < s.re) :
    finiteDirichletPowerSum N s = (N : ℂ) ^ (1 - s) +
      s * ∫ t : ℝ in Ioc 1 (N : ℝ),
        (⌊t⌋₊ : ℂ) * (t : ℂ) ^ (-(s + 1)) := by
  have hs0 : -s ≠ 0 := neg_ne_zero.mpr (Complex.ne_zero_of_re_pos hs)
  have hdiff : ∀ t ∈ Icc (1 : ℝ) (N : ℝ),
      DifferentiableAt ℝ (fun t : ℝ => (t : ℂ) ^ (-s)) t := by
    intro t ht
    exact (hasDerivAt_ofReal_cpow_const (zero_lt_one.trans_le ht.1).ne' hs0).differentiableAt
  have hcont : ContinuousOn (fun t : ℝ => -s * (t : ℂ) ^ (-s - 1))
      (Icc (1 : ℝ) (N : ℝ)) := by
    apply continuousOn_const.mul
    intro t ht
    exact (Complex.continuousAt_ofReal_cpow_const _ _
      (Or.inr (zero_lt_one.trans_le ht.1).ne')).continuousWithinAt
  have hint : IntegrableOn (deriv (fun t : ℝ => (t : ℂ) ^ (-s)))
      (Icc (1 : ℝ) (N : ℝ)) := by
    refine hcont.integrableOn_Icc.congr_fun ?_ measurableSet_Icc
    intro t ht
    rw [Complex.deriv_ofReal_cpow_const (zero_lt_one.trans_le ht.1).ne' hs0]
  have hab := sum_mul_eq_sub_integral_mul₀' positiveUnitCoefficient
    (by simp [positiveUnitCoefficient]) N hdiff hint
  simp only [Complex.ofReal_natCast] at hab
  have hsum : (∑ k ∈ Finset.Icc 0 N,
      (k : ℂ) ^ (-s) * positiveUnitCoefficient k) = finiteDirichletPowerSum N s := by
    rw [sum_Icc_zero_eq_sum_Icc_one _ (by simp [positiveUnitCoefficient])]
    apply Finset.sum_congr rfl
    intro k hk
    simp [positiveUnitCoefficient, Nat.ne_of_gt
      (lt_of_lt_of_le Nat.zero_lt_one (Finset.mem_Icc.mp hk).1)]
  rw [hsum, positiveUnitCoefficient_sum] at hab
  have hderivIntegral :
      (∫ t : ℝ in Ioc 1 (N : ℝ),
        deriv (fun t : ℝ => (t : ℂ) ^ (-s)) t *
          ∑ k ∈ Finset.Icc 0 ⌊t⌋₊, positiveUnitCoefficient k) =
      -s * ∫ t : ℝ in Ioc 1 (N : ℝ),
        (⌊t⌋₊ : ℂ) * (t : ℂ) ^ (-(s + 1)) := by
    rw [← integral_const_mul]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro t ht
    rw [positiveUnitCoefficient_sum,
      Complex.deriv_ofReal_cpow_const (zero_lt_one.trans ht.1).ne' hs0]
    rw [show -s - 1 = -(s + 1) by ring]
    ring
  rw [hderivIntegral, nat_neg_cpow_mul hN] at hab
  calc
    finiteDirichletPowerSum N s = _ := hab
    _ = _ := by ring

/-- The elementary finite power integral is used only away from the exceptional
exponent -1. The later normalized identity handles s=1 without this division. -/
lemma finite_floor_integral_eq {N : ℕ} {s : ℂ}
    (hN : 1 ≤ N) (hs : 0 < s.re) (hs1 : s ≠ 1) :
    (∫ t : ℝ in Ioc 1 (N : ℝ),
      (⌊t⌋₊ : ℂ) * (t : ℂ) ^ (-(s + 1))) =
      ((N : ℂ) ^ (1 - s) - 1) / (1 - s) -
        fractionalMellinTruncation (N : ℝ) s := by
  have hNR : (1 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
  have hcont : ContinuousOn (fun t : ℝ => (t : ℂ) ^ (-s))
      (Icc (1 : ℝ) (N : ℝ)) := by
    intro t ht
    exact (Complex.continuousAt_ofReal_cpow_const _ _
      (Or.inr (zero_lt_one.trans_le ht.1).ne')).continuousWithinAt
  have hi : IntegrableOn (fun t : ℝ => (t : ℂ) ^ (-s)) (Ioc 1 (N : ℝ)) :=
    hcont.integrableOn_Icc.mono_set Ioc_subset_Icc_self
  have hj : IntegrableOn (fractionalIntegrand s) (Ioc 1 (N : ℝ)) :=
    (fractionalIntegrand_integrable hs).mono_set Ioc_subset_Ioi_self
  have hsplit :
      (∫ t : ℝ in Ioc 1 (N : ℝ),
        (⌊t⌋₊ : ℂ) * (t : ℂ) ^ (-(s + 1))) =
      (∫ t : ℝ in Ioc 1 (N : ℝ), (t : ℂ) ^ (-s)) -
        fractionalMellinTruncation (N : ℝ) s := by
    rw [← integral_sub hi hj]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro t ht
    simp only [fractionalIntegrand]
    rw [sub_mul, real_mul_cpow_sub_one s (zero_lt_one.trans ht.1)]
    ring
  rw [hsplit]
  congr 1
  have hzero : (0 : ℝ) ∉ uIcc 1 (N : ℝ) := by
    rw [uIcc_of_le hNR]
    intro h
    exact (not_le_of_gt zero_lt_one) h.1
  rw [← intervalIntegral.integral_of_le hNR,
    integral_cpow (Or.inr ⟨neg_ne_neg.mpr hs1, hzero⟩)]
  simp only [Complex.ofReal_natCast, Complex.ofReal_one, Complex.one_cpow]
  rw [show -s + 1 = 1 - s by ring]

/-- Exact equality of the finite-integral and finite-power models. -/
theorem truncatedPoleModel_eq_finitePower {N : ℕ} {s : ℂ}
    (hN : 1 ≤ N) (hs : 0 < s.re) :
    truncatedPoleModel (N : ℝ) s = finitePowerPoleModel N s := by
  by_cases hs1 : s = 1
  · subst s
    simp [truncatedPoleModel]
  · have hab := finiteDirichletPowerSum_abel hN hs
    rw [finite_floor_integral_eq hN hs hs1] at hab
    unfold truncatedPoleModel finitePowerPoleModel
    rw [hab]
    have hden : 1 - s ≠ 0 := sub_ne_zero.mpr (Ne.symm hs1)
    field_simp [hden] <;> ring

/-- The residual is the same sourced Mellin tail, not a new formal error label. -/
theorem finitePower_source_residual {N : ℕ} {s : ℂ}
    (hN : 1 ≤ N) (hs : 0 < s.re) :
    poleNormalizedZeta s - finitePowerPoleModel N s =
      -(s * (s - 1)) * fractionalMellinTail (N : ℝ) s := by
  rw [← truncatedPoleModel_eq_finitePower hN hs]
  exact poleNormalized_truncation_residual (by exact_mod_cast hN) hs

/-- Integer cutoff enclosure with no quadrature premise. -/
theorem finitePower_source_error {N : ℕ} {σ : ℝ} {s : ℂ}
    (hN : 1 ≤ N) (hσ : 0 < σ) (hs : σ ≤ s.re) :
    ‖poleNormalizedZeta s - finitePowerPoleModel N s‖ ≤
      ‖s‖ * ‖s - 1‖ * ((N : ℝ) ^ (-σ) / σ) := by
  rw [← truncatedPoleModel_eq_finitePower hN (hσ.trans_le hs)]
  exact poleNormalized_truncation_error (by exact_mod_cast hN) hσ hs

/-- Uniformity requires both a real-part margin and a complex-modulus bound. -/
theorem finitePower_source_error_uniform {N : ℕ} {σ B : ℝ} {s : ℂ}
    (hN : 1 ≤ N) (hσ : 0 < σ) (hs : σ ≤ s.re) (hB : ‖s‖ ≤ B) :
    ‖poleNormalizedZeta s - finitePowerPoleModel N s‖ ≤
      B * (B + 1) * ((N : ℝ) ^ (-σ) / σ) := by
  rw [← truncatedPoleModel_eq_finitePower hN (hσ.trans_le hs)]
  exact poleNormalized_truncation_error_uniform (by exact_mod_cast hN) hσ hs hB

/-- Omitting the endpoint gives the wrong removable value, already at s=1. -/
theorem endpoint_term_cannot_be_dropped (N : ℕ) :
    (1 - 1 : ℂ) * finiteDirichletPowerSum N 1 ≠ poleNormalizedZeta 1 := by
  simp [poleNormalizedZeta_one]

end

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent
