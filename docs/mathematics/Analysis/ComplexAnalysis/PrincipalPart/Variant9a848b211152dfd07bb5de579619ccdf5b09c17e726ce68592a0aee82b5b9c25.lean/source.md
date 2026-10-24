# Complete source: GRWTSK.Analysis.ComplexAnalysis.PrincipalPart.Variant9a848b211152dfd07bb5de579619ccdf5b09c17e726ce68592a0aee82b5b9c25

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26cea7ab8ef95dd8302d097b63d74b05f087f2a9` · SHA-256 `0bfd7be877b256be9b7336f24f2d15c3e9f6800204da822682e7643c4edb6ff5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.ComplexAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ComplexAnalysis.NormalizedResidueCircleIntegral.Variant8cc9cff3ae69566d7fb67ce3121a37871af27a6c9d989004b3c59e5577678192","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8cc9cff3ae69566d7fb67ce3121a37871af27a6c9d989004b3c59e5577678192","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ComplexAnalysis.SourceCorpus.NormalizedResidueCircleIntegral.Variant8cc9cff3ae69566d7fb67ce3121a37871af27a6c9d989004b3c59e5577678192","mathematical_subject":"Analysis.ComplexAnalysis","original_sha256":"8cc9cff3ae69566d7fb67ce3121a37871af27a6c9d989004b3c59e5577678192","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:13782afb56735f2a5a3426c2/workspace/lib/Surface/Core/ComplexAnalysis/PrincipalPart.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ComplexAnalysis.LogDerivativeResidue
public import Mathlib.Analysis.Complex.CauchyIntegral
import Mathlib.Tactic

/-!
# Principal parts and normalized local circle integrals

The analytic-order factorization from `LogDerivativeResidue` gives an exact
principal part for a logarithmic derivative.  On every sufficiently small
positive circle, the regular part integrates to zero and the normalized
integral of the principal part is its multiplicity.

This is a local theorem.  It does not provide finite-pole excision or a
rectangle residue theorem.
-/


namespace GRWTSK.Analysis.ComplexAnalysis.NormalizedResidueCircleIntegral.Variant8cc9cff3ae69566d7fb67ce3121a37871af27a6c9d989004b3c59e5577678192

public section

namespace Surface.Core.ComplexAnalysis

noncomputable section

open Filter Set
open scoped Topology

/-- Circle integration normalized by the positive-orientation factor
`2 * pi * I`. -/
@[expose]
def normalizedResidueCircleIntegral
    (h : ℂ → ℂ) (z : ℂ) (r : ℝ) : ℂ :=
  (2 * Real.pi * Complex.I : ℂ)⁻¹ • circleIntegral h z r

namespace AnalyticAt

