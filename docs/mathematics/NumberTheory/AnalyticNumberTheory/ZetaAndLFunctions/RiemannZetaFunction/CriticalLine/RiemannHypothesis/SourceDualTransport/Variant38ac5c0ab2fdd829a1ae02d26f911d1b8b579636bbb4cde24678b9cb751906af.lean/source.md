# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceDualTransport.Variant38ac5c0ab2fdd829a1ae02d26f911d1b8b579636bbb4cde24678b9cb751906af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd591be57340f40e688d7732e94744edf9f6ec60` · SHA-256 `8b399ed0a7895d002c11367ff0ef628489d65f94101392c2000e16fb91f9b998`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AngleLoopInverse.Variant3f758315f174376b90fe24475fe4d4fa13df0ac5a93371d012040750399df7b0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3f758315f174376b90fe24475fe4d4fa13df0ac5a93371d012040750399df7b0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.AngleLoopInverse.Variant3f758315f174376b90fe24475fe4d4fa13df0ac5a93371d012040750399df7b0","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"3f758315f174376b90fe24475fe4d4fa13df0ac5a93371d012040750399df7b0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/SourceDualTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceDualRotation
import FormalResearch.PositiveAtlas.Spectral.FiniteCommonJTransport

/-!
# Ordered common-generator transport on the actual source L² space

This binds generic ordered-loop algebra to the actual Fourier-sign rotation
group. Angles are independently supplied; this is not a construction of
arithmetic edges, a refinement transport, or a uniform signed work budget.

Author: grwtsk contributors. Developed with OpenAI Codex; checked by Lean.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AngleLoopInverse.Variant3f758315f174376b90fe24475fe4d4fa13df0ac5a93371d012040750399df7b0

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceDualTransport

open SourceReflectionDuality SourceDualRotation
open FormalResearch.PositiveAtlas.Spectral
open FiniteCommonJTransport

/-- The actual common-J rotation family obeys dual inverse transport in frozen order. -/
theorem angle_loop_inverse (θ : ℕ → ℝ) (n k : ℕ) :
    angularSignDuality * orderedProduct (fun i => angleRotation (θ i)) n k *
      angularSignDuality⁻¹ = (orderedProduct (fun i => angleRotation (θ i)) n k)⁻¹ :=
  orderedProduct_sign_inverse _ angularSignDuality
    (fun i j => angleRotation_commute (θ i) (θ j))
    (fun i => angleRotation_sign_conjugation (θ i)) n k

/-- Site-based gauges retain the two endpoints on the actual L² isometry group. -/
theorem actual_site_loop_gauge {V : Type*} (θ : ℕ → ℝ) (p : ℕ → V)
    (H : V → ComplexL2 ≃ₗᵢ[ℂ] ComplexL2) (n k : ℕ) (hp : p (n + k) = p n) :
    orderedProduct (siteGauge (fun i => angleRotation (θ i)) p H) n k =
      H (p n) * orderedProduct (fun i => angleRotation (θ i)) n k * (H (p n))⁻¹ :=
  site_loop_gauge _ p H n k hp

/-- Pure actual-space chart changes still have identity round trip. -/
theorem actual_chart_loop_identity {V : Type*} (p : ℕ → V)
    (H : V → ComplexL2 ≃ₗᵢ[ℂ] ComplexL2) (n k : ℕ) (hp : p (n + k) = p n) :
    orderedProduct (chartEdges (H ∘ p)) n k = 1 :=
  chart_loop_identity p H n k hp

end FormalResearch.RiemannHypothesis.SourceDualTransport
```
