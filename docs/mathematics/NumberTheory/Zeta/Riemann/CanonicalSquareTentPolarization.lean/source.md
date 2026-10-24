# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0fced6fc958031623daec748c60b17295d92b552` · SHA-256 `316d2bf09263b3abcd54e2f7b0b0738149cca33d79d37827cd3213b171dbadd3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentZetaApproximation
import Mathlib.Tactic

set_option autoImplicit false

open Filter Topology
open scoped BigOperators ComplexConjugate

/-!
# Polarized canonical square-tent packets

This file extends the source-bound diagonal square-tent packet to finite complex
linear combinations.  For a fixed `M`, a vector in `Combination M` gives complex
coefficients for the first `M+1` canonical square tents.

The arithmetic coefficient matrix is an orthogonal direct sum of the genuine
prime-power Gram stages.  Its off-diagonal coefficients are zero because different
canonical square tents have disjoint open arithmetic support and vanish at their
shared square endpoints.  This is a source theorem, not a declaration that the
classical Weil form has zero cross terms.

The finite zero-head comparison retains two residual levels:

* a raw complex residual equal to the complete finite-head ledger;
* its real Hermitian projection, bounded by the norm of that raw residual.

The resulting real-part comparison inhabits `ApproximatePositiveApproximation` for
each finite combination space.  No `WeilCriterionForZeta`, classical test-class
transport, or RH implication is constructed here.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization

open GRWTSK.RiemannHypothesis
open GRWTSK.Analysis.ErrorBounds
open GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt
open GRWTSK.NumberTheory.Chebyshev.TentSource
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentLedger
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentAtomStage
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralPort
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentZetaApproximation

/-- Complex coefficient vectors for the first `M+1` canonical square tents. -/
abbrev Combination (M : ℕ) := Fin (M + 1) → ℂ

/-- Exact inherited zeta source and normalization binding. -/
def polarizedSourceBinding : SourceBinding :=
  CanonicalSquareTentZetaApproximation.sourceBinding

/-- Basis label transported to the previously constructed diagonal test packet. -/
def basisTest {M : ℕ} (i : Fin (M + 1)) : CanonicalSquareTentTest :=
  ⟨i.1⟩

/-- Distinct canonical square tents have disjoint arithmetic support.  Their
only possible geometric contact is a common square endpoint, where both tent
weights vanish. -/
theorem squareWeight_mul_eq_zero_of_ne
    (i j m : ℕ) (hij : i ≠ j) :
    squareWeight (i + 2) m * squareWeight (j + 2) m = 0 := by
  rcases lt_or_gt_of_ne hij with hijlt | hjilt
  · by_cases hi : (i + 2) ^ 2 < m ∧ m < (i + 3) ^ 2
    · have hbase : i + 3 ≤ j + 2 := by omega
      have hsq : (i + 3) ^ 2 ≤ (j + 2) ^ 2 :=
        Nat.pow_le_pow_left hbase 2
      have hjout : ¬ ((j + 2) ^ 2 < m ∧ m < (j + 3) ^ 2) := by
        intro hj
        omega
      rw [squareWeight_eq_zero_of_outside (j + 2) m hjout, mul_zero]
    · rw [squareWeight_eq_zero_of_outside (i + 2) m hi, zero_mul]
  · by_cases hj : (j + 2) ^ 2 < m ∧ m < (j + 3) ^ 2
    · have hbase : j + 3 ≤ i + 2 := by omega
      have hsq : (j + 3) ^ 2 ≤ (i + 2) ^ 2 :=
        Nat.pow_le_pow_left hbase 2
      have hiout : ¬ ((i + 2) ^ 2 < m ∧ m < (i + 3) ^ 2) := by
        intro hi
        omega
      rw [squareWeight_eq_zero_of_outside (i + 2) m hiout, zero_mul]
    · rw [squareWeight_eq_zero_of_outside (j + 2) m hj, mul_zero]

/-- The square-root amplitudes used by the finite prime-power Gram are likewise
pointwise orthogonal at every natural arithmetic argument. -/
theorem squareRootWeight_mul_eq_zero_of_ne
    (i j m : ℕ) (hij : i ≠ j) :
    Real.sqrt (squareWeight (i + 2) m) *
      Real.sqrt (squareWeight (j + 2) m) = 0 := by
  rcases mul_eq_zero.mp (squareWeight_mul_eq_zero_of_ne i j m hij) with hi | hj
  · rw [hi, Real.sqrt_zero, zero_mul]
  · rw [hj, Real.sqrt_zero, mul_zero]

