# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NativeGrowthAudit.Variantb5ecc412a9a4538ff510da4efac48a26bb788215b0de8251678a048790ec3311

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `240701abb55cb436646413e4e3adf56bccabcb03` · SHA-256 `b5ecc412a9a4538ff510da4efac48a26bb788215b0de8251678a048790ec3311`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Laplace.Expansion

/-!
Independent review of an unconditional, exponentially growing envelope for
the unchanged source. This ignored scratch file does not assert a uniform
lower bound, a compensated cap, issue #16, or RH. grwtsk contributors retains
credit for the source and originating direction; OpenAI Codex supplied this
specific elementary unscaling of the already proved native growth theorem.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceKapitzaNativeGrowthReview

open SourcePairing
open FormalResearch.RiemannHypothesis.Laplace.Algebra
open FormalResearch.RiemannHypothesis.Laplace.Expansion

noncomputable section

theorem normalization_lower (A : ℝ) :
    (4096 / 109395 : ℝ) ≤ sourceNormalization A := by
  unfold sourceNormalization
  have h2 : 0 ≤ (131072 / 45045 : ℝ) / (2 * A ^ 2) := by positivity
  have h4 : 0 ≤ (196608 / 5005 : ℝ) / A ^ 4 := by positivity
  norm_num at *
  linarith

theorem actual_source_growth_unscaled (A : ℝ) (hA : 1 ≤ A) :
    |actualQ A| ≤
      2 * growthConstant * Real.exp A / ((4096 / 109395 : ℝ) * A ^ 9) := by
  have hApos : 0 < A := by linarith
  have hZpos := source_normalization_pos A hA
  have hC := growthConstant_nonneg
  have he := (Real.exp_pos A).le
  have h8 : 1 ≤ A ^ 8 := one_le_pow₀ hA
  have hn := weightedSource_growth A hA
  unfold weightedSource at hn
  rw [Complex.norm_real, Real.norm_eq_abs, abs_mul, abs_mul,
    abs_of_pos (pow_pos hApos 17), abs_of_pos hZpos] at hn
  apply (le_div_iff₀ (by positivity :
    0 < (4096 / 109395 : ℝ) * A ^ 9)).mpr
  have hs :
      A ^ 8 * (|actualQ A| * ((4096 / 109395 : ℝ) * A ^ 9)) ≤
        A ^ 8 * (2 * growthConstant * Real.exp A) := by
    calc
      _ = A ^ 17 * (4096 / 109395 : ℝ) * |actualQ A| := by ring
      _ ≤ A ^ 17 * sourceNormalization A * |actualQ A| := by
        gcongr
        exact normalization_lower A
      _ ≤ growthConstant * (1 + A ^ 8) * Real.exp A := hn
      _ ≤ growthConstant * (2 * A ^ 8) * Real.exp A := by
        gcongr
        linarith
      _ = A ^ 8 * (2 * growthConstant * Real.exp A) := by ring
  exact (mul_le_mul_left (pow_pos hApos 8)).mp hs

end
end FormalResearch.RiemannHypothesis.SourceKapitzaNativeGrowthReview

set_option pp.all true
set_option pp.universes true
set_option pp.proofs true
set_option pp.fullNames true
set_option pp.maxDepth 100000
set_option pp.width 100000
#print FormalResearch.RiemannHypothesis.SourceKapitzaNativeGrowthReview.normalization_lower
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaNativeGrowthReview.normalization_lower
#print FormalResearch.RiemannHypothesis.SourceKapitzaNativeGrowthReview.actual_source_growth_unscaled
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaNativeGrowthReview.actual_source_growth_unscaled
```
