# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Cofinal.Variantfa84a45b0aec340956ad746433156c0fded907d177580b2eaf62bfe0213104f9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `caf79fdb1a5a39e87b2f3ad9e84209e729ea3c19` · SHA-256 `a308d71130bf35a6624995d710b58073554102b75cb0e2e0bce8d706a0d70bd0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.CountingMeasure.Variant8b17450298227175e7939db179e27e1fb5e4cbdeeac577b31bc07168ac875516","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8b17450298227175e7939db179e27e1fb5e4cbdeeac577b31bc07168ac875516","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CountingMeasure.Variant8b17450298227175e7939db179e27e1fb5e4cbdeeac577b31bc07168ac875516","mathematical_subject":"Foundations.Unclassified","original_sha256":"8b17450298227175e7939db179e27e1fb5e4cbdeeac577b31bc07168ac875516","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/RHIsolation/Cofinal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.RHIsolation.SpectralClosure

/-!
# Cofinal divisor-measure route

No literal limiting operator is required.  Exact finite support equality,
critical-line spectral support, and cofinal analytic coverage suffice.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.CountingMeasure.Variant8b17450298227175e7939db179e27e1fb5e4cbdeeac577b31bc07168ac875516

namespace Mathematics.RHIsolation

structure CountingMeasure where
  support : Set ℂ
  multiplicity : ℂ → Nat

def RiemannHypothesisFor
    (xi : ℂ → ℂ) : Prop :=
  ∀ z,
    xi z = 0 →
    0 < z.re →
    z.re < 1 →
    0 < z.im →
    z.re = (1 : ℝ) / 2

structure CofinalHeightSystem
    (xi : ℂ → ℂ) where
  height : Nat → ℝ
  strictMono : StrictMono height
  tendsToInfinity : Prop
  tendsToInfinityProof : tendsToInfinity
  cut : Nat → CriticalStripCut
  analyticMeasure :
    Nat → CountingMeasure
  spectralMeasure :
    Nat → CountingMeasure
  finiteEquality :
    ∀ index,
      analyticMeasure index =
        spectralMeasure index
  restrictionCompatible : Prop
  restrictionCompatibleProof :
    restrictionCompatible
  completeCofinalCoverage :
    ∀ z,
      xi z = 0 →
      0 < z.re →
      z.re < 1 →
      0 < z.im →
      ∃ index,
        z ∈ (analyticMeasure index).support
  spectralSupport :
    ∀ index z,
      z ∈ (spectralMeasure index).support →
      z.re = (1 : ℝ) / 2

theorem cofinal_measure_equality_implies_RH
    {xi : ℂ → ℂ}
    (system : CofinalHeightSystem xi) :
    RiemannHypothesisFor xi := by
  intro z zZero realPositive realLtOne imagPositive
  obtain ⟨index, analyticSupport⟩ :=
    system.completeCofinalCoverage
      z zZero realPositive realLtOne imagPositive
  have spectralSupport :
      z ∈ (system.spectralMeasure index).support := by
    rw [← system.finiteEquality index]
    exact analyticSupport
  exact system.spectralSupport index z spectralSupport

end Mathematics.RHIsolation
```
