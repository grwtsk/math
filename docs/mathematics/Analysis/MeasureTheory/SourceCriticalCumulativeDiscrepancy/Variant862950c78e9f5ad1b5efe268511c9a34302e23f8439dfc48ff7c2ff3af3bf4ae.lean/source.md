# Complete source: GRWTSK.Analysis.MeasureTheory.SourceCriticalCumulativeDiscrepancy.Variant862950c78e9f5ad1b5efe268511c9a34302e23f8439dfc48ff7c2ff3af3bf4ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32cd2ea9b6695a6d19c99f22151834870ff773b9` · SHA-256 `b80eb7485852ba40faa30abc2ba4a1d2404263f8c9c840b2f4695ad6a810f91f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.CriticalCumulativeDiscrepancy.Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.CriticalCumulativeDiscrepancy.Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"b2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/descendant-incremental-20261006T223836Z/source-references/b33c92b1ae6b4d6a537a/SourceCriticalCumulativeDiscrepancy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceCriticalDensityQuadrature
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.MeasureTheory.Integral.IntervalIntegral.LebesgueDifferentiationThm
import Mathlib.MeasureTheory.Integral.IntervalIntegral.AbsolutelyContinuousFun

/-!
# Actual cumulative prime-density discrepancy and endpoint bridge

The cumulative prefix retains closed prime atoms. Its integral primitive is
continuous, absolutely continuous on finite intervals, and has the literal step
discrepancy as derivative almost everywhere. The discrepancy itself is not
asserted continuous. The exact nonnegative-coordinate finite inventory formula
retains each touching endpoint with zero primitive factor. Endpoint bridging
subtracts its own affine endpoint value, without changing source counterterms
or assuming a signed budget. This maintained research-branch candidate has no
accepted-main, hosted-CI or RH proof claim.

AI attribution: developed with OpenAI Codex; Lean checks the proof terms.
-/


namespace GRWTSK.Analysis.MeasureTheory.CriticalCumulativeDiscrepancy.Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133

set_option autoImplicit false
set_option backward.isDefEq.respectTransparency false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy

open MeasureTheory Set
open scoped Interval
open SourceCriticalDensityQuadrature SourceCriticalDecayWork WeightedPrimeAbel

/-- Literal closed-prime prefix minus the independent continuous density mass. -/
def criticalCumulativeDiscrepancy (u : ℝ) : ℝ :=
  primeLogPrefix u - ∫ v in 0..u, criticalDensity v

/-- The integral primitive of the actual step discrepancy. -/
def criticalDiscrepancyPrimitive (u : ℝ) : ℝ :=
  ∫ v in 0..u, criticalCumulativeDiscrepancy v

/-- Removing an affine endpoint value produces a bridge with zero endpoints. -/
def criticalDiscrepancyBridge (A u : ℝ) : ℝ :=
  criticalDiscrepancyPrimitive u -
    (u / (2 * A)) * criticalDiscrepancyPrimitive (2 * A)

private theorem decay_continuous : Continuous criticalDecay := by
  unfold criticalDecay
  fun_prop

private theorem decay_hasDerivAt (u : ℝ) :
    HasDerivAt criticalDecay (-criticalDecay u / 2) u := by
  convert ((hasDerivAt_id u).const_mul (-1/2 : ℝ)).exp using 1
  · funext x
    simp only [criticalDecay, id_eq]
    congr 1
    ring
  · simp only [criticalDecay, id_eq]
    ring

private theorem density_mass (u : ℝ) :
    (∫ v in 0..u, criticalDensity v) = u - 1 + criticalDecay u := by
  have h := criticalDensity_integral (u / 2)
  have he : 2 * (u / 2) = u := by ring
  simpa only [he] using h

private theorem density_mass_continuous :
    Continuous (fun u : ℝ => ∫ v in 0..u, criticalDensity v) := by
  have he : (fun u : ℝ => ∫ v in 0..u, criticalDensity v) =
      fun u => u - 1 + criticalDecay u := funext density_mass
  rw [he]
  exact (continuous_id.sub continuous_const).add decay_continuous

private theorem prime_prefix_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable primeLogPrefix volume a b := by
  rcases le_total a b with hab | hba
  · have hi := primeLogPrefix_mul_deriv_intervalIntegrable a b hab
      (fun t : ℝ => t) contDiff_id
    simpa only [deriv_id'', mul_one] using hi
  · have hi := primeLogPrefix_mul_deriv_intervalIntegrable b a hba
      (fun t : ℝ => t) contDiff_id
    have hir : IntervalIntegrable primeLogPrefix volume b a := by
      simpa only [deriv_id'', mul_one] using hi
    exact hir.symm