/-- One literal arithmetic cross summand at a natural source index. -/
noncomputable def sourceCrossTermAt (i j m : ℕ) : ℝ :=
  ArithmeticFunction.vonMangoldt m *
    (Real.sqrt (squareWeight (i + 2) m) *
      Real.sqrt (squareWeight (j + 2) m))

@[simp]
theorem sourceCrossTermAt_diag (i m : ℕ) :
    sourceCrossTermAt i i m =
      ArithmeticFunction.vonMangoldt m * squareWeight (i + 2) m := by
  unfold sourceCrossTermAt
  rw [Real.mul_self_sqrt (squareWeight_nonneg (i + 2) m)]

@[simp]
theorem sourceCrossTermAt_offdiag
    (i j m : ℕ) (hij : i ≠ j) :
    sourceCrossTermAt i j m = 0 := by
  unfold sourceCrossTermAt
  rw [squareRootWeight_mul_eq_zero_of_ne i j m hij, mul_zero]

/-- Literal finite source expression for one matrix coefficient.  A common
inventory covers both square windows.  On the diagonal it reduces to the authentic
square interval; off diagonal every summand vanishes by disjoint support. -/
noncomputable def sourceCrossSum {M : ℕ}
    (i j : Fin (M + 1)) : ℝ :=
  ∑ m ∈ Finset.Ioc
      ((Nat.min (i.1 + 2) (j.1 + 2)) ^ 2)
      ((Nat.max (i.1 + 2) (j.1 + 2) + 1) ^ 2),
    sourceCrossTermAt i.1 j.1 m

/-- Exact arithmetic cross coefficient.  On the diagonal it is the actual finite
prime-power Gram stage.  Off the diagonal it is zero, justified by the support
theorem above and the orthogonal direct-sum construction. -/
noncomputable def arithmeticCrossCoefficient {M : ℕ}
    (i j : Fin (M + 1)) : ℝ :=
  if i = j then
    stageEnergy (canonicalStage i.1) (canonicalAmplitude i.1)
  else 0

@[simp]
theorem arithmeticCrossCoefficient_diag {M : ℕ}
    (i : Fin (M + 1)) :
    arithmeticCrossCoefficient i i =
      stageEnergy (canonicalStage i.1) (canonicalAmplitude i.1) := by
  simp [arithmeticCrossCoefficient]

@[simp]
theorem arithmeticCrossCoefficient_offdiag {M : ℕ}
    {i j : Fin (M + 1)} (hij : i ≠ j) :
    arithmeticCrossCoefficient i j = 0 := by
  simp [arithmeticCrossCoefficient, hij]

/-- The diagonal coefficient is the exact canonical square-tent Mangoldt source. -/
theorem arithmeticCrossCoefficient_diag_eq_mangoldt {M : ℕ}
    (i : Fin (M + 1)) :
    arithmeticCrossCoefficient i i = squareTentMangoldt (i.1 + 2) := by
  rw [arithmeticCrossCoefficient_diag]
  unfold canonicalStage canonicalAmplitude
  exact stageEnergy_squareRootAmplitude_eq (i.1 + 2)

/-- The coefficient matrix is exactly the literal finite arithmetic source
expression, including every cross term. -/
theorem sourceCrossSum_eq_arithmeticCrossCoefficient {M : ℕ}
    (i j : Fin (M + 1)) :
    sourceCrossSum i j = arithmeticCrossCoefficient i j := by
  by_cases hij : i = j
  · subst j
    rw [arithmeticCrossCoefficient_diag_eq_mangoldt]
    unfold sourceCrossSum squareTentMangoldt
    simp only [Nat.min_self, Nat.max_self, sourceCrossTermAt_diag]
  · have hijv : i.1 ≠ j.1 := by
      intro hval
      exact hij (Fin.ext hval)
    rw [arithmeticCrossCoefficient_offdiag hij]
    unfold sourceCrossSum
    apply Finset.sum_eq_zero
    intro m hm
    exact sourceCrossTermAt_offdiag i.1 j.1 m hijv

