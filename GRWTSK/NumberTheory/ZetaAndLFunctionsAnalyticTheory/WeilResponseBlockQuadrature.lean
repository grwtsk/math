/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilResponseBlockCertificate
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilResponseQuadratureCorrection

/-!
# Complete spatial suppliers for simultaneous response certificates

Whole-window approximate residual Grams, canonical gamma output errors,
and symmetrized correction-entry errors supply the preceding block theorem.
The sign reversal between a source-output-minus-load column and a residual
is proved before reusing its Gram. Both residual Grams need inflation; the
correction entries need their own charge. No high-test orthogonality or
unpaid Fourier tail is substituted for the complete physical norm.

SOURCE_PROOF_CANDIDATE. Lean parsing, elaboration, exact signatures, kernel
replay, transitive axiom audit, numerical source evaluation and review NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set Matrix
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ResponseBlockQuadrature

open TranslationCutoffs TranslationEnergyDomain FormDomainDensity
open ClosedSourceBilinear ShiftedSourceSolve ResponseSignReturn
open FiniteSineOperator FiniteSineSolveResidual FiniteSineGammaQuadrature
open ResponseResidualCorrection ResponseQuadratureCorrection ResponseBlockCertificate
open FiniteSineSpatialResidual
open GRWTSK.FunctionalAnalysis.SpatialGramEnclosure
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

variable {ι : Type*} [Fintype ι] [DecidableEq ι] {M K D : ℕ}

/-- Inflation pays complete physical column errors in matrix order. -/
def inflatedGram (G : Matrix ι ι ℝ) (e : ι → ℝ) (t : ℝ) : Matrix ι ι ℝ :=
  (1 + t) • G + (1 + 1 / t) • columnErrorMatrix e

theorem gram_le_inflated {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℝ H]
    (z zhat : ι → H) (e : ι → ℝ) (G : Matrix ι ι ℝ) {t : ℝ}
    (ht : 0 < t) (he : ∀ i, ‖z i - zhat i‖ ≤ e i)
    (hG : ∀ x, quadratic (Matrix.gram ℝ zhat) x ≤ quadratic G x) (x : ι → ℝ) :
    quadratic (Matrix.gram ℝ z) x ≤ quadratic (inflatedGram G e t) x := by
  let a := ∑ i, x i • z i
  let b := ∑ i, x i • zhat i
  let d := ∑ i, |x i| * e i
  have hd : 0 ≤ d := Finset.sum_nonneg fun i _ =>
    mul_nonneg (abs_nonneg _) ((norm_nonneg _).trans (he i))
  have herr : ‖a - b‖ ≤ d := sum_row_error z zhat e he x
  have hn : ‖a‖ ≤ ‖b‖ + d := by
    have htri := norm_add_le (a - b) b
    rw [sub_add_cancel] at htri
    linarith
  have hsq : ‖a‖ ^ 2 ≤ (‖b‖ + d) ^ 2 := by
    nlinarith [norm_nonneg a, norm_nonneg b]
  have hb : ‖b‖ ^ 2 ≤ quadratic G x := by simpa only [gram_quadratic] using hG x
  have hd2 : d ^ 2 ≤ quadratic (columnErrorMatrix e) x := column_error_sq_le e x
  have ht1 : 0 ≤ 1 + t := by positivity
  have ht2 : 0 ≤ 1 + 1 / t := by positivity
  rw [gram_quadratic, inflatedGram, quadratic_add, quadratic_smul, quadratic_smul]
  exact hsq.trans ((weighted_square_le ‖b‖ d ht).trans
    (add_le_add (mul_le_mul_of_nonneg_left hb ht1)
      (mul_le_mul_of_nonneg_left hd2 ht2)))

/-- The same theorem supplies either the primal or the derivative-load Gram.
The approximate Gram premise is for the FULL spatial residual. -/
theorem physicalResidual_gram_upper (T β : ℝ) (hT : 0 < T)
    (h : ι → WindowPhysical T) (a : ι → Fin M → ℝ)
    (x : ℕ → ℝ) (N : ℕ) (mesh t : ℝ) (G : Matrix ι ι ℝ)
    (hx : Monotone x) (hx0 : 0 < x 0) (hfar : 2 * T ≤ x N)
    (hmesh : 0 ≤ mesh) (hwidth : ∀ i < N, x (i + 1) - x i ≤ mesh * x i)
    (ht : 0 < t)
    (hG : ∀ v, quadratic (Matrix.gram ℝ (fun i => approximateResidual T β (h i) x N (a i))) v ≤
      quadratic G v) (v : ι → ℝ) :
    quadratic (Matrix.gram ℝ (fun i => physicalResidual T hT β (h i) (a i))) v ≤
      quadratic (inflatedGram G (fun i => quadratureCharge T x mesh (a i)) t) v := by
  exact gram_le_inflated
    (fun i => (physicalResidual T hT β (h i) (a i) : Physical))
    (fun i => approximateResidual T β (h i) x N (a i))
    (fun i => quadratureCharge T x mesh (a i)) G ht
    (fun i => physicalResidual_approximate_error_le T β hT (h i) x N (a i) mesh
      hx hx0 hfar hmesh hwidth) hG v

