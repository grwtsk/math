/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE. Lean elaboration/compilation: NOT_RUN.
Fresh kernel replay: NOT_RUN. Transitive axiom audit: NOT_RUN.
Independent analytical review: NOT_RUN. Novelty: NOT_ASSESSED.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimeOrbitCharacterReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddRootProjection
import Mathlib.Tactic

/-!
# Finite-sheet prime orbits and the paired weighted Weil arithmetic edges

The geometric source is Connes--Consani, *Knots, primes and class field theory*,
arXiv:2501.06560v1, Theorems 3.9 and 3.12. The arithmetic source is the
complete Connes--Consani--Moscovici form in *Zeta Spectral Triples*,
arXiv:2511.22755v1, (3.19)--(3.20), and the existing
`CharacterWindow.twistedPrime` / `OddRootProjection.pairedPrimeResponse`.
The normalization and complete theta construction are recorded separately in
`WeilThetaPolarization.lean` and in the supplied project source
`theta-weighted-arithmetic-jump-heat-and-the-hot-spots-comparison.md` (2026-11-06).

An unramified rational prime `p` labels a periodic orbit of length `log p`.
For a finite abelian cover, one winding moves sheet `g` to `g + Frob_p`.
A character returns `(chi p)^m = chi (p^m)` after `m` windings. The exact
Weil coefficient is `primeWeight (p^m) * Re (chi (p^m))`, where
`primeWeight n = vonMangoldt(n)/sqrt(n)` in `LowSchur`. The source takes the
REAL CONJUGATE-PAIR average before replacing its magnetic edge by a real
expression. No new L-function, Frobenius, or covering-space equivalence is
introduced here.

For real amplitudes `x,y`, the corresponding symmetrized edge satisfies

  x^2 + y^2 - 2 beta*x*y
    = ((1+beta)/2)*(x-y)^2 + ((1-beta)/2)*(x+y)^2 >= 0

whenever `|beta| <= 1`. This is a finite source-coefficient statement, NOT
positivity of the complete Weil form: archimedean, conductor, theta radial
subtraction and the negative odd zeta pole remain outside the edge. In
particular `beta=1`, `x=y=1` gives a zero edge, so local positivity alone
cannot imply the sharp reference half-gap.

`PrimeOrbitHolonomy` formalizes the ABSTRACT mapping torus. It does not
construct the adelic cover in Lean; arithmetic Frobenius must be supplied.
At primes dividing the conductor, the Dirichlet value is zero; this is a
nonunit / killing edge, not an invertible sheet action. This file formalizes
the coefficient equality and both the ramified-zero and positivity cases.
It does not reindex the entire physical active source by prime-power pairs,
prove the twisted circle trace as an analytic trace-class identity, or close
the half-gap / RH / Dirichlet-GRH obligations.

Primary algebraic proof: character multiplicativity, the pointwise two-square
identity, and nonnegative von Mangoldt weights. Hostile checks: `beta=1`
(no half-gap from edge positivity) and `beta=0` (a diagonal killing edge).
These share the underlying source character and are not independent analytic
proofs of a trace formula. Formal evidence is `NOT_RUN` as recorded above.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.PrimeOrbitWeightedWeilBridge

open LowSchur OddRootProjection
open GRWTSK.NumberTheory.WeilQuadraticForm.PrimeOrbitCharacterReturn

variable {q : ℕ} [NeZero q]

/-- The original paired-source coefficient on one iterated sheet return. -/
theorem pairedPrimeWeight_power (χ : DirichletCharacter ℂ q) (p m : ℕ) :
    pairedPrimeWeight χ (p ^ m) =
      primeWeight (p ^ m) * ((χ p) ^ m).re := by
  change primeWeight (p ^ m) * (χ (p ^ m)).re = _
  rw [dirichlet_prime_power_phase χ p m]

/-- The scalar phase in a real conjugate pair; it is allowed to vanish. -/
def sheetPhase (χ : DirichletCharacter ℂ q) (p m : ℕ) : ℝ :=
  ((χ p) ^ m).re

/-- Even a nonunit Dirichlet character value is bounded by one in magnitude. -/
theorem sheetPhase_abs_le_one (χ : DirichletCharacter ℂ q) (p m : ℕ) :
    |sheetPhase χ p m| ≤ 1 := by
  unfold sheetPhase
  rw [← dirichlet_prime_power_phase χ p m]
  exact (Complex.abs_re_le_norm _).trans (χ.norm_le_one _)

