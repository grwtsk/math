/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilResponseResidualCorrection
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFiniteSineSpatialResidual

/-!
# Simultaneous signed-response certificates on finite load blocks

A single corrected matrix controls EVERY real combination of the supplied
loads and finite-sine primal/dual trials. Full residual Gram upper matrices,
not diagonal tests or finite Fourier samples, pay the two error norms.
Young's inequality converts their product to a quadratic matrix allowance.
Symmetric entry enclosures pay correction rounding separately.

The final consumer uses the existing rational certificate checker and its
realization theorem. No successful source certificate, universal block/window
coverage, or RH/GRH conclusion is asserted. SOURCE_PROOF_CANDIDATE: parsing,
elaboration, exact types, kernel replay, axiom audit and review NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open Matrix
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ResponseBlockCertificate

open TranslationCutoffs TranslationEnergyDomain FormDomainDensity
open ClosedSourceBilinear ShiftedSourceSolve ResponseSignReturn
open FiniteSineOperator FiniteSineSolveResidual ResponseResidualCorrection
open GRWTSK.FunctionalAnalysis.SpatialGramEnclosure
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

variable {ι : Type*} [Fintype ι] [DecidableEq ι] {M K : ℕ}

/-- The actual mixed pairing matrix; unlike a Gram it need not be symmetric. -/
def pairMatrix {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℝ H]
    (u v : ι → H) : Matrix ι ι ℝ := fun i j => inner ℝ (u i) (v j)

theorem pairMatrix_quadratic {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℝ H]
    (u v : ι → H) (x : ι → ℝ) :
    quadratic (pairMatrix u v) x = inner ℝ (∑ i, x i • u i) (∑ i, x i • v i) := by
  rw [quadratic_eq_double_sum]
  simp only [sum_inner, inner_sum, real_inner_smul_left, real_inner_smul_right,
    Finset.mul_sum, pairMatrix]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- Symmetrization preserves the complete quadratic, including all cross terms. -/
def symmetrize (A : Matrix ι ι ℝ) : Matrix ι ι ℝ :=
  fun i j => (A i j + A j i) / 2

theorem symmetrize_symmetric (A : Matrix ι ι ℝ) (i j : ι) :
    symmetrize A i j = symmetrize A j i := by simp [symmetrize, add_comm]

theorem symmetrize_quadratic (A : Matrix ι ι ℝ) (x : ι → ℝ) :
    quadratic (symmetrize A) x = quadratic A x := by
  have hswap : (∑ i, ∑ j, (x i * x j) * A j i) =
      ∑ i, ∑ j, (x i * x j) * A i j := by
    rw [Finset.sum_comm]
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    ring
  simp only [quadratic_eq_double_sum, symmetrize, mul_div_assoc, mul_add,
    Finset.sum_add_distrib, Finset.sum_div]
  rw [hswap]
  ring

/-- Original complete physical primal residual columns. -/
def primalRows (T β : ℝ) (hT : 0 < T) (h : ι → WindowPhysical T)
    (a : ι → Fin M → ℝ) : ι → WindowPhysical T :=
  fun i => physicalResidual T hT β (h i) (a i)

/-- The derivative load is computed from the supplied primal trial. -/
def dualLoads (T β : ℝ) (hT : 0 < T) (ε : ℝ) (h : ι → WindowPhysical T)
    (a : ι → Fin M → ℝ) : ι → WindowPhysical T :=
  fun i => dualLoad T β ε (h i) (finiteLift T hT (a i))

def dualRows (T β : ℝ) (hT : 0 < T) (ε : ℝ) (h : ι → WindowPhysical T)
    (a : ι → Fin M → ℝ) (b : ι → Fin K → ℝ) : ι → WindowPhysical T :=
  fun i => physicalResidual T hT β (dualLoads T β hT ε h a i) (b i)

private theorem residual_sum (T β : ℝ) (h : ι → WindowPhysical T)
    (v : ι → FormDomain T) (x : ι → ℝ) (z : FormDomain T) :
    residualFunctional T β (∑ i, x i • h i) (∑ i, x i • v i) z =
      ∑ i, x i * residualFunctional T β (h i) (v i) z := by
  change inner ℝ (∑ i, x i • h i) (windowInput T z) -
      coerciveForm T β (∑ i, x i • v i) z =
    ∑ i, x i * (inner ℝ (h i) (windowInput T z) - coerciveForm T β (v i) z)
  simp only [sum_inner, real_inner_smul_left, map_sum, map_smul,
    ContinuousLinearMap.sum_apply, ContinuousLinearMap.smul_apply, smul_eq_mul,
    Finset.sum_sub_distrib, mul_sub]

