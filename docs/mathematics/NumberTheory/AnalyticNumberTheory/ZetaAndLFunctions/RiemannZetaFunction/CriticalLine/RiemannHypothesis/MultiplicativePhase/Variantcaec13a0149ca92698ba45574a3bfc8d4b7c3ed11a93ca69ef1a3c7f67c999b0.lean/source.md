# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.MultiplicativePhase.Variantcaec13a0149ca92698ba45574a3bfc8d4b7c3ed11a93ca69ef1a3c7f67c999b0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e78077d88f8d7be29bfa5e8742a09d2ad6322be` · SHA-256 `f97e1c248aa366d0515871024eb98bc4cffb02ba79f1234e2db7bf302f576fd5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Chi.Variant7d71c62da8bdab50069d02d31e85b78a839ea7ab7b97669007b969b95139a60e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7d71c62da8bdab50069d02d31e85b78a839ea7ab7b97669007b969b95139a60e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.Chi.Variant7d71c62da8bdab50069d02d31e85b78a839ea7ab7b97669007b969b95139a60e","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"7d71c62da8bdab50069d02d31e85b78a839ea7ab7b97669007b969b95139a60e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/7d71c62da8bdab50069d02d31e85b78a839ea7ab7b97669007b969b95139a60e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.Complex.Trigonometric
import Mathlib.Tactic.Ring

/-!
# The actual logarithmic multiplicative phase

The character is the exponential `exp (I * ξ * log x)`. Multiplicativity
requires positive real arguments; the total real logarithm does not supply
that identity at zero. The prime-power specialization preserves every power,
including exponent zero. No assertion about zeros of zeta is used.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Chi.Variant7d71c62da8bdab50069d02d31e85b78a839ea7ab7b97669007b969b95139a60e

namespace FormalResearch.RiemannHypothesis.MultiplicativePhase

noncomputable section

/-- The source phase in logarithmic coordinates. Its character laws below
are explicitly restricted to the positive multiplicative domain. -/
def chi (ξ x : ℝ) : ℂ :=
  Complex.exp (Complex.I * (ξ : ℂ) * (Real.log x : ℂ))

theorem chi_one (ξ : ℝ) : chi ξ 1 = 1 := by
  simp [chi]

theorem chi_mul (ξ : ℝ) {x y : ℝ} (hx : 0 < x) (hy : 0 < y) :
    chi ξ (x * y) = chi ξ x * chi ξ y := by
  unfold chi
  rw [Real.log_mul (ne_of_gt hx) (ne_of_gt hy), Complex.ofReal_add, mul_add,
    Complex.exp_add]

theorem chi_pow (ξ : ℝ) {x : ℝ} (hx : 0 < x) (k : ℕ) :
    chi ξ (x ^ k) = chi ξ x ^ k := by
  induction k with
  | zero => simp [chi_one]
  | succ k ih => rw [pow_succ, chi_mul ξ (pow_pos hx k) hx, ih, pow_succ]

/-- A prime power is an actual power of the prime phase, not a replacement
of the von Mangoldt inventory by a prime-only sum. -/
theorem chi_prime_pow (ξ : ℝ) {p : ℕ} (hp : p.Prime) (k : ℕ) :
    chi ξ ((p ^ k : ℕ) : ℝ) = chi ξ p ^ k := by
  rw [Nat.cast_pow]
  exact chi_pow ξ (by exact_mod_cast hp.pos) k

/-- Exponentiation identifies the positive multiplicative domain with its
additive logarithmic coordinate. -/
theorem chi_exp (ξ t : ℝ) :
    chi ξ (Real.exp t) = Complex.exp (Complex.I * (ξ : ℂ) * (t : ℂ)) := by
  simp [chi]

theorem chi_inv (ξ : ℝ) {x : ℝ} (hx : 0 < x) :
    chi ξ x⁻¹ = (chi ξ x)⁻¹ := by
  have hm := chi_mul ξ hx (inv_pos.mpr hx)
  rw [mul_inv_cancel₀ (ne_of_gt hx), chi_one] at hm
  exact eq_inv_of_mul_eq_one_left (by simpa only [mul_comm] using hm.symm)

theorem chi_eq_exp_angle (ξ x : ℝ) :
    chi ξ x = Complex.exp (((ξ * Real.log x : ℝ) : ℂ) * Complex.I) := by
  unfold chi
  congr 1
  rw [Complex.ofReal_mul]
  ring

theorem chi_norm (ξ x : ℝ) : ‖chi ξ x‖ = 1 := by
  rw [chi_eq_exp_angle]
  exact Complex.norm_exp_ofReal_mul_I _

theorem chi_normSq (ξ x : ℝ) : Complex.normSq (chi ξ x) = 1 := by
  rw [Complex.normSq_eq_norm_sq, chi_norm]
  norm_num

theorem chi_re (ξ x : ℝ) : (chi ξ x).re = Real.cos (ξ * Real.log x) := by
  rw [chi_eq_exp_angle, Complex.exp_ofReal_mul_I_re]

/-- The exact phase defect identity; the right side retains the factor two. -/
theorem normSq_one_sub_chi (ξ x : ℝ) :
    Complex.normSq (1 - chi ξ x) = 2 - 2 * Real.cos (ξ * Real.log x) := by
  rw [Complex.normSq_sub, chi_normSq]
  simp [chi_re]
  norm_num

theorem phase_defect_nonneg (ξ x : ℝ) :
    0 ≤ 2 - 2 * Real.cos (ξ * Real.log x) := by
  rw [← normSq_one_sub_chi]
  exact Complex.normSq_nonneg _

end

end FormalResearch.RiemannHypothesis.MultiplicativePhase
```