/-- The same coefficient is the complete zeta correction, by the accepted source
identity already present in the canonical spectral port. -/
theorem arithmeticCrossCoefficient_diag_eq_correction {M : ℕ}
    (i : Fin (M + 1)) :
    arithmeticCrossCoefficient i i = canonicalCorrection i.1 := by
  rw [arithmeticCrossCoefficient_diag]
  exact canonicalStageEnergy_eq_correction i.1

theorem arithmeticCrossCoefficient_diag_nonnegative {M : ℕ}
    (i : Fin (M + 1)) :
    0 ≤ arithmeticCrossCoefficient i i := by
  rw [arithmeticCrossCoefficient_diag]
  exact stageEnergy_nonneg (canonicalStage i.1) (canonicalAmplitude i.1)

/-- Hermitian finite-head cross coefficient.  The diagonal uses the real part of
the complete finite spectral value; no off-diagonal zero sum is invented. -/
noncomputable def finiteCrossCoefficient {M : ℕ}
    (N : ℕ) (i j : Fin (M + 1)) : ℝ :=
  if i = j then (finiteSpectralValue N (basisTest i)).re else 0

/-- Raw complex finite-head coefficient before taking its Hermitian real part. -/
noncomputable def rawFiniteCrossCoefficient {M : ℕ}
    (N : ℕ) (i j : Fin (M + 1)) : ℂ :=
  if i = j then finiteSpectralValue N (basisTest i) else 0

/-- Complete raw cross residual.  On diagonal entries it retains the full complex
finite-head ledger; off diagonal it is exactly zero. -/
noncomputable def rawCrossResidual {M : ℕ}
    (N : ℕ) (i j : Fin (M + 1)) : ℂ :=
  (arithmeticCrossCoefficient i j : ℂ) - rawFiniteCrossCoefficient N i j

/-- Hermitian real projection of the complete raw residual. -/
noncomputable def hermitianCrossResidual {M : ℕ}
    (N : ℕ) (i j : Fin (M + 1)) : ℝ :=
  arithmeticCrossCoefficient i j - finiteCrossCoefficient N i j

/-- Per-entry residual majorant. -/
noncomputable def crossError {M : ℕ}
    (N : ℕ) (i j : Fin (M + 1)) : ℝ :=
  if i = j then lowerDefect N (basisTest i) else 0

@[simp]
theorem rawCrossResidual_diag {M : ℕ}
    (N : ℕ) (i : Fin (M + 1)) :
    rawCrossResidual N i i =
      -finiteHeadBalance (testStage (basisTest i)) (zeroHeightCutoff N) := by
  calc
    rawCrossResidual N i i =
        (canonicalCorrection i.1 : ℂ) - finiteSpectralValue N (basisTest i) := by
      unfold rawCrossResidual
      rw [arithmeticCrossCoefficient_diag_eq_correction]
      simp [rawFiniteCrossCoefficient]
    _ = -(finiteSpectralValue N (basisTest i) -
          (canonicalCorrection i.1 : ℂ)) := by ring
    _ = -finiteHeadBalance (testStage (basisTest i)) (zeroHeightCutoff N) := by
      simpa only [basisTest] using congrArg Neg.neg
        (finiteSpectralValue_sub_target_eq_residual N (basisTest i))

@[simp]
theorem rawCrossResidual_offdiag {M : ℕ}
    (N : ℕ) {i j : Fin (M + 1)} (hij : i ≠ j) :
    rawCrossResidual N i j = 0 := by
  simp [rawCrossResidual, rawFiniteCrossCoefficient,
    arithmeticCrossCoefficient, hij]

/-- The real Hermitian residual is exactly the real part of the complete raw
complex residual.  The imaginary channel is not silently declared absent. -/
theorem hermitianCrossResidual_eq_raw_re {M : ℕ}
    (N : ℕ) (i j : Fin (M + 1)) :
    hermitianCrossResidual N i j = (rawCrossResidual N i j).re := by
  by_cases hij : i = j
  · subst j
    simp [hermitianCrossResidual, finiteCrossCoefficient,
      rawCrossResidual, rawFiniteCrossCoefficient, Complex.sub_re]
  · simp [hermitianCrossResidual, finiteCrossCoefficient,
      rawCrossResidual, rawFiniteCrossCoefficient,
      arithmeticCrossCoefficient, hij]