private theorem dualLoad_sum (T β ε : ℝ) (h : ι → WindowPhysical T)
    (v : ι → FormDomain T) (x : ι → ℝ) :
    dualLoad T β ε (∑ i, x i • h i) (∑ i, x i • v i) =
      ∑ i, x i • dualLoad T β ε (h i) (v i) := by
  simp only [dualLoad, map_sum, map_smul, Finset.smul_sum, smul_sub,
    smul_smul, Finset.sum_sub_distrib]
  congr 1
  apply Finset.sum_congr rfl
  intro i _
  rw [mul_comm]

theorem primal_pairing (T β : ℝ) (hT : 0 < T) (h : ι → WindowPhysical T)
    (a : ι → Fin M → ℝ) (x : ι → ℝ) (z : FormDomain T) :
    residualFunctional T β (∑ i, x i • h i)
      (FiniteSineSpatialResidual.trial T hT a x) z =
        inner ℝ (∑ i, x i • primalRows T β hT h a i) (windowInput T z) := by
  rw [FiniteSineSpatialResidual.trial, residual_sum]
  simp only [sum_inner, real_inner_smul_left, primalRows,
    residualFunctional_eq_physical]

theorem dual_pairing (T β : ℝ) (hT : 0 < T) (ε : ℝ)
    (h : ι → WindowPhysical T) (a : ι → Fin M → ℝ) (b : ι → Fin K → ℝ)
    (x : ι → ℝ) (z : FormDomain T) :
    residualFunctional T β
      (dualLoad T β ε (∑ i, x i • h i) (FiniteSineSpatialResidual.trial T hT a x))
      (FiniteSineSpatialResidual.trial T hT b x) z =
        inner ℝ (∑ i, x i • dualRows T β hT ε h a b i) (windowInput T z) := by
  simp only [FiniteSineSpatialResidual.trial, dualLoad_sum, residual_sum,
    sum_inner, real_inner_smul_left, dualRows, dualLoads,
    residualFunctional_eq_physical]

private theorem norm_le_of_pairing (T : ℝ) (r : FormDomain T →L[ℝ] ℝ)
    (g : WindowPhysical T) (h : ∀ z, r z = inner ℝ g (windowInput T z)) :
    ‖r‖ ≤ ‖g‖ := by
  apply ContinuousLinearMap.opNorm_le_bound _ (norm_nonneg g)
  intro z
  rw [h z]
  exact (norm_inner_le_norm _ _).trans
    (mul_le_mul_of_nonneg_left (windowInput_norm_le T z) (norm_nonneg g))

/-- Exact symmetric matrix of the corrected trial for a WHOLE load block. -/
def correctionMatrix (T β : ℝ) (hT : 0 < T) (ε : ℝ)
    (h : ι → WindowPhysical T) (a : ι → Fin M → ℝ) (b : ι → Fin K → ℝ) :
    Matrix ι ι ℝ :=
  symmetrize (pairMatrix h (fun i => finiteInput T (a i)) +
    (-(regularization T β - ε)) • Matrix.gram ℝ (fun i => finiteInput T (a i)) +
    pairMatrix (primalRows T β hT h a) (fun i => finiteInput T (b i)))

theorem correctionMatrix_quadratic (T β : ℝ) (hT : 0 < T) (ε : ℝ)
    (h : ι → WindowPhysical T) (a : ι → Fin M → ℝ) (b : ι → Fin K → ℝ)
    (x : ι → ℝ) :
    quadratic (correctionMatrix T β hT ε h a b) x =
      correctedTrial T β ε (∑ i, x i • h i)
        (FiniteSineSpatialResidual.trial T hT a x)
        (FiniteSineSpatialResidual.trial T hT b x) := by
  rw [correctionMatrix, symmetrize_quadratic]
  simp only [quadratic_add, quadratic_smul, pairMatrix_quadratic, gram_quadratic]
  rw [correctedTrial, trialDefect, primal_pairing]
  simp only [FiniteSineSpatialResidual.trial, map_sum, map_smul, finiteLift_windowInput]
  ring

