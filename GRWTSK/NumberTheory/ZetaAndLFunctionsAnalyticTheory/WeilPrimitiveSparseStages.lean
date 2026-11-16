/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRightStripWitnessReturn

/-!
# Cofinal stage certificates for primitive Dirichlet characters

The zeta-only `OddCofinalCoverage.stageLower_of_later` transports a later
certificate to an earlier window. Here the same argument works on the
original signed Dirichlet arithmetic value. The pointwise support extends
from the smaller window, the arithmetic value agrees on the two windows,
and the squared energy is nonnegative, so the smaller dyadic error at the
later stage implies the earlier bound. If the conductor meets the later
stage's frontier, its original arithmetic value is already nonnegative.

The exact window and frontier theorems come from `WeilConductorFrontier`
at `b3164b890d83efe068c944cf1d8339ad9a720769`. The stage type is from
`2ceec84246b42efec174f734eb31685d809746a5`. Independent schedules are allowed
for the different characters in the right-strip witness return at
`7d64aec18be7ecaa87cbd0bd6d2371a76de04343`. A finite set of accepted
stages fails the unboundedness premise. The conductor-one RH input,
right-half negative witnesses and existence of cofinal certificates remain
separate hypotheses.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open MeasureTheory Set SourcePrimeCorrelation
open GRWTSK.NumberTheory.Conditional

/-- A cofinal sequence of certified stages, with the exact conductor frontier
at the chosen stage, supplies the original small-conductor chain. -/
theorem smallConductorStages_of_cofinal_indices {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    (index : ℕ → ℕ) (hcover : ∀ j : ℕ, ∃ n : ℕ, j ≤ index n)
    (hstage : ∀ n : ℕ, χ.conductor < conductorFrontier (index n + 1) →
      PrimitiveStageLower χ hp hn (index n)) :
    SmallConductorStages χ hp hn := by
  intro j _ f hf
  obtain ⟨n, hj⟩ := hcover j
  rcases hf with ⟨_, hdiff, hcompact, hodd, hLp, hsupport, harch⟩
  have hradius : (j : ℝ) + 1 ≤ (index n : ℝ) + 1 := by
    exact_mod_cast Nat.add_le_add_right hj 1
  have hsupport' : ∀ t, t ∉ Icc (-((index n : ℝ) + 1)) ((index n : ℝ) + 1) →
      liftReal f t = 0 := by
    intro t hout
    exact hsupport t fun hin => hout ⟨(neg_le_neg hradius).trans hin.1, hin.2.trans hradius⟩
  have henergy : 0 ≤ energy (liftReal f) := by
    rw [energy_eq_norm_toLp_sq hLp]
    exact sq_nonneg _
  have hpow : (1 / 2 : ℝ) ^ index n ≤ (1 / 2 : ℝ) ^ j :=
    pow_le_pow_of_le_one (by norm_num) (by norm_num) hj
  rw [primitiveArithmeticValue_eq_of_le χ hp hn hsupport hradius]
  by_cases hsmall : χ.conductor < conductorFrontier (index n + 1)
  · have htest : Admissible χ ((index n : ℝ) + 1) f :=
      ⟨by positivity, hdiff, hcompact, hodd, hLp, hsupport', harch⟩
    exact (mul_le_mul_of_nonneg_right (neg_le_neg hpow) henergy).trans
      (hstage n hsmall f htest)
  · have hlarge := primitiveArithmeticValue_nonneg_of_frontier χ hp hn
      (index n + 1) hLp harch (le_of_not_gt hsmall)
    rw [Nat.cast_add, Nat.cast_one] at hlarge
    exact (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr (by positivity)) henergy).trans hlarge

/-- The right-strip consumer permits a separate cofinal schedule for each
primitive nonprincipal character, including the inverse character. -/
theorem dirichletGRH_of_rh_rightStrip_and_cofinal_stages
    (hRH : _root_.RiemannHypothesis) (hwitness : PrimitiveRightStripNegativeWitness)
    (hcofinal : ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q)
      (hp : χ.IsPrimitive) (hn : χ ≠ 1), ∃ index : ℕ → ℕ,
        (∀ j : ℕ, ∃ n : ℕ, j ≤ index n) ∧
        (∀ n : ℕ, χ.conductor < conductorFrontier (index n + 1) →
          PrimitiveStageLower χ hp hn (index n))) :
    DirichletGRH := by
  apply dirichletGRH_of_rh_and_rightStrip_witness hRH hwitness
  intro q hq χ hp hn
  obtain ⟨index, hcover, hstage⟩ := hcofinal q χ hp hn
  exact smallConductorStages_of_cofinal_indices χ hp hn index hcover hstage

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