/-- Every cross residual is bounded by its source-derived complete tail majorant. -/
theorem abs_hermitianCrossResidual_le {M : ℕ}
    (N : ℕ) (i j : Fin (M + 1)) :
    |hermitianCrossResidual N i j| ≤ crossError N i j := by
  by_cases hij : i = j
  · subst j
    rw [hermitianCrossResidual_eq_raw_re]
    have hre : |(rawCrossResidual N i i).re| ≤ ‖rawCrossResidual N i i‖ :=
      Complex.abs_re_le_norm _
    have hraw : ‖rawCrossResidual N i i‖ ≤ lowerDefect N (basisTest i) := by
      rw [rawCrossResidual_diag, norm_neg]
      exact norm_finiteHeadBalance_le
        (testStage (basisTest i)) (testStage_ge_two (basisTest i))
        (zeroHeightCutoff N) (zeroHeightCutoff_ge_two N)
    simpa [crossError] using hre.trans hraw
  · simp [hermitianCrossResidual, crossError, finiteCrossCoefficient,
      arithmeticCrossCoefficient, hij]

/-- Source polarization on finite complex linear combinations.  The complete
cross coefficient matrix is visible in the double sum. -/
noncomputable def sourcePolarizedForm {M : ℕ}
    (u v : Combination M) : ℂ :=
  ∑ i : Fin (M + 1), ∑ j : Fin (M + 1),
    conj (u i) * v j * (arithmeticCrossCoefficient i j : ℂ)

/-- Raw finite-height polarization before projecting its diagonal coefficient to
its real part.  It is retained only for complete residual accounting. -/
noncomputable def rawFinitePolarizedForm {M : ℕ}
    (N : ℕ) (u v : Combination M) : ℂ :=
  ∑ i : Fin (M + 1), ∑ j : Fin (M + 1),
    conj (u i) * v j * rawFiniteCrossCoefficient N i j

/-- Hermitian finite-height polarization.  Each diagonal coefficient is real by
definition; the raw imaginary discrepancy remains in `rawCrossResidual`. -/
noncomputable def finitePolarizedForm {M : ℕ}
    (N : ℕ) (u v : Combination M) : ℂ :=
  ∑ i : Fin (M + 1), ∑ j : Fin (M + 1),
    conj (u i) * v j * (finiteCrossCoefficient N i j : ℂ)

/-- Complete raw residual on finite combinations. -/
noncomputable def rawResidualForm {M : ℕ}
    (N : ℕ) (u v : Combination M) : ℂ :=
  ∑ i : Fin (M + 1), ∑ j : Fin (M + 1),
    conj (u i) * v j * rawCrossResidual N i j

/-- Hermitian residual on finite combinations. -/
noncomputable def hermitianResidualForm {M : ℕ}
    (N : ℕ) (u v : Combination M) : ℂ :=
  ∑ i : Fin (M + 1), ∑ j : Fin (M + 1),
    conj (u i) * v j * (hermitianCrossResidual N i j : ℂ)

/-- Exact arithmetic coefficient expansion. -/
theorem sourcePolarizedForm_eq_diagonal_sum {M : ℕ}
    (u v : Combination M) :
    sourcePolarizedForm u v =
      ∑ i : Fin (M + 1),
        conj (u i) * v i *
          (arithmeticCrossCoefficient i i : ℂ) := by
  classical
  unfold sourcePolarizedForm
  apply Finset.sum_congr rfl
  intro i hi
  rw [Finset.sum_eq_single i]
  · intro j hj hji
    simp [arithmeticCrossCoefficient, Ne.symm hji]
  · simp

/-- Exact finite Hermitian coefficient expansion. -/
theorem finitePolarizedForm_eq_diagonal_sum {M : ℕ}
    (N : ℕ) (u v : Combination M) :
    finitePolarizedForm N u v =
      ∑ i : Fin (M + 1),
        conj (u i) * v i *
          (finiteCrossCoefficient N i i : ℂ) := by
  classical
  unfold finitePolarizedForm
  apply Finset.sum_congr rfl
  intro i hi
  rw [Finset.sum_eq_single i]
  · intro j hj hji
    simp [finiteCrossCoefficient, Ne.symm hji]
  · simp

/-- Exact raw residual identity generated entrywise from the complete source ledger. -/
theorem source_sub_rawFinite_eq_rawResidualForm {M : ℕ}
    (N : ℕ) (u v : Combination M) :
    sourcePolarizedForm u v - rawFinitePolarizedForm N u v =
      rawResidualForm N u v := by
  classical
  unfold sourcePolarizedForm rawFinitePolarizedForm rawResidualForm
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro i hi
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro j hj
  unfold rawCrossResidual
  ring

