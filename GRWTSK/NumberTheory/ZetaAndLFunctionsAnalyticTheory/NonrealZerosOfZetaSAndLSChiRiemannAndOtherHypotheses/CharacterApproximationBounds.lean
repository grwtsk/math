/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CoreCubicApproximation
import GRWTSK.FunctionsOfAComplexVariable.ApproximationResidualTransfer
import Mathlib.NumberTheory.LSeries.DirichletContinuation

/-!
# Full-character approximation transport with every remainder retained

Mathlib DEFINES the actual Dirichlet L-function by the finite residue-class
combination N^(-s) sum_j chi(j)*hurwitzZeta(j/N,s). Reuse that identity, including
all classes and the full modulus factor. Component approximations with proved
errors therefore give an exact combined error bound for EVERY positive modulus
and EVERY character, with no primitive, real or nonprincipal restriction.

For the principal character, the source's exact finite Euler-factor formula
transports the supplied cubic zeta approximation to a genuine L-function
approximation on every off-line core. The modulus-dependent Euler-factor norm
is retained; it is not replaced by an unjustified conductor-uniform constant.

For general characters the remaining shifted-Hurwitz component enclosures are
explicit inputs. This file does not claim to have supplied those enclosures or
strict residual gaps for the infinite character family. Naive LSeries values
outside absolute convergence are NEVER substituted for analytic continuation.
Public comparison: NIST DLMF 25.11 and 25.15; LMFDB Dirichlet character 3.2 data
https://www.lmfdb.org/L/1/3/3.2/r1/0/0. Listed values/zeros guide finite tests,
not the all-modulus theorem. Mathlib's original authorship remains upstream.

Compilation, fresh kernel checking, transitive axiom audit and independent
review: NOT_RUN. No global Dirichlet-GRH or novelty claim.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Conditional.CharacterApproximation

open GRWTSK.Analysis.Division
open GRWTSK.RiemannHypothesis.FiniteCubicZetaApproximation

variable {N : ℕ} [NeZero N]

/-- A finite combination of supplied shifted-Hurwitz models, on the exact source classes. -/
def combine (χ : DirichletCharacter ℂ N) (model : ZMod N → ℂ → ℂ) (s : ℂ) : ℂ :=
  (N : ℂ) ^ (-s) * ∑ j : ZMod N, χ j * model j s

def weightedError (χ : DirichletCharacter ℂ N) (error : ZMod N → ℝ) : ℝ :=
  ∑ j : ZMod N, ‖χ j‖ * error j

/-- Exact source difference, before taking absolute values and losing cancellation. -/
theorem source_difference (χ : DirichletCharacter ℂ N)
    (model : ZMod N → ℂ → ℂ) (s : ℂ) :
    χ.LFunction s - combine χ model s =
      (N : ℂ) ^ (-s) * ∑ j : ZMod N,
        χ j * (HurwitzZeta.hurwitzZeta (ZMod.toAddCircle j) s - model j s) := by
  unfold DirichletCharacter.LFunction ZMod.LFunction combine
  rw [← mul_sub, ← Finset.sum_sub_distrib]
  congr 1
  apply Finset.sum_congr rfl
  intro j hj
  ring

/-- Every shifted term and the modulus scaling contribute to the true error. -/
theorem source_error (χ : DirichletCharacter ℂ N) (model : ZMod N → ℂ → ℂ)
    (s : ℂ) (error : ZMod N → ℝ)
    (componentBounds : ∀ j, ‖HurwitzZeta.hurwitzZeta (ZMod.toAddCircle j) s - model j s‖ ≤ error j) :
    ‖χ.LFunction s - combine χ model s‖ ≤ ‖(N : ℂ) ^ (-s)‖ * weightedError χ error := by
  rw [source_difference, norm_mul]
  apply mul_le_mul_of_nonneg_left _ (norm_nonneg _)
  refine (norm_sum_le _ _).trans ?_
  apply Finset.sum_le_sum
  intro j hj
  rw [norm_mul]
  exact mul_le_mul_of_nonneg_left (componentBounds j) (norm_nonneg _)

theorem weightedError_nonneg (χ : DirichletCharacter ℂ N) (error : ZMod N → ℝ)
    (nonnegative : ∀ j, 0 ≤ error j) : 0 ≤ weightedError χ error :=
  Finset.sum_nonneg (fun j _ => mul_nonneg (norm_nonneg _) (nonnegative j))

