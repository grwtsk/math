-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.StableInvariantTrace.Variantec6d53f1eef022067c31d3cf7b418d83e3bfe9eb2e95b4fb8a42c4ff66de9ae8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ec6d53f1eef022067c31d3cf7b418d83e3bfe9eb2e95b4fb8a42c4ff66de9ae8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.StableInvariantTrace.Variantec6d53f1eef022067c31d3cf7b418d83e3bfe9eb2e95b4fb8a42c4ff66de9ae8","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"ec6d53f1eef022067c31d3cf7b418d83e3bfe9eb2e95b4fb8a42c4ff66de9ae8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/StratifiedBoundary/Trace/StableInvariantTrace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Abstract stable invariant trace laws

The carrier operations are explicit fields so a cylinder trace can expose
exactly which algebraic structure has descended from its finite cuts.
-/


namespace GRWTSK.Algebra.StableInvariantTrace.Variantec6d53f1eef022067c31d3cf7b418d83e3bfe9eb2e95b4fb8a42c4ff66de9ae8

namespace Mathematics.StratifiedBoundary.Trace

universe uAlgebra

structure StableInvariantTrace
    (Algebra : Type uAlgebra) where
  unit : Algebra
  multiply : Algebra → Algebra → Algebra
  star : Algebra → Algebra
  trace : Algebra → ℂ
  normalized :
    trace unit = 1
  cyclic :
    ∀ left right,
      trace (multiply left right) =
        trace (multiply right left)
  starPreserving :
    ∀ observable,
      trace (star observable) =
        star (trace observable)
  positiveReal :
    ∀ observable,
      0 ≤
        (trace
          (multiply
            (star observable)
            observable)).re
  positiveImaginaryZero :
    ∀ observable,
      (trace
        (multiply
          (star observable)
          observable)).im = 0

theorem StableInvariantTrace.trace_tracial
    {Algebra : Type uAlgebra}
    (stable : StableInvariantTrace Algebra)
    (left right : Algebra) :
    stable.trace
        (stable.multiply left right) =
      stable.trace
        (stable.multiply right left) :=
  stable.cyclic left right

theorem StableInvariantTrace.trace_positive
    {Algebra : Type uAlgebra}
    (stable : StableInvariantTrace Algebra)
    (observable : Algebra) :
    0 ≤
      (stable.trace
        (stable.multiply
          (stable.star observable)
          observable)).re :=
  stable.positiveReal observable

end Mathematics.StratifiedBoundary.Trace