/-- Exact Hermitian residual identity used by the positivity comparison. -/
theorem source_sub_finite_eq_hermitianResidualForm {M : ℕ}
    (N : ℕ) (u v : Combination M) :
    sourcePolarizedForm u v - finitePolarizedForm N u v =
      hermitianResidualForm N u v := by
  classical
  unfold sourcePolarizedForm finitePolarizedForm hermitianResidualForm
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro i hi
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro j hj
  unfold hermitianCrossResidual
  push_cast
  ring

/-- Collapse the complete Hermitian residual to its source-proved diagonal entries. -/
theorem hermitianResidualForm_eq_diagonal_sum {M : ℕ}
    (N : ℕ) (u v : Combination M) :
    hermitianResidualForm N u v =
      ∑ i : Fin (M + 1),
        conj (u i) * v i *
          (hermitianCrossResidual N i i : ℂ) := by
  classical
  unfold hermitianResidualForm
  apply Finset.sum_congr rfl
  intro i hi
  rw [Finset.sum_eq_single i]
  · intro j hj hji
    have hij : i ≠ j := Ne.symm hji
    simp [hermitianCrossResidual, finiteCrossCoefficient,
      arithmeticCrossCoefficient, hij]
  · simp

/-- The source form is conjugate-linear in the first variable. -/
theorem sourcePolarizedForm_add_left {M : ℕ}
    (u v w : Combination M) :
    sourcePolarizedForm (u + v) w =
      sourcePolarizedForm u w + sourcePolarizedForm v w := by
  classical
  simp [sourcePolarizedForm, add_mul, Finset.sum_add_distrib]

/-- The source form is linear in the second variable. -/
theorem sourcePolarizedForm_add_right {M : ℕ}
    (u v w : Combination M) :
    sourcePolarizedForm u (v + w) =
      sourcePolarizedForm u v + sourcePolarizedForm u w := by
  classical
  simp [sourcePolarizedForm, mul_add, add_mul, Finset.sum_add_distrib]

/-- Conjugate scalar law in the first variable. -/
theorem sourcePolarizedForm_smul_left {M : ℕ}
    (c : ℂ) (u v : Combination M) :
    sourcePolarizedForm (c • u) v =
      conj c * sourcePolarizedForm u v := by
  classical
  simp [sourcePolarizedForm, Finset.mul_sum, mul_assoc]

/-- Scalar law in the second variable. -/
theorem sourcePolarizedForm_smul_right {M : ℕ}
    (c : ℂ) (u v : Combination M) :
    sourcePolarizedForm u (c • v) =
      c * sourcePolarizedForm u v := by
  classical
  simp [sourcePolarizedForm, Finset.mul_sum, mul_assoc, mul_left_comm]

/-- The source polarization is Hermitian. -/
theorem sourcePolarizedForm_hermitian {M : ℕ}
    (u v : Combination M) :
    sourcePolarizedForm v u = conj (sourcePolarizedForm u v) := by
  classical
  rw [sourcePolarizedForm_eq_diagonal_sum,
    sourcePolarizedForm_eq_diagonal_sum]
  simp only [map_sum, map_mul, Complex.conj_ofReal, Complex.conj_conj]
  apply Finset.sum_congr rfl
  intro i hi
  ring

/-- The finite Hermitian form is conjugate-linear in the first variable. -/
theorem finitePolarizedForm_add_left {M : ℕ}
    (N : ℕ) (u v w : Combination M) :
    finitePolarizedForm N (u + v) w =
      finitePolarizedForm N u w + finitePolarizedForm N v w := by
  classical
  simp [finitePolarizedForm, add_mul, Finset.sum_add_distrib]

/-- The finite Hermitian form is linear in the second variable. -/
theorem finitePolarizedForm_add_right {M : ℕ}
    (N : ℕ) (u v w : Combination M) :
    finitePolarizedForm N u (v + w) =
      finitePolarizedForm N u v + finitePolarizedForm N u w := by
  classical
  simp [finitePolarizedForm, mul_add, add_mul, Finset.sum_add_distrib]

/-- Conjugate scalar law for the finite Hermitian form. -/
theorem finitePolarizedForm_smul_left {M : ℕ}
    (N : ℕ) (c : ℂ) (u v : Combination M) :
    finitePolarizedForm N (c • u) v =
      conj c * finitePolarizedForm N u v := by
  classical
  simp [finitePolarizedForm, Finset.mul_sum, mul_assoc]

