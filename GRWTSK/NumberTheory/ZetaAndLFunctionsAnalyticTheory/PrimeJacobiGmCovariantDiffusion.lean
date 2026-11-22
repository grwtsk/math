/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Root Lean 4.34.1 /
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Elaboration, trusted kernel replay, transitive axioms: NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimeJacobiGmPhaseDiffusionCommutator
import Mathlib.Data.Matrix.Mul
import Mathlib.Tactic

/-!
# Positive-source covariant diffusion for original cyclic character phases

A genuine nonexceptional cyclic Level has a positive arithmetic phase
2/3<c_k<4/3 for every integer k. In the finite Gm root environment
this phase gives a positive diagonal multiplier M. Rather than
incorrectly commuting M across the original Dirichlet heat D_t,
define the conjugate T_(t,c)=M^-1 D_t M.

The source transport is EXACT:
   M T_(t,c)^m = D_t^m M
and T is self-adjoint with respect to the positive weighted
Gram G=M^2, not necessarily in ordinary unweighted l2.

This is a finite arithmetic heat/source construction. Since T is
similar to the source Dirichlet heat, it has THAT operator's
spectrum; it is NOT a realization of the actual zeta-zero spectrum
and implies no RH/GRH/Weil positivity theorem. The exact native
Level.cyc source phase is isolated in incompatible Lean v4.33.1.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.AlpogeGmCovariantDiffusion

open GRWTSK.NumberTheory.AlpogeGmDiscreteDiffusion
open GRWTSK.NumberTheory.AlpogeGmPhaseDiffusionCommutator

/-- A genuine positive phase has an inverse finite diagonal
multiplier. Its entries are reciprocals, with no inserted zeros. -/
def inverseMultiplier (N : ℕ) (c : Fin N → ℝ) :
    Matrix (Fin N) (Fin N) ℝ :=
  Matrix.diagonal fun i => (c i)⁻¹

/-- Exact original source diffusion conjugated through its phase. -/
def covariantStep (N : ℕ) (t : ℝ) (c : Fin N → ℝ) :
    Matrix (Fin N) (Fin N) ℝ :=
  inverseMultiplier N c * diffuseStep N t * multiplier N c

/-- The source phase inverse is justified by its nonzero entries,
which are mathematically certified by original Level.cyc. -/
theorem multiplier_mul_inverse (N : ℕ) (c : Fin N → ℝ)
    (hc : ∀ i, c i ≠ 0) :
    multiplier N c * inverseMultiplier N c = 1 := by
  classical
  unfold multiplier inverseMultiplier
  rw [Matrix.diagonal_mul_diagonal]
  ext i j
  by_cases h : i = j
  · subst j
    simp [Matrix.diagonal_apply, hc i]
  · simp [Matrix.diagonal_apply, h]

theorem inverse_mul_multiplier (N : ℕ) (c : Fin N → ℝ)
    (hc : ∀ i, c i ≠ 0) :
    inverseMultiplier N c * multiplier N c = 1 := by
  classical
  unfold multiplier inverseMultiplier
  rw [Matrix.diagonal_mul_diagonal]
  ext i j
  by_cases h : i = j
  · subst j
    simp [Matrix.diagonal_apply, hc i]
  · simp [Matrix.diagonal_apply, h]

/-- Source exact intertwining: multiply first, then ordinary heat;
or evolve the raw arithmetic coordinates in a phase-covariant way.
There is no commutator correction in this correctly conjugated path. -/
theorem source_covariant_intertwining (N : ℕ) (t : ℝ)
    (c : Fin N → ℝ) (hc : ∀ i, c i ≠ 0) :
    multiplier N c * covariantStep N t c =
      diffuseStep N t * multiplier N c := by
  unfold covariantStep
  calc
    multiplier N c *
        (inverseMultiplier N c * diffuseStep N t * multiplier N c) =
      (multiplier N c * inverseMultiplier N c) *
        diffuseStep N t * multiplier N c := by
          simp only [mul_assoc]
    _ = diffuseStep N t * multiplier N c := by
      rw [multiplier_mul_inverse N c hc]
      simp

