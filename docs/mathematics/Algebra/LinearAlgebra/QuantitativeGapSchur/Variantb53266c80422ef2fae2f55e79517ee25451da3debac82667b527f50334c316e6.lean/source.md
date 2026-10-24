# Complete source: GRWTSK.Algebra.LinearAlgebra.QuantitativeGapSchur.Variantb53266c80422ef2fae2f55e79517ee25451da3debac82667b527f50334c316e6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6372b598e009d9b5e682d1b50f3bdb5a0895ab2c` · SHA-256 `cd317715ced788bdf8ec6beea85bb6bfb2e242e488d57d85eb54735935a2b5ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ShearInverseSquare.Variantb3b5e2928032d457b20eef6b51afd2473fd751bfdf8576d1bb969321d062e204","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b3b5e2928032d457b20eef6b51afd2473fd751bfdf8576d1bb969321d062e204","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ShearInverseSquare.Variantb3b5e2928032d457b20eef6b51afd2473fd751bfdf8576d1bb969321d062e204","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"b3b5e2928032d457b20eef6b51afd2473fd751bfdf8576d1bb969321d062e204","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/FormalResearch/PositiveAtlas/QuantitativeGapSchur.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.QuantitativeGap
import FormalResearch.PositiveAtlas.FeshbachHermitian
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

/-!
# Quantitative Feshbach reconstruction loss

Completion of squares uses the existing exact Schur center. The reconstructed
square-sum metric, rather than the maximum norm on ordinary product coordinates,
is retained. A supplied normalized margin must control the actual mixed block.

Originating direction and evaluation: grwtsk contributors.
Proof construction: OpenAI Codex, reusing PR267 and pinned Mathlib.
-/


namespace GRWTSK.Algebra.LinearAlgebra.ShearInverseSquare.Variantb3b5e2928032d457b20eef6b51afd2473fd751bfdf8576d1bb969321d062e204

noncomputable section
set_option autoImplicit false

namespace FormalResearch.PositiveAtlas.QuantitativeGap

variable {V W : Type*} [NormedAddCommGroup V] [NormedAddCommGroup W]

/-- The inverse reconstruction shear loses at most `(1+M)²` in the Hilbert
square-sum metric. It is independent of a product maximum-norm convention. -/
theorem shear_inverse_square (K : V → W) (M : ℝ) (hM : 0 ≤ M)
    (hK : ∀ x, ‖K x‖ ≤ M * ‖x‖) (x : V) (y : W) :
    ‖x‖ ^ 2 + ‖y‖ ^ 2 ≤ (1 + M) ^ 2 * (‖x‖ ^ 2 + ‖y + K x‖ ^ 2) := by
  have hy : ‖y‖ ≤ ‖y + K x‖ + M * ‖x‖ := by
    calc
      ‖y‖ = ‖(y + K x) - K x‖ := by rw [add_sub_cancel_right]
      _ ≤ ‖y + K x‖ + ‖K x‖ := norm_sub_le _ _
      _ ≤ ‖y + K x‖ + M * ‖x‖ := add_le_add le_rfl (hK x)
  have hs : ‖y‖ ^ 2 ≤ (‖y + K x‖ + M * ‖x‖) ^ 2 :=
    (sq_le_sq₀ (norm_nonneg _) (by positivity)).mpr hy
  have hpoly : 0 ≤ M * (‖x‖ - ‖y + K x‖) ^ 2 +
      M * (‖x‖ ^ 2 + ‖y + K x‖ ^ 2) + M ^ 2 * ‖y + K x‖ ^ 2 := by
    positivity
  calc
    ‖x‖ ^ 2 + ‖y‖ ^ 2 ≤ ‖x‖ ^ 2 + (‖y + K x‖ + M * ‖x‖) ^ 2 :=
      add_le_add le_rfl hs
    _ = (1 + M) ^ 2 * (‖x‖ ^ 2 + ‖y + K x‖ ^ 2) -
        (M * (‖x‖ - ‖y + K x‖) ^ 2 + M * (‖x‖ ^ 2 + ‖y + K x‖ ^ 2) +
          M ^ 2 * ‖y + K x‖ ^ 2) := by ring
    _ ≤ (1 + M) ^ 2 * (‖x‖ ^ 2 + ‖y + K x‖ ^ 2) := sub_le_self _ hpoly