/-- Scalar law in the second variable for the finite Hermitian form. -/
theorem finitePolarizedForm_smul_right {M : ℕ}
    (N : ℕ) (c : ℂ) (u v : Combination M) :
    finitePolarizedForm N u (c • v) =
      c * finitePolarizedForm N u v := by
  classical
  simp [finitePolarizedForm, Finset.mul_sum, mul_assoc, mul_left_comm]

/-- The Hermitian finite form obeys the same algebraic polarization laws. -/
theorem finitePolarizedForm_hermitian {M : ℕ}
    (N : ℕ) (u v : Combination M) :
    finitePolarizedForm N v u = conj (finitePolarizedForm N u v) := by
  classical
  rw [finitePolarizedForm_eq_diagonal_sum,
    finitePolarizedForm_eq_diagonal_sum]
  simp only [map_sum, map_mul, Complex.conj_ofReal, Complex.conj_conj]
  apply Finset.sum_congr rfl
  intro i hi
  ring

/-- Real diagonal of the source form. -/
noncomputable def sourceDiagonal {M : ℕ} (u : Combination M) : ℝ :=
  ∑ i : Fin (M + 1),
    Complex.normSq (u i) * arithmeticCrossCoefficient i i

theorem sourcePolarizedForm_self_re {M : ℕ}
    (u : Combination M) :
    (sourcePolarizedForm u u).re = sourceDiagonal u := by
  classical
  rw [sourcePolarizedForm_eq_diagonal_sum]
  unfold sourceDiagonal
  simp_rw [← Complex.normSq_eq_conj_mul_self]
  simp

theorem sourcePolarizedForm_self_im_zero {M : ℕ}
    (u : Combination M) :
    (sourcePolarizedForm u u).im = 0 := by
  classical
  rw [sourcePolarizedForm_eq_diagonal_sum]
  simp_rw [← Complex.normSq_eq_conj_mul_self]
  simp

/-- Positive semidefiniteness is reconstructed from the arithmetic Gram
coefficients, not assumed for a zeta target. -/
theorem sourceDiagonal_nonnegative {M : ℕ}
    (u : Combination M) :
    0 ≤ sourceDiagonal u := by
  classical
  unfold sourceDiagonal
  exact Finset.sum_nonneg fun i hi =>
    mul_nonneg (Complex.normSq_nonneg _) (arithmeticCrossCoefficient_diag_nonnegative i)

theorem sourcePolarizedForm_self_re_nonnegative {M : ℕ}
    (u : Combination M) :
    0 ≤ (sourcePolarizedForm u u).re := by
  rw [sourcePolarizedForm_self_re]
  exact sourceDiagonal_nonnegative u

/-- Coefficientwise complete error majorant for a pair of finite combinations. -/
noncomputable def pairError {M : ℕ}
    (N : ℕ) (u v : Combination M) : ℝ :=
  ∑ i : Fin (M + 1),
    ‖u i‖ * ‖v i‖ * lowerDefect N (basisTest i)

theorem pairError_nonnegative {M : ℕ}
    (N : ℕ) (u v : Combination M) :
    0 ≤ pairError N u v := by
  classical
  unfold pairError
  exact Finset.sum_nonneg fun i hi =>
    mul_nonneg
      (mul_nonneg (norm_nonneg _) (norm_nonneg _))
      (lowerDefect_nonnegative N (basisTest i))

/-- Complete pairwise comparison bound. -/
theorem norm_source_sub_finite_le_pairError {M : ℕ}
    (N : ℕ) (u v : Combination M) :
    ‖sourcePolarizedForm u v - finitePolarizedForm N u v‖ ≤
      pairError N u v := by
  rw [source_sub_finite_eq_hermitianResidualForm,
    hermitianResidualForm_eq_diagonal_sum]
  calc
    ‖∑ i : Fin (M + 1),
        conj (u i) * v i *
          (hermitianCrossResidual N i i : ℂ)‖
        ≤ ∑ i : Fin (M + 1),
            ‖conj (u i) * v i *
              (hermitianCrossResidual N i i : ℂ)‖ :=
      norm_sum_le _ _
    _ ≤ pairError N u v := by
      classical
      unfold pairError
      apply Finset.sum_le_sum
      intro i hi
      calc
        ‖conj (u i) * v i *
            (hermitianCrossResidual N i i : ℂ)‖ =
            ‖u i‖ * ‖v i‖ * |hermitianCrossResidual N i i| := by
              simp [Real.norm_eq_abs, mul_assoc]
        _ ≤ ‖u i‖ * ‖v i‖ * lowerDefect N (basisTest i) := by
              have hres :
                  |hermitianCrossResidual N i i| ≤
                    lowerDefect N (basisTest i) := by
                simpa [crossError] using
                  (abs_hermitianCrossResidual_le N i i)
              exact mul_le_mul_of_nonneg_left hres
                (mul_nonneg (norm_nonneg _) (norm_nonneg _))

