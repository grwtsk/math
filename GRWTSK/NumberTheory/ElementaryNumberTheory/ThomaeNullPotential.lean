/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ElementaryNumberTheory.CyclicPopcornKernel
import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
import Mathlib.MeasureTheory.Measure.Typeclasses.NullSingletonClass
import Mathlib.Data.Rat.Cast.Order
import Mathlib.Tactic

/-!
# Rational spikes are invisible to the Lebesgue potential

The actual reciprocal-denominator Thomae function is defined on real
inputs. Both it and its reflected sum vanish Lebesgue-almost everywhere.
Therefore their multiplication integrals are zero, for arbitrary factors.
No atomic measure or unbounded point-evaluation form is silently substituted.
The finite cyclic popcorn kernel has a different, explicit counting-measure
interpretation.

Exact-pin elaboration, expected types, fresh kernel replay, transitive axiom
audit and independent review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Filter Set
open scoped Classical

namespace GRWTSK.NumberTheory.ThomaeNullPotential

/-- Rational heights are measured by the denominator of the reduced rational. -/
def thomae (x : ℝ) : ℝ :=
  if h : ∃ r : ℚ, (r : ℝ) = x then
    ((Classical.choose h).den : ℝ)⁻¹
  else 0

@[simp] theorem thomae_rat (r : ℚ) : thomae (r : ℝ) = (r.den : ℝ)⁻¹ := by
  have h : ∃ q : ℚ, (q : ℝ) = (r : ℝ) := ⟨r, rfl⟩
  have hq : Classical.choose h = r := by
    exact_mod_cast Classical.choose_spec h
  simp [thomae, h, hq]

/-- Reduction of a rational argument gives the exact gcd-over-period height. -/
theorem thomae_nat_fraction (a p : ℕ) (hp : 0 < p) :
    thomae ((a : ℝ) / (p : ℝ)) = (Nat.gcd a p : ℝ) / (p : ℝ) := by
  have hcast : (((a : ℚ) / (p : ℚ) : ℚ) : ℝ) = (a : ℝ) / (p : ℝ) := by
    push_cast <;> rfl
  rw [← hcast, thomae_rat]
  have hden : ((a : ℚ) / (p : ℚ)).den = p / Nat.gcd a p := by
    rw [Rat.natCast_div_eq_divInt, Rat.den_divInt]
    simp [hp.ne', Int.gcd, Nat.gcd_comm]
  rw [hden]
  have hmul : ((p / Nat.gcd a p : ℕ) : ℝ) * (Nat.gcd a p : ℝ) = (p : ℝ) := by
    exact_mod_cast Nat.div_mul_cancel (Nat.gcd_dvd_right a p)
  have hp' : (p : ℝ) ≠ 0 := by exact_mod_cast hp.ne'
  have hden' : ((p / Nat.gcd a p : ℕ) : ℝ) ≠ 0 := by
    intro hz
    rw [hz, zero_mul] at hmul
    exact hp' hmul.symm
  apply (eq_div_iff hp').2
  rw [← hmul, ← mul_assoc, inv_mul_cancel₀ hden', one_mul]

/-- The finite matrix is the literal Thomae height of an explicit
representative of the cyclic difference, not an unrelated fitted kernel. -/
theorem kernel_eq_thomae {p : ℕ} (hp : 0 < p) (i j : Fin p) :
    CyclicPopcorn.kernel p i j =
      thomae (((i.val + p - j.val : ℕ) : ℝ) / (p : ℝ)) := by
  rw [thomae_nat_fraction _ p hp, CyclicPopcorn.kernel_eq_gcd hp]

theorem ae_zero_of_zero_off_rationals {f : ℝ → ℝ}
    (h : ∀ x, (¬ ∃ r : ℚ, (r : ℝ) = x) → f x = 0) :
    f =ᵐ[volume] 0 := by
  have hz : volume (Set.range (fun r : ℚ => (r : ℝ))) = 0 :=
    (Set.countable_range (fun r : ℚ => (r : ℝ))).measure_zero volume
  have hout : ∀ᵐ x : ℝ, x ∉ Set.range (fun r : ℚ => (r : ℝ)) := by
    rw [ae_iff]
    simpa using hz
  filter_upwards [hout] with x hx
  exact h x hx

theorem thomae_ae_zero : thomae =ᵐ[volume] 0 := by
  apply ae_zero_of_zero_off_rationals
  intro x hx
  simp [thomae, hx]

/-- Mirroring the pointwise graph does not change its Lebesgue nullity. -/
def mirroredThomae (x : ℝ) : ℝ := thomae x + thomae (-x)

theorem mirroredThomae_ae_zero : mirroredThomae =ᵐ[volume] 0 := by
  apply ae_zero_of_zero_off_rationals
  intro x hx
  have hn : ¬ ∃ r : ℚ, (r : ℝ) = -x := by
    rintro ⟨r, hr⟩
    apply hx
    refine ⟨-r, ?_⟩
    push_cast
    linarith
  simp [mirroredThomae, thomae, hx, hn]

theorem thomae_mul_ae_zero (f : ℝ → ℝ) :
    (fun x => thomae x * f x) =ᵐ[volume] 0 := by
  filter_upwards [thomae_ae_zero] with x hx
  simp [hx]

theorem integral_mirroredThomae_mul (f : ℝ → ℝ) :
    (∫ x : ℝ, mirroredThomae x * f x) = 0 := by
  have hzero : (fun x => mirroredThomae x * f x) =ᵐ[volume] 0 := by
    filter_upwards [mirroredThomae_ae_zero] with x hx
    simp [hx]
  rw [integral_congr_ae hzero, integral_zero]

end GRWTSK.NumberTheory.ThomaeNullPotential
