# Complete source: GRWTSK.Topology.GeneralTopology.SourceActualComplexEndpointCoefficient.Variantdf489c007ed20443ff32f5973d31a4f4d9fe956a616e85a952e3ccc73b5dfd97

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a923be140d229f86bcf4f54493b5011ad6bfc85b` · SHA-256 `ed54b152fc9dca570998ada4671add530d9a9a831cef0b8f846fb7afa5b53dbf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ActualLeadingComplexAntiderivative.Variante431981e3f5e0e2b21382272aa6ceac529bd5f3af0147b887d332a9fb88e2ac5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e431981e3f5e0e2b21382272aa6ceac529bd5f3af0147b887d332a9fb88e2ac5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ActualLeadingComplexAntiderivative.Variante431981e3f5e0e2b21382272aa6ceac529bd5f3af0147b887d332a9fb88e2ac5","mathematical_subject":"Topology.GeneralTopology","original_sha256":"e431981e3f5e0e2b21382272aa6ceac529bd5f3af0147b887d332a9fb88e2ac5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-critical-complement/actual-complex-endpoint-coefficient/native06/SourceActualComplexEndpointCoefficient.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualComplexEndpointAsymptotic

/-!
A genuine complex improper integral evaluates the actual leading endpoint
coefficient. All half-plane hypotheses remain explicit. No zero expansion or
arithmetic witness is inferred from this coefficient.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Topology.GeneralTopology.ActualLeadingComplexAntiderivative.Variante431981e3f5e0e2b21382272aa6ceac529bd5f3af0147b887d332a9fb88e2ac5

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualComplexEndpointCoefficient

open Set Filter MeasureTheory
open scoped Topology
open SourceActualComplexEndpointAsymptotic SourceActualEdgeLeadingLimit

noncomputable section

/-- A literal polynomial antiderivative for the independently specified coefficient. -/
def actualLeadingComplexAntiderivative (z : ℂ) (u : ℝ) : ℂ :=
  Complex.exp (-z * (u : ℂ)) *
    (-192 * ((u : ℂ)^2 / z + 2 * (u : ℂ) / z^2 + 2 / z^3) +
      4 * ((u : ℂ)^4 / z + 4 * (u : ℂ)^3 / z^2 + 12 * (u : ℂ)^2 / z^3 +
        24 * (u : ℂ) / z^4 + 24 / z^5))

/-- Every genuine polynomial-exponential term vanishes in this half plane. -/
theorem complexMonomial_exponential_tendsto_zero (n : ℕ) {z : ℂ} (hz : 0 < z.re) :
    Tendsto (fun u : ℝ => (u : ℂ)^n * Complex.exp (-z * (u : ℂ))) atTop (𝓝 0) := by
  apply tendsto_zero_iff_norm_tendsto_zero.mpr
  have h := tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero (n : ℝ) z.re hz
  have he : (fun u : ℝ => ‖(u : ℂ)^n * Complex.exp (-z * (u : ℂ))‖) =ᶠ[atTop]
      fun u : ℝ => u^(n : ℝ) * Real.exp (-z.re * u) := by
    filter_upwards [eventually_ge_atTop (0 : ℝ)] with u hu
    simp only [norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg hu, Complex.norm_exp]
    rw [Real.rpow_natCast]
    congr 2
    simp
  exact h.congr' he.symm

/-- The actual finite antiderivative has the precise original integrand as its derivative. -/
theorem actualLeadingComplexAntiderivative_hasDerivAt {z : ℂ} (hz : z ≠ 0) (u : ℝ) :
    HasDerivAt (actualLeadingComplexAntiderivative z)
      ((actualLeadingEndpointPolynomial u : ℂ) * Complex.exp (-z * (u : ℂ))) u := by
  have hx : HasDerivAt (fun x : ℝ => (x : ℂ)) 1 u := (hasDerivAt_id u).ofReal_comp
  have hp := (((hx.pow 2).div_const z).add
    ((hx.const_mul 2).div_const (z^2))).add_const (2 / z^3)
  have hq := (((((hx.pow 4).div_const z).add
    (((hx.pow 3).const_mul 4).div_const (z^2))).add
    (((hx.pow 2).const_mul 12).div_const (z^3))).add
    ((hx.const_mul 24).div_const (z^4))).add_const (24 / z^5)
  have hh := ((hx.const_mul (-z)).cexp).mul ((hp.const_mul (-192)).add (hq.const_mul 4))
  convert! hh using 1
  dsimp [actualLeadingComplexAntiderivative, actualLeadingEndpointPolynomial]
  norm_num
  field_simp [hz]
  ring