/-- Constant multiplication preserves the repository epsilon convergence predicate. -/
theorem vanishesAtInfinity_const_mul
    (c : ℝ) {u : ℕ → ℝ} (hu : VanishesAtInfinity u) :
    VanishesAtInfinity (fun n => c * u n) := by
  by_cases hc : c = 0
  · subst c
    simpa using (VanishesAtInfinity.zero :
      VanishesAtInfinity (fun _ : ℕ => (0 : ℝ)))
  · intro ε hε
    have hcabs : 0 < |c| := abs_pos.mpr hc
    obtain ⟨N, hN⟩ := hu (ε / |c|) (div_pos hε hcabs)
    refine ⟨N, ?_⟩
    intro n hn
    calc
      |c * u n| = |c| * |u n| := abs_mul _ _
      _ ≤ |c| * (ε / |c|) :=
        mul_le_mul_of_nonneg_left (hN n hn) (abs_nonneg c)
      _ = ε := by field_simp [ne_of_gt hcabs]

/-- A finite sum of vanishing real sequences vanishes. -/
theorem vanishesAtInfinity_finset_sum
    {ι : Type*} (s : Finset ι) (u : ι → ℕ → ℝ)
    (hu : ∀ i ∈ s, VanishesAtInfinity (u i)) :
    VanishesAtInfinity (fun n => ∑ i ∈ s, u i n) := by
  classical
  induction s using Finset.induction_on with
  | empty =>
      simpa using (VanishesAtInfinity.zero :
        VanishesAtInfinity (fun _ : ℕ => (0 : ℝ)))
  | @insert a s ha ih =>
      have hua : VanishesAtInfinity (u a) := hu a (by simp)
      have hus : ∀ i ∈ s, VanishesAtInfinity (u i) := by
        intro i hi
        exact hu i (by simp [hi])
      simpa [Finset.sum_insert ha] using hua.add (ih hus)

/-- The pairwise error tends to zero for every fixed pair of finite combinations. -/
theorem pairError_vanishes {M : ℕ}
    (u v : Combination M) :
    VanishesAtInfinity (fun N => pairError N u v) := by
  classical
  unfold pairError
  apply vanishesAtInfinity_finset_sum Finset.univ
  intro i hi
  exact vanishesAtInfinity_const_mul
    (‖u i‖ * ‖v i‖)
    (lowerDefect_vanishes (basisTest i))

/-- Real target consumed by the existing approximate-positive interface. -/
noncomputable def realTargetForm {M : ℕ}
    (u v : Combination M) : ℝ :=
  (sourcePolarizedForm u v).re

/-- Real finite-height approximant consumed by the same interface. -/
noncomputable def realFiniteForm {M : ℕ}
    (N : ℕ) (u v : Combination M) : ℝ :=
  (finitePolarizedForm N u v).re

/-- Diagonal lower defect for a finite combination. -/
noncomputable def combinationLowerDefect {M : ℕ}
    (N : ℕ) (u : Combination M) : ℝ :=
  pairError N u u

/-- The complete complex bound controls the real comparison required by the
existing terminal interface. -/
theorem abs_realComparison_le_pairError {M : ℕ}
    (N : ℕ) (u v : Combination M) :
    |realTargetForm u v - realFiniteForm N u v| ≤ pairError N u v := by
  calc
    |realTargetForm u v - realFiniteForm N u v| =
        |(sourcePolarizedForm u v - finitePolarizedForm N u v).re| := by
      simp [realTargetForm, realFiniteForm, Complex.sub_re]
    _ ≤ ‖sourcePolarizedForm u v - finitePolarizedForm N u v‖ :=
      Complex.abs_re_le_norm _
    _ ≤ pairError N u v :=
      norm_source_sub_finite_le_pairError N u v