/-- Every sufficiently small positive circle around a finite-order analytic
zero integrates its logarithmic derivative to its multiplicity. -/
@[surface_novel, surface_published]
theorem exists_smallCircle_normalizedIntegral_logDeriv_eq_order
    {f : ℂ → ℂ} {z : ℂ}
    (hf : AnalyticAt ℂ f z)
    {n : ℕ}
    (hn : analyticOrderAt f z = n) :
    ∃ R : ℝ, 0 < R ∧
      ∀ r : ℝ, 0 < r → r < R →
        normalizedResidueCircleIntegral (logDeriv f) z r = (n : ℂ) := by
  obtain ⟨g, hg, hg0, hlog⟩ :=
    logDeriv_eventuallyEq_principalPart hf hn

  have hg_ne : ∀ᶠ w in 𝓝 z, g w ≠ 0 :=
    (hg.continuousAt.ne_iff_eventually_ne continuousAt_const).mp hg0

  have hlogN :
      ∀ᶠ w in 𝓝 z, w ≠ z →
        logDeriv f w =
          (n : ℂ) / (w - z) + logDeriv g w := by
    have h :=
      (eventually_nhdsWithin_iff
        (s := ({z} : Set ℂ)ᶜ)).mp hlog
    filter_upwards [h] with w hw
    intro hwne
    exact hw (by simpa using hwne)

  have hlocal :
      ∀ᶠ w in 𝓝 z,
        AnalyticAt ℂ g w ∧
        g w ≠ 0 ∧
        (w ≠ z →
          logDeriv f w =
            (n : ℂ) / (w - z) + logDeriv g w) := by
    filter_upwards [hg.eventually_analyticAt, hg_ne, hlogN]
      with w hga hgne hlogw
    exact ⟨hga, hgne, hlogw⟩

  obtain ⟨R, hR, hlocalR⟩ :=
    Metric.eventually_nhds_iff.mp hlocal

  refine ⟨R, hR, ?_⟩
  intro r hr hrR

  have hregAt :
      ∀ w ∈ Metric.closedBall z r,
        AnalyticAt ℂ (logDeriv g) w := by
    intro w hw
    obtain ⟨hga, hgne, -⟩ :=
      hlocalR
        (lt_of_le_of_lt (Metric.mem_closedBall.mp hw) hrR)
    simpa only [logDeriv] using hga.deriv.div hga hgne

  have hregContinuous :
      ContinuousOn (logDeriv g) (Metric.closedBall z r) :=
    fun w hw ↦ (hregAt w hw).continuousAt.continuousWithinAt

  have hregDiff :
      ∀ w ∈ Metric.ball z r \ (∅ : Set ℂ),
        DifferentiableAt ℂ (logDeriv g) w := by
    intro w hw
    exact
      (hregAt w (Metric.ball_subset_closedBall hw.1)).differentiableAt

  have hregIntegral : circleIntegral (logDeriv g) z r = 0 :=
    Complex.circleIntegral_eq_zero_of_differentiable_on_off_countable
      hr.le Set.countable_empty hregContinuous hregDiff

  have hregCI : CircleIntegrable (logDeriv g) z r :=
    (hregContinuous.mono
      Metric.sphere_subset_closedBall).circleIntegrable hr.le

  have hpoleContinuous :
      ContinuousOn
        (fun w : ℂ ↦ (n : ℂ) / (w - z))
        (Metric.sphere z r) := by
    apply continuousOn_const.div
      (continuousOn_id.sub continuousOn_const)
    intro w hw
    have hdist : dist w z = r := Metric.mem_sphere.mp hw
    apply sub_ne_zero.mpr
    intro hwz
    have hweq : w = z := by simpa only [id_eq] using hwz
    have hzero : (0 : ℝ) = r := by simpa [hweq] using hdist
    exact hr.ne' hzero.symm

  have hpoleCI :
      CircleIntegrable
        (fun w : ℂ ↦ (n : ℂ) / (w - z)) z r :=
    hpoleContinuous.circleIntegrable hr.le

  have hcircleEq :
      EqOn (logDeriv f)
        (fun w : ℂ ↦
          (n : ℂ) / (w - z) + logDeriv g w)
        (Metric.sphere z r) := by
    intro w hw
    have hdist : dist w z = r := Metric.mem_sphere.mp hw
    obtain ⟨-, -, hEq⟩ :=
      hlocalR (y := w) (by simpa only [hdist] using hrR)
    apply hEq
    intro hwz
    have hzero : (0 : ℝ) = r := by simpa [hwz] using hdist
    exact hr.ne' hzero.symm

  unfold normalizedResidueCircleIntegral
  rw [circleIntegral.integral_congr hr.le hcircleEq]
  rw [circleIntegral.integral_add hpoleCI hregCI,
    hregIntegral, add_zero]

  have hpole :
      circleIntegral
          (fun w : ℂ ↦ (n : ℂ) / (w - z)) z r =
        (n : ℂ) * (2 * Real.pi * Complex.I) := by
    simp only [div_eq_mul_inv]
    rw [circleIntegral.integral_const_mul,
      circleIntegral.integral_sub_center_inv z hr.ne']

  rw [hpole]
  simp only [smul_eq_mul]
  field_simp [Real.pi_ne_zero, Complex.I_ne_zero]

end AnalyticAt

end

end Surface.Core.ComplexAnalysis
```