/-- The real conjugate-pair magnetic edge at one jump. -/
def pairedEdge (beta x y : ℝ) : ℝ :=
  x ^ 2 + y ^ 2 - 2 * beta * x * y

/-- Signed cross terms are retained; replacing `beta` by `|beta|` is invalid. -/
theorem pairedEdge_decompose (beta x y : ℝ) :
    pairedEdge beta x y =
      ((1 + beta) / 2) * (x - y) ^ 2 +
      ((1 - beta) / 2) * (x + y) ^ 2 := by
  unfold pairedEdge
  ring

/-- Both square weights are nonnegative exactly on the character phase range. -/
theorem pairedEdge_nonneg {beta : ℝ} (hlo : -1 ≤ beta) (hhi : beta ≤ 1)
    (x y : ℝ) : 0 ≤ pairedEdge beta x y := by
  rw [pairedEdge_decompose]
  have hplus : 0 ≤ (1 + beta) / 2 := by linarith
  have hminus : 0 ≤ (1 - beta) / 2 := by linarith
  exact add_nonneg (mul_nonneg hplus (sq_nonneg _))
    (mul_nonneg hminus (sq_nonneg _))

/-- The actual von-Mangoldt-weighted real paired edge on one `p^m`. -/
def primePowerEdge (χ : DirichletCharacter ℂ q) (p m : ℕ)
    (x y : ℝ) : ℝ :=
  primeWeight (p ^ m) * pairedEdge (sheetPhase χ p m) x y

/-- Exact return to the native prime-power coefficient, not an independent
model of the arithmetic source. -/
theorem primePowerEdge_source (χ : DirichletCharacter ℂ q) (p m : ℕ)
    (x y : ℝ) :
    primePowerEdge χ p m x y =
      primeWeight (p ^ m) *
        (x ^ 2 + y ^ 2 - 2 * (χ (p ^ m)).re * x * y) := by
  unfold primePowerEdge pairedEdge sheetPhase
  rw [← dirichlet_prime_power_phase χ p m]

/-- Positive finite magnetic energy; no positive global Weil form is inferred. -/
theorem primePowerEdge_nonneg (χ : DirichletCharacter ℂ q) (p m : ℕ)
    (x y : ℝ) : 0 ≤ primePowerEdge χ p m x y := by
  unfold primePowerEdge
  have hb := sheetPhase_abs_le_one χ p m
  rcases abs_le.mp hb with ⟨hlo, hhi⟩
  exact mul_nonneg (primeWeight_nonneg _) (pairedEdge_nonneg hlo hhi x y)

/-- Every finite inventory of sheet returns has nonnegative edge energy.
The inventory is arbitrary; equating it with the full active source requires
an additional explicit prime-power coverage theorem. -/
theorem finitePrimePowerEdges_nonneg (χ : DirichletCharacter ℂ q)
    (I : Finset (ℕ × ℕ)) (x y : ℕ × ℕ → ℝ) :
    0 ≤ ∑ pm ∈ I, primePowerEdge χ pm.1 pm.2 (x pm) (y pm) := by
  apply Finset.sum_nonneg
  intro pm _
  exact primePowerEdge_nonneg χ pm.1 pm.2 (x pm) (y pm)

/-- Ramified/nonunit phase is a diagonal killing edge. The zero-value
hypothesis is explicit; no fictitious invertible Frobenius is constructed. -/
theorem primePowerEdge_of_zero_character (χ : DirichletCharacter ℂ q)
    (p m : ℕ) (x y : ℝ) (hzero : χ (p ^ m) = 0) :
    primePowerEdge χ p m x y = primeWeight (p ^ m) * (x ^ 2 + y ^ 2) := by
  rw [primePowerEdge_source, hzero]
  simp

/-- At phase one the edge can vanish. Consequently positivity of all finite
edges alone cannot imply a reference spectral lower bound of `1/2`. -/
theorem constant_sheet_obstruction :
    pairedEdge 1 1 1 = 0 ∧ ¬ (1 / 2 : ℝ) ≤ pairedEdge 1 1 1 := by
  norm_num [pairedEdge]

/-- A zero character phase retains BOTH endpoint-square charges. -/
theorem zero_phase_edge (x y : ℝ) :
    pairedEdge 0 x y = x ^ 2 + y ^ 2 := by
  ring

end GRWTSK.NumberTheory.WeilQuadraticForm.PrimeOrbitWeightedWeilBridge