/-- Residual and output-minus-load differ by a sign, not by a discarded tail. -/
theorem finiteLoad_approximateResidual (T β : ℝ) (x : ℕ → ℝ) (N : ℕ)
    (a : Fin M → ℝ) (d : Fin D → ℝ) :
    approximateResidual T β (finiteInput T d) x N a =
      -correctedColumn T (β - regularization T β) x N a d := by
  unfold approximateResidual correctedColumn
  abel

theorem finiteLoads_approximateGram (T β : ℝ) (x : ℕ → ℝ) (N : ℕ)
    (a : ι → Fin M → ℝ) (d : ι → Fin D → ℝ) :
    Matrix.gram ℝ (fun i => approximateResidual T β (finiteInput T (d i)) x N (a i)) =
      residualGram T (β - regularization T β) x N a d := by
  ext i j
  simp only [Matrix.gram_apply, finiteLoad_approximateResidual, inner_neg_neg,
    residualGram]

/-- Existing rational spatial samples now supply the actual response-residual
Gram input. Source prime/pole phases and the beta-lambda shift are unchanged. -/
theorem finiteLoads_approximateGram_upper (T β : ℝ) (hT : 0 < T)
    (x : ℕ → ℝ) (N : ℕ) (a : ι → Fin M → ℝ) (d : ι → Fin D → ℝ)
    (y : ℕ → ℚ) (J : ℕ) (p e : ℕ → ι → ℚ) (Khat : ι → ℚ)
    (hy : Monotone y) (hy0 : (y 0 : ℝ) = -T) (hyJ : (y J : ℝ) = T)
    (he : ∀ k < J, ∀ i, 0 ≤ e k i)
    (hK : ∀ i, spatialSlope T (β - regularization T β) x N (a i) (d i) ≤ (Khat i : ℝ))
    (hsample : ∀ k < J, ∀ i,
      |spatialColumn T (β - regularization T β) x N (a i) (d i)
        (((y k : ℝ) + (y (k + 1) : ℝ)) / 2) - (p k i : ℝ)| ≤ (e k i : ℝ))
    (v : ι → ℝ) :
    quadratic (Matrix.gram ℝ
      (fun i => approximateResidual T β (finiteInput T (d i)) x N (a i))) v ≤
      quadratic ((rationalUpper y p (rationalCellRadii y Khat e) J).map (Rat.castHom ℝ)) v := by
  rw [finiteLoads_approximateGram]
  exact residualGram_upper_of_rational_samples T hT (β - regularization T β)
    x N a d y J p e Khat hy hy0 hyJ he hK hsample v

/-- Exact finite source coefficient arithmetic, used for the derivative load. -/
theorem finiteInput_sub_smul (T c : ℝ) (d a : Fin M → ℝ) :
    finiteInput T (fun i => d i - c * a i) = finiteInput T d - c • finiteInput T a := by
  apply Subtype.ext
  change (finiteInput T (fun i => d i - c * a i) : Physical) =
    (finiteInput T d : Physical) - c • (finiteInput T a : Physical)
  apply Lp.ext
  filter_upwards [finiteInput_ae T (fun i => d i - c * a i), finiteInput_ae T d,
    finiteInput_ae T a, Lp.coeFn_sub (finiteInput T d : Physical) (c • (finiteInput T a : Physical)),
    Lp.coeFn_smul c (finiteInput T a : Physical)] with u hmix hd ha hsub hsmul
  simp only [hsub, hsmul, hmix, hd, ha, Pi.sub_apply, Pi.smul_apply, smul_eq_mul,
    OddSineForm.finiteSine, sub_mul, mul_assoc, Finset.sum_sub_distrib, Finset.mul_sum]

/-- With a common coefficient length (zero padding is allowed), the dual
load is another EXPLICIT finite sine, not an unknown exact response. -/
theorem finiteLoad_dualLoad (T β : ℝ) (hT : 0 < T) (ε : ℝ)
    (d a : Fin M → ℝ) :
    dualLoad T β ε (finiteInput T d) (finiteLift T hT a) =
      finiteInput T (fun i => d i - (2 * (regularization T β - ε)) * a i) := by
  rw [dualLoad, finiteLift_windowInput, finiteInput_sub_smul]