/-- All finite diffusion depths preserve the original signed phase
by genuine similarity rather than an unjustified commutation rule. -/
theorem source_covariant_intertwining_pow (N : ℕ) (t : ℝ)
    (c : Fin N → ℝ) (hc : ∀ i, c i ≠ 0) (m : ℕ) :
    multiplier N c * (covariantStep N t c) ^ m =
      (diffuseStep N t) ^ m * multiplier N c := by
  induction m with
  | zero => simp
  | succ m ih =>
      calc
        multiplier N c * (covariantStep N t c) ^ (m + 1) =
          (multiplier N c * (covariantStep N t c)^m) *
            covariantStep N t c := by rw [pow_succ, mul_assoc]
        _ = ((diffuseStep N t)^m * multiplier N c) *
            covariantStep N t c := by rw [ih]
        _ = (diffuseStep N t)^m *
            (multiplier N c * covariantStep N t c) := by
              rw [mul_assoc]
        _ = (diffuseStep N t)^m *
            (diffuseStep N t * multiplier N c) := by
              rw [source_covariant_intertwining N t c hc]
        _ = (diffuseStep N t) ^ (m + 1) *
            multiplier N c := by rw [pow_succ, mul_assoc]

/-- Weighted self-adjointness: the correct inner product is
weighted by the squares of the actual positive source phases. -/
def weightedGram (N : ℕ) (c : Fin N → ℝ) :
    Matrix (Fin N) (Fin N) ℝ :=
  multiplier N c * multiplier N c

/-- The Dirichlet source second difference is symmetric. -/
theorem dirichletDifference_transpose (N : ℕ) :
    (dirichletDifference N).transpose = dirichletDifference N := by
  ext i j
  simp only [Matrix.transpose_apply]
  by_cases h : i = j
  · subst j
    simp [dirichletDifference]
  · simp [dirichletDifference, h, Ne.symm h, Nat.dist_comm]

/-- The original real symmetric finite heat remains symmetric.
This is not a theorem about the infinite zeta spectral operator. -/
theorem diffuseStep_transpose (N : ℕ) (t : ℝ) :
    (diffuseStep N t).transpose = diffuseStep N t := by
  unfold diffuseStep
  rw [Matrix.transpose_add, Matrix.transpose_one,
    Matrix.transpose_smul, dirichletDifference_transpose]

/-- The covariant heat is self-adjoint for the source Gram M^2,
despite generally failing ordinary unweighted matrix symmetry. -/
theorem covariant_weighted_selfadjoint (N : ℕ) (t : ℝ)
    (c : Fin N → ℝ) (hc : ∀ i, c i ≠ 0) :
    weightedGram N c * covariantStep N t c =
      (covariantStep N t c).transpose * weightedGram N c := by
  classical
  have hpair := multiplier_mul_inverse N c hc
  have hpair2 := inverse_mul_multiplier N c hc
  have hM : (multiplier N c).transpose = multiplier N c := by
    simp [multiplier]
  have hMi : (inverseMultiplier N c).transpose =
      inverseMultiplier N c := by
    simp [inverseMultiplier]
  have hD := diffuseStep_transpose N t
  unfold weightedGram covariantStep
  rw [Matrix.transpose_mul, Matrix.transpose_mul, hM, hMi, hD]
  calc
    multiplier N c * multiplier N c *
      (inverseMultiplier N c * diffuseStep N t * multiplier N c) =
      multiplier N c * (multiplier N c * inverseMultiplier N c) *
        diffuseStep N t * multiplier N c := by
          simp only [mul_assoc]
    _ = multiplier N c * diffuseStep N t *
          multiplier N c := by rw [hpair]; simp
    _ = multiplier N c * diffuseStep N t *
          (inverseMultiplier N c * multiplier N c) *
          multiplier N c := by rw [hpair2]; simp
    _ = (multiplier N c * diffuseStep N t *
          inverseMultiplier N c) *
          (multiplier N c * multiplier N c) := by
          simp only [mul_assoc]

end GRWTSK.NumberTheory.AlpogeGmCovariantDiffusion
