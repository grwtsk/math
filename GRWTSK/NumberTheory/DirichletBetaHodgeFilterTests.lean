/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's MIT license.

Static regression examples for the exact algebraic interfaces. Verification
status is NOT_RUN until compiled at an exact source/environment pin. These
examples do not claim an infinite-product or arithmetic-energy theorem.
-/
import GRWTSK.NumberTheory.DirichletBetaHodgeFilter

noncomputable section
open GRWTSK.NumberTheory.DirichletBetaHodgeFilter

-- The apparent central singularity is filled with h, not a new sheet value.
example (h a : ℝ) :
    mellinWindow h a ((a : ℂ) * Complex.I) = (h : ℂ) :=
  mellinWindow_at_center h a

-- Positive width, real phase, and positive real part are all retained.
example (a : ℝ) (s : ℂ) (hs : 0 < s.re) :
    mellinWindow (Real.log 2) a s ≠ 0 :=
  mellinWindow_ne_zero_of_re_pos (Real.log_pos (by norm_num)) hs

example (a : ℝ) (s : ℂ) (hs0 : 0 < s.re) (hs1 : s.re < 1) :
    pairedKernel (Real.log 2) a s ≠ 0 :=
  pairedKernel_ne_zero_in_strip (Real.log_pos (by norm_num)) hs0 hs1

-- Joint reflection changes phase, not just the spectral coordinate.
example (h a : ℝ) (s : ℂ) :
    pairedKernel h a s = pairedKernel h (-a) (1 - s) :=
  pairedKernel_reflection h a s

-- A reflected completion is an explicit hypothesis, not an axiom for beta.
example (B : ℂ → ℂ) (hB : ∀ s, B s = B (1 - s)) (h a : ℝ) (s : ℂ) :
    filteredCompletion h a B s = filteredCompletion h (-a) B (1 - s) :=
  filteredCompletion_reflection h a B hB s

-- Zero membership is preserved; this example makes no claim of simplicity.
example (B : ℂ → ℂ) (a : ℝ) (s : ℂ) (hs0 : 0 < s.re) (hs1 : s.re < 1) :
    filteredCompletion (Real.log 2) a B s = 0 ↔ B s = 0 :=
  filteredCompletion_zero_iff B (Real.log_pos (by norm_num)) hs0 hs1

-- A repeated zero has a nonzero residue coefficient and recoverable order.
example (a : ℝ) (s : ℂ) (hs : 0 < s.re) :
    weightedPoleResidue (Real.log 2) a 7 s ≠ 0 :=
  weightedPoleResidue_ne_zero (Real.log_pos (by norm_num)) (by norm_num) hs

example (a : ℝ) (s : ℂ) (hs : 0 < s.re) :
    -weightedPoleResidue (Real.log 2) a 7 s / mellinWindow (Real.log 2) a s = 7 := by
  simpa using recoverMultiplicity (a := a) (s := s) 7
    (Real.log_pos (by norm_num)) hs

-- Quadratic cancellation is exceptional for the raw envelope.
example : quadraticCoefficient (-(1 / 3 : ℂ)) = 0 := by simp
example : quarticCoefficient (-(1 / 3 : ℂ)) = -(7 / 360 : ℂ) := by simp
example : quadraticCoefficient (0 : ℂ) ≠ 0 := by
  norm_num [quadraticCoefficient]

-- The explicit counterterm agrees with the raw factor at its special z.
example (w : ℂ) :
    renormalizedFactor (-(1 / 3 : ℂ)) w = normalizedFactor (-(1 / 3 : ℂ)) w := by simp

-- Neither local family gains z-dependent zeros from an exponential unit.
example (z z' w : ℂ) :
    renormalizedFactor z w = 0 ↔ renormalizedFactor z' w = 0 := by simp

-- A nonzero correction is not a value-preserving branch transition.
example (A : ℂ) : A + 1 / 2 ≠ A :=
  logarithmicCorrection_is_not_invariant (by norm_num) (by norm_num)

-- Nonnegative energy has exactly the intersection-of-kernels null set.
example : hodgeEnergy (fun x : ℝ => x) (fun x : ℝ => 2 * x) 0 = 0 := by
  norm_num [hodgeEnergy]

example (x : ℝ) :
    hodgeEnergy (fun y : ℝ => y) (fun y : ℝ => 2 * y) x = 0 ↔ x = 0 := by
  rw [hodgeEnergy_eq_zero_iff]
  simp

-- These commands specify source-bound axiom-audit targets; no output is
-- represented as having been observed before Lean is actually run.
#print axioms GRWTSK.NumberTheory.DirichletBetaHodgeFilter.mellinWindow_ne_zero_of_re_pos
#print axioms GRWTSK.NumberTheory.DirichletBetaHodgeFilter.pairedKernel_ne_zero_in_strip
#print axioms GRWTSK.NumberTheory.DirichletBetaHodgeFilter.filteredCompletion_reflection
#print axioms GRWTSK.NumberTheory.DirichletBetaHodgeFilter.recoverMultiplicity
#print axioms GRWTSK.NumberTheory.DirichletBetaHodgeFilter.hodgeEnergy_eq_zero_iff
