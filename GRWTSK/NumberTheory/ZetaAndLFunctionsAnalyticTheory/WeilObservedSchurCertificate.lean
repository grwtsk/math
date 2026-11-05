/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.SchurObserverCertificate
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilLowSchurEnclosure
import Mathlib.Algebra.Order.BigOperators.Ring.Finset

/-!
# Endpoint-aware observed Weil Schur targets

This specializes the existing arithmetic low-Schur note, Sections 4--6, and
its equation (6.4). It retains the full pole-inclusive source, every finite
residual row and the remote tail. It does NOT replace the source by a Mathieu
chain or a positive graph Laplacian. The primary operator specification is
Connes--Consani--Moscovici, *Zeta Spectral Triples*, arXiv:2511.22755v1,
(3.19)--(3.20); the eventual two independent obligations are Connes,
arXiv:2602.04022v1, Section 6.6.

Reuse: `LowSchur.primeMass`, its nonnegativity, `positive_buffer`,
`tailSquarePrice`, and `two_prices_square`; the new generic integration reuses
`SchurResidual` and `QuadraticCertificates`, not duplicate checkers.

The actual finite cosine endpoint row and cosh moment coefficients are defined
below. Weighted Cauchy--Schwarz proves the literal J majorant. Its pullback
through the stored reconstruction X is retained as a matrix. The same exact
endpoint row determines the kernel used in the checker. Approximate kernels
must instead pay their endpoint defect; the whole-head matrix is also defined.

The source-to-Fourier identification and infinite-tail theorem are analytical
in `weil-low-schur-enclosure.md`, not silently formalized by definitions here.
`even_observed_enclosure` states their precise residual hypotheses and derives
the improved matrix enclosure. No theorem asserts the arithmetic lower matrix
passes, at one window or on an unbounded sequence. A passing hyperplane test is
an inertia ingredient, not coercivity on an unrelated trial's orthogonal
complement. The full-domain and spectral return remain as scoped in the notes.

All vectors in this module are real cosine coordinates. The real/complex
operator identification and paired-character Dirichlet source are not inferred
by analogy. Fourier phases and signs are not replaced by their magnitudes in
the source matrix; absolute values occur only in the remote error majorant.

AI-assisted manual formalization. Compilation/elaboration, fresh kernel replay,
transitive axiom audit and independent analytical review: NOT_RUN.
No theorem-level novelty, cofinal separation, RH or Dirichlet GRH is claimed.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Matrix

namespace GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur.Observed

open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.LinearAlgebra.SchurObserver

/-- Coefficients of sqrt(T) times endpoint evaluation on the finite orthonormal
cosine space. The constant-mode coefficient is 1/sqrt(2), not 1. -/
def endpointRow (M : ℕ) : Fin (M + 1) → ℝ :=
  fun n => if n.val = 0 then 1 / Real.sqrt 2 else (-1 : ℝ) ^ n.val

/-- Coefficients of the actual even pole moment <cosh(t/2),f>.
This is finite source data, not point evaluation on the full form domain. -/
def coshMomentRow (T : ℝ) (M : ℕ) : Fin (M + 1) → ℝ :=
  fun n => if n.val = 0 then 4 * Real.sinh (T / 2) / Real.sqrt (2 * T)
    else (-1 : ℝ) ^ n.val * Real.sinh (T / 2) /
      (Real.sqrt T * (1 / 4 + (Real.pi * (n.val : ℝ) / T) ^ 2))

def buffer (M L : ℕ) : ℝ := 1 - (M : ℝ) / ((L : ℝ) + 1)
def h0 (T : ℝ) : ℝ := 2 * T / Real.pi ^ 2
def h1 (T : ℝ) (M L : ℕ) : ℝ := primeMass T / (Real.pi * buffer M L) + 1 / 2
def hp (T : ℝ) : ℝ := 2 * T * Real.sqrt T * Real.sinh (T / 2) / Real.pi ^ 2

/-- Zero weight on the constant coordinate, as in D0 and D1 of the source note. -/
def tailWeight (T : ℝ) (M L : ℕ) : Fin (M + 1) → ℝ :=
  fun n => if n.val = 0 then 0 else h0 T + h1 T M L * (n.val : ℝ)

