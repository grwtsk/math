# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variant16d3b87c34e6df0940546f1aa7a2d04b477ed80b6b4cffa931c18a80b961faa2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f658fb089129ae0cf6bc543d8318a4670d34ea2` · SHA-256 `7fdbf875af5e8a69807e12984e0ac003079e198e2d5f7e845a83a100916f40ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiPositiveParityProjector.Variantbaf623600f69ff24870536ca41fa4c9dc41efe060926bc3af0828c9060baf8b3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"baf623600f69ff24870536ca41fa4c9dc41efe060926bc3af0828c9060baf8b3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaPhiPositiveParityProjector.Variantbaf623600f69ff24870536ca41fa4c9dc41efe060926bc3af0828c9060baf8b3","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"baf623600f69ff24870536ca41fa4c9dc41efe060926bc3af0828c9060baf8b3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/baf623600f69ff24870536ca41fa4c9dc41efe060926bc3af0828c9060baf8b3.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPhiWhitenedHalfThreshold
import Mathlib.Analysis.Matrix.Order

/-!
# Complementary even/odd Gram decomposition

The ambient arithmetic support splits into even and odd parity coordinates.
The odd projector `Q_-` is already available.  This module adds the even
projector `Q_+` and proves

`Q_+ + Q_- = I`.

After compression to the canonically whitened theta Krylov frame `B`, define

`K_+ = B Q_+ B^T`,
`K_- = B Q_- B^T`.

Both are positive semidefinite and, because `B B^T = I`,

`K_+ + K_- = I`.

The compressed phase therefore has the exact positive-Gram difference form

`C = K_+ - K_-`.

Thus the remaining half-threshold problem asks whether the odd Gram energy
exceeds the even Gram energy in an even number of spectral directions.

No parity theorem is asserted here.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiPositiveParityProjector.Variantbaf623600f69ff24870536ca41fa4c9dc41efe060926bc3af0828c9060baf8b3

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

noncomputable section

/-- Ambient projector onto the even signed-moment support coordinates. -/
def thetaPhiPositiveParityProjector (L : ℕ) :
    Matrix (Fin L) (Fin L) ℝ :=
  Matrix.diagonal fun l =>
    if Even l.val then 1 else 0

/-- The even-support projector is symmetric. -/
theorem thetaPhiPositiveParityProjector_transpose
    (L : ℕ) :
    (thetaPhiPositiveParityProjector L).transpose =
      thetaPhiPositiveParityProjector L := by
  ext i j
  by_cases hij : i = j
  · subst j
    simp [thetaPhiPositiveParityProjector]
  · simp [thetaPhiPositiveParityProjector, hij, Ne.symm hij]

/-- The even-support projector is idempotent. -/
theorem thetaPhiPositiveParityProjector_sq
    (L : ℕ) :
    thetaPhiPositiveParityProjector L *
        thetaPhiPositiveParityProjector L =
      thetaPhiPositiveParityProjector L := by
  rw [thetaPhiPositiveParityProjector,
    Matrix.diagonal_mul_diagonal]
  ext i j
  by_cases hij : i = j
  · subst j
    by_cases hi : Even i.val <;> simp [hi]
  · simp [hij]

/-- The even-support projector is positive semidefinite. -/
theorem thetaPhiPositiveParityProjector_posSemidef
    (L : ℕ) :
    (thetaPhiPositiveParityProjector L).PosSemidef := by
  unfold thetaPhiPositiveParityProjector
  apply Matrix.PosSemidef.diagonal
  intro i
  by_cases hi : Even i.val <;> simp [hi]

/-- Even and odd support projectors are complementary. -/
theorem thetaPhiParityProjectors_add
    (L : ℕ) :
    thetaPhiPositiveParityProjector L +
        thetaPhiNegativeParityProjector L =
      (1 : Matrix (Fin L) (Fin L) ℝ) := by
  ext i j
  by_cases hij : i = j
  · subst j
    rcases Nat.even_or_odd i.val with hi | hi
    · simp [thetaPhiPositiveParityProjector,
        thetaPhiNegativeParityProjector,
        hi, Nat.not_odd_iff_even.mpr hi]
    · have hneven : ¬ Even i.val :=
        Nat.not_even_iff_odd.mpr hi
      simp [thetaPhiPositiveParityProjector,
        thetaPhiNegativeParityProjector,
        hi, hneven]
  · simp [thetaPhiPositiveParityProjector,
      thetaPhiNegativeParityProjector, hij]

