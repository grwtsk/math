# Complete source: GRWTSK.Topology.GeneralTopology.ThetaPositiveLift.Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `520bd44ad1867a6a9fce65fc325d6f919dcac3b5` · SHA-256 `983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaPhiInfiniteDerivativeTape
import Mathlib.Topology.Instances.Matrix

/-!
# All-rank signed-jet reduction to finite theta-mode determinants

The literal all-order source tape is already constructed.  This module expands
each source derivative into its positive theta-mode weights and then uses finite
column multilinearity of the determinant.

For a finite mode cutoff, the oriented Hankel determinant is an exact finite
sum over column-wise mode choices.  Every summand is a positive product of mode
weights times one purely polynomial determinant.  Passing the cutoff to
infinity uses the already proved absolute convergence of every derivative
coordinate and continuity of the finite determinant.

Therefore the remaining all-rank source sign is reduced to one explicit
mode-polynomial determinant condition.  That condition is retained as an
unproved proposition here.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open Filter Polynomial
open scoped Topology
noncomputable section

/-- The strictly positive scalar weight carried by one literal theta mode. -/
def thetaPhiDerivativeModeWeight (m : ℕ) (t : ℝ) : ℝ :=
  Real.pi * ((m : ℝ) + 1) ^ 2 *
    Real.exp (5 * t) * Real.exp (-thetaModeY m t)

/-- Every literal mode weight is strictly positive on the whole real line. -/
theorem thetaPhiDerivativeModeWeight_pos (m : ℕ) (t : ℝ) :
    0 < thetaPhiDerivativeModeWeight m t := by
  unfold thetaPhiDerivativeModeWeight
  positivity

/-- The Gaussian building block with polynomial degree `j` is exactly the
positive mode weight times the `j`th power of the mode coordinate. -/
theorem thetaPhiGaussianTerm_scaled_eq_modeWeight
    (j m : ℕ) (t : ℝ) :
    Real.pi ^ (j + 1) *
        thetaGaussianTerm (2 * j + 2) (4 * j + 5) m t =
      thetaPhiDerivativeModeWeight m t * thetaModeY m t ^ j := by
  have hc : Real.exp (((4 * j + 5 : ℕ) : ℝ) * t) =
      Real.exp (5 * t) * Real.exp (4 * t) ^ j := by
    rw [← Real.exp_nat_mul, ← Real.exp_add]
    congr 1
    push_cast
    ring
  unfold thetaPhiDerivativeModeWeight thetaGaussianTerm
    thetaModeY thetaModeA HurwitzKernelBounds.f_nat
  rw [hc]
  push_cast
  simp only [pow_add, pow_mul, mul_pow]
  ring_nf

/-- One all-order source derivative contribution from one theta mode. -/
def thetaPhiDerivativeModeValue
    (n m : ℕ) (t : ℝ) : ℝ :=
  thetaPhiDerivativeModeWeight m t *
    (thetaPhiDerivativePolynomial n).eval (thetaModeY m t)

