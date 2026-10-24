# Complete source: GRWTSK.Algebra.LinearAlgebra.XiHermiteQuadratic.Variantdd1fba49c07970d2acefea13c8eb1b2661fa722faf855733ff3bdb78e1680785

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `595b1542072b6c98d5a047529ac681bff41bd4a3` · SHA-256 `7f01e731a8073cbabbbf270aebb9a4bdff5fa9a35289056361e5bd237fb63d8f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Companion.Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Companion.Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic

/-!
# Quadratic Hermite trace recognition with multiplicity

This finite calculation uses traces of the actual companion powers. It tests
both nonreal conjugate support and a repeated real root, without replacing the
trace by an unrelated positive form or discarding the nilpotent direction.
-/


namespace GRWTSK.Algebra.LinearAlgebra.Companion.Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514

namespace FormalResearch.RiemannHypothesis.XiHermiteQuadratic
open Matrix Polynomial
noncomputable section

/-- Multiplication by the polynomial coordinate in the basis `1, x` for `x²-bx+c`. -/
def companion (b c : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := !![0, -c; 1, b]

/-- The Hermite matrix formed from traces of the same multiplication operator. -/
def hermiteMatrix (b c : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j => Matrix.trace (companion b c ^ (i.val + j.val))

/-- The companion determinant preserves the full quadratic, including repeated roots. -/
theorem companion_charpoly (b c : ℝ) :
    (companion b c).charpoly = X ^ 2 - C b * X + C c := by
  rw [Matrix.charpoly_fin_two]
  simp [companion, Matrix.trace, Matrix.diag, Fin.sum_univ_two, Matrix.det_fin_two]

/-- Newton traces at degrees zero, one and two give the exact Hermite matrix. -/
theorem hermiteMatrix_eq (b c : ℝ) :
    hermiteMatrix b c = !![2, b; b, b ^ 2 - 2 * c] := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [hermiteMatrix, companion, Matrix.trace, Matrix.diag, pow_two,
      Matrix.mul_apply, Fin.sum_univ_two]
  ring

/-- The real trace pairing is symmetric, independently of its sign. -/
theorem hermiteMatrix_isHermitian (b c : ℝ) : (hermiteMatrix b c).IsHermitian := by
  rw [hermiteMatrix_eq, Matrix.isHermitian_iff_isSymm]
  ext i j
  fin_cases i <;> fin_cases j <;> rfl

/-- Completing the square displays exactly the missing ordered condition. -/
theorem hermite_square (b c : ℝ) (u : Fin 2 → ℝ) :
    u ⬝ᵥ (hermiteMatrix b c *ᵥ u) =
      2 * (u 0 + b / 2 * u 1) ^ 2 + (b ^ 2 - 4 * c) / 2 * (u 1) ^ 2 := by
  rw [hermiteMatrix_eq]
  simp [dotProduct, Matrix.mulVec, Fin.sum_univ_two]
  ring

/-- Quadratic trace-square positivity is equivalent to the real discriminant condition. -/
theorem hermite_square_nonneg_iff (b c : ℝ) :
    (∀ u : Fin 2 → ℝ, 0 ≤ u ⬝ᵥ (hermiteMatrix b c *ᵥ u)) ↔ 0 ≤ b ^ 2 - 4 * c := by
  constructor
  · intro h
    have htest := h ![-b / 2, 1]
    rw [hermite_square] at htest
    norm_num at htest
    nlinarith
  · intro hd u
    rw [hermite_square]
    exact add_nonneg (mul_nonneg (by norm_num) (sq_nonneg _))
      (mul_nonneg (div_nonneg hd (by norm_num)) (sq_nonneg _))

/-- The standard matrix positivity predicate has the same discriminant characterization. -/
theorem hermiteMatrix_posSemidef_iff (b c : ℝ) :
    (hermiteMatrix b c).PosSemidef ↔ 0 ≤ b ^ 2 - 4 * c := by
  rw [Matrix.posSemidef_iff_dotProduct_mulVec]
  simp only [hermiteMatrix_isHermitian, star_trivial, true_and]
  exact hermite_square_nonneg_iff b c

/-- Nonnegative discriminant forces every full complex root onto the real axis. -/
theorem quadratic_root_real_of_nonneg (b c : ℝ) (hd : 0 ≤ b ^ 2 - 4 * c)
    (z : ℂ) (hz : z ^ 2 - (b : ℂ) * z + (c : ℂ) = 0) : z.im = 0 := by
  have hr := congrArg Complex.re hz
  have hi := congrArg Complex.im hz
  simp only [pow_two, Complex.add_re, Complex.sub_re, Complex.mul_re,
    Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero, Complex.zero_re] at hr
  simp only [pow_two, Complex.add_im, Complex.sub_im, Complex.mul_im,
    Complex.ofReal_re, Complex.ofReal_im, zero_mul, add_zero, Complex.zero_im] at hi
  by_contra hne
  have hb : 2 * z.re = b := by
    have hmul : (2 * z.re - b) * z.im = 0 := by nlinarith [hi]
    have := (mul_eq_zero.mp hmul).resolve_right hne
    linarith
  have hsq : 0 < z.im ^ 2 := sq_pos_of_ne_zero hne
  nlinarith [sq_nonneg (2 * z.re - b)]

/-- A negative discriminant gives an explicit nonreal zero, rather than just conjugate symmetry. -/
theorem quadratic_nonreal_root_of_neg (b c : ℝ) (hd : b ^ 2 - 4 * c < 0) :
    ∃ z : ℂ, z ^ 2 - (b : ℂ) * z + (c : ℂ) = 0 ∧ z.im ≠ 0 := by
  have hpos : 0 < 4 * c - b ^ 2 := by linarith
  have hs := Real.sq_sqrt hpos.le
  simp only [pow_two] at hs
  have hsp := Real.sqrt_pos.mpr hpos
  refine ⟨⟨b / 2, Real.sqrt (4 * c - b ^ 2) / 2⟩, ?_, ?_⟩
  · apply Complex.ext
    · simp only [pow_two, Complex.add_re, Complex.sub_re, Complex.mul_re,
        Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero, Complex.zero_re]
      nlinarith
    · simp only [pow_two, Complex.add_im, Complex.sub_im, Complex.mul_im,
        Complex.ofReal_re, Complex.ofReal_im, zero_mul, add_zero, Complex.zero_im]
      ring
  · change Real.sqrt (4 * c - b ^ 2) / 2 ≠ 0
    positivity

/-- The complete quadratic Hermite criterion, including repeated roots. -/
theorem hermiteMatrix_posSemidef_iff_real_roots (b c : ℝ) :
    (hermiteMatrix b c).PosSemidef ↔
      ∀ z : ℂ, z ^ 2 - (b : ℂ) * z + (c : ℂ) = 0 → z.im = 0 := by
  rw [hermiteMatrix_posSemidef_iff]
  constructor
  · exact quadratic_root_real_of_nonneg b c
  · intro h
    by_contra hd
    obtain ⟨z, hz, hzi⟩ := quadratic_nonreal_root_of_neg b c (lt_of_not_ge hd)
    exact hzi (h z hz)

/-- The `x²+1` trace form detects its nonreal support by a negative diagonal entry. -/
theorem imaginary_pair_hermite : hermiteMatrix 0 1 = !![2, 0; 0, -2] := by
  norm_num [hermiteMatrix_eq]

/-- Conjugation symmetry alone does not imply positive trace squares. -/
theorem imaginary_pair_not_posSemidef : ¬ (hermiteMatrix 0 1).PosSemidef := by
  rw [hermiteMatrix_posSemidef_iff]
  norm_num

/-- A double root at one gives a positive trace form with every entry equal to two. -/
theorem double_one_hermite : hermiteMatrix 2 1 = !![2, 2; 2, 2] := by
  norm_num [hermiteMatrix_eq]

/-- The repeated real root is allowed by positive semidefiniteness. -/
theorem double_one_posSemidef : (hermiteMatrix 2 1).PosSemidef := by
  rw [hermiteMatrix_posSemidef_iff]
  norm_num

/-- The trace form degenerates along the nilpotent direction. -/
theorem double_one_hermite_det : (hermiteMatrix 2 1).det = 0 := by
  rw [double_one_hermite]
  norm_num [Matrix.det_fin_two]

/-- The spectral determinant still records multiplicity two after the trace calculation. -/
theorem double_one_charpoly : (companion 2 1).charpoly = (X - 1) ^ 2 := by
  rw [companion_charpoly]
  simp only [map_ofNat, map_one]
  ring

/-- The repeated-root algebra has a nonzero coordinate nilpotent. -/
theorem double_one_nilpotent : (companion 2 1 - 1) ^ 2 = 0 := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [companion, pow_two, Matrix.mul_apply, Fin.sum_univ_two]

/-- The nilpotent direction has not been silently removed from the full operator. -/
theorem double_one_nilpotent_ne_zero : companion 2 1 - 1 ≠ 0 := by
  intro h
  have h01 := congrArg (fun M : Matrix (Fin 2) (Fin 2) ℝ => M 0 1) h
  norm_num [companion] at h01

end
end FormalResearch.RiemannHypothesis.XiHermiteQuadratic
```