/-- The endpoint correction is literal and valid on every real coordinate. -/
theorem criticalCumulativeDiscrepancy_eq (u : ℝ) :
    criticalCumulativeDiscrepancy u = primeLogError u + 1 - criticalDecay u := by
  rw [criticalCumulativeDiscrepancy, density_mass]
  unfold primeLogError
  ring

/-- The existing scale endpoint discrepancy is exactly this primitive's integrand at `2A`. -/
theorem criticalCumulativeDiscrepancy_at_upper (A : ℝ) :
    criticalCumulativeDiscrepancy (2 * A) = criticalDensityPrefixDiscrepancy A := rfl

/-- The closed prefix is anchored below the first prime at coordinate zero. -/
theorem criticalCumulativeDiscrepancy_at_zero : criticalCumulativeDiscrepancy 0 = 0 := by
  simp [criticalCumulativeDiscrepancy, primeLogPrefix_zero]

/-- Every finite oriented interval is integrable, without a continuity claim at prime atoms. -/
theorem criticalCumulativeDiscrepancy_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable criticalCumulativeDiscrepancy volume a b := by
  exact (prime_prefix_intervalIntegrable a b).sub
    (density_mass_continuous.intervalIntegrable (μ := volume) a b)

/-- The primitive is anchored at zero. -/
theorem criticalDiscrepancyPrimitive_at_zero : criticalDiscrepancyPrimitive 0 = 0 := by
  simp [criticalDiscrepancyPrimitive]

/-- Integration gives global continuity despite the integrand's prime atoms. -/
theorem criticalDiscrepancyPrimitive_continuous : Continuous criticalDiscrepancyPrimitive :=
  intervalIntegral.continuous_primitive criticalCumulativeDiscrepancy_intervalIntegrable 0

/-- On each finite interval the literal primitive is absolutely continuous. -/
theorem criticalDiscrepancyPrimitive_absolutelyContinuous (L : ℝ) :
    AbsolutelyContinuousOnInterval criticalDiscrepancyPrimitive 0 L := by
  have hi := criticalCumulativeDiscrepancy_intervalIntegrable 0 L
  exact hi.absolutelyContinuousOnInterval_intervalIntegral (by simp)

/-- The actual closed-step discrepancy is the derivative almost everywhere, not at every atom. -/
theorem criticalDiscrepancyPrimitive_ae_hasDerivAt (L : ℝ) :
    ∀ᵐ u ∂volume, u ∈ uIcc (0 : ℝ) L →
      HasDerivAt criticalDiscrepancyPrimitive (criticalCumulativeDiscrepancy u) u := by
  have hi := criticalCumulativeDiscrepancy_intervalIntegrable 0 L
  filter_upwards [hi.ae_hasDerivAt_integral] with u hu
  intro huL
  exact hu huL 0 (by simp)

/-- The oriented primitive increment retains both endpoints. -/
theorem criticalDiscrepancyPrimitive_sub (u v : ℝ) :
    criticalDiscrepancyPrimitive v - criticalDiscrepancyPrimitive u =
      ∫ t in u..v, criticalCumulativeDiscrepancy t :=
  intervalIntegral.integral_interval_sub_left
    (criticalCumulativeDiscrepancy_intervalIntegrable 0 v)
    (criticalCumulativeDiscrepancy_intervalIntegrable 0 u)

private theorem density_mass_integral (u : ℝ) :
    (∫ v in 0..u, ∫ t in 0..v, criticalDensity t) =
      u ^ 2 / 2 - u - 2 * criticalDecay u + 2 := by
  have hd (v : ℝ) : HasDerivAt
      (fun x : ℝ => x ^ 2 / 2 - x - 2 * criticalDecay x)
      (v - 1 + criticalDecay v) v := by
    have hp := (((hasDerivAt_id v).pow 2).div_const 2).sub (hasDerivAt_id v)
    convert hp.sub ((decay_hasDerivAt v).const_mul 2) using 1 <;>
      first | rfl | (dsimp only [id_eq]; ring)
  have hc : Continuous (fun v : ℝ => v - 1 + criticalDecay v) :=
    (continuous_id.sub continuous_const).add decay_continuous
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun v _ => hd v) (hc.intervalIntegrable (μ := volume) 0 u)
  have hz : criticalDecay 0 = 1 := by simp [criticalDecay]
  rw [hz] at hi
  simp only [sub_zero, mul_one] at hi
  simp_rw [density_mass]
  linarith