/-- Symmetric correction matrix evaluated with approximate physical residuals. -/
def approximateCorrectionMatrix (T β ε : ℝ) (h : ι → WindowPhysical T)
    (x : ℕ → ℝ) (N : ℕ) (a : ι → Fin M → ℝ) (b : ι → Fin K → ℝ) : Matrix ι ι ℝ :=
  symmetrize (pairMatrix (fun i => (h i : Physical)) (fun i => (finiteInput T (a i) : Physical)) +
    (-(regularization T β - ε)) • Matrix.gram ℝ (fun i => (finiteInput T (a i) : Physical)) +
    pairMatrix (fun i => approximateResidual T β (h i) x N (a i))
      (fun i => (finiteInput T (b i) : Physical)))

/-- This entry charge is ADDITIONAL to inflation of the two residual Grams. -/
def correctionRadius (T : ℝ) (x : ℕ → ℝ) (mesh : ℝ)
    (a : ι → Fin M → ℝ) (b : ι → Fin K → ℝ) : Matrix ι ι ℝ := fun i j =>
  (quadratureCharge T x mesh (a i) * ‖finiteInput T (b j)‖ +
    quadratureCharge T x mesh (a j) * ‖finiteInput T (b i)‖) / 2

theorem correctionRadius_symmetric (T : ℝ) (x : ℕ → ℝ) (mesh : ℝ)
    (a : ι → Fin M → ℝ) (b : ι → Fin K → ℝ) (i j : ι) :
    correctionRadius T x mesh a b i j = correctionRadius T x mesh a b j i := by
  simp [correctionRadius, add_comm]

theorem correctionMatrix_entry_error (T β : ℝ) (hT : 0 < T) (ε : ℝ)
    (h : ι → WindowPhysical T) (x : ℕ → ℝ) (N : ℕ)
    (a : ι → Fin M → ℝ) (b : ι → Fin K → ℝ) (mesh : ℝ)
    (hx : Monotone x) (hx0 : 0 < x 0) (hfar : 2 * T ≤ x N)
    (hmesh : 0 ≤ mesh) (hwidth : ∀ i < N, x (i + 1) - x i ≤ mesh * x i)
    (i j : ι) :
    |correctionMatrix T β hT ε h a b i j - approximateCorrectionMatrix T β ε h x N a b i j| ≤
      correctionRadius T x mesh a b i j := by
  let er : ι → Physical := fun i =>
    (physicalResidual T hT β (h i) (a i) : Physical) - approximateResidual T β (h i) x N (a i)
  have hpair (u v : ι) : |inner ℝ (er u) (finiteInput T (b v) : Physical)| ≤
      quadratureCharge T x mesh (a u) * ‖finiteInput T (b v)‖ := by
    have he : ‖er u‖ ≤ quadratureCharge T x mesh (a u) :=
      physicalResidual_approximate_error_le T β hT (h u) x N (a u) mesh
        hx hx0 hfar hmesh hwidth
    exact (by simpa only [Real.norm_eq_abs] using norm_inner_le_norm
      (er u) (finiteInput T (b v) : Physical)).trans
      (mul_le_mul_of_nonneg_right he (norm_nonneg _))
  have hid : correctionMatrix T β hT ε h a b i j -
      approximateCorrectionMatrix T β ε h x N a b i j =
      (inner ℝ (er i) (finiteInput T (b j) : Physical) +
        inner ℝ (er j) (finiteInput T (b i) : Physical)) / 2 := by
    simp only [correctionMatrix, approximateCorrectionMatrix, symmetrize, pairMatrix,
      Matrix.add_apply, Matrix.smul_apply, smul_eq_mul, Matrix.gram_apply, primalRows,
      er, inner_sub_left]
    ring
  rw [hid, abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
  exact div_le_div_of_nonneg_right
    ((abs_add _ _).trans (add_le_add (hpair i j) (hpair j i))) (by norm_num)

/-- Supplied scalar rounding and source quadrature are separately charged.
A rational outward upper envelope of this symmetric radius feeds the checker. -/
theorem correctionMatrix_observed_error (T β : ℝ) (hT : 0 < T) (ε : ℝ)
    (h : ι → WindowPhysical T) (x : ℕ → ℝ) (N : ℕ)
    (a : ι → Fin M → ℝ) (b : ι → Fin K → ℝ) (mesh : ℝ)
    (hx : Monotone x) (hx0 : 0 < x 0) (hfar : 2 * T ≤ x N)
    (hmesh : 0 ≤ mesh) (hwidth : ∀ i < N, x (i + 1) - x i ≤ mesh * x i)
    (O E : Matrix ι ι ℝ)
    (hobs : ∀ i j, |approximateCorrectionMatrix T β ε h x N a b i j - O i j| ≤ E i j)
    (i j : ι) :
    |correctionMatrix T β hT ε h a b i j - O i j| ≤
      correctionRadius T x mesh a b i j + E i j :=
  (abs_sub_le _ _ _).trans (add_le_add
    (correctionMatrix_entry_error T β hT ε h x N a b mesh hx hx0 hfar hmesh hwidth i j)
    (hobs i j))

end GRWTSK.NumberTheory.WeilQuadraticForm.ResponseBlockQuadrature