theorem buffer_pos {M L : ℕ} (hML : M ≤ L) : 0 < buffer M L := by
  apply positive_buffer
  · exact_mod_cast hML
  · exact_mod_cast Nat.zero_le L

theorem tailWeight_nonneg {T : ℝ} (hT : 0 < T) {M L : ℕ} (hML : M ≤ L)
    (n : Fin (M + 1)) : 0 ≤ tailWeight T M L n := by
  have hb : 0 ≤ buffer M L := (buffer_pos hML).le
  have hzero : 0 ≤ h0 T := div_nonneg (by linarith) (sq_nonneg _)
  have hone : 0 ≤ h1 T M L := add_nonneg
    (div_nonneg (primeMass_nonneg T) (mul_nonneg Real.pi_pos.le hb)) (by norm_num)
  unfold tailWeight
  split_ifs
  · exact le_rfl
  · exact add_nonneg hzero (mul_nonneg hone (Nat.cast_nonneg _))

/-- The literal H_even, regrouped without taking absolute prime sums again. -/
def evenTailAmplitude (T : ℝ) (M L : ℕ) (x : Fin (M + 1) → ℝ) : ℝ :=
  (∑ n, tailWeight T M L n * |x n|) + hp T * |coshMomentRow T M ⬝ᵥ x|

/-- Equation (5.2), retaining its diagonal and pole rank-one pieces. The sum of
the weights equals M*h0+h1*M*(M+1)/2; the finite sum avoids an extra index shift. -/
def evenTailMajorant (T : ℝ) (M L : ℕ) : Matrix (Fin (M + 1)) (Fin (M + 1)) ℝ :=
  (2 * ∑ n, tailWeight T M L n) • Matrix.diagonal (tailWeight T M L) +
    (2 * hp T ^ 2) • Matrix.vecMulVec (coshMomentRow T M) (coshMomentRow T M)

private theorem diagonal_quadratic {ι : Type*} [Fintype ι] [DecidableEq ι]
    (d x : ι → ℝ) : quadratic (Matrix.diagonal d) x = ∑ i, d i * (x i) ^ 2 := by
  simp [quadratic, Matrix.mulVec, dotProduct, Matrix.diagonal,
    pow_two, mul_comm, mul_left_comm, mul_assoc]

theorem evenTailMajorant_quadratic (T : ℝ) (M L : ℕ) (x : Fin (M + 1) → ℝ) :
    quadratic (evenTailMajorant T M L) x =
      2 * (∑ n, tailWeight T M L n) *
        (∑ n, tailWeight T M L n * (x n) ^ 2) +
      2 * hp T ^ 2 * (coshMomentRow T M ⬝ᵥ x) ^ 2 := by
  have hdiag := diagonal_quadratic (tailWeight T M L) x
  have hpole := outer_quadratic (coshMomentRow T M) x
  simp only [evenTailMajorant, quadratic, Matrix.add_mulVec, Matrix.smul_mulVec,
    dotProduct_add, dotProduct_smul, smul_eq_mul] at *
  rw [hdiag, hpole]

/-- The finite weighted Cauchy--Schwarz step is now a proof body, not a supplied
J-bound. Reuse Mathlib's weighted squared-sum theorem. -/
theorem evenTailAmplitude_sq_le {T : ℝ} (hT : 0 < T) {M L : ℕ} (hML : M ≤ L)
    (x : Fin (M + 1) → ℝ) :
    evenTailAmplitude T M L x ^ 2 ≤ quadratic (evenTailMajorant T M L) x := by
  have hc := Finset.sum_sq_le_sum_mul_sum_of_sq_le_mul
    (Finset.univ : Finset (Fin (M + 1)))
    (r := fun n => tailWeight T M L n * |x n|)
    (f := tailWeight T M L)
    (g := fun n => tailWeight T M L n * (x n) ^ 2)
    (fun n _ => tailWeight_nonneg hT hML n)
    (fun n _ => mul_nonneg (tailWeight_nonneg hT hML n) (sq_nonneg _))
    (fun n _ => by rw [mul_pow, sq_abs]; nlinarith)
  have ht := two_prices_square
    (∑ n, tailWeight T M L n * |x n|) (hp T * |coshMomentRow T M ⬝ᵥ x|)
  rw [evenTailMajorant_quadratic]
  unfold evenTailAmplitude
  rw [mul_pow, sq_abs] at ht
  nlinarith [hc, ht]

