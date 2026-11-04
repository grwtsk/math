/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ConditionalPrimeIntervals

set_option autoImplicit false

noncomputable section

/-!
# Dirichlet-GRH certificates for primes in an arithmetic progression

The arithmetic source is a finite sum of log(p) over actual primes p <= x
with p mod q = r mod q. At modulus one it is exactly Mathlib's theta, not an
analogous replacement. A strict increase extracts a prime with that congruence.

A finite character-indexed zero contribution is bounded by sqrt(x) times its
full weighted spectral mass. Each selected root belongs to the actual
LFunction of its selected character; GRH is consumed at that character, and
all complex character weights and inverse-zero denominators are retained.
Neither the selected character family nor its zero inventory is declared
complete. Repeated character/root indices remain explicit multiplicities.

The final theorem returns a prime only from two exact formula certificates,
complete remainder bounds, and a strict main-term gap. The density is a
parameter fixed by those formulae; selecting 1/phi(q) requires the appropriate
arithmetic formula and coprimality context. This module does NOT prove character
orthogonality, a progression explicit formula, zero-counting, truncation tails,
or a least-prime bound. Because its source is theta, any conversion from a psi
formula must include prime-power and endpoint corrections in the remainder.
These obligations cannot be discharged merely by assuming GRH.

Primary argument: apply the actual one-character square-root estimate, sum
with normed weights, and compare the two finite prime supports. The modulus-one
identity is an exact source check. No theorem-level novelty claim; this is a
composable conditional consumer, not a new unconditional arithmetic estimate.
Source pins and upstream attribution are recorded in ConditionalPrimeIntervals
and ConditionalFiniteZeroCalculus. AI-assisted formalization.
Independent analytical review, compilation, fresh kernel checking and transitive
axiom audit: NOT_RUN. No execution or dependency migration is introduced.
-/

namespace GRWTSK.NumberTheory.Conditional.ProgressionIntervals

open scoped BigOperators
open GRWTSK.NumberTheory.CriticalLine GRWTSK.NumberTheory.Conditional.FiniteZeros

/-- Logarithmically weighted actual primes in a fixed congruence class. -/
def progressionTheta (q r : ℕ) (x : ℝ) : ℝ :=
  ∑ p ∈ (Finset.Ioc 0 ⌊x⌋₊).filter (fun p => p.Prime ∧ p % q = r % q),
    Real.log p

/-- Exact comparison with the upstream arithmetic object. -/
theorem progressionTheta_mod_one (r : ℕ) (x : ℝ) :
    progressionTheta 1 r x = Chebyshev.theta x := by
  simp [progressionTheta, Chebyshev.theta]

theorem exists_prime_of_progressionTheta_lt {q r : ℕ} {a b : ℝ} (ha : 0 ≤ a)
    (hθ : progressionTheta q r a < progressionTheta q r b) :
    ∃ p : ℕ, p.Prime ∧ p % q = r % q ∧ a < (p : ℝ) ∧ (p : ℝ) ≤ b := by
  by_contra hnone
  have hsub : (Finset.Ioc 0 ⌊b⌋₊).filter (fun p => p.Prime ∧ p % q = r % q) ⊆
      (Finset.Ioc 0 ⌊a⌋₊).filter (fun p => p.Prime ∧ p % q = r % q) := by
    intro p hp
    obtain ⟨hpI, hprime, hmod⟩ := Finset.mem_filter.mp hp
    obtain ⟨hpos, hupper⟩ := Finset.mem_Ioc.mp hpI
    have hpb : (p : ℝ) ≤ b := (Nat.le_floor_iff' hpos.ne').mp hupper
    have hpa : (p : ℝ) ≤ a :=
      le_of_not_gt (fun h => hnone ⟨p, hprime, hmod, h, hpb⟩)
    exact Finset.mem_filter.mpr
      ⟨Finset.mem_Ioc.mpr ⟨hpos, (Nat.le_floor_iff ha).mpr hpa⟩, hprime, hmod⟩
  have hle : progressionTheta q r b ≤ progressionTheta q r a := by
    unfold progressionTheta
    exact Finset.sum_le_sum_of_subset_of_nonneg hsub
      (fun p _ _ => Real.log_natCast_nonneg p)
  exact (not_lt_of_ge hle) hθ

/-- The arithmetic extraction is independent of the supplier of the analytic estimates. -/
theorem prime_of_progression_errors {q r : ℕ} {density a b Ea Eb : ℝ}
    (ha : 0 ≤ a)
    (hA : |progressionTheta q r a - density * a| ≤ Ea)
    (hB : |progressionTheta q r b - density * b| ≤ Eb)
    (gap : Ea + Eb < density * (b - a)) :
    ∃ p : ℕ, p.Prime ∧ p % q = r % q ∧ a < (p : ℝ) ∧ (p : ℝ) ≤ b := by
  apply exists_prime_of_progressionTheta_lt ha
  have hupper := (abs_le.mp hA).2
  have hlower := (abs_le.mp hB).1
  nlinarith

variable {ι κ : Type*}

/-- A finite weighted family, not an implicit sum over all zeros of all characters. -/
def characterZeroSum (t : Finset κ) (support : κ → Finset ι)
    (roots coefficient : κ → ι → ℂ) (weight : κ → ℂ) (x : ℝ) : ℂ :=
  ∑ j ∈ t, weight j * dividedPowerSum (support j) (roots j) (coefficient j) x