/-- Every fixed derivative order is absolutely summable over the literal theta
modes. -/
theorem thetaPhiDerivativeModeValue_summable
    (n : ℕ) (t : ℝ) :
    Summable (fun m : ℕ => thetaPhiDerivativeModeValue n m t) := by
  let p := thetaPhiDerivativePolynomial n
  have hs :
      Summable (fun m : ℕ =>
        ∑ j ∈ p.support,
          p.coeff j * Real.pi ^ (j + 1) *
            thetaGaussianTerm (2 * j + 2) (4 * j + 5) m t) :=
    summable_sum (fun j (_hj : j ∈ p.support) =>
      (thetaGaussianTerm_summable
        (2 * j + 2) (4 * j + 5) t).mul_left
          (p.coeff j * Real.pi ^ (j + 1)))
  refine hs.congr (fun m => ?_)
  unfold thetaPhiDerivativeModeValue
  rw [Polynomial.eval_eq_sum, Polynomial.sum_def, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j hj
  calc
    p.coeff j * Real.pi ^ (j + 1) *
          thetaGaussianTerm (2 * j + 2) (4 * j + 5) m t =
        p.coeff j *
          (Real.pi ^ (j + 1) *
            thetaGaussianTerm (2 * j + 2) (4 * j + 5) m t) := by
      ring
    _ =
        p.coeff j *
          (thetaPhiDerivativeModeWeight m t *
            thetaModeY m t ^ j) := by
      rw [thetaPhiGaussianTerm_scaled_eq_modeWeight]
    _ =
        thetaPhiDerivativeModeWeight m t *
          ((thetaPhiDerivativePolynomial n).coeff j *
            thetaModeY m t ^ j) := by
      dsimp [p]
      ring

/-- The all-order derivative tape is exactly the convergent sum of its
positive-weighted mode-polynomial values. -/
theorem thetaPhiDerivativeTapeValue_eq_tsum_mode
    (n : ℕ) (t : ℝ) :
    thetaPhiDerivativeTapeValue n t =
      ∑' m : ℕ, thetaPhiDerivativeModeValue n m t := by
  let p := thetaPhiDerivativePolynomial n
  have hs (j : ℕ) (hj : j ∈ p.support) :
      Summable (fun m : ℕ =>
        p.coeff j * Real.pi ^ (j + 1) *
          thetaGaussianTerm (2 * j + 2) (4 * j + 5) m t) :=
    (thetaGaussianTerm_summable
      (2 * j + 2) (4 * j + 5) t).mul_left
        (p.coeff j * Real.pi ^ (j + 1))
  change thetaPhiGaussianLift p t = _
  calc
    thetaPhiGaussianLift p t =
        ∑ j ∈ p.support,
          ∑' m : ℕ,
            p.coeff j * Real.pi ^ (j + 1) *
              thetaGaussianTerm (2 * j + 2) (4 * j + 5) m t := by
      unfold thetaPhiGaussianLift thetaGaussianSum
      rw [Polynomial.sum_def]
      apply Finset.sum_congr rfl
      intro j hj
      rw [tsum_mul_left]
    _ =
        ∑' m : ℕ,
          ∑ j ∈ p.support,
            p.coeff j * Real.pi ^ (j + 1) *
              thetaGaussianTerm (2 * j + 2) (4 * j + 5) m t := by
      exact
        (Summable.tsum_finsetSum
          (fun j hj => hs j hj)).symm
    _ = ∑' m : ℕ, thetaPhiDerivativeModeValue n m t := by
      apply tsum_congr
      intro m
      unfold thetaPhiDerivativeModeValue
      rw [Polynomial.eval_eq_sum, Polynomial.sum_def, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro j hj
      calc
        p.coeff j * Real.pi ^ (j + 1) *
              thetaGaussianTerm (2 * j + 2) (4 * j + 5) m t =
            p.coeff j *
              (Real.pi ^ (j + 1) *
                thetaGaussianTerm (2 * j + 2) (4 * j + 5) m t) := by
          ring
        _ =
            p.coeff j *
              (thetaPhiDerivativeModeWeight m t *
                thetaModeY m t ^ j) := by
          rw [thetaPhiGaussianTerm_scaled_eq_modeWeight]
        _ =
            thetaPhiDerivativeModeWeight m t *
              ((thetaPhiDerivativePolynomial n).coeff j *
                thetaModeY m t ^ j) := by
          dsimp [p]
          ring

/-- Finite-mode truncation of one all-order source derivative coordinate. -/
def thetaPhiDerivativeTapeTruncation
    (N n : ℕ) (t : ℝ) : ℝ :=
  ∑ m : Fin N, thetaPhiDerivativeModeValue n m.val t

/-- Finite mode truncations converge coordinatewise to the literal infinite
derivative tape. -/
theorem thetaPhiDerivativeTapeTruncation_tendsto
    (n : ℕ) (t : ℝ) :
    Tendsto
      (fun N => thetaPhiDerivativeTapeTruncation N n t)
      atTop (𝓝 (thetaPhiDerivativeTapeValue n t)) := by
  rw [thetaPhiDerivativeTapeValue_eq_tsum_mode]
  have h :=
    (thetaPhiDerivativeModeValue_summable n t).hasSum.tendsto_sum_nat
  have hfin (N : ℕ) :
      (∑ m : Fin N,
        thetaPhiDerivativeModeValue n m.val t) =
        ∑ m ∈ Finset.range N,
          thetaPhiDerivativeModeValue n m t := by
    rw [Fin.sum_univ_eq_sum_range
      (fun m : ℕ =>
        thetaPhiDerivativeModeValue n m t)]
  have hseq :
      (fun N => thetaPhiDerivativeTapeTruncation N n t) =
        (fun N =>
          ∑ m ∈ Finset.range N,
            thetaPhiDerivativeModeValue n m t) := by
    funext N
    exact hfin N
  rw [hseq]
  exact h

/-- Determinant multilinearity for independent finite sums in every column. -/
theorem det_column_fintype_sum
    {k N : ℕ}
    (A : Fin k → Fin N → Fin k → ℝ) :
    Matrix.det
        (Matrix.of fun i j : Fin k =>
          ∑ m : Fin N, A j m i) =
      ∑ f : Fin k → Fin N,
        Matrix.det
          (Matrix.of fun i j : Fin k => A j (f j) i) := by
  simp only [Matrix.det_apply', Matrix.of_apply,
    Finset.prod_univ_sum, Fintype.piFinset_univ,
    Finset.mul_sum]
  rw [Finset.sum_comm]

/-- Pure mode-polynomial determinant remaining after all positive scalar
weights are removed. -/
def thetaPhiModeChoiceSignedDet
    (k : ℕ) (t : ℝ) (f : Fin k → ℕ) : ℝ :=
  (-1 : ℝ) ^ (k * (k - 1) / 2) *
    Matrix.det
      (Matrix.of fun i j : Fin k =>
        (thetaPhiDerivativePolynomial (i.val + j.val)).eval
          (thetaModeY (f j) t))

/-- Exact finite-cutoff expansion of the signed source determinant into
positive mode weights times mode-polynomial determinants. -/
theorem signedJetDet_truncation_eq_mode_sum
    (k N : ℕ) (t : ℝ) :
    signedJetDet k
        (fun n => thetaPhiDerivativeTapeTruncation N n t) =
      ∑ f : Fin k → Fin N,
        (∏ j : Fin k,
          thetaPhiDerivativeModeWeight (f j).val t) *
          thetaPhiModeChoiceSignedDet k t
            (fun j => (f j).val) := by
  unfold signedJetDet thetaPhiDerivativeTapeTruncation
  rw [det_column_fintype_sum]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro f hf
  have hdet :
      Matrix.det
          (Matrix.of fun i j : Fin k =>
            thetaPhiDerivativeModeValue
              (i.val + j.val) (f j).val t) =
        (∏ j : Fin k,
          thetaPhiDerivativeModeWeight (f j).val t) *
          Matrix.det
            (Matrix.of fun i j : Fin k =>
              (thetaPhiDerivativePolynomial
                (i.val + j.val)).eval
                  (thetaModeY (f j).val t)) := by
    unfold thetaPhiDerivativeModeValue
    exact Matrix.det_mul_row
      (fun j : Fin k =>
        thetaPhiDerivativeModeWeight (f j).val t)
      (Matrix.of fun i j : Fin k =>
        (thetaPhiDerivativePolynomial
          (i.val + j.val)).eval
            (thetaModeY (f j).val t))
  rw [hdet]
  unfold thetaPhiModeChoiceSignedDet
  ring

/-- The exact all-rank remaining source obligation: every finite column-wise
mode choice has the repository's oriented polynomial determinant sign. -/
def ThetaPhiModeChoiceSignedNonnegative : Prop :=
  ∀ k : ℕ, ∀ t : ℝ, 0 ≤ t →
    ∀ f : Fin k → ℕ,
      0 ≤ thetaPhiModeChoiceSignedDet k t f

/-- The mode-choice criterion makes every finite-mode source truncation
signed-regular. -/
theorem signedJetDet_truncation_nonnegative
    (hmode : ThetaPhiModeChoiceSignedNonnegative)
    {k N : ℕ} {t : ℝ} (ht : 0 ≤ t) :
    0 ≤ signedJetDet k
      (fun n => thetaPhiDerivativeTapeTruncation N n t) := by
  rw [signedJetDet_truncation_eq_mode_sum]
  apply Finset.sum_nonneg
  intro f hf
  exact mul_nonneg
    (Finset.prod_nonneg
      (fun j _ =>
        (thetaPhiDerivativeModeWeight_pos (f j).val t).le))
    (hmode k t ht (fun j => (f j).val))

/-- The signed determinant of the finite-mode tape converges to the signed
determinant of the literal infinite source tape. -/
theorem signedJetDet_truncation_tendsto
    (k : ℕ) (t : ℝ) :
    Tendsto
      (fun N =>
        signedJetDet k
          (fun n =>
            thetaPhiDerivativeTapeTruncation N n t))
      atTop
      (𝓝 (signedJetDet k
        (fun n => thetaPhiDerivativeTapeValue n t))) := by
  have hmatrix :
      Tendsto
        (fun N =>
          Matrix.of fun i j : Fin k =>
            thetaPhiDerivativeTapeTruncation
              N (i.val + j.val) t)
        atTop
        (𝓝 (Matrix.of fun i j : Fin k =>
          thetaPhiDerivativeTapeValue
            (i.val + j.val) t)) := by
    apply tendsto_pi_nhds.mpr
    intro i
    apply tendsto_pi_nhds.mpr
    intro j
    exact thetaPhiDerivativeTapeTruncation_tendsto
      (i.val + j.val) t
  have hcont :
      Continuous
        (fun M : Matrix (Fin k) (Fin k) ℝ =>
          Matrix.det M) :=
    continuous_id.matrix_det
  have hdet :=
    (hcont.tendsto
      (Matrix.of fun i j : Fin k =>
        thetaPhiDerivativeTapeValue
          (i.val + j.val) t)).comp hmatrix
  unfold signedJetDet
  exact hdet.const_mul
    ((-1 : ℝ) ^ (k * (k - 1) / 2))

/-- The finite mode-choice determinant condition is sufficient for the actual
literal infinite derivative tape to have every oriented Hankel determinant
nonnegative. -/
theorem thetaPhiInfiniteSourceJet_signedRegular_of_modeChoice
    (hmode : ThetaPhiModeChoiceSignedNonnegative)
    {t : ℝ} (ht : 0 ≤ t) :
    SignedJetRegular
      (fun n => thetaPhiInfiniteSourceJet.value n t) := by
  intro k
  change 0 ≤ signedJetDet k
    (fun n => thetaPhiDerivativeTapeValue n t)
  apply ge_of_tendsto
    (signedJetDet_truncation_tendsto k t)
  exact Filter.Eventually.of_forall
    (fun N => signedJetDet_truncation_nonnegative hmode ht)

/-- The remaining mode-polynomial sign criterion would close the all-rank
source signed-jet proposition. -/
theorem thetaPhiAllRankSignedJetCriterion_of_modeChoice
    (hmode : ThetaPhiModeChoiceSignedNonnegative) :
    ThetaPhiAllRankSignedJetCriterion := by
  refine ⟨thetaPhiInfiniteSourceJet, ?_⟩
  intro t ht
  exact thetaPhiInfiniteSourceJet_signedRegular_of_modeChoice
    hmode ht

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