/-- The exact completion identity and two coercivity constants produce the
declared `min(a*η,b)/(1+M)²` bound. -/
theorem completion_coercive (energy : V → W → ℝ) (F : V → ℝ) (B : W → ℝ)
    (K : V → W) (a η b M : ℝ) (ha : 0 < a) (hη : 0 < η)
    (hb : 0 < b) (hM : 0 ≤ M)
    (henergy : ∀ x y, energy x y = F x + B (y + K x))
    (hF : ∀ x, a * η * ‖x‖ ^ 2 ≤ F x)
    (hB : ∀ y, b * ‖y‖ ^ 2 ≤ B y)
    (hK : ∀ x, ‖K x‖ ≤ M * ‖x‖) (x : V) (y : W) :
    min (a * η) b / (1 + M) ^ 2 * (‖x‖ ^ 2 + ‖y‖ ^ 2) ≤ energy x y := by
  have hδ : 0 ≤ min (a * η) b := le_of_lt (lt_min (mul_pos ha hη) hb)
  have hd : 0 < (1 + M) ^ 2 := sq_pos_of_pos (by linarith)
  have hs := mul_le_mul_of_nonneg_left (shear_inverse_square K M hM hK x y)
    (div_nonneg hδ hd.le)
  have hscale : min (a * η) b / (1 + M) ^ 2 *
      ((1 + M) ^ 2 * (‖x‖ ^ 2 + ‖y + K x‖ ^ 2)) =
      min (a * η) b * (‖x‖ ^ 2 + ‖y + K x‖ ^ 2) := by
    field_simp
  rw [hscale] at hs
  have hFx := (mul_le_mul_of_nonneg_right (min_le_left (a * η) b)
    (sq_nonneg ‖x‖)).trans (hF x)
  have hBy := (mul_le_mul_of_nonneg_right (min_le_right (a * η) b)
    (sq_nonneg ‖y + K x‖)).trans (hB (y + K x))
  rw [henergy]
  exact hs.trans (by rw [mul_add]; exact add_le_add hFx hBy)

open Matrix

variable {m n : Type*} [Fintype m] [Fintype n] [DecidableEq n]

/-- The literal complex homogeneous quadratic value, in the source convention. -/
def hermitianEnergy (H : Matrix m m ℂ) (x : m → ℂ) : ℝ :=
  (star x ⬝ᵥ H.mulVec x).re

omit [DecidableEq n] in
/-- Conjugate congruence transports the actual complex quadratic form exactly. -/
theorem hermitianEnergy_congruence (T : Matrix m n ℂ) (H : Matrix m m ℂ)
    (x : n → ℂ) :
    hermitianEnergy (Tᴴ * H * T) x = hermitianEnergy H (T.mulVec x) := by
  simp only [hermitianEnergy, Matrix.star_mulVec, Matrix.dotProduct_mulVec,
    Matrix.vecMul_vecMul, Matrix.mul_assoc]

variable [DecidableEq m]