/-- A uniform factor bound remains a separate, source-indexed obligation. -/
theorem uniform_source_error (χ : DirichletCharacter ℂ N)
    (model : ZMod N → ℂ → ℂ) (s : ℂ) (error : ZMod N → ℝ) {factorBound : ℝ}
    (componentBounds : ∀ j, ‖HurwitzZeta.hurwitzZeta (ZMod.toAddCircle j) s - model j s‖ ≤ error j)
    (factor : ‖(N : ℂ) ^ (-s)‖ ≤ factorBound) :
    ‖χ.LFunction s - combine χ model s‖ ≤ factorBound * weightedError χ error := by
  refine (source_error χ model s error componentBounds).trans ?_
  apply mul_le_mul_of_nonneg_right factor
  exact weightedError_nonneg χ error (fun j => (norm_nonneg _).trans (componentBounds j))

/-- No primitive-character reduction or missing modulus is hidden in this residual bound. -/
theorem residual_bound (χ : DirichletCharacter ℂ N)
    (model : ZMod N → ℂ → ℂ) (s inverse : ℂ) (error : ZMod N → ℝ)
    {ε M factorBound : ℝ}
    (componentBounds : ∀ j, ‖HurwitzZeta.hurwitzZeta (ZMod.toAddCircle j) s - model j s‖ ≤ error j)
    (factor : ‖(N : ℂ) ^ (-s)‖ ≤ factorBound)
    (modelResidual : ‖residual (combine χ model s) inverse 1‖ ≤ ε)
    (inverseBound : ‖inverse‖ ≤ M) :
    ‖residual (χ.LFunction s) inverse 1‖ ≤
      ε + (factorBound * weightedError χ error) * M :=
  Approximation.residual_source_bound modelResidual
    (uniform_source_error χ model s error componentBounds factor) inverseBound

/-- The exact principal Euler factor, with all prime divisors of the modulus. -/
def eulerFactor (N : ℕ) (s : ℂ) : ℂ :=
  ∏ p ∈ N.primeFactors, (1 - (p : ℂ) ^ (-s))

def principalModel (N cutoffIndex : ℕ) (s : ℂ) : ℂ :=
  eulerFactor N s * approximation cutoffIndex s

/-- This is an actual-source identity, not a new definition of the L-function. -/
theorem principal_difference (cutoffIndex : ℕ) (s : ℂ) (pole : s ≠ 1) :
    (1 : DirichletCharacter ℂ N).LFunction s - principalModel N cutoffIndex s =
      eulerFactor N s * (riemannZeta s - approximation cutoffIndex s) := by
  rw [show (1 : DirichletCharacter ℂ N).LFunction s =
    eulerFactor N s * riemannZeta s from
      DirichletCharacter.LFunctionTrivChar_eq_mul_riemannZeta pole]
  unfold principalModel
  ring

/-- Principal characters receive the supplied all-core additive zeta approximation. -/
theorem principal_core_error (n k : ℕ) (s : ℂ) (inside : s ∈ offCore n) :
    ‖(1 : DirichletCharacter ℂ N).LFunction s -
      principalModel N (CubicApproximation.coreCutoff n k) s‖ ≤
      ‖eulerFactor N s‖ * CubicApproximation.errorRate k := by
  have strip := offCore_subset n inside
  rw [principal_difference _ s (strip_ne_one strip.2.1), norm_mul]
  exact mul_le_mul_of_nonneg_left (CubicApproximation.offCore_zeta_error n k s inside)
    (norm_nonneg _)

/-- Modulus and character universality is explicit even for the conditional transfer step. -/
theorem all_character_residual_transfer :
    ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q)
      (model : ZMod q → ℂ → ℂ) (s inverse : ℂ) (error : ZMod q → ℝ)
      (ε M factorBound : ℝ),
      (∀ j, ‖HurwitzZeta.hurwitzZeta (ZMod.toAddCircle j) s - model j s‖ ≤ error j) →
      ‖(q : ℂ) ^ (-s)‖ ≤ factorBound →
      ‖residual (combine χ model s) inverse 1‖ ≤ ε → ‖inverse‖ ≤ M →
      ε + (factorBound * weightedError χ error) * M < 1 → χ.LFunction s ≠ 0 := by
  intro q hq χ model s inverse error ε M factorBound components factor modelBound inverseBound strict
  exact nonzero_of_unit_residual
    (residual_bound χ model s inverse error components factor modelBound inverseBound) strict

end GRWTSK.NumberTheory.Conditional.CharacterApproximation
