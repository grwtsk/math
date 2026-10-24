# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e97b644fd04d6a402e3ff47109e231e01d02663` · SHA-256 `3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.Grassmannian.InvolutionCompression
import FormalResearch.RiemannHypothesis.ThetaPhiSignedMomentParityCriterion

/-!
# Theta signed moments as a Grassmannian involution compression

The finite signed-moment representation has weights

`(-1)^l M_l`

with `M_l >= 0`.  Instead of treating this sign as an alternating scalar
sum, retain it as the diagonal involution

`J e_l = (-1)^l e_l`.

After absorbing the positive Christoffel magnitude into a square-root weighted
Vandermonde/Krylov frame `A`, the finite Christoffel-Hankel matrix is exactly

`A J A^T`.

Thus its determinant is an involution-compression determinant.  By the generic
Grassmannian congruence theorem, its sign is invariant under invertible changes
of polynomial basis and therefore descends to the full-rank row-space point.

This is the finite algebraic object needed for the source-native
moment/Jacobi/spectral program.  No positivity of the compression determinant
is asserted here.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open FormalResearch.PositiveAtlas.Grassmannian
open Filter
open scoped BigOperators Topology
noncomputable section

/-- Ambient parity involution on the finite signed-moment support. -/
def thetaPhiParityInvolution (L : ℕ) :
    Matrix (Fin L) (Fin L) ℝ :=
  Matrix.diagonal fun l =>
    (-1 : ℝ) ^ l.val

/-- The parity operator is symmetric. -/
theorem thetaPhiParityInvolution_transpose
    (L : ℕ) :
    (thetaPhiParityInvolution L).transpose =
      thetaPhiParityInvolution L := by
  ext i j
  by_cases hij : i = j
  · subst j
    simp [thetaPhiParityInvolution]
  · simp [thetaPhiParityInvolution, hij, Ne.symm hij]

/-- The parity operator is a genuine involution. -/
theorem thetaPhiParityInvolution_sq
    (L : ℕ) :
    thetaPhiParityInvolution L *
        thetaPhiParityInvolution L =
      (1 : Matrix (Fin L) (Fin L) ℝ) := by
  rw [thetaPhiParityInvolution,
    Matrix.diagonal_mul_diagonal]
  ext i j
  by_cases hij : i = j
  · subst j
    have hs :
        ((-1 : ℝ) ^ i.val) *
            ((-1 : ℝ) ^ i.val) = 1 := by
      rw [← mul_pow]
      norm_num
    simp [hs]
  · simp [hij]

/-- Diagonal multiplication operator on the arithmetic signed-moment
support. -/
def thetaPhiSignedMomentSupportOperator (L : ℕ) :
    Matrix (Fin L) (Fin L) ℝ :=
  Matrix.diagonal fun l =>
    thetaPhiSignedMomentNode l.val

/-- Scalar phase whose restriction to the arithmetic support is parity. -/
def thetaPhiSupportParityPhase (x : ℝ) : ℝ :=
  Real.cos (((x - 5) / 4) * Real.pi)

/-- On the exact support x_l = 4*l+5, the cosine phase is the parity sign. -/
theorem thetaPhiSupportParityPhase_node
    (l : ℕ) :
    thetaPhiSupportParityPhase
        (thetaPhiSignedMomentNode l) =
      (-1 : ℝ) ^ l := by
  unfold thetaPhiSupportParityPhase
    thetaPhiSignedMomentNode
  have h :
      ((((4 * l + 5 : ℕ) : ℝ) - 5) / 4) =
        (l : ℝ) := by
    push_cast
    ring
  rw [h]
  exact Real.cos_nat_mul_pi l

/-- The parity involution is exactly the sampled spectral phase of the
arithmetic support operator. -/
theorem thetaPhiParityInvolution_eq_supportPhase
    (L : ℕ) :
    thetaPhiParityInvolution L =
      Matrix.diagonal
        (fun l =>
          thetaPhiSupportParityPhase
            (thetaPhiSignedMomentNode l.val)) := by
  ext i j
  simp [thetaPhiParityInvolution,
    thetaPhiSupportParityPhase_node,
    Matrix.diagonal_apply]

