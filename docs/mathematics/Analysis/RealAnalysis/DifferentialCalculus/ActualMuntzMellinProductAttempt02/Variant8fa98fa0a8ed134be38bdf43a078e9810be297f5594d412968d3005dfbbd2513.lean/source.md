# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualMuntzMellinProductAttempt02.Variant8fa98fa0a8ed134be38bdf43a078e9810be297f5594d412968d3005dfbbd2513

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da52e52fa999a7a1406570e12c0dfc6a42f78240` · SHA-256 `8fa98fa0a8ed134be38bdf43a078e9810be297f5594d412968d3005dfbbd2513`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualMuntzDirichlet
import Mathlib.Analysis.Analytic.Uniqueness
import Mathlib.Analysis.Convex.PathConnected

/-! Actual Müntz Mellin product via proved absolute interchange and analytic continuation.
Direction grwtsk contributors; focused scratch proof OpenAI Codex.
At the zeta pole we use the genuine entire regularization, never a junk zeta value. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualMuntzMellinProduct
open MeasureTheory Set Filter
open scoped Topology
open ContinuousResearch.ActualMuntzMellinDomain ContinuousResearch.ActualMuntzDirichlet

theorem positiveHalfplane_isPreconnected : IsPreconnected {s : ℂ | 0 < s.re} := by
  exact ((convex_Ioi (0 : ℝ)).linear_preimage Complex.reLm).isPreconnected

theorem regularized_left_analytic {A : ℝ} (hA : 1 ≤ A) :
    AnalyticOnNhd ℂ (fun s => (s-1)*mellin (complexMuntz A) s) {s : ℂ | 0 < s.re} := by
  apply DifferentiableOn.analyticOnNhd _ (isOpen_lt continuous_const Complex.continuous_re)
  intro s hs
  exact ((differentiableAt_id.sub_const 1).mul
    (actual_muntz_mellin_hasDerivAt hA hs).2.differentiableAt).differentiableWithinAt

theorem regularized_right_differentiable {A : ℝ} (hA : 0 < A) :
    Differentiable ℂ (fun s => riemannZeta₁ s * mellin (complexSource A) s) :=
  differentiable_riemannZeta₁.mul (actual_source_mellin_differentiable hA)

theorem regularized_product_in_dirichlet {A : ℝ} (hA : 1 ≤ A) {s : ℂ} (hs : 1 < s.re) :
    (s-1)*mellin (complexMuntz A) s = riemannZeta₁ s * mellin (complexSource A) s := by
  have hn : s ≠ 1 := by intro hh; simp [hh] at hs
  rw [actual_muntz_mellin_dirichlet hA hs,riemannZeta_eq_inv_sub_mul hn]
  rw [← mul_assoc,← mul_assoc,mul_inv_cancel₀ (sub_ne_zero.mpr hn),one_mul]

theorem actual_muntz_mellin_regularized {A : ℝ} (hA : 1 ≤ A) {s : ℂ} (hs : 0 < s.re) :
    (s-1)*mellin (complexMuntz A) s = riemannZeta₁ s * mellin (complexSource A) s := by
  have hf := regularized_left_analytic hA
  have hg : AnalyticOnNhd ℂ (fun s => riemannZeta₁ s * mellin (complexSource A) s)
      {s : ℂ | 0 < s.re} :=
    fun z _ => (regularized_right_differentiable (by linarith : 0 < A)).analyticAt z
  have he : (fun s => (s-1)*mellin (complexMuntz A) s) =ᶠ[𝓝 (2 : ℂ)]
      (fun s => riemannZeta₁ s * mellin (complexSource A) s) := by
    have hh : ∀ᶠ s : ℂ in 𝓝 (2 : ℂ), 1 < s.re :=
      (isOpen_lt continuous_const Complex.continuous_re).mem_nhds (by norm_num)
    exact hh.mono fun z hz => regularized_product_in_dirichlet hA hz
  exact (hf.eqOn_of_preconnected_of_eventuallyEq hg positiveHalfplane_isPreconnected
    (by norm_num : (2 : ℂ) ∈ {s : ℂ | 0 < s.re}) he) hs

theorem actual_muntz_mellin_product {A : ℝ} (hA : 1 ≤ A) {s : ℂ}
    (hs : 0 < s.re) (hn : s ≠ 1) :
    mellin (complexMuntz A) s = riemannZeta s * mellin (complexSource A) s := by
  have he := actual_muntz_mellin_regularized hA hs
  rw [riemannZeta_eq_inv_sub_mul hn, mul_assoc,← he,
    inv_mul_cancel_left₀ (sub_ne_zero.mpr hn)]

theorem actual_muntz_mellin_strip {A : ℝ} (hA : 1 ≤ A) {s : ℂ}
    (hs0 : 0 < s.re) (hs1 : s.re < 1) :
    mellin (complexMuntz A) s = riemannZeta s * mellin (complexSource A) s := by
  apply actual_muntz_mellin_product hA hs0
  intro hh
  simp [hh] at hs1

end ContinuousResearch.ActualMuntzMellinProduct

/- Exact public type, proof and trusted dependency audits. -/

#check ContinuousResearch.ActualMuntzMellinProduct.positiveHalfplane_isPreconnected
#print axioms ContinuousResearch.ActualMuntzMellinProduct.positiveHalfplane_isPreconnected
#print ContinuousResearch.ActualMuntzMellinProduct.positiveHalfplane_isPreconnected

#check ContinuousResearch.ActualMuntzMellinProduct.regularized_left_analytic
#print axioms ContinuousResearch.ActualMuntzMellinProduct.regularized_left_analytic
#print ContinuousResearch.ActualMuntzMellinProduct.regularized_left_analytic

#check ContinuousResearch.ActualMuntzMellinProduct.regularized_right_differentiable
#print axioms ContinuousResearch.ActualMuntzMellinProduct.regularized_right_differentiable
#print ContinuousResearch.ActualMuntzMellinProduct.regularized_right_differentiable

#check ContinuousResearch.ActualMuntzMellinProduct.regularized_product_in_dirichlet
#print axioms ContinuousResearch.ActualMuntzMellinProduct.regularized_product_in_dirichlet
#print ContinuousResearch.ActualMuntzMellinProduct.regularized_product_in_dirichlet

#check ContinuousResearch.ActualMuntzMellinProduct.actual_muntz_mellin_regularized
#print axioms ContinuousResearch.ActualMuntzMellinProduct.actual_muntz_mellin_regularized
#print ContinuousResearch.ActualMuntzMellinProduct.actual_muntz_mellin_regularized

#check ContinuousResearch.ActualMuntzMellinProduct.actual_muntz_mellin_product
#print axioms ContinuousResearch.ActualMuntzMellinProduct.actual_muntz_mellin_product
#print ContinuousResearch.ActualMuntzMellinProduct.actual_muntz_mellin_product

#check ContinuousResearch.ActualMuntzMellinProduct.actual_muntz_mellin_strip
#print axioms ContinuousResearch.ActualMuntzMellinProduct.actual_muntz_mellin_strip
#print ContinuousResearch.ActualMuntzMellinProduct.actual_muntz_mellin_strip
```