theorem evenTailMajorant_nonneg {T : ℝ} (hT : 0 < T) {M L : ℕ} (hML : M ≤ L)
    (x : Fin (M + 1) → ℝ) : 0 ≤ quadratic (evenTailMajorant T M L) x :=
  (sq_nonneg _).trans (evenTailAmplitude_sq_le hT hML x)

/-- The entire even-head penalty from (5.3). Only its first term is slow L^-1. -/
def wholeEvenTailMajorant (T : ℝ) (M L : ℕ) :
    Matrix (Fin (M + 1)) (Fin (M + 1)) ℝ :=
  (2 * (primeMass T / Real.pi + 1 / 2) ^ 2 / (L : ℝ) +
      4 * h0 T ^ 2 / (3 * (L : ℝ) ^ 3)) •
        Matrix.vecMulVec (endpointRow M) (endpointRow M) +
    (4 / (3 * (L : ℝ) ^ 3)) • evenTailMajorant T M L

/-- On the exact endpoint kernel the whole-head allowance is four times the
sharper allowance. Retain the sharper version rather than silently weakening it. -/
theorem wholeEvenTailMajorant_on_kernel (T : ℝ) (M L : ℕ)
    (x : Fin (M + 1) → ℝ) (hx : endpointRow M ⬝ᵥ x = 0) :
    quadratic (wholeEvenTailMajorant T M L) x =
      4 * quadratic (evenTailMajorant T M L) x / (3 * (L : ℝ) ^ 3) := by
  have he := outer_quadratic (endpointRow M) x
  rw [hx] at he
  simp only [wholeEvenTailMajorant, quadratic, Matrix.add_mulVec, Matrix.smul_mulVec,
    dotProduct_add, dotProduct_smul, smul_eq_mul] at *
  rw [he]
  ring

section Reconstruction

variable {ι ρ ν : Type*} [Fintype ι] [Fintype ρ] [Fintype ν] [DecidableEq ι]

/-- Exact pullback of the finite endpoint row through the ACTUAL stored X. -/
def reconstructedEndpointRow {M : ℕ} (X : Matrix (Fin (M + 1)) ι ℝ) : ι → ℝ :=
  X.transpose.mulVec (endpointRow M)

theorem reconstructedEndpointRow_apply {M : ℕ}
    (X : Matrix (Fin (M + 1)) ι ℝ) (u : ι → ℝ) :
    reconstructedEndpointRow X ⬝ᵥ u = endpointRow M ⬝ᵥ X.mulVec u := by
  unfold reconstructedEndpointRow
  calc
    X.transpose.mulVec (endpointRow M) ⬝ᵥ u =
        u ⬝ᵥ X.transpose.mulVec (endpointRow M) := dotProduct_comm _ _
    _ = endpointRow M ⬝ᵥ X.mulVec u :=
      Matrix.dotProduct_transpose_mulVec X u (endpointRow M)

/-- The tail term of the even endpoint-restricted target, as an actual matrix. -/
def evenTailPenalty (T : ℝ) {M : ℕ} (L : ℕ)
    (X : Matrix (Fin (M + 1)) ι ℝ) : Matrix ι ι ℝ :=
  (1 / (3 * (L : ℝ) ^ 3)) • congruence X (evenTailMajorant T M L)

theorem evenTailPenalty_quadratic (T : ℝ) {M : ℕ} (L : ℕ)
    (X : Matrix (Fin (M + 1)) ι ℝ) (u : ι → ℝ) :
    quadratic (evenTailPenalty T L X) u =
      quadratic (evenTailMajorant T M L) (X.mulVec u) / (3 * (L : ℝ) ^ 3) := by
  have h := quadratic_congruence (evenTailMajorant T M L) X u
  simp only [evenTailPenalty, quadratic, Matrix.smul_mulVec,
    dotProduct_smul, smul_eq_mul] at *
  rw [h]
  ring