/-- Exact finite closed inventory formula at nonnegative coordinates.
The touching endpoint prime is present with the zero factor `u - log p`. -/
theorem criticalDiscrepancyPrimitive_eq_primeLogSum (u : ℝ) (hu : 0 ≤ u) :
    criticalDiscrepancyPrimitive u =
      primeLogSum u (fun t => u - t) - u ^ 2 / 2 + u + 2 * (criticalDecay u - 1) := by
  have hF : ContDiff ℝ 1 (fun t : ℝ => u - t) := contDiff_const.sub contDiff_id
  have hd (t : ℝ) : deriv (fun x : ℝ => u - x) t = -1 := by
    change deriv ((fun _ : ℝ => u) - id) t = -1
    simpa only [zero_sub] using ((hasDerivAt_const t u).sub (hasDerivAt_id t)).deriv
  have ha := primeLogSum_abel u hu (fun t => u - t) hF
  simp only [sub_self, zero_mul, zero_sub] at ha
  simp_rw [hd, mul_neg_one] at ha
  rw [intervalIntegral.integral_neg] at ha
  have hb := density_mass_integral u
  have he : criticalDiscrepancyPrimitive u =
      (∫ v in 0..u, primeLogPrefix v) -
        (∫ v in 0..u, ∫ t in 0..v, criticalDensity t) := by
    unfold criticalDiscrepancyPrimitive criticalCumulativeDiscrepancy
    exact intervalIntegral.integral_sub (prime_prefix_intervalIntegrable 0 u)
      (density_mass_continuous.intervalIntegrable (μ := volume) 0 u)
  rw [he, hb]
  linarith

/-- The left bridge endpoint is zero, including its total-division edge case. -/
theorem criticalDiscrepancyBridge_at_zero (A : ℝ) :
    criticalDiscrepancyBridge A 0 = 0 := by
  simp [criticalDiscrepancyBridge, criticalDiscrepancyPrimitive_at_zero]

/-- Positive source scale gives the exact zero upper endpoint. -/
theorem criticalDiscrepancyBridge_at_upper {A : ℝ} (hA : 0 < A) :
    criticalDiscrepancyBridge A (2 * A) = 0 := by
  have hn : 2 * A ≠ 0 := ne_of_gt (by linarith : 0 < 2 * A)
  simp [criticalDiscrepancyBridge, hn]

/-- The bridge remains continuous, without a classical second derivative assertion. -/
theorem criticalDiscrepancyBridge_continuous (A : ℝ) :
    Continuous (criticalDiscrepancyBridge A) := by
  exact criticalDiscrepancyPrimitive_continuous.sub
    ((continuous_id.div_const (2 * A)).mul continuous_const)

/-- The affine endpoint subtraction preserves absolute continuity on the source interval. -/
theorem criticalDiscrepancyBridge_absolutelyContinuous (A : ℝ) :
    AbsolutelyContinuousOnInterval (criticalDiscrepancyBridge A) 0 (2 * A) := by
  have hl : ContDiff ℝ 1 (fun u : ℝ =>
      (u / (2 * A)) * criticalDiscrepancyPrimitive (2 * A)) := by fun_prop
  exact (criticalDiscrepancyPrimitive_absolutelyContinuous (2 * A)).sub
    hl.contDiffOn.absolutelyContinuousOnInterval

/-- Its derivative retains the independent endpoint average almost everywhere. -/
theorem criticalDiscrepancyBridge_ae_hasDerivAt {A : ℝ} (hA : 0 < A) :
    ∀ᵐ u ∂volume, u ∈ uIcc (0 : ℝ) (2 * A) →
      HasDerivAt (criticalDiscrepancyBridge A)
        (criticalCumulativeDiscrepancy u -
          criticalDiscrepancyPrimitive (2 * A) / (2 * A)) u := by
  filter_upwards [criticalDiscrepancyPrimitive_ae_hasDerivAt (2 * A)] with u hu
  intro huA
  have hid := (hasDerivAt_id u).div_const (2 * A)
  have hl := hid.mul_const (criticalDiscrepancyPrimitive (2 * A))
  change HasDerivAt (fun y => criticalDiscrepancyPrimitive y -
      (y / (2 * A)) * criticalDiscrepancyPrimitive (2 * A))
    (criticalCumulativeDiscrepancy u - criticalDiscrepancyPrimitive (2 * A) / (2 * A)) u
  have he : criticalCumulativeDiscrepancy u -
      (1 / (2 * A)) * criticalDiscrepancyPrimitive (2 * A) =
      criticalCumulativeDiscrepancy u - criticalDiscrepancyPrimitive (2 * A) / (2 * A) := by
    have hn : 2 * A ≠ 0 := ne_of_gt (by linarith : 0 < 2 * A)
    field_simp [hn]
  rw [← he]
  exact (hu huA).sub hl

end FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy
```