/-- The support multiplication operator commutes with the parity phase. -/
theorem thetaPhiSupportOperator_commutes_parity
    (L : ℕ) :
    thetaPhiSignedMomentSupportOperator L *
        thetaPhiParityInvolution L =
      thetaPhiParityInvolution L *
        thetaPhiSignedMomentSupportOperator L := by
  unfold thetaPhiSignedMomentSupportOperator
    thetaPhiParityInvolution
  rw [Matrix.diagonal_mul_diagonal,
    Matrix.diagonal_mul_diagonal]
  congr 1
  funext l
  ring

/-- Positive square-root weighted polynomial/Krylov frame for the finite theta
signed-moment support. -/
def thetaPhiSignedMomentKrylovFrame
    (k L N : ℕ) (t : ℝ) :
    Matrix (Fin k) (Fin L) ℝ :=
  fun i l =>
    Real.sqrt
        (thetaPhiBaseChristoffelMagnitude
          N t l.val) *
      thetaPhiSignedMomentNode l.val ^ i.val

/-- Entrywise form of the parity-involution compression. -/
theorem thetaPhiSignedMoment_involutionCompression_apply
    (k L N : ℕ) (t : ℝ)
    (i j : Fin k) :
    involutionCompressionGram
        (thetaPhiSignedMomentKrylovFrame k L N t)
        (thetaPhiParityInvolution L) i j =
      ∑ l : Fin L,
        (-1 : ℝ) ^ l.val *
          thetaPhiBaseChristoffelMagnitude
            N t l.val *
          thetaPhiSignedMomentNode l.val ^
            (i.val + j.val) := by
  unfold involutionCompressionGram
  rw [Matrix.mul_apply]
  apply Finset.sum_congr rfl
  intro l hl
  have hinner :
      (thetaPhiSignedMomentKrylovFrame k L N t *
          thetaPhiParityInvolution L) i l =
        thetaPhiSignedMomentKrylovFrame
            k L N t i l *
          (-1 : ℝ) ^ l.val := by
    rw [Matrix.mul_apply]
    simp [thetaPhiSignedMomentKrylovFrame,
      thetaPhiParityInvolution,
      Matrix.diagonal_apply]
  rw [hinner]
  simp only [Matrix.transpose_apply]
  unfold thetaPhiSignedMomentKrylovFrame
  have hm :
      0 ≤ thetaPhiBaseChristoffelMagnitude
        N t l.val :=
    thetaPhiBaseChristoffelMagnitude_nonnegative
      N t l.val
  have hsqrt :
      Real.sqrt
          (thetaPhiBaseChristoffelMagnitude
            N t l.val) *
        Real.sqrt
          (thetaPhiBaseChristoffelMagnitude
            N t l.val) =
      thetaPhiBaseChristoffelMagnitude
        N t l.val :=
    Real.mul_self_sqrt hm
  calc
    (Real.sqrt
          (thetaPhiBaseChristoffelMagnitude N t l.val) *
        thetaPhiSignedMomentNode l.val ^ i.val *
        (-1 : ℝ) ^ l.val) *
        (Real.sqrt
            (thetaPhiBaseChristoffelMagnitude N t l.val) *
          thetaPhiSignedMomentNode l.val ^ j.val) =
      (-1 : ℝ) ^ l.val *
        (Real.sqrt
            (thetaPhiBaseChristoffelMagnitude N t l.val) *
          Real.sqrt
            (thetaPhiBaseChristoffelMagnitude N t l.val)) *
        (thetaPhiSignedMomentNode l.val ^ i.val *
          thetaPhiSignedMomentNode l.val ^ j.val) := by
            ring
    _ =
      (-1 : ℝ) ^ l.val *
        thetaPhiBaseChristoffelMagnitude N t l.val *
        thetaPhiSignedMomentNode l.val ^
          (i.val + j.val) := by
            rw [hsqrt, pow_add]

/-- The finite signed-moment Christoffel-Hankel matrix is exactly the
compression of the parity involution to the positive Krylov frame. -/
theorem thetaPhiChristoffelHankel_signedMomentTruncation_eq_involutionCompression
    (k L N : ℕ) (t : ℝ) :
    thetaPhiChristoffelHankel k
        (fun n =>
          thetaPhiBaseSignedMomentTruncation
            L N n t) =
      involutionCompressionGram
        (thetaPhiSignedMomentKrylovFrame
          k L N t)
        (thetaPhiParityInvolution L) := by
  ext i j
  rw [thetaPhiSignedMoment_involutionCompression_apply]
  simp only [thetaPhiChristoffelHankel,
    Matrix.of_apply,
    thetaPhiBaseSignedMomentTruncation]
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro l hl
  let x : ℝ :=
    thetaPhiSignedMomentNode l.val
  let w : ℝ :=
    thetaPhiBaseSignedMomentWeight
      N t l.val
  calc
    w * x ^ (i.val + j.val + 1) +
        w * x ^ (i.val + j.val) =
      (w * (x + 1)) *
        x ^ (i.val + j.val) := by
          rw [pow_succ]
          ring
    _ =
      (-1 : ℝ) ^ l.val *
        thetaPhiBaseChristoffelMagnitude
          N t l.val *
        thetaPhiSignedMomentNode l.val ^
          (i.val + j.val) := by
          dsimp [x, w]
          rw [thetaPhiBaseSignedMomentWeight_mul_node_add_one]