/-- Exactly the matrix in (6.4), with the endpoint-improved remote term and
structured-observer allowance omega. Fhat includes EVERY row N<|n|<=L. -/
def evenLowerMatrix (T : ℝ) {M : ℕ} (L : ℕ)
    (X : Matrix (Fin (M + 1)) ι ℝ)
    (Uhat : Matrix ι ι ℝ) (Fhat : Matrix ρ ι ℝ) (ω delta s : ℝ) : Matrix ι ι ℝ :=
  lowerMatrix Uhat (reconstructionGram X) Fhat (evenTailPenalty T L X) ω delta s

/-- Inclusion of the finite reconstruction support into the fully observed
cosine block. This does not impose endpoint equality on the operator domain. -/
def supportIndex {M L : ℕ} (hML : M ≤ L) (i : Fin (M + 1)) : Fin (L + 1) :=
  ⟨i.val, by omega⟩

/-- Consecutive residual rows N+1,...,L, INCLUDING all buffered middle modes. -/
def residualIndex {N L : ℕ} (hNL : N ≤ L) (r : Fin (L - N)) : Fin (L + 1) :=
  ⟨N + 1 + r.val, by omega⟩

/-- Exact finite-row coverage, not a heuristic selection of residual modes. -/
theorem residualIndex_complete {N L : ℕ} (hNL : N ≤ L) (n : Fin (L + 1)) :
    (∃ r : Fin (L - N), residualIndex hNL r = n) ↔ N < n.val := by
  constructor
  · rintro ⟨r, rfl⟩
    simp only [residualIndex]
    omega
  · intro hn
    refine ⟨⟨n.val - (N + 1), by omega⟩, ?_⟩
    apply Fin.ext
    simp only [residualIndex]
    omega

/-- Form both observed pieces from ONE complete observed block. Ahat is the
parity-compressed full arithmetic observation, not the periodic diagonal D_T. -/
def evenUpperFromBlock {M L : ℕ} (hML : M ≤ L)
    (Ahat : Matrix (Fin (L + 1)) (Fin (L + 1)) ℝ)
    (X : Matrix (Fin (M + 1)) ι ℝ) (β : ℝ) : Matrix ι ι ℝ :=
  congruence X ((Ahat - β • 1).submatrix (supportIndex hML) (supportIndex hML))

def evenResidualFromBlock {N M L : ℕ} (hNM : N ≤ M) (hML : M ≤ L)
    (Ahat : Matrix (Fin (L + 1)) (Fin (L + 1)) ℝ)
    (X : Matrix (Fin (M + 1)) ι ℝ) (β : ℝ) : Matrix (Fin (L - N)) ι ℝ :=
  (Ahat - β • 1).submatrix (residualIndex (hNM.trans hML)) (supportIndex hML) * X

/-- Complete even target from a stored source observation, with no freely
chosen Uhat or residual inventory. Its tail remains the full endpoint majorant. -/
def evenLowerFromBlock (T : ℝ) {N M L : ℕ} (hNM : N ≤ M) (hML : M ≤ L)
    (Ahat : Matrix (Fin (L + 1)) (Fin (L + 1)) ℝ)
    (X : Matrix (Fin (M + 1)) ι ℝ) (β ω delta s : ℝ) : Matrix ι ι ℝ :=
  evenLowerMatrix T L X (evenUpperFromBlock hML Ahat X β)
    (evenResidualFromBlock hNM hML Ahat X β) ω delta s

