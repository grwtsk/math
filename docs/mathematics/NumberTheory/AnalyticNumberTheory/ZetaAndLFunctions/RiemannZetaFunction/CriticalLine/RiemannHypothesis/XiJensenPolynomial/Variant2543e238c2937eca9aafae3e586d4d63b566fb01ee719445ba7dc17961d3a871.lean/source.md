# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.XiJensenPolynomial.Variant2543e238c2937eca9aafae3e586d4d63b566fb01ee719445ba7dc17961d3a871

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fdd7c8336ebc6227c8b05cfe2c7774f32c82b63d` · SHA-256 `2543e238c2937eca9aafae3e586d4d63b566fb01ee719445ba7dc17961d3a871`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.XiJensenReconstruction

/-!
# The source-normalized real xi Jensen polynomial

The real coefficients, exact degree, and nonzero factorial leading scalar are
retained separately from the monic representative. No spectral or trace
positivity premise is discharged by this algebraic normalization.
-/

namespace FormalResearch.RiemannHypothesis.XiJensenPolynomial
open XiToeplitz ThetaPositiveLift XiJensenWeights Polynomial
noncomputable section

/-- The literal weighted spectral section as a real polynomial. -/
def jensenPolynomial (n : ℕ) : ℝ[X] :=
  ∑ k ∈ Finset.range (n + 1),
    C (weight n k * coefficient k * (-1) ^ k) * X ^ (2 * k)

/-- The unchanged coefficient at every even degree inside the finite support. -/
theorem jensenPolynomial_coeff (n k : ℕ) (hk : k ≤ n) :
    (jensenPolynomial n).coeff (2 * k) = weight n k * coefficient k * (-1) ^ k := by
  classical
  simp only [jensenPolynomial, Polynomial.finsetSum_coeff, Polynomial.coeff_C_mul_X_pow]
  have hmul (i : ℕ) : 2 * k = 2 * i ↔ k = i := by omega
  simp only [hmul]
  simp [Finset.mem_range.mpr (by omega : k < n + 1)]

/-- The source constant is preserved before monic normalization. -/
theorem jensenPolynomial_coeff_zero (n : ℕ) :
    (jensenPolynomial n).coeff 0 = coefficient 0 := by
  simpa using jensenPolynomial_coeff n 0 (Nat.zero_le n)

/-- The exact scalar relating the literal source section to its monic representative. -/
def leadingScalar (n : ℕ) : ℝ :=
  (-1) ^ n * coefficient n * ((2 * n).factorial : ℝ) / (2 * (n : ℝ)) ^ (2 * n)

/-- The leading coefficient is the weighted source coefficient with its spectral sign. -/
theorem leadingScalar_eq (n : ℕ) :
    leadingScalar n = weight n n * coefficient n * (-1) ^ n := by
  rw [weight_self]
  unfold leadingScalar
  ring

/-- A positive degree has a nonzero leading source coefficient. -/
theorem leadingScalar_ne_zero {n : ℕ} (hn : 1 ≤ n) : leadingScalar n ≠ 0 := by
  rw [leadingScalar_eq]
  exact mul_ne_zero (mul_ne_zero (weight_pos hn le_rfl).ne'
    (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula n).ne')
    (pow_ne_zero _ (by norm_num))

/-- The weighted section has exact spectral degree twice its index. -/
theorem jensenPolynomial_natDegree {n : ℕ} (hn : 1 ≤ n) :
    (jensenPolynomial n).natDegree = 2 * n := by
  apply Polynomial.natDegree_eq_of_le_of_coeff_ne_zero
  · apply Polynomial.natDegree_sum_le_of_forall_le
    intro k hk
    apply (Polynomial.natDegree_C_mul_X_pow_le _ _).trans
    have := Finset.mem_range.mp hk
    omega
  · rw [jensenPolynomial_coeff n n le_rfl, ← leadingScalar_eq]
    exact leadingScalar_ne_zero hn

/-- The literal polynomial's leading coefficient has exactly the requested factorial scalar. -/
theorem jensenPolynomial_leadingCoeff {n : ℕ} (hn : 1 ≤ n) :
    (jensenPolynomial n).leadingCoeff = leadingScalar n := by
  rw [Polynomial.leadingCoeff, jensenPolynomial_natDegree hn,
    jensenPolynomial_coeff n n le_rfl, leadingScalar_eq]

/-- Monic normalization is a separate object and never replaces the source polynomial. -/
def monicPolynomial (n : ℕ) : ℝ[X] := C (leadingScalar n)⁻¹ * jensenPolynomial n

/-- The explicit normalization produces a monic real polynomial. -/
theorem monicPolynomial_monic {n : ℕ} (hn : 1 ≤ n) : (monicPolynomial n).Monic := by
  apply Polynomial.monic_C_mul_of_mul_leadingCoeff_eq_one
  rw [jensenPolynomial_leadingCoeff hn, inv_mul_cancel₀ (leadingScalar_ne_zero hn)]

/-- Monic normalization preserves the complete degree and its multiplicity inventory. -/
theorem monicPolynomial_natDegree {n : ℕ} (hn : 1 ≤ n) :
    (monicPolynomial n).natDegree = 2 * n := by
  rw [monicPolynomial, Polynomial.natDegree_C_mul (inv_ne_zero (leadingScalar_ne_zero hn)),
    jensenPolynomial_natDegree hn]

/-- Restoring the leading scalar recovers every coefficient of the original source section. -/
theorem leadingScalar_mul_monicPolynomial {n : ℕ} (hn : 1 ≤ n) :
    C (leadingScalar n) * monicPolynomial n = jensenPolynomial n := by
  rw [monicPolynomial, ← mul_assoc, ← Polynomial.C_mul,
    mul_inv_cancel₀ (leadingScalar_ne_zero hn), Polynomial.C_1, one_mul]

/-- Complex evaluation retains both components of the spectral coordinate. -/
theorem jensenPolynomial_eval₂_sum (n : ℕ) (z : ℂ) :
    (jensenPolynomial n).eval₂ (algebraMap ℝ ℂ) z =
      ∑ k ∈ Finset.range (n + 1),
        ((weight n k * coefficient k : ℝ) : ℂ) * (-z ^ 2) ^ k := by
  rw [jensenPolynomial, Polynomial.eval₂_finsetSum]
  apply Finset.sum_congr rfl
  intro k _
  simp only [Polynomial.eval₂_mul, Polynomial.eval₂_C, Polynomial.eval₂_pow,
    Polynomial.eval₂_X]
  change ((weight n k * coefficient k * (-1) ^ k : ℝ) : ℂ) * z ^ (2 * k) = _
  push_cast
  rw [neg_pow (z ^ 2) k, ← pow_mul]
  ring

/-- The real polynomial evaluates to the actual source-weighted Jensen closure. -/
theorem jensenPolynomial_eval₂ (n : ℕ) (z : ℂ) :
    (jensenPolynomial n).eval₂ (algebraMap ℝ ℂ) z =
      XiJensenReconstruction.jensenSection n z :=
  jensenPolynomial_eval₂_sum n z

/-- The nonzero leading scalar is retained when decoding the monic spectral polynomial. -/
theorem leadingScalar_mul_monicPolynomial_eval₂ {n : ℕ} (hn : 1 ≤ n) (z : ℂ) :
    (leadingScalar n : ℂ) * (monicPolynomial n).eval₂ (algebraMap ℝ ℂ) z =
      XiJensenReconstruction.jensenSection n z := by
  rw [← jensenPolynomial_eval₂, ← leadingScalar_mul_monicPolynomial hn]
  simp only [Polynomial.eval₂_mul, Polynomial.eval₂_C]
  rfl

/-- The monic representative and literal source have exactly the same spectral zeros. -/
theorem monicPolynomial_eval₂_zero_iff {n : ℕ} (hn : 1 ≤ n) (z : ℂ) :
    (monicPolynomial n).eval₂ (algebraMap ℝ ℂ) z = 0 ↔
      XiJensenReconstruction.jensenSection n z = 0 := by
  rw [← leadingScalar_mul_monicPolynomial_eval₂ hn]
  simp only [mul_eq_zero, Complex.ofReal_ne_zero.mpr (leadingScalar_ne_zero hn), false_or]

end
end FormalResearch.RiemannHypothesis.XiJensenPolynomial
```