/-- Oriented finite signed-moment involution-compression
approximation to the finite-mode theta signed jet. -/
def thetaPhiSignedMomentCompressionApproximation
    (k L N : ℕ) (t : ℝ) : ℝ :=
  (-1 : ℝ) ^ (k * (k - 1) / 2) *
    (-1 / 2 : ℝ) ^ k *
      Matrix.det
        (involutionCompressionGram
          (thetaPhiSignedMomentKrylovFrame
            k L N t)
          (thetaPhiParityInvolution L))

/-- The finite compression approximation is exactly the oriented determinant
of the finite signed-moment Christoffel-Hankel matrix. -/
theorem thetaPhiSignedMomentCompressionApproximation_eq
    (k L N : ℕ) (t : ℝ) :
    thetaPhiSignedMomentCompressionApproximation
        k L N t =
      (-1 : ℝ) ^ (k * (k - 1) / 2) *
        (-1 / 2 : ℝ) ^ k *
          Matrix.det
            (thetaPhiChristoffelHankel k
              (fun n =>
                thetaPhiBaseSignedMomentTruncation
                  L N n t)) := by
  unfold thetaPhiSignedMomentCompressionApproximation
  rw [thetaPhiChristoffelHankel_signedMomentTruncation_eq_involutionCompression]

/-- The actual finite-mode theta signed jet is the limit of the finite
Grassmannian parity-involution compression determinants. -/
theorem thetaPhiSignedMomentCompressionApproximation_tendsto
    (k N : ℕ) (t : ℝ) :
    Tendsto
      (fun L =>
        thetaPhiSignedMomentCompressionApproximation
          k L N t)
      atTop
      (𝓝
        (signedJetDet k
          (fun n =>
            thetaPhiDerivativeTapeTruncation
              N n t))) := by
  let c : ℝ :=
    (-1 : ℝ) ^ (k * (k - 1) / 2) *
      (-1 / 2 : ℝ) ^ k
  have h :=
    (thetaPhiSignedMomentChristoffel_det_tendsto
      k N t).const_mul c
  have hseq :
      (fun L =>
        thetaPhiSignedMomentCompressionApproximation
          k L N t) =
        (fun L =>
          c *
            Matrix.det
              (thetaPhiChristoffelHankel k
                (fun n =>
                  thetaPhiBaseSignedMomentTruncation
                    L N n t))) := by
    funext L
    rw [thetaPhiSignedMomentCompressionApproximation_eq]
  rw [hseq]
  simpa [c, signedJetDet_truncation_eq_christoffel] using h

/-- Projectively normalized theta parity-compression scalar. -/
def thetaPhiNormalizedParityCompression
    (k L N : ℕ) (t : ℝ) : ℝ :=
  normalizedInvolutionCompression
    (thetaPhiSignedMomentKrylovFrame k L N t)
    (thetaPhiParityInvolution L)

/-- The normalized theta compression is the signed Christoffel determinant
divided by the positive-frame Gram determinant. -/
theorem thetaPhiNormalizedParityCompression_eq
    (k L N : ℕ) (t : ℝ) :
    thetaPhiNormalizedParityCompression k L N t =
      Matrix.det
          (thetaPhiChristoffelHankel k
            (fun n =>
              thetaPhiBaseSignedMomentTruncation
                L N n t)) /
        Matrix.det
          (thetaPhiSignedMomentKrylovFrame
              k L N t *
            (thetaPhiSignedMomentKrylovFrame
              k L N t).transpose) := by
  unfold thetaPhiNormalizedParityCompression
    normalizedInvolutionCompression
  rw [←
    thetaPhiChristoffelHankel_signedMomentTruncation_eq_involutionCompression]

