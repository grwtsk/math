/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Determinant-one Farey coordinates and quantitative projective chords

An exact arithmetic determinant controls both unoriented Euclidean
chords of normalized planar direction coordinates, without choosing
a branch of the angle or forgetting the antipodal identification.

For integer Farey neighbors a/b and c/d, |ad-bc|=1. This finite
Lagrange identity provides a lower bound of order Q^(-2) on the
projective chord gap when raw coordinate lengths are <= sqrt(2)Q.
We prove the squared inequality directly using an explicit positive
normalization length, retaining its exact norm equations.

This is a verified analytic argument and a Lean proof candidate.
It does NOT construct a Fary planar embedding or a full
arithmetic-index-to-actual-Space-2-Family tube realization. Such a
map remains a separate source-bound bridge; there is no RH result.
-/

namespace GRWTSK.NumberTheory.Farey.ProjectiveChordBudget

/-- Two-coordinate Lagrange identity. The determinant is the same
for (x,y) versus (z,w) and (x,y) versus their differences. -/
theorem determinant_sq_le_both_unit_chords
    (x y z w : ℝ) (hunit : x ^ 2 + y ^ 2 = 1) :
    (x * w - y * z) ^ 2 ≤
      min ((x-z)^2 + (y-w)^2)
          ((x+z)^2 + (y+w)^2) := by
  have hminus :
      (x ^ 2 + y ^ 2) *
          ((z - x) ^ 2 + (w - y) ^ 2) =
        (x * (z - x) + y * (w - y)) ^ 2 +
          (x * (w - y) - y * (z - x)) ^ 2 := by
    ring
  have hplus :
      (x ^ 2 + y ^ 2) *
          ((z + x) ^ 2 + (w + y) ^ 2) =
        (x * (z + x) + y * (w + y)) ^ 2 +
          (x * (w + y) - y * (z + x)) ^ 2 := by
    ring
  have hm :
      (x * w - y * z) ^ 2 ≤
        (x-z)^2 + (y-w)^2 := by
    rw [hunit] at hminus
    have heq : x * (w-y) - y * (z-x) = x*w-y*z := by ring
    rw [heq] at hminus
    nlinarith [sq_nonneg (x * (z-x) + y * (w-y))]
  have hp :
      (x * w - y * z) ^ 2 ≤
        (x+z)^2 + (y+w)^2 := by
    rw [hunit] at hplus
    have heq : x * (w+y) - y * (z+x) = x*w-y*z := by ring
    rw [heq] at hplus
    nlinarith [sq_nonneg (x * (z+x) + y * (w+y))]
  exact le_min hm hp

/-- For two original real coordinate vectors of Euclidean lengths
L and M and determinant +1, the squared unoriented projective
chord gap of their NORMALIZED pairs is >= (L*M)^(-2). -/
theorem determinant_one_normalized_projective_sq
    (a b c d L M : ℝ)
    (hL : 0 < L) (hM : 0 < M)
    (hLnorm : L ^ 2 = a ^ 2 + b ^ 2)
    (hMnorm : M ^ 2 = c ^ 2 + d ^ 2)
    (hdet : a * d - b * c = 1) :
    (1 / (L * M)) ^ 2 ≤
      min ((a/L-c/M)^2 + (b/L-d/M)^2)
          ((a/L+c/M)^2 + (b/L+d/M)^2) := by
  have hLn : L ≠ 0 := ne_of_gt hL
  have hMn : M ≠ 0 := ne_of_gt hM
  have hunit : (a/L)^2 + (b/L)^2 = 1 := by
    calc
      (a/L)^2 + (b/L)^2 =
          (a^2 + b^2) / L^2 := by ring
      _ = L^2 / L^2 := by rw [← hLnorm]
      _ = 1 := by field_simp [hLn]
  have hnormalized :
      (a/L)*(d/M) - (b/L)*(c/M) = 1/(L*M) := by
    calc
      _ = (a*d-b*c)/(L*M) := by ring
      _ = _ := by rw [hdet]
  have h := determinant_sq_le_both_unit_chords
    (a/L) (b/L) (c/M) (d/M) hunit
  simpa only [hnormalized] using h

/-- Quantitative height payment. If both raw Euclidean square lengths
are <= 2 Q^2, the SOURCE determinant-one angular collar can be no
smaller than 1/(4 Q^4) in squared projective distance. This is
finite planar coordinate geometry, not a density bound. -/
theorem determinant_one_height_projective_sq
    (a b c d L M Q : ℝ)
    (hL : 0 < L) (hM : 0 < M) (hQ : 0 < Q)
    (hLnorm : L ^ 2 = a ^ 2 + b ^ 2)
    (hMnorm : M ^ 2 = c ^ 2 + d ^ 2)
    (hLbound : L ^ 2 ≤ 2 * Q ^ 2)
    (hMbound : M ^ 2 ≤ 2 * Q ^ 2)
    (hdet : a * d - b * c = 1) :
    1 / (4 * Q ^ 4) ≤
      min ((a/L-c/M)^2 + (b/L-d/M)^2)
          ((a/L+c/M)^2 + (b/L+d/M)^2) := by
  have hsquare : (L*M)^2 ≤ 4 * Q^4 := by
    have hm := mul_le_mul hLbound hMbound
      (sq_nonneg M) (by positivity : 0 ≤ 2 * Q^2)
    nlinarith [hm]
  have hdenom : 0 < (L*M)^2 := pow_pos (mul_pos hL hM) 2
  have hqdenom : 0 < (4 * Q^4 : ℝ) := by positivity
  have hinv : (1 : ℝ) / (4*Q^4) ≤ 1 / ((L*M)^2) :=
    (div_le_div_iff₀ hqdenom hdenom).2 (by simpa using hsquare)
  have hrewrite : 1 / ((L*M)^2) = (1/(L*M))^2 := by ring
  calc
    (1 : ℝ)/(4*Q^4) ≤ 1 / ((L*M)^2) := hinv
    _ = (1/(L*M))^2 := hrewrite
    _ ≤ _ := determinant_one_normalized_projective_sq
      a b c d L M hL hM hLnorm hMnorm hdet

end GRWTSK.NumberTheory.Farey.ProjectiveChordBudget
