# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variantbbe77a55995ec8f98a70006dcc46fbbce72409667d6a5d49835e60acf96314ff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2aa57ba2d92ad3ccc2a662c3e9155e56d76e6a5` · SHA-256 `bbe77a55995ec8f98a70006dcc46fbbce72409667d6a5d49835e60acf96314ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaPhiWhitenedInertia
import Mathlib.Analysis.Matrix.Order

/-!
# Negative-parity projector for the whitened theta phase

The ambient parity involution is diagonal with entries `(-1)^l`.  This file
splits it into its negative spectral projector

`Q_- = diag(1_{l odd})`

so that

`J = I - 2 Q_-`.

Compressing to the canonically whitened theta Krylov frame `B` gives

`C = I - 2 K_-`,
`K_- = B Q_- B^T`.

The operator `K_-` is positive semidefinite.  Therefore the remaining
negative inertia of `C` is naturally a threshold problem at `1/2` for the
positive odd-support Gram compression.

No parity statement for that threshold count is proved here.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

noncomputable section

/-- Ambient projector onto the odd signed-moment support coordinates. -/
def thetaPhiNegativeParityProjector (L : ℕ) :
    Matrix (Fin L) (Fin L) ℝ :=
  Matrix.diagonal fun l =>
    if Odd l.val then 1 else 0

/-- The odd-support projector is symmetric. -/
theorem thetaPhiNegativeParityProjector_transpose
    (L : ℕ) :
    (thetaPhiNegativeParityProjector L).transpose =
      thetaPhiNegativeParityProjector L := by
  ext i j
  by_cases hij : i = j
  · subst j
    simp [thetaPhiNegativeParityProjector]
  · simp [thetaPhiNegativeParityProjector, hij, Ne.symm hij]

/-- The odd-support projector is idempotent. -/
theorem thetaPhiNegativeParityProjector_sq
    (L : ℕ) :
    thetaPhiNegativeParityProjector L *
        thetaPhiNegativeParityProjector L =
      thetaPhiNegativeParityProjector L := by
  rw [thetaPhiNegativeParityProjector,
    Matrix.diagonal_mul_diagonal]
  ext i j
  by_cases hij : i = j
  · subst j
    by_cases hi : Odd i.val <;> simp [hi]
  · simp [hij]

/-- The odd-support projector is positive semidefinite. -/
theorem thetaPhiNegativeParityProjector_posSemidef
    (L : ℕ) :
    (thetaPhiNegativeParityProjector L).PosSemidef := by
  unfold thetaPhiNegativeParityProjector
  apply Matrix.PosSemidef.diagonal
  intro i
  by_cases hi : Odd i.val <;> simp [hi]

/-- The parity involution is one minus twice its negative spectral projector. -/
theorem thetaPhiParityInvolution_eq_one_sub_two_negativeProjector
    (L : ℕ) :
    thetaPhiParityInvolution L =
      (1 : Matrix (Fin L) (Fin L) ℝ) -
        (2 : ℝ) • thetaPhiNegativeParityProjector L := by
  ext i j
  by_cases hij : i = j
  · subst j
    rcases Nat.even_or_odd i.val with hi | hi
    · simp [thetaPhiParityInvolution,
        thetaPhiNegativeParityProjector,
        hi.neg_one_pow,
        Nat.not_odd_iff_even.mpr hi]
    · simp [thetaPhiParityInvolution,
        thetaPhiNegativeParityProjector,
        hi, hi.neg_one_pow]
      norm_num
  · simp [thetaPhiParityInvolution,
      thetaPhiNegativeParityProjector, hij]

/-- Positive compression of the odd-support projector to the whitened theta
Krylov frame. -/
def thetaPhiWhitenedNegativeParityGram
    (k L N : ℕ) (t : ℝ) :
    Matrix (Fin k) (Fin k) ℝ :=
  thetaPhiWhitenedKrylovFrame k L N t *
    thetaPhiNegativeParityProjector L *
    (thetaPhiWhitenedKrylovFrame k L N t).transpose

/-- The odd-support compressed Gram operator is positive semidefinite. -/
theorem thetaPhiWhitenedNegativeParityGram_posSemidef
    (k L N : ℕ) (t : ℝ) :
    (thetaPhiWhitenedNegativeParityGram
      k L N t).PosSemidef := by
  unfold thetaPhiWhitenedNegativeParityGram
  simpa only [Matrix.conjTranspose_eq_transpose_of_trivial] using
    (thetaPhiNegativeParityProjector_posSemidef L).mul_mul_conjTranspose_same
      (thetaPhiWhitenedKrylovFrame k L N t)

/-- The canonical compressed phase is the affine transform
`C = I - 2 K_-` of the positive odd-support Gram compression. -/
theorem thetaPhiWhitenedParityCompression_eq_one_sub_two_negativeGram
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    thetaPhiWhitenedParityCompression k L N t =
      (1 : Matrix (Fin k) (Fin k) ℝ) -
        (2 : ℝ) •
          thetaPhiWhitenedNegativeParityGram k L N t := by
  let B := thetaPhiWhitenedKrylovFrame k L N t
  let Q := thetaPhiNegativeParityProjector L
  have hBB :
      B * B.transpose =
        (1 : Matrix (Fin k) (Fin k) ℝ) := by
    dsimp [B]
    exact thetaPhiWhitenedKrylovFrame_gram hk hN t
  unfold thetaPhiWhitenedParityCompression
    FormalResearch.PositiveAtlas.Grassmannian.involutionCompressionGram
    thetaPhiWhitenedNegativeParityGram
  rw [thetaPhiParityInvolution_eq_one_sub_two_negativeProjector]
  change
    B * ((1 : Matrix (Fin L) (Fin L) ℝ) - (2 : ℝ) • Q) *
        B.transpose =
      (1 : Matrix (Fin k) (Fin k) ℝ) -
        (2 : ℝ) • (B * Q * B.transpose)
  rw [Matrix.mul_sub, Matrix.sub_mul]
  simp only [Matrix.mul_one, hBB]
  rw [Matrix.mul_smul, Matrix.smul_mul]

/-- Number of eigenvalues of the positive odd-support compression above the
halfway threshold. -/
def thetaPhiWhitenedHalfThresholdCount
    (k L N : ℕ) (t : ℝ) : ℕ :=
  Fintype.card
    {i : Fin k //
      (thetaPhiWhitenedNegativeParityGram_posSemidef
        k L N t).isHermitian.eigenvalues i > (1 / 2 : ℝ)}

/-- Explicit threshold-parity formulation suggested by
`C = I - 2 K_-`.  The equivalence with the existing negative-inertia
criterion is the next finite spectral gate. -/
def ThetaPhiWhitenedHalfThresholdParity : Prop :=
  ∀ k L N : ℕ, ∀ t : ℝ,
    k ≤ L → 0 < N →
      Even
        (thetaPhiWhitenedHalfThresholdCount
          k L N t)

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