/-- Positive compression of the even-support projector to the whitened theta
Krylov frame. -/
def thetaPhiWhitenedPositiveParityGram
    (k L N : ℕ) (t : ℝ) :
    Matrix (Fin k) (Fin k) ℝ :=
  thetaPhiWhitenedKrylovFrame k L N t *
    thetaPhiPositiveParityProjector L *
    (thetaPhiWhitenedKrylovFrame k L N t).transpose

/-- The even-support compressed Gram operator is positive semidefinite. -/
theorem thetaPhiWhitenedPositiveParityGram_posSemidef
    (k L N : ℕ) (t : ℝ) :
    (thetaPhiWhitenedPositiveParityGram
      k L N t).PosSemidef := by
  unfold thetaPhiWhitenedPositiveParityGram
  simpa only [Matrix.conjTranspose_eq_transpose_of_trivial] using
    (thetaPhiPositiveParityProjector_posSemidef L).mul_mul_conjTranspose_same
      (thetaPhiWhitenedKrylovFrame k L N t)

/-- The even and odd compressed Gram operators sum to the identity on every
nondegenerate whitened theta cutoff. -/
theorem thetaPhiWhitenedParityGrams_add
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    thetaPhiWhitenedPositiveParityGram k L N t +
        thetaPhiWhitenedNegativeParityGram k L N t =
      (1 : Matrix (Fin k) (Fin k) ℝ) := by
  let B := thetaPhiWhitenedKrylovFrame k L N t
  have hBB :
      B * B.transpose =
        (1 : Matrix (Fin k) (Fin k) ℝ) := by
    dsimp [B]
    exact thetaPhiWhitenedKrylovFrame_gram hk hN t
  unfold thetaPhiWhitenedPositiveParityGram
    thetaPhiWhitenedNegativeParityGram
  change
    B * thetaPhiPositiveParityProjector L * B.transpose +
        B * thetaPhiNegativeParityProjector L * B.transpose =
      1
  rw [← Matrix.add_mul, ← Matrix.mul_add,
    thetaPhiParityProjectors_add, Matrix.mul_one, hBB]

/-- The canonical compressed phase is the difference of the complementary
positive even- and odd-support Gram operators. -/
theorem thetaPhiWhitenedParityCompression_eq_positiveGram_sub_negativeGram
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    thetaPhiWhitenedParityCompression k L N t =
      thetaPhiWhitenedPositiveParityGram k L N t -
        thetaPhiWhitenedNegativeParityGram k L N t := by
  have hC :=
    thetaPhiWhitenedParityCompression_eq_one_sub_two_negativeGram
      hk hN t
  have hsum :=
    thetaPhiWhitenedParityGrams_add hk hN t
  ext i j
  have hCij := congr_fun (congr_fun hC i) j
  have hsumij := congr_fun (congr_fun hsum i) j
  simp only [Matrix.sub_apply, Matrix.add_apply,
    Matrix.smul_apply, smul_eq_mul] at hCij hsumij ⊢
  linarith

/-- The odd Gram is the identity minus the even Gram. -/
theorem thetaPhiWhitenedNegativeParityGram_eq_one_sub_positive
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    thetaPhiWhitenedNegativeParityGram k L N t =
      (1 : Matrix (Fin k) (Fin k) ℝ) -
        thetaPhiWhitenedPositiveParityGram k L N t := by
  have hsum :=
    thetaPhiWhitenedParityGrams_add hk hN t
  exact eq_sub_of_add_eq' hsum

/-- The even Gram is the identity minus the odd Gram. -/
theorem thetaPhiWhitenedPositiveParityGram_eq_one_sub_negative
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    thetaPhiWhitenedPositiveParityGram k L N t =
      (1 : Matrix (Fin k) (Fin k) ℝ) -
        thetaPhiWhitenedNegativeParityGram k L N t := by
  have hsum :=
    thetaPhiWhitenedParityGrams_add hk hN t
  exact eq_sub_of_add_eq hsum

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