/-- The real target diagonal is nonnegative by the arithmetic source Gram. -/
theorem realTargetForm_diagonal_nonnegative {M : ℕ}
    (u : Combination M) :
    0 ≤ realTargetForm u u := by
  exact sourcePolarizedForm_self_re_nonnegative u

/-- The finite polarized diagonal may be negative, but only by the complete
coefficientwise omitted-tail defect. -/
theorem realFiniteForm_diagonal_lower_bound {M : ℕ}
    (N : ℕ) (u : Combination M) :
    -combinationLowerDefect N u ≤ realFiniteForm N u u := by
  have herror := abs_realComparison_le_pairError N u u
  have hside :
      realTargetForm u u - realFiniteForm N u u ≤ pairError N u u :=
    (le_abs_self _).trans herror
  have htarget := realTargetForm_diagonal_nonnegative u
  unfold combinationLowerDefect
  linarith

theorem combinationLowerDefect_nonnegative {M : ℕ}
    (N : ℕ) (u : Combination M) :
    0 ≤ combinationLowerDefect N u := by
  exact pairError_nonnegative N u u

theorem combinationLowerDefect_vanishes {M : ℕ}
    (u : Combination M) :
    VanishesAtInfinity (fun N => combinationLowerDefect N u) := by
  exact pairError_vanishes u u

theorem realComparison_vanishes {M : ℕ}
    (u v : Combination M) :
    VanishesAtInfinity
      (fun N => realTargetForm u v - realFiniteForm N u v) :=
  VanishesAtInfinity.of_nonnegative_bound
    (pairError_vanishes u v)
    (fun N => pairError_nonnegative N u v)
    (fun N => abs_realComparison_le_pairError N u v)

/-- Positivity-preserving comparison for all finite complex combinations of the
first `M+1` canonical square tents. -/
noncomputable def approximatePositiveApproximation (M : ℕ) :
    ApproximatePositiveApproximation
      (Combination M) (realTargetForm (M := M)) where
  approximant := realFiniteForm
  lowerDefect := combinationLowerDefect
  lowerDefect_nonnegative := combinationLowerDefect_nonnegative
  diagonal_lower_bound := realFiniteForm_diagonal_lower_bound
  lowerDefect_vanishes := combinationLowerDefect_vanishes
  comparison_vanishes := realComparison_vanishes

/-- Immutable source packet.  It deliberately contains no classical Weil criterion
and no transport from this orthogonal arithmetic polarization to the standard Weil
convolution form. -/
structure SourceBoundPolarizedPacket (M : ℕ) where
  binding : SourceBinding
  testClass : String
  polarizationProfile : String
  binding_eq : binding = polarizedSourceBinding
  target : Combination M → Combination M → ℂ
  finiteApproximation : ℕ → Combination M → Combination M → ℂ
  rawResidual : ℕ → Combination M → Combination M → ℂ
  approximation :
    ApproximatePositiveApproximation
      (Combination M) (realTargetForm (M := M))

noncomputable def sourceBoundPolarizedPacket (M : ℕ) :
    SourceBoundPolarizedPacket M where
  binding := polarizedSourceBinding
  testClass :=
    "Fin(M+1)->C coefficients on canonical square tents with source stages i+2"
  polarizationProfile :=
    "orthogonal arithmetic direct sum; K_ij=delta_ij*primePowerGram_i;" ++
    " raw finite-head residual retained before real Hermitian projection;" ++
    " no classical Weil test-class or normalization transport"
  binding_eq := rfl
  target := sourcePolarizedForm
  finiteApproximation := finitePolarizedForm
  rawResidual := rawResidualForm
  approximation := approximatePositiveApproximation M

/-- Hostile control: source orthogonality does not assert a classical Weil
cross-term theorem.  The declaration records only the exact arithmetic matrix. -/
theorem offDiagonal_arithmetic_and_residual_zero {M : ℕ}
    (N : ℕ) {i j : Fin (M + 1)} (hij : i ≠ j) :
    arithmeticCrossCoefficient i j = 0 ∧
      rawCrossResidual N i j = 0 ∧
      hermitianCrossResidual N i j = 0 := by
  simp [arithmeticCrossCoefficient, rawCrossResidual,
    rawFiniteCrossCoefficient, hermitianCrossResidual,
    finiteCrossCoefficient, hij]

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization
```
