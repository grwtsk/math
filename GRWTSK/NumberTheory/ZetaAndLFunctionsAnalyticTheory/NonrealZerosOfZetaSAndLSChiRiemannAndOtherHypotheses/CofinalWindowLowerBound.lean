/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import Mathlib.Analysis.SpecificLimits.Normed
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Cofinal closure for lower bounds on one fixed source form

A compactly supported admissible test has a finite support radius, so it belongs to
every sufficiently large window of radius `j + 1`. Apply window soundness to that
same test and take the real limit of its lower bounds. Its source value and norm
are fixed, and the dyadic multiplier tends to zero. Equivalently, a strictly
negative value would eventually exceed the allowed negative error in magnitude.

The acceptance premise is quantified over every sector and stage. The theorem
consumes it without assuming an executable infinite enumeration. The window
soundness premise compares directly to one source value for the test. A family of
different stage-wise source values, a bounded stage list, or an unsupported tail
estimate does not meet these premises. A caller must separately identify the
source test domain and prove acceptance soundness and universal existence.

This formalizes the elementary limit argument in the CR-MATH-001 brief. No
novelty claim. Independent analytical review: NOT_RUN.
-/

open Filter Topology

namespace GRWTSK.NumberTheory.Weil

/-- Dyadic stage bounds give nonnegativity on every admissible test of the same source. -/
theorem nonnegative_of_cofinal_window_certificates
    {Sector Cert : Type*} {Test : Sector → Type*}
    (supportRadius value normSq : (a : Sector) → Test a → ℝ)
    (accepts : Sector → ℕ → Cert → Prop)
    (soundness : ∀ a j c, accepts a j c → ∀ f : Test a,
      supportRadius a f ≤ (j : ℝ) + 1 →
      -((1 / 2 : ℝ) ^ j) * normSq a f ≤ value a f)
    (coverage : ∀ a j, ∃ c, accepts a j c) :
    ∀ a (f : Test a), 0 ≤ value a f := by
  intro a f
  obtain ⟨j₀, hj₀⟩ := exists_nat_ge (supportRadius a f)
  have hbound : ∀ᶠ j : ℕ in atTop, -((1 / 2 : ℝ) ^ j) * normSq a f ≤ value a f := by
    refine eventually_atTop.mpr ⟨j₀, fun j hj => ?_⟩
    obtain ⟨c, hc⟩ := coverage a j
    have hle : (j₀ : ℝ) ≤ j := Nat.cast_le.mpr hj
    exact soundness a j c hc f (hj₀.trans (hle.trans (le_add_of_nonneg_right zero_le_one)))
  have ht : Tendsto (fun j : ℕ => (1 / 2 : ℝ) ^ j) atTop (𝓝 0) :=
    tendsto_pow_atTop_nhds_zero_of_abs_lt_one (by norm_num)
  have ht' : Tendsto (fun j : ℕ => -((1 / 2 : ℝ) ^ j) * normSq a f) atTop (𝓝 0) := by
    simpa only [neg_zero, zero_mul] using ht.neg.mul_const (normSq a f)
  exact le_of_tendsto ht' hbound

end GRWTSK.NumberTheory.Weil