/-- Its right-hand improper boundary is genuinely zero, not discarded symbolically. -/
theorem actualLeadingComplexAntiderivative_tendsto_zero {z : ℂ} (hz : 0 < z.re) :
    Tendsto (actualLeadingComplexAntiderivative z) atTop (𝓝 0) := by
  have h0 := complexMonomial_exponential_tendsto_zero 0 hz
  have h1 := complexMonomial_exponential_tendsto_zero 1 hz
  have h2 := complexMonomial_exponential_tendsto_zero 2 hz
  have h3 := complexMonomial_exponential_tendsto_zero 3 hz
  have h4 := complexMonomial_exponential_tendsto_zero 4 hz
  have hp := ((h2.div_const z).add ((h1.const_mul 2).div_const (z^2))).add
    ((h0.const_mul 2).div_const (z^3))
  have hq := ((((h4.div_const z).add ((h3.const_mul 4).div_const (z^2))).add
    ((h2.const_mul 12).div_const (z^3))).add ((h1.const_mul 24).div_const (z^4))).add
    ((h0.const_mul 24).div_const (z^5))
  have hh := (hp.const_mul (-192)).add (hq.const_mul 4)
  convert! hh using 1
  · ext u
    dsimp only [actualLeadingComplexAntiderivative]
    ring
  · simp

/-- Exact native complex moment evaluation of the independently specified literal coefficient. -/
theorem actualLeadingComplexCoefficient_eq {z : ℂ} (hz : 0 < z.re) :
    actualLeadingComplexCoefficient z = 384 / z^3 - 96 / z^5 := by
  have hzn : z ≠ 0 := by intro he; rw [he] at hz; simp at hz
  have hh := integral_Ioi_of_hasDerivAt_of_tendsto'
    (a := (0 : ℝ)) (fun u _ => actualLeadingComplexAntiderivative_hasDerivAt hzn u)
    (actualLeadingComplexCoefficient_integrable hz)
    (actualLeadingComplexAntiderivative_tendsto_zero hz)
  change (∫ u in Ioi (0 : ℝ), (actualLeadingEndpointPolynomial u : ℂ) *
    Complex.exp (-z * (u : ℂ))) = _
  rw [hh]
  simp only [actualLeadingComplexAntiderivative, Complex.ofReal_zero, mul_zero,
    Complex.exp_zero, zero_pow (by norm_num : 2 ≠ 0),
    zero_pow (by norm_num : 4 ≠ 0), zero_pow (by norm_num : 3 ≠ 0),
    zero_div, zero_add, add_zero, one_mul]
  ring


/-- The actual source transform now has its exact rational complex coefficient. -/
theorem actualSourceComplexTransform_normalized_tendsto_closed {z : ℂ} (hz : 0 < z.re) :
    Tendsto (fun A : ℝ =>
      ((A ^ 4 * Real.sqrt A * Real.sqrt
        (SourcePairing.sourceNormalization A) : ℝ) : ℂ) * Complex.exp (-z * (A : ℂ)) * actualSourceComplexTransform A z)
      atTop (𝓝 (384 / z^3 - 96 / z^5)) := by
  rw [← actualLeadingComplexCoefficient_eq hz]
  exact actualSourceComplexTransform_normalized_tendsto hz

end
end FormalResearch.RiemannHypothesis.SourceActualComplexEndpointCoefficient
```
