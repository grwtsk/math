# Complete source: GRWTSK.Algebra.InductiveLimit.Variantd5f533e959bf63ef98d2640a1626cbef31a77294c1b0e78d18de70493ceca676

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e033374b7266305cc6676d42d3253ba7800885fa` · SHA-256 `b9215e17fada0f468fc5062608845fb51e632b96a402c7e4290fddce048efb73`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.InductiveLimitAlgebraCertificate.Variantc60aba791de2afd540b87c1e16fa4cc2dd5c023809ba55bcb4719bd71689030e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c60aba791de2afd540b87c1e16fa4cc2dd5c023809ba55bcb4719bd71689030e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.InductiveLimitAlgebraCertificate.Variantc60aba791de2afd540b87c1e16fa4cc2dd5c023809ba55bcb4719bd71689030e","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"c60aba791de2afd540b87c1e16fa4cc2dd5c023809ba55bcb4719bd71689030e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/StratifiedBoundary/Trace/InductiveLimit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Trace.CylinderTrace

/-!
# Algebraic inductive-limit trace

The state spaces form an inverse system; observables form an injective direct
system.  The quotient by equality at a common later stage is the algebraic
inductive limit.  A C-star completion and trace extension require additional
boundedness certificates.
-/


namespace GRWTSK.Algebra.InductiveLimitAlgebraCertificate.Variantc60aba791de2afd540b87c1e16fa4cc2dd5c023809ba55bcb4719bd71689030e

namespace Mathematics.StratifiedBoundary.Trace

open Mathematics.StratifiedBoundary.Boundary
open Mathematics.StratifiedBoundary.OrdinalTally

universe uScale uTest uSchedule

abbrev AlgebraicInductiveLimitObservable
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {traceSystem :
      ProjectiveTraceSystem boundary}
    (equivalence :
      CylinderEquivalenceCertificate traceSystem) :=
  CylinderObservable equivalence

noncomputable def includeFiniteObservable
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {traceSystem :
      ProjectiveTraceSystem boundary}
    (equivalence :
      CylinderEquivalenceCertificate traceSystem)
    (stage : Nat)
    (observable :
      (boundary.cut stage).Algebra) :
    AlgebraicInductiveLimitObservable equivalence :=
  Quotient.mk equivalence.setoid
    ⟨stage, observable⟩

structure InductiveLimitAlgebraCertificate
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {traceSystem :
      ProjectiveTraceSystem boundary}
    (equivalence :
      CylinderEquivalenceCertificate traceSystem) where
  laws :
    CylinderTraceLawCertificate equivalence
  finiteInclusionsInjective :
    ∀ stage,
      Function.Injective
        (includeFiniteObservable
          equivalence stage)
  generatedByFiniteStages :
    ∀ observable :
        AlgebraicInductiveLimitObservable equivalence,
      ∃ (stage : Nat)
        (finiteObservable :
          (boundary.cut stage).Algebra),
        observable =
          includeFiniteObservable
            equivalence stage finiteObservable
  universalForCompatibleAlgebraMaps : Prop
  universalPropertyProof :
    universalForCompatibleAlgebraMaps

structure CompatibleTraceBoundednessCertificate
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {traceSystem :
      ProjectiveTraceSystem boundary}
    (equivalence :
      CylinderEquivalenceCertificate traceSystem) where
  norm :
    AlgebraicInductiveLimitObservable equivalence →
      ℝ
  normNonnegative :
    ∀ observable,
      0 ≤ norm observable
  traceBound : ℝ
  traceBoundNonnegative :
    0 ≤ traceBound
  bounded :
    ∀ observable,
      Complex.abs
          (limitTrace equivalence observable) ≤
        traceBound * norm observable

structure CStarTraceExtensionCertificate
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {traceSystem :
      ProjectiveTraceSystem boundary}
    {equivalence :
      CylinderEquivalenceCertificate traceSystem}
    (boundedness :
      CompatibleTraceBoundednessCertificate
        equivalence) where
  Completion : Type*
  embed :
    AlgebraicInductiveLimitObservable equivalence →
      Completion
  embedDense : Prop
  densityProof :
    embedDense
  completedTrace :
    Completion → ℂ
  extendsCylinderTrace :
    ∀ observable,
      completedTrace (embed observable) =
        limitTrace equivalence observable
  continuous : Prop
  continuityProof :
    continuous

end Mathematics.StratifiedBoundary.Trace
```