theorem hermitianEnergy_one (x : m → ℂ) :
    hermitianEnergy (1 : Matrix m m ℂ) x = ‖WithLp.toLp 2 x‖ ^ 2 := by
  have he : star x ⬝ᵥ x =
      inner ℂ (WithLp.toLp 2 x) (WithLp.toLp 2 x) := by
    simp only [PiLp.inner_apply, RCLike.inner_apply', dotProduct]
    rfl
  rw [hermitianEnergy, Matrix.one_mulVec, he]
  exact inner_self_eq_norm_sq (𝕜 := ℂ) (WithLp.toLp 2 x)

/-- For an invertible square-root factor `A=LᴴL`, this is the exact normalized
mixed block. Selecting the Hermitian positive square root gives `A⁻¹/²`. -/
def normalizedCoupling (L : Matrix m m ℂ) [Invertible L]
    (C : Matrix n m ℂ) (B : Matrix n n ℂ) [Invertible B] : Matrix m m ℂ :=
  (⅟L)ᴴ * (Cᴴ * ⅟B * C) * ⅟L

/-- The original coupling is recovered by the supplied normalization factor. -/
theorem coupling_eq_normalized (L : Matrix m m ℂ) [Invertible L]
    (C : Matrix n m ℂ) (B : Matrix n n ℂ) [Invertible B] :
    Lᴴ * normalizedCoupling L C B * L = Cᴴ * ⅟B * C := by
  have he : Lᴴ * (⅟L)ᴴ = 1 := by
    rw [← Matrix.conjTranspose_mul, invOf_mul_self, Matrix.conjTranspose_one]
  simp only [normalizedCoupling, ← Matrix.mul_assoc, he, Matrix.one_mul]
  rw [Matrix.mul_assoc, Matrix.mul_assoc, invOf_mul_self, Matrix.mul_one]

/-- A `Γ≤(1-η)I` inequality implies the exact source-form margin used below.
The square-root factor and its inverse are actual supplied matrices, not names. -/
theorem normalized_margin (A L : Matrix m m ℂ) [Invertible L]
    (C : Matrix n m ℂ) (B : Matrix n n ℂ) [Invertible B] (η : ℝ)
    (hA : A = Lᴴ * L)
    (hΓ : ∀ z : m → ℂ, hermitianEnergy (normalizedCoupling L C B) z ≤
      (1 - η) * ‖WithLp.toLp 2 z‖ ^ 2) (x : m → ℂ) :
    hermitianEnergy (Cᴴ * ⅟B * C) x ≤ (1 - η) * hermitianEnergy A x := by
  have hleft : hermitianEnergy (Cᴴ * ⅟B * C) x =
      hermitianEnergy (normalizedCoupling L C B) (L.mulVec x) := by
    rw [← coupling_eq_normalized L C B, hermitianEnergy_congruence]
  have hright : hermitianEnergy A x = ‖WithLp.toLp 2 (L.mulVec x)‖ ^ 2 := by
    rw [hA, show Lᴴ * L = Lᴴ * (1 : Matrix m m ℂ) * L by simp,
      hermitianEnergy_congruence, hermitianEnergy_one]
  rw [hleft, hright]
  exact hΓ (L.mulVec x)

omit [DecidableEq m] in
/-- A normalized-coupling margin yields the exact Schur center bound. The
coupling inequality is on the actual quadratic form, retaining every cross term. -/
theorem schur_margin (A : Matrix m m ℂ) (C : Matrix n m ℂ) (B : Matrix n n ℂ)
    [Invertible B] (a η : ℝ) (hη : 0 ≤ η)
    (hA : ∀ x : m → ℂ, a * ‖WithLp.toLp 2 x‖ ^ 2 ≤ hermitianEnergy A x)
    (hmargin : ∀ x : m → ℂ,
      hermitianEnergy (Cᴴ * ⅟B * C) x ≤ (1 - η) * hermitianEnergy A x)
    (x : m → ℂ) :
    a * η * ‖WithLp.toLp 2 x‖ ^ 2 ≤ hermitianEnergy (Feshbach.schur A Cᴴ C B) x := by
  have hf : hermitianEnergy (Feshbach.schur A Cᴴ C B) x =
      hermitianEnergy A x - hermitianEnergy (Cᴴ * ⅟B * C) x := by
    simp only [hermitianEnergy, Feshbach.schur, sub_mulVec, dotProduct_sub, Complex.sub_re]
  have hmul := mul_le_mul_of_nonneg_left (hA x) hη
  rw [hf]
  nlinarith [hmargin x]

omit [DecidableEq m] in
/-- Application to the actual PR267 Schur packet. Both coordinate norms are
Euclidean `L²`; no ordinary transpose or product maximum norm is substituted. -/
theorem feshbach_coercive (A : Matrix m m ℂ) (C : Matrix n m ℂ) (B : Matrix n n ℂ)
    [Invertible B] (hBH : B.IsHermitian) (a η b M : ℝ)
    (ha : 0 < a) (hη : 0 < η) (hb : 0 < b) (hM : 0 ≤ M)
    (hA : ∀ x : m → ℂ, a * ‖WithLp.toLp 2 x‖ ^ 2 ≤ hermitianEnergy A x)
    (hB : ∀ y : n → ℂ, b * ‖WithLp.toLp 2 y‖ ^ 2 ≤ hermitianEnergy B y)
    (hmargin : ∀ x : m → ℂ,
      hermitianEnergy (Cᴴ * ⅟B * C) x ≤ (1 - η) * hermitianEnergy A x)
    (hK : ∀ x : m → ℂ,
      ‖WithLp.toLp 2 ((⅟B * C).mulVec x)‖ ≤ M * ‖WithLp.toLp 2 x‖)
    (x : m → ℂ) (y : n → ℂ) :
    min (a * η) b / (1 + M) ^ 2 *
      (‖WithLp.toLp 2 x‖ ^ 2 + ‖WithLp.toLp 2 y‖ ^ 2) ≤
        hermitianEnergy (fromBlocks A Cᴴ C B) (Sum.elim x y) := by
  let K : EuclideanSpace ℂ m → EuclideanSpace ℂ n :=
    fun z => WithLp.toLp 2 ((⅟B * C).mulVec (WithLp.ofLp z))
  apply completion_coercive
    (fun z w => hermitianEnergy (fromBlocks A Cᴴ C B)
      (Sum.elim (WithLp.ofLp z) (WithLp.ofLp w)))
    (fun z => hermitianEnergy (Feshbach.schur A Cᴴ C B) (WithLp.ofLp z))
    (fun w => hermitianEnergy B (WithLp.ofLp w)) K a η b M ha hη hb hM
    _ _ _ _ (WithLp.toLp 2 x) (WithLp.toLp 2 y)
  · intro z w
    have h := congrArg Complex.re
      (FeshbachHermitian.completion_of_squares A C B hBH (WithLp.ofLp z) (WithLp.ofLp w))
    simpa [hermitianEnergy, K] using h
  · intro z
    simpa using schur_margin A C B a η hη.le hA hmargin (WithLp.ofLp z)
  · intro w
    simpa using hB (WithLp.ofLp w)
  · intro z
    exact hK (WithLp.ofLp z)

/-- The normalized `Γ` formulation gives the advertised finite packet bound
immediately, with its actual root factor, inverse, norms and mixed block. -/
theorem normalized_feshbach_coercive (A L : Matrix m m ℂ) [Invertible L]
    (C : Matrix n m ℂ) (B : Matrix n n ℂ) [Invertible B]
    (hBH : B.IsHermitian) (a η b M : ℝ)
    (ha : 0 < a) (hη : 0 < η) (hb : 0 < b) (hM : 0 ≤ M)
    (hroot : A = Lᴴ * L)
    (hA : ∀ x : m → ℂ, a * ‖WithLp.toLp 2 x‖ ^ 2 ≤ hermitianEnergy A x)
    (hB : ∀ y : n → ℂ, b * ‖WithLp.toLp 2 y‖ ^ 2 ≤ hermitianEnergy B y)
    (hΓ : ∀ z : m → ℂ, hermitianEnergy (normalizedCoupling L C B) z ≤
      (1 - η) * ‖WithLp.toLp 2 z‖ ^ 2)
    (hK : ∀ x : m → ℂ,
      ‖WithLp.toLp 2 ((⅟B * C).mulVec x)‖ ≤ M * ‖WithLp.toLp 2 x‖)
    (x : m → ℂ) (y : n → ℂ) :
    min (a * η) b / (1 + M) ^ 2 *
      (‖WithLp.toLp 2 x‖ ^ 2 + ‖WithLp.toLp 2 y‖ ^ 2) ≤
        hermitianEnergy (fromBlocks A Cᴴ C B) (Sum.elim x y) :=
  feshbach_coercive A C B hBH a η b M ha hη hb hM hA hB
    (normalized_margin A L C B η hroot hΓ) hK x y

end FormalResearch.PositiveAtlas.QuantitativeGap
```