/-- Weighted Young inequality without square roots or sampled directions. -/
theorem weighted_product_le (u v : ℝ) {t : ℝ} (ht : 0 < t) :
    u * v ≤ (t / 2) * u ^ 2 + (1 / (2 * t)) * v ^ 2 := by
  have hid : (2 * t) * ((t / 2) * u ^ 2 + (1 / (2 * t)) * v ^ 2 - u * v) =
      (t * u - v) ^ 2 := by field_simp [ht.ne']; ring
  have hp : 0 < 2 * t := by positivity
  have hn : 0 ≤ (t / 2) * u ^ 2 + (1 / (2 * t)) * v ^ 2 - u * v :=
    by
      apply (mul_le_mul_left hp).mp
      rw [mul_zero, hid]
      exact sq_nonneg _
  linarith

/-- The paid lower matrix. k bounds max(lambda-epsilon,0); t is positive. -/
def paidMatrix (k t : ℝ) (O E P Q : Matrix ι ι ℝ) : Matrix ι ι ℝ :=
  O + (-1 : ℝ) • diagonalAllowance E + (-(k + t / 2)) • P +
    (-(1 / (2 * t))) • Q

theorem paidMatrix_quadratic (k t : ℝ) (O E P Q : Matrix ι ι ℝ) (x : ι → ℝ) :
    quadratic (paidMatrix k t O E P Q) x = quadratic O x -
      quadratic (diagonalAllowance E) x - (k + t / 2) * quadratic P x -
      (1 / (2 * t)) * quadratic Q x := by
  simp only [paidMatrix, quadratic_add, quadratic_smul]
  ring

/-- Full residual matrix order, all mixed correction entries, and explicit
Young/rounding costs imply a lower bound on every REAL block combination. -/
theorem responseDefect_ge_paidMatrix (T β : ℝ) (hT : 0 < T) (ε : ℝ)
    (h : ι → WindowPhysical T) (a : ι → Fin M → ℝ) (b : ι → Fin K → ℝ)
    (O E P Q : Matrix ι ι ℝ) (k t : ℝ)
    (ht : 0 < t) (hk : max (regularization T β - ε) 0 ≤ k)
    (hE : ∀ i j, 0 ≤ E i j) (hEsym : ∀ i j, E i j = E j i)
    (hentry : ∀ i j, |correctionMatrix T β hT ε h a b i j - O i j| ≤ E i j)
    (hP : ∀ x, quadratic (Matrix.gram ℝ (primalRows T β hT h a)) x ≤ quadratic P x)
    (hQ : ∀ x, quadratic (Matrix.gram ℝ (dualRows T β hT ε h a b)) x ≤ quadratic Q x)
    (x : ι → ℝ) :
    quadratic (paidMatrix k t O E P Q) x ≤
      responseDefect T β hT ε (∑ i, x i • h i) := by
  let r := ∑ i, x i • primalRows T β hT h a i
  let s := ∑ i, x i • dualRows T β hT ε h a b i
  have hr := norm_le_of_pairing T _ r (primal_pairing T β hT h a x)
  have hs := norm_le_of_pairing T _ s (dual_pairing T β hT ε h a b x)
  have hL := (ResponseResidualCorrection.responseDefect_bounds T β hT ε
    (∑ i, x i • h i) (FiniteSineSpatialResidual.trial T hT a x)
    (FiniteSineSpatialResidual.trial T hT b x) ‖r‖ ‖s‖ hr hs).1
  rw [← correctionMatrix_quadratic] at hL
  have hPr : ‖r‖ ^ 2 ≤ quadratic P x := by simpa only [gram_quadratic] using hP x
  have hQs : ‖s‖ ^ 2 ≤ quadratic Q x := by simpa only [gram_quadratic] using hQ x
  have ht0 : 0 ≤ t / 2 := by positivity
  have hi0 : 0 ≤ 1 / (2 * t) := by positivity
  have hk0 : 0 ≤ k := (le_max_right _ _).trans hk
  have hy : ‖r‖ * ‖s‖ ≤ (t / 2) * quadratic P x + (1 / (2 * t)) * quadratic Q x :=
    (weighted_product_le ‖r‖ ‖s‖ ht).trans
      (add_le_add (mul_le_mul_of_nonneg_left hPr ht0)
        (mul_le_mul_of_nonneg_left hQs hi0))
  have hc : max (regularization T β - ε) 0 * ‖r‖ ^ 2 ≤ k * quadratic P x :=
    (mul_le_mul_of_nonneg_right hk (sq_nonneg _)).trans
      (mul_le_mul_of_nonneg_left hPr hk0)
  have he := (abs_le.mp (quadratic_error_le
    (correctionMatrix T β hT ε h a b) O E hE hEsym hentry x)).1
  rw [paidMatrix_quadratic]
  nlinarith

/-- Exact rational assembly. This does not evaluate source coefficients. -/
def rationalPaidMatrix (k t : ℚ) (O E P Q : Matrix ι ι ℚ) : Matrix ι ι ℚ :=
  O + (-1 : ℚ) • Matrix.diagonal (fun i => ∑ j, E i j) +
    (-(k + t / 2)) • P + (-(1 / (2 * t))) • Q

theorem rationalPaidMatrix_cast (k t : ℚ) (O E P Q : Matrix ι ι ℚ) :
    (rationalPaidMatrix k t O E P Q).map (Rat.castHom ℝ) =
      paidMatrix (k : ℝ) (t : ℝ) (O.map (Rat.castHom ℝ))
        (E.map (Rat.castHom ℝ)) (P.map (Rat.castHom ℝ)) (Q.map (Rat.castHom ℝ)) := by
  ext i j
  by_cases hij : i = j <;>
    simp [rationalPaidMatrix, paidMatrix, diagonalAllowance, hij]

/-- The ORIGINAL rational checker proves the source sign on the entire real
load block. Empty constraint families prevent a hidden admissibility restriction. -/
theorem checked_block_nonnegative {ν : Type*} [Fintype ν]
    (T β : ℝ) (hT : 0 < T) (ε : ℝ)
    (h : ι → WindowPhysical T) (a : ι → Fin M → ℝ) (b : ι → Fin K → ℝ)
    (O E P Q : Matrix ι ι ℚ) (k t : ℚ)
    (ht : 0 < t) (hk : max (regularization T β - ε) 0 ≤ (k : ℝ))
    (hE : ∀ i j, 0 ≤ E i j) (hEsym : ∀ i j, E i j = E j i)
    (hentry : ∀ i j, |correctionMatrix T β hT ε h a b i j - (O i j : ℝ)| ≤ (E i j : ℝ))
    (hP : ∀ x, quadratic (Matrix.gram ℝ (primalRows T β hT h a)) x ≤
      quadratic (P.map (Rat.castHom ℝ)) x)
    (hQ : ∀ x, quadratic (Matrix.gram ℝ (dualRows T β hT ε h a b)) x ≤
      quadratic (Q.map (Rat.castHom ℝ)) x)
    (problem : Problem ℚ ι Empty Empty) (cert : Certificate ℚ ι Empty Empty ν)
    (hTarget : problem.target = rationalPaidMatrix k t O E P Q)
    (hcheck : check problem cert = true) (x : ι → ℝ) :
    0 ≤ responseDefect T β hT ε (∑ i, x i • h i) := by
  have hp := checked_realizeRat_nonneg problem cert hcheck x
    (by constructor <;> intro i <;> exact isEmptyElim i)
  change 0 ≤ quadratic (problem.target.map (Rat.castHom ℝ)) x at hp
  rw [hTarget, rationalPaidMatrix_cast] at hp
  apply hp.trans
  apply responseDefect_ge_paidMatrix T β hT ε h a b
    (O.map (Rat.castHom ℝ)) (E.map (Rat.castHom ℝ))
    (P.map (Rat.castHom ℝ)) (Q.map (Rat.castHom ℝ)) (k : ℝ) (t : ℝ)
    (by exact_mod_cast ht) hk _ _ hentry hP hQ x
  · intro i j
    exact Rat.cast_nonneg.mpr (hE i j)
  · intro i j
    change (E i j : ℝ) = (E j i : ℝ)
    rw [hEsym i j]

end GRWTSK.NumberTheory.WeilQuadraticForm.ResponseBlockCertificate
