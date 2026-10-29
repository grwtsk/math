/-
Copyright (c) 2026 grwtsk contributors.
Released under Apache 2.0 license as described in the upstream file LICENSE.
Authors: grwtsk contributors
-/
import Zeta23.ThmE.LocalCountChi
import Mathlib.Analysis.Complex.Norm

/-!
# Finite readouts of primitive-character local zero counts

The source theorem supplies one absolute constant before the modulus, primitive
character and signed real ordinate. It therefore supplies an actual finite
envelope for every selected primitive-character family at a common modulus.
The complex norm argument is the finite-envelope calculation used by
`GRWTSK.Analysis.Inequalities.FiniteCorrelationEnvelope.norm_weighted_sum_le_envelope`
in the root source, specialized here to actual `Zeta23.ThmE.NcountL` values.
The root module is not imported across the toolchain boundary.

`NcountL χ t (t+1)` counts nontrivial zeros of `χ.LFunction` with multiplicity
in the signed ordinate window `(t,t+1]`. Neither distinct-zero nor critical-line
counts replace it. A window meeting zero also retains real nontrivial zeros;
neither nonreality nor positive ordinates are imposed. Family labels need not
give distinct characters; the sum
retains every coefficient and pays its actual l1 mass. Empty families are allowed.
The normalization denominator is positive for `q>1`, for every real `t`.

Upstream: `anthropics/formal-math` commit
`16a5ce41304fcdaea4e0be7c132e1c361dc26da5`, Apache 2.0,
copyright Anthropic, PBC. The proof endpoint is
`Zeta23.ThmE.localCountChi_uniform_proof`, in
`zeta23/Zeta23/ThmE/LocalCountChi.lean`, Git blob
`603d34e2374063f482905e72c84e5666f23275ad`.
Its counting definitions are in `Zeta23.ThmE.Statement`, Git blob
`1aaec6accad36bad8fb204a4b974a58524d3bc98`.
The development accompanies Levent Alpöge and Ralph Furman,
"More than two thirds of the zeta zeros are simple and on the critical line",
arXiv:2608.13637v2 (2026-08-19). Upstream formalization metadata credits Claude;
the package retains its Anthropic copyright and PNT+ vendor notices. This
consumer uses the source-internal local Jensen-count analytic input,
not a critical-line proportion endpoint or an assumed paper-to-theorem identity.

This isolated package retains Lean 4.33.0-rc2 and Mathlib
`51e6992efd06126df61a496bebf8f49482a4e129`. It imports the proved local-count
module and never the challenge's admitted statement stubs. Compilation, fresh
independent kernel replay and complete transitive axiom auditing are NOT_RUN.
No RH, Mertens estimate or Liouville-to-Möbius transport follows.
-/

universe u

namespace GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PrimitiveCharacterZeroCountReadouts

open scoped BigOperators
open Zeta23.ThmE

/-- One source constant controls every finite complex readout. Primitive
characters are required only at selected labels, all at the same modulus. -/
theorem exists_uniform_weighted_zero_count_readout_bound :
    ∃ A : ℝ, 1 ≤ A ∧ ∀ (q : ℕ) [NeZero q], 1 < q →
      ∀ (ι : Type u) (S : Finset ι) (χ : ι → DirichletCharacter ℂ q),
        (∀ i ∈ S, (χ i).IsPrimitive) → ∀ (t : ℝ) (K : ι → ℂ),
          ‖∑ i ∈ S, K i * (NcountL (χ i) t (t + 1) : ℂ)‖ ≤
            A * Real.log ((q : ℝ) * (|t| + 3)) * (∑ i ∈ S, ‖K i‖) := by
  classical
  obtain ⟨A, hA, hcount⟩ := localCountChi_uniform_proof
  refine ⟨A, hA, ?_⟩
  intro q _ hq ι S χ hχ t K
  calc
    ‖∑ i ∈ S, K i * (NcountL (χ i) t (t + 1) : ℂ)‖ ≤
        ∑ i ∈ S, ‖K i‖ * (A * Real.log ((q : ℝ) * (|t| + 3))) := by
      apply (norm_sum_le _ _).trans
      apply Finset.sum_le_sum
      intro i hi
      rw [norm_mul, Complex.norm_natCast]
      exact mul_le_mul_of_nonneg_left (hcount q (χ i) hq (hχ i hi) t) (norm_nonneg _)
    _ = A * Real.log ((q : ℝ) * (|t| + 3)) * (∑ i ∈ S, ‖K i‖) := by
      rw [← Finset.sum_mul]
      ring

/-- The same absolute constant controls the raw readout and its normalized
l1 unit ball. Positivity of the logarithm is proved, including negative `t`;
the constant is chosen before every modulus and finite family. -/
theorem exists_uniform_normalized_zero_count_readout_bounds :
    ∃ A : ℝ, 1 ≤ A ∧ ∀ (q : ℕ) [NeZero q], 1 < q →
      ∀ (ι : Type u) (S : Finset ι) (χ : ι → DirichletCharacter ℂ q),
        (∀ i ∈ S, (χ i).IsPrimitive) → ∀ (t : ℝ) (K : ι → ℂ),
          0 < Real.log ((q : ℝ) * (|t| + 3)) ∧
          ‖∑ i ∈ S, K i * (NcountL (χ i) t (t + 1) : ℂ)‖ ≤
            A * Real.log ((q : ℝ) * (|t| + 3)) * (∑ i ∈ S, ‖K i‖) ∧
          ((∑ i ∈ S, ‖K i‖) ≤ 1 →
            ‖(∑ i ∈ S, K i * (NcountL (χ i) t (t + 1) : ℂ)) /
              ((Real.log ((q : ℝ) * (|t| + 3)) : ℝ) : ℂ)‖ ≤ A) := by
  classical
  obtain ⟨A, hA, hraw⟩ := exists_uniform_weighted_zero_count_readout_bound.{u}
  refine ⟨A, hA, ?_⟩
  intro q _ hq ι S χ hχ t K
  have hq2 : (2 : ℝ) ≤ (q : ℝ) := by
    exact_mod_cast (show 2 ≤ q by omega)
  have ht3 : (3 : ℝ) ≤ |t| + 3 := by linarith [abs_nonneg t]
  have harg : (6 : ℝ) ≤ (q : ℝ) * (|t| + 3) := by
    calc
      (6 : ℝ) = 2 * 3 := by norm_num
      _ ≤ (q : ℝ) * (|t| + 3) :=
        mul_le_mul hq2 ht3 (by norm_num) (by positivity)
  have hlog : 0 < Real.log ((q : ℝ) * (|t| + 3)) :=
    Real.log_pos (lt_of_lt_of_le (by norm_num : (1 : ℝ) < 6) harg)
  have hb := hraw q hq ι S χ hχ t K
  refine ⟨hlog, hb, ?_⟩
  intro hK
  rw [norm_div, Complex.norm_real, Real.norm_of_nonneg hlog.le]
  apply (div_le_iff₀ hlog).2
  apply hb.trans
  simpa only [mul_one] using
    mul_le_mul_of_nonneg_left hK (mul_nonneg (by linarith : 0 ≤ A) hlog.le)

end GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PrimitiveCharacterZeroCountReadouts
