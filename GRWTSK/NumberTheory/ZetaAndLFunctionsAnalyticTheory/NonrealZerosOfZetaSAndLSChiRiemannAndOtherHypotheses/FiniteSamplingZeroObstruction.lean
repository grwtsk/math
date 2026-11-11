/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's MIT license.
Authors: grwtsk contributors
-/
import Mathlib

/-!
# Finite observations do not determine real-zero localization

A source candidate for RP-OC-09, not a proof or disproof of RH/GRH.

Source: grwtsk contributors, *Typed Mathematical Architecture and
Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10),
section 20.5 (printed page 45), with the symmetry controls of section 14.5.
The arbitrary-finite-sampling construction below is a local elementary
consequence proposed in grwtsk/math#1803, not a theorem quoted from the paper.
The adjacent Markdown records the statement, argument, scope and provenance.

For every finite set S of real sample nodes, set
  G_S(z) = 1 + z^2 * product_{a in S} (a^2-z^2)/(1+a^2).
This is an even entire polynomial, respects complex conjugation, and has value
one at every sample and at zero. Nevertheless G_S(I)=0, while the constant
function one has no zeros. Thus no predicate depending only on those fixed
finite observations characterizes real-zero localization on this class.

This synthetic function has no asserted Euler product, functional equation
of an arithmetic completion, critical-strip divisor, or Weil source identity.
No finite observation is substituted for the actual Dirichlet L-function.

Lean elaboration, fresh kernel replay, transitive axiom audit and independent
review: NOT_RUN. No proof-execution service is invoked by this source.
-/

noncomputable section
open scoped BigOperators

namespace GRWTSK.FiniteSamplingZeroObstruction

/-- A polynomial factor with a strictly positive real normalization divisor. -/
def factor (a : ℝ) (z : ℂ) : ℂ :=
  ((a : ℂ) ^ 2 - z ^ 2) * (((1 + a ^ 2)⁻¹ : ℝ) : ℂ)

/-- The normalized even finite-sampling negative control. -/
def control (S : Finset ℝ) (z : ℂ) : ℂ :=
  1 + z ^ 2 * ∏ a ∈ S, factor a z

/-- The genuine all-zero property for a complex-valued function. -/
def RealZeros (f : ℂ → ℂ) : Prop :=
  ∀ z : ℂ, f z = 0 → z.im = 0

/-- An analytic comparison class, not a class of arithmetic L-functions. -/
def Admissible (f : ℂ → ℂ) : Prop :=
  Differentiable ℂ f ∧
  (∀ z : ℂ, f (-z) = f z) ∧
  (∀ z : ℂ, f (starRingEnd ℂ z) = starRingEnd ℂ (f z)) ∧
  f 0 = 1

/-- Finite observations retain sample identities but no unsampled values. -/
def observations (S : Finset ℝ) (f : ℂ → ℂ) :
    {a : ℝ // a ∈ S} → ℂ :=
  fun a => f (a.val : ℂ)

lemma factor_at_self (a : ℝ) : factor a (a : ℂ) = 0 := by
  simp [factor]

lemma factor_at_I (a : ℝ) : factor a Complex.I = 1 := by
  have hden : (1 + a ^ 2 : ℝ) ≠ 0 := ne_of_gt (by positivity)
  have hnum : (a : ℂ) ^ 2 - Complex.I ^ 2 = ((1 + a ^ 2 : ℝ) : ℂ) := by
    rw [Complex.I_sq]
    push_cast
    ring
  rw [factor, hnum, ← Complex.ofReal_mul, mul_inv_cancel₀ hden]

lemma factor_neg (a : ℝ) (z : ℂ) : factor a (-z) = factor a z := by
  simp [factor]

lemma factor_conj (a : ℝ) (z : ℂ) :
    factor a (starRingEnd ℂ z) = starRingEnd ℂ (factor a z) := by
  simp [factor, map_mul, map_sub, map_pow]

lemma control_at_zero (S : Finset ℝ) : control S 0 = 1 := by
  simp [control]

lemma control_at_sample (S : Finset ℝ) {a : ℝ} (ha : a ∈ S) :
    control S (a : ℂ) = 1 := by
  have hp : (∏ b ∈ S, factor b (a : ℂ)) = 0 :=
    Finset.prod_eq_zero ha (factor_at_self a)
  simp [control, hp]

lemma control_at_I (S : Finset ℝ) : control S Complex.I = 0 := by
  simp [control, factor_at_I, Complex.I_sq]

lemma control_even (S : Finset ℝ) (z : ℂ) :
    control S (-z) = control S z := by
  simp [control, factor_neg]

lemma control_conj (S : Finset ℝ) (z : ℂ) :
    control S (starRingEnd ℂ z) = starRingEnd ℂ (control S z) := by
  simp [control, factor_conj, map_add, map_mul, map_pow, map_prod]

lemma control_differentiable (S : Finset ℝ) :
    Differentiable ℂ (control S) := by
  unfold control factor
  fun_prop

lemma control_admissible (S : Finset ℝ) : Admissible (control S) := by
  exact ⟨control_differentiable S, control_even S, control_conj S,
    control_at_zero S⟩

lemma one_admissible : Admissible (fun _ : ℂ => (1 : ℂ)) := by
  refine ⟨differentiable_const _, ?_, ?_, rfl⟩
  · intro z
    rfl
  · intro z
    simp

lemma one_realZeros : RealZeros (fun _ : ℂ => (1 : ℂ)) := by
  intro z hz
  exact (one_ne_zero hz).elim

lemma control_not_realZeros (S : Finset ℝ) : ¬ RealZeros (control S) := by
  intro h
  have hI := h Complex.I (control_at_I S)
  norm_num at hI

lemma control_not_identically_zero (S : Finset ℝ) :
    control S ≠ (fun _ : ℂ => 0) := by
  intro h
  have h0 := congrFun h 0
  simpa [control_at_zero] using h0

lemma observations_one_eq_control (S : Finset ℝ) :
    observations S (fun _ : ℂ => (1 : ℂ)) = observations S (control S) := by
  funext a
  change (1 : ℂ) = control S (a.val : ℂ)
  exact (control_at_sample S a.property).symm

/-- Every fixed finite real sample set misses a normalized, symmetric counterexample. -/
theorem finite_sampling_obstruction (S : Finset ℝ) :
    ∃ f g : ℂ → ℂ,
      Admissible f ∧ Admissible g ∧
      observations S f = observations S g ∧ RealZeros f ∧ ¬ RealZeros g := by
  exact ⟨fun _ => 1, control S, one_admissible, control_admissible S,
    observations_one_eq_control S, one_realZeros, control_not_realZeros S⟩

/-- No predicate of a fixed finite sample vector classifies this entire comparison class.
This is not a claim of algorithmic undecidability or a result about adaptive sampling. -/
theorem no_finite_observation_classifier (S : Finset ℝ) :
    ¬ ∃ classify : ({a : ℝ // a ∈ S} → ℂ) → Prop,
      ∀ f : ℂ → ℂ, Admissible f →
        (classify (observations S f) ↔ RealZeros f) := by
  rintro ⟨classify, hclassify⟩
  have hgood := (hclassify (fun _ => 1) one_admissible).mpr one_realZeros
  rw [observations_one_eq_control S] at hgood
  exact control_not_realZeros S
    ((hclassify (control S) (control_admissible S)).mp hgood)

/-- Empty observations are included: the control is still normalized and nonzero. -/
theorem empty_samples_control (z : ℂ) : control ∅ z = 1 + z ^ 2 := by
  simp [control]

end GRWTSK.FiniteSamplingZeroObstruction
