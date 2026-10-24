# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PresentationAdapterExamples.Variant9851f420bb15a458a5bc5f3a136657451556943bb8845b469fe91394b3d4d7b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96dcca4c76f031fc530e04291c057280245ce95f` · SHA-256 `3855b769a401e93101602001ff849f131a5a9bc98a97b4f83d959feea527a2ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ExampleRhSpineThroughBoundaryCalculus.Variant74bd8e300c6f875e209122a49b5c77adaf5f4420c92a3e5c1cb67602ef553367","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"74bd8e300c6f875e209122a49b5c77adaf5f4420c92a3e5c1cb67602ef553367","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ExampleRhSpineThroughBoundaryCalculus.Variant74bd8e300c6f875e209122a49b5c77adaf5f4420c92a3e5c1cb67602ef553367","mathematical_subject":"Analysis.Calculus","original_sha256":"74bd8e300c6f875e209122a49b5c77adaf5f4420c92a3e5c1cb67602ef553367","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/AnalyticNumber/PresentationAdapterExamples.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import AnalyticNumber.PresentationAdapter
import Presentation.SpineExamples

/-!
# Presentation adapter examples

This file is an architectural smoke test. It intentionally uses toy
propositions such as `True` to exercise routing and firewall statements. It
is not a Mathlib-backed analytic proof and is not imported by
`AnalyticNumberMathlib`.

It exercises the full route for all four spines:

  finite presentation syntax
      → spine realization certificate
      → analytic certificate
      → analytic authority token
      → analytic boundary calculus.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ExampleRhSpineThroughBoundaryCalculus.Variant74bd8e300c6f875e209122a49b5c77adaf5f4420c92a3e5c1cb67602ef553367

namespace AnalyticNumber
namespace PresentationAdapterExamples

open Presentation.SpineExamples

theorem example_rh_spine_through_boundary_calculus :
    exampleRHSpinePresentation.claimStatement :=
  PresentationAdapter.spine_realization_through_boundary_calculus
    (toyRealizationCertificate exampleRHSpinePresentation rfl)

theorem example_trace_formula_spine_through_boundary_calculus :
    exampleTraceFormulaSpinePresentation.claimStatement :=
  PresentationAdapter.spine_realization_through_boundary_calculus
    (toyRealizationCertificate exampleTraceFormulaSpinePresentation rfl)

theorem example_langlands_spine_through_boundary_calculus :
    exampleLanglandsSpinePresentation.claimStatement :=
  PresentationAdapter.spine_realization_through_boundary_calculus
    (toyRealizationCertificate exampleLanglandsSpinePresentation rfl)

theorem example_prismatic_spine_through_boundary_calculus :
    examplePrismaticSpinePresentation.claimStatement :=
  PresentationAdapter.spine_realization_through_boundary_calculus
    (toyRealizationCertificate examplePrismaticSpinePresentation rfl)

/-- Raw toy presentations remain non-authority even with the adapter
imported. -/
theorem example_raw_presentations_still_not_authority :
    ¬ Presentation.SpinePresentationOwnsClaim exampleRHSpinePresentation ∧
      ¬ Presentation.SpinePresentationOwnsClaim
          examplePrismaticSpinePresentation :=
  ⟨PresentationAdapter.raw_spine_presentation_not_analytic_authority _,
    PresentationAdapter.raw_spine_presentation_not_analytic_authority _⟩

end PresentationAdapterExamples
end AnalyticNumber
```