/-- Complete source-residual hypotheses return to the literal stored target.
The analytical endpoint theorem must apply to the TRUE remote tail `tail2`.
No sign for the resulting lower matrix is assumed or manufactured here. -/
theorem even_observed_enclosure
    {T : ℝ} (hT : 0 < T) {M L : ℕ} (hML : M ≤ L) (hL : 0 < L)
    (X : Matrix (Fin (M + 1)) ι ℝ)
    (Uhat : Matrix ι ι ℝ) (Fhat : Matrix ρ ι ℝ)
    (ω delta s : ℝ) (u : ι → ℝ)
    (htrace : reconstructedEndpointRow X ⬝ᵥ u = 0)
    {S U defect rfin2 tail2 : ℝ} (hdelta : 0 < delta)
    (hid : S = U - defect) (hdefect : 0 ≤ defect)
    (hbudget : defect ≤ (rfin2 + tail2) / delta)
    (htail : endpointRow M ⬝ᵥ X.mulVec u = 0 →
      tail2 ≤ tailSquarePrice (evenTailAmplitude T M L (X.mulVec u)) (L : ℝ))
    (hobs : |U - quadratic Uhat u| ≤ ω * quadratic (reconstructionGram X) u)
    (hres : rfin2 ≤ (1 + s) * quadratic (Fhat.transpose * Fhat) u +
      (1 + s⁻¹) * ω ^ 2 * quadratic (reconstructionGram X) u) :
    quadratic (evenLowerMatrix T L X Uhat Fhat ω delta s) u ≤ S ∧
      S ≤ quadratic (upperMatrix Uhat (reconstructionGram X) ω) u := by
  have hLR : (0 : ℝ) < L := by exact_mod_cast hL
  have hden : 0 ≤ 3 * (L : ℝ) ^ 3 := mul_nonneg (by norm_num) (pow_nonneg hLR.le _)
  have htrace' : endpointRow M ⬝ᵥ X.mulVec u = 0 := by
    rw [← reconstructedEndpointRow_apply X u]
    exact htrace
  have htailJ : tail2 ≤ quadratic (evenTailPenalty T L X) u := by
    rw [evenTailPenalty_quadratic]
    exact (htail htrace').trans
      (div_le_div_of_nonneg_right (evenTailAmplitude_sq_le hT hML _) hden)
  apply matrix_enclosure Uhat (reconstructionGram X) Fhat (evenTailPenalty T L X)
    ω delta s u hdelta hid hdefect
  · exact hbudget.trans
      (div_le_div_of_nonneg_right (add_le_add_left htailJ rfin2) hdelta.le)
  · exact hobs
  · exact hres

/-- Check the exact endpoint kernel using the EXISTING checker and exact
congruence. `hsource` is supplied by `even_observed_enclosure`, not by a positive
compression. The case of a zero endpoint row must pass the whole-space test. -/
theorem even_kernel_check_return
    (T : ℝ) {M : ℕ} (L : ℕ) (X : Matrix (Fin (M + 1)) ι ℝ)
    (Uhat : Matrix ι ι ℝ) (Fhat : Matrix ρ ι ℝ) (ω delta s : ℝ)
    (S : (ι → ℝ) → ℝ) (k : ι)
    (C : Certificate ℝ ι Empty Empty ν)
    (hcheck : check (matrixProblem
      (congruence (kernelProjection (reconstructedEndpointRow X) k)
        (evenLowerMatrix T L X Uhat Fhat ω delta s))) C = true)
    (hsource : ∀ u, reconstructedEndpointRow X ⬝ᵥ u = 0 →
      quadratic (evenLowerMatrix T L X Uhat Fhat ω delta s) u ≤ S u)
    (u : ι → ℝ) (hu : reconstructedEndpointRow X ⬝ᵥ u = 0) : 0 ≤ S u :=
  checked_kernel_source_nonneg _ S _ k C hcheck hsource u hu

/-- The same stored reconstruction certifies the FULL trial's Rayleigh bound.
The mass is its Gram value, not the head norm. q is the unshifted SOURCE value;
hsource is the observer upper bound for that same reconstructed vector. -/
theorem observed_trial_return {M : ℕ} (X : Matrix (Fin (M + 1)) ι ℝ)
    (Uhat : Matrix ι ι ℝ) (ω β : ℝ) (u : ι → ℝ) (q : ℝ)
    (hmass : 0 < quadratic (reconstructionGram X) u)
    (hsource : q - β * quadratic (reconstructionGram X) u ≤
      quadratic (upperMatrix Uhat (reconstructionGram X) ω) u)
    (hnegative : quadratic (upperMatrix Uhat (reconstructionGram X) ω) u < 0) :
    q / quadratic (reconstructionGram X) u ≤
        β + quadratic (upperMatrix Uhat (reconstructionGram X) ω) u /
          quadratic (reconstructionGram X) u ∧
      β + quadratic (upperMatrix Uhat (reconstructionGram X) ω) u /
        quadratic (reconstructionGram X) u < β :=
  trial_rayleigh_return hmass hsource hnegative

end Reconstruction

end GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur.Observed