/-- Every character weight and inverse-zero denominator contributes to the bound. -/
def spectralMass (t : Finset κ) (support : κ → Finset ι)
    (roots coefficient : κ → ι → ℂ) (weight : κ → ℂ) : ℝ :=
  ∑ j ∈ t, ‖weight j‖ * ∑ i ∈ support j, ‖coefficient j i‖ / ‖roots j i‖

variable {N : ℕ} [NeZero N]

theorem characterZeroSum_bound (hGRH : DirichletGRH)
    (t : Finset κ) (characters : κ → DirichletCharacter ℂ N) (support : κ → Finset ι)
    (roots coefficient : κ → ι → ℂ) (weight : κ → ℂ)
    (hzero : ∀ j ∈ t, ∀ i ∈ support j, DirichletStripZero (characters j) (roots j i))
    {x : ℝ} (hx : 0 < x) :
    ‖characterZeroSum t support roots coefficient weight x‖ ≤
      Real.sqrt x * spectralMass t support roots coefficient weight := by
  calc
    ‖characterZeroSum t support roots coefficient weight x‖ ≤
        ∑ j ∈ t, ‖weight j * dividedPowerSum (support j) (roots j) (coefficient j) x‖ :=
      norm_sum_le _ _
    _ ≤ ∑ j ∈ t, ‖weight j‖ *
        (Real.sqrt x * ∑ i ∈ support j, ‖coefficient j i‖ / ‖roots j i‖) := by
      apply Finset.sum_le_sum
      intro j hj
      rw [norm_mul]
      exact mul_le_mul_of_nonneg_left
        (dirichlet_dividedPowerSum_bound (hGRH N (characters j)) (support j)
          (roots j) (coefficient j) (hzero j hj) hx) (norm_nonneg _)
    _ = Real.sqrt x * spectralMass t support roots coefficient weight := by
      rw [spectralMass, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro j _
      ring

theorem progression_error_of_grh_formula (hGRH : DirichletGRH)
    (t : Finset κ) (characters : κ → DirichletCharacter ℂ N) (support : κ → Finset ι)
    (roots coefficient : κ → ι → ℂ) (weight : κ → ℂ)
    (hzero : ∀ j ∈ t, ∀ i ∈ support j, DirichletStripZero (characters j) (roots j i))
    {r : ℕ} {x density R : ℝ} (hx : 0 < x) {remainder : ℂ}
    (formula : (progressionTheta N r x : ℂ) = ((density * x : ℝ) : ℂ) -
      characterZeroSum t support roots coefficient weight x + remainder)
    (hR : ‖remainder‖ ≤ R) :
    |progressionTheta N r x - density * x| ≤
      Real.sqrt x * spectralMass t support roots coefficient weight + R := by
  have hid : (progressionTheta N r x : ℂ) - ((density * x : ℝ) : ℂ) =
      -characterZeroSum t support roots coefficient weight x + remainder := by
    rw [formula]
    ring
  have hbound : ‖(progressionTheta N r x : ℂ) - ((density * x : ℝ) : ℂ)‖ ≤
      Real.sqrt x * spectralMass t support roots coefficient weight + R := by
    rw [hid]
    exact (norm_add_le _ _).trans (add_le_add
      (by simpa only [norm_neg] using
        characterZeroSum_bound hGRH t characters support roots coefficient weight hzero hx) hR)
  simpa only [← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs] using hbound

/-- GRH controls the selected spectrum; complete endpoint formula certificates return a prime. -/
theorem prime_of_grh_formula_certificates (hGRH : DirichletGRH)
    (t : Finset κ) (characters : κ → DirichletCharacter ℂ N) (support : κ → Finset ι)
    (roots coefficient : κ → ι → ℂ) (weight : κ → ℂ)
    (hzero : ∀ j ∈ t, ∀ i ∈ support j, DirichletStripZero (characters j) (roots j i))
    {r : ℕ} {density a b RA RB : ℝ} (ha : 0 < a) (hb : 0 < b) {rA rB : ℂ}
    (formulaA : (progressionTheta N r a : ℂ) = ((density * a : ℝ) : ℂ) -
      characterZeroSum t support roots coefficient weight a + rA)
    (formulaB : (progressionTheta N r b : ℂ) = ((density * b : ℝ) : ℂ) -
      characterZeroSum t support roots coefficient weight b + rB)
    (hRA : ‖rA‖ ≤ RA) (hRB : ‖rB‖ ≤ RB)
    (gap : (Real.sqrt a * spectralMass t support roots coefficient weight + RA) +
      (Real.sqrt b * spectralMass t support roots coefficient weight + RB) < density * (b - a)) :
    ∃ p : ℕ, p.Prime ∧ p % N = r % N ∧ a < (p : ℝ) ∧ (p : ℝ) ≤ b :=
  prime_of_progression_errors ha.le
    (progression_error_of_grh_formula hGRH t characters support roots coefficient weight hzero
      ha formulaA hRA)
    (progression_error_of_grh_formula hGRH t characters support roots coefficient weight hzero
      hb formulaB hRB)
    gap

end GRWTSK.NumberTheory.Conditional.ProgressionIntervals