/-- Any invertible polynomial-basis change leaves the normalized theta
parity-compression scalar unchanged. -/
theorem thetaPhiNormalizedParityCompression_mul_left
    (k L N : ℕ) (t : ℝ)
    (U : Matrix (Fin k) (Fin k) ℝ)
    (hU : Matrix.det U ≠ 0) :
    normalizedInvolutionCompression
        (U *
          thetaPhiSignedMomentKrylovFrame
            k L N t)
        (thetaPhiParityInvolution L) =
      thetaPhiNormalizedParityCompression
        k L N t := by
  exact
    normalizedInvolutionCompression_mul_left
      U
      (thetaPhiSignedMomentKrylovFrame
        k L N t)
      (thetaPhiParityInvolution L)
      hU

/-- After any invertible row change that orthonormalizes the positive
Krylov frame, the normalized theta observable is exactly the determinant of
the parity-phase compression in that orthonormal basis. -/
theorem thetaPhiNormalizedParityCompression_eq_det_of_orthonormalized
    (k L N : ℕ) (t : ℝ)
    (U : Matrix (Fin k) (Fin k) ℝ)
    (hU : Matrix.det U ≠ 0)
    (hgram :
      (U *
          thetaPhiSignedMomentKrylovFrame
            k L N t) *
        (U *
          thetaPhiSignedMomentKrylovFrame
            k L N t).transpose =
        (1 : Matrix (Fin k) (Fin k) ℝ)) :
    thetaPhiNormalizedParityCompression k L N t =
      Matrix.det
        (involutionCompressionGram
          (U *
            thetaPhiSignedMomentKrylovFrame
              k L N t)
          (thetaPhiParityInvolution L)) := by
  rw [← thetaPhiNormalizedParityCompression_mul_left
    k L N t U hU]
  exact
    normalizedInvolutionCompression_eq_det_of_gram_one
      (U *
        thetaPhiSignedMomentKrylovFrame
          k L N t)
      (thetaPhiParityInvolution L)
      hgram

/-- Per-cutoff nondegeneracy condition saying that the positive
Krylov frame admits an invertible row change to an orthonormal frame. -/
def ThetaPhiFiniteOrthonormalizable
    (k L N : ℕ) (t : ℝ) : Prop :=
  ∃ U : Matrix (Fin k) (Fin k) ℝ,
    Matrix.det U ≠ 0 ∧
      (U *
          thetaPhiSignedMomentKrylovFrame
            k L N t) *
        (U *
          thetaPhiSignedMomentKrylovFrame
            k L N t).transpose =
        (1 : Matrix (Fin k) (Fin k) ℝ)

/-- On any nondegenerate cutoff, the normalized theta observable is
represented by an honest finite compression of the spectral parity
involution in orthonormal polynomial coordinates. -/
theorem thetaPhiNormalizedParityCompression_of_finiteOrthonormal
    {k L N : ℕ} {t : ℝ}
    (horth :
      ThetaPhiFiniteOrthonormalizable k L N t) :
    ∃ U : Matrix (Fin k) (Fin k) ℝ,
      Matrix.det U ≠ 0 ∧
        thetaPhiNormalizedParityCompression
            k L N t =
          Matrix.det
            (involutionCompressionGram
              (U *
                thetaPhiSignedMomentKrylovFrame
                  k L N t)
              (thetaPhiParityInvolution L)) := by
  obtain ⟨U, hU, hgram⟩ := horth
  exact ⟨U, hU,
    thetaPhiNormalizedParityCompression_eq_det_of_orthonormalized
      k L N t U hU hgram⟩

/-- Row-basis changes of the theta Krylov frame alter the compression
determinant only by a positive square. -/
theorem thetaPhi_involutionCompression_det_mul_left
    (k L N : ℕ) (t : ℝ)
    (U : Matrix (Fin k) (Fin k) ℝ) :
    Matrix.det
        (involutionCompressionGram
          (U *
            thetaPhiSignedMomentKrylovFrame
              k L N t)
          (thetaPhiParityInvolution L)) =
      (Matrix.det U) ^ 2 *
        Matrix.det
          (involutionCompressionGram
            (thetaPhiSignedMomentKrylovFrame
              k L N t)
            (thetaPhiParityInvolution L)) :=
  det_involutionCompressionGram_mul_left
    U
    (thetaPhiSignedMomentKrylovFrame k L N t)
    (thetaPhiParityInvolution L)

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
