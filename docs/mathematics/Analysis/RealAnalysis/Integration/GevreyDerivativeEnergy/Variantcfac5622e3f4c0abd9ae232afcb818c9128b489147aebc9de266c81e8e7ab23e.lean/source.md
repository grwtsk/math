# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.GevreyDerivativeEnergy.Variantcfac5622e3f4c0abd9ae232afcb818c9128b489147aebc9de266c81e8e7ab23e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8644caca20b23c94b645c755e9f8eef00a8dc278` · SHA-256 `cfac5622e3f4c0abd9ae232afcb818c9128b489147aebc9de266c81e8e7ab23e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.GevreyNormalization

/-!
# Exact derivative energy of a normalized compactly supported C³ profile

The derivative retains one inverse dilation factor. Applying the existing C² normalization
identity to the derivative profile gives the exact three-term energy formula, including the
positive mixed-term contribution supplied by integration by parts. Integrability is a conclusion
of the regularity and support hypotheses. No arithmetic estimate or source replacement is asserted.

AI attribution: developed with OpenAI Codex; the proof terms are checked by Lean.
-/

namespace FormalResearch.RiemannHypothesis.GevreyDerivativeEnergy

open MeasureTheory Function
open GevreyNormalization

/-- The mixed third/first derivative integral has the negative second-derivative energy. -/
theorem integral_third_mul_first {h : ℝ → ℝ} (hc : ContDiff ℝ 3 h)
    (hs : HasCompactSupport h) :
    (∫ x : ℝ, deriv (deriv (deriv h)) x * deriv h x) =
      -∫ x : ℝ, (deriv (deriv h) x) ^ 2 := by
  have hc' : ContDiff ℝ 2 (deriv h) := hc.deriv'
  exact integral_second_mul_profile hc' hs.deriv

/-- Differentiating the dilation operator is the operator on the derivative, scaled by A⁻¹. -/
theorem deriv_dilationOperator {h : ℝ → ℝ} (hc : ContDiff ℝ 3 h) (A x : ℝ) :
    deriv (dilationOperator h A) x = A⁻¹ * dilationOperator (deriv h) A x := by
  have hc2 : ContDiff ℝ 2 h := hc.of_le (by norm_num)
  have hc' : ContDiff ℝ 2 (deriv h) := hc.deriv'
  have heq : dilationOperator h A = fun y ↦
      (deriv (deriv h) (y / A) / A ^ 2 - h (y / A) / 4) / Real.sqrt A := by
    funext y
    exact dilationOperator_eq hc2 A y
  rw [heq]
  have hd := ((((hc'.differentiable_deriv_two (x / A)).hasDerivAt.comp x
    ((hasDerivAt_id x).div_const A)).div_const (A ^ 2)).sub
      (((hc.differentiable (by norm_num) (x / A)).hasDerivAt.comp x
        ((hasDerivAt_id x).div_const A)).div_const 4)).div_const (Real.sqrt A)
  change HasDerivAt (fun y ↦
      (deriv (deriv h) (y / A) / A ^ 2 - h (y / A) / 4) / Real.sqrt A)
    ((deriv (deriv (deriv h)) (x / A) * (1 / A) / A ^ 2 -
      deriv h (x / A) * (1 / A) / 4) / Real.sqrt A) x at hd
  rw [hd.deriv, dilationOperator_eq hc']
  ring

/-- The normalizing factor is constant in the spatial variable. -/
theorem deriv_normalizedOperator {h : ℝ → ℝ} (hc : ContDiff ℝ 3 h) (A x : ℝ) :
    deriv (normalizedOperator h A) x =
      (A⁻¹ * dilationOperator (deriv h) A x) / Real.sqrt (normalization h A) := by
  unfold normalizedOperator
  rw [deriv_div_const, deriv_dilationOperator hc]

/-- The squared spatial derivative is integrable at every positive scale. -/
theorem normalizedOperator_deriv_square_integrable {h : ℝ → ℝ}
    (hc : ContDiff ℝ 3 h) (hs : HasCompactSupport h) {A : ℝ} (hA : 0 < A) :
    Integrable (fun x ↦ (deriv (normalizedOperator h A) x) ^ 2) := by
  have hc' : ContDiff ℝ 2 (deriv h) := hc.deriv'
  have hi := ((dilationOperator_square_integrable hc' hs.deriv hA).const_mul
    (A⁻¹ ^ 2)).div_const (Real.sqrt (normalization h A) ^ 2)
  convert hi using 1
  funext x
  rw [deriv_normalizedOperator hc, div_pow, mul_pow]

/-- The derivative energy is A⁻² times the derivative profile's operator normalization. -/
theorem normalizedOperator_deriv_square_integral_factorized {h : ℝ → ℝ}
    (hc : ContDiff ℝ 3 h) (hs : HasCompactSupport h) (hn : ∃ x, h x ≠ 0)
    {A : ℝ} (hA : 0 < A) :
    (∫ x : ℝ, (deriv (normalizedOperator h A) x) ^ 2) =
      (A ^ 2)⁻¹ * normalization (deriv h) A / normalization h A := by
  have hc2 : ContDiff ℝ 2 h := hc.of_le (by norm_num)
  have hz := normalization_pos hc2 hs hn hA
  simp_rw [deriv_normalizedOperator hc, div_pow, mul_pow, Real.sq_sqrt hz.le]
  rw [integral_div, integral_const_mul]
  simp only [normalization, inv_pow]

/-- Exact derivative energy, with the mixed term reduced to positive second-derivative energy. -/
theorem normalizedOperator_deriv_square_integral {h : ℝ → ℝ}
    (hc : ContDiff ℝ 3 h) (hs : HasCompactSupport h) (hn : ∃ x, h x ≠ 0)
    {A : ℝ} (hA : 0 < A) :
    (∫ x : ℝ, (deriv (normalizedOperator h A) x) ^ 2) =
      ((A ^ 6)⁻¹ * (∫ x : ℝ, (deriv (deriv (deriv h)) x) ^ 2) +
        (2 * A ^ 4)⁻¹ * (∫ x : ℝ, (deriv (deriv h) x) ^ 2) +
        (1 / 16) * (A ^ 2)⁻¹ * (∫ x : ℝ, (deriv h x) ^ 2)) /
          normalization h A := by
  have hc' : ContDiff ℝ 2 (deriv h) := hc.deriv'
  rw [normalizedOperator_deriv_square_integral_factorized hc hs hn hA,
    normalization_eq hc' hs.deriv hA]
  congr 1
  field_simp

/-- The exact derivative-energy identity specializes to the concrete corrected smooth profile. -/
theorem profile_normalizedOperator_deriv_square_integral {A : ℝ} (hA : 0 < A) :
    (∫ x : ℝ, (deriv (normalizedOperator GevreyProfile.profile A) x) ^ 2) =
      ((A ^ 6)⁻¹ * (∫ x : ℝ,
          (deriv (deriv (deriv GevreyProfile.profile)) x) ^ 2) +
        (2 * A ^ 4)⁻¹ * (∫ x : ℝ, (deriv (deriv GevreyProfile.profile) x) ^ 2) +
        (1 / 16) * (A ^ 2)⁻¹ * (∫ x : ℝ, (deriv GevreyProfile.profile x) ^ 2)) /
          normalization GevreyProfile.profile A :=
  normalizedOperator_deriv_square_integral GevreyProfile.profile_contDiff
    GevreyProfile.profile_hasCompactSupport GevreyProfile.profile_nonzero hA

end FormalResearch.RiemannHypothesis.GevreyDerivativeEnergy
```
