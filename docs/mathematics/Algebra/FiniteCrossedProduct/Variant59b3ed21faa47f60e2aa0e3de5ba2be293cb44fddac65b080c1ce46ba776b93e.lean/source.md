# Complete source: GRWTSK.Algebra.FiniteCrossedProduct.Variant59b3ed21faa47f60e2aa0e3de5ba2be293cb44fddac65b080c1ce46ba776b93e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14a349cbc11f83ee2f58f90029a54662972e0054` · SHA-256 `3a465d776b11ac8eaef5f67c851090d8feb950bfaa902d416af5e71dee985b70`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.FiniteCrossedProductStableTrace.Variant8b0774f2eaae5db800b49fc3cb647f5aba828aad984b295926209750a5ae999d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8b0774f2eaae5db800b49fc3cb647f5aba828aad984b295926209750a5ae999d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.FiniteCrossedProductStableTrace.Variant8b0774f2eaae5db800b49fc3cb647f5aba828aad984b295926209750a5ae999d","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"8b0774f2eaae5db800b49fc3cb647f5aba828aad984b295926209750a5ae999d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/StratifiedBoundary/Trace/FiniteCrossedProduct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Boundary.FiniteCut
import Mathematics.StratifiedBoundary.Trace.StableInvariantTrace

/-!
# Stable trace from a finite matrix-fiber crossed product

All laws are imported from the finite Connes--bitfield realization carried by
the cut.  The ordinal index contributes no trace law.
-/


namespace GRWTSK.Algebra.FiniteCrossedProductStableTrace.Variant8b0774f2eaae5db800b49fc3cb647f5aba828aad984b295926209750a5ae999d

namespace Mathematics.StratifiedBoundary.Trace

open Mathematics.ConnesBitfield
open Mathematics.StratifiedBoundary.Boundary
open Mathematics.StratifiedBoundary.OrdinalTally

universe uScale uTest uSchedule

noncomputable def finiteCrossedProductStableTrace
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule) :
    StableInvariantTrace cut.Algebra where
  unit :=
    matrixFiberCrossedProductUnit
      cut.Automorphism
      cut.closure.spectral.dim
  multiply :=
    matrixFiberCrossedProductMultiply
      cut.closure.matrixFiberCrossedProduct.fiberAction
  star :=
    matrixFiberCrossedProductStar
      cut.closure.matrixFiberCrossedProduct.fiberAction
  trace :=
    canonicalMatrixFiberCrossedProductTrace
  normalized :=
    cut.closure.matrixFiberCrossedProduct.laws
      .canonicalTraceNormalized
  cyclic :=
    cut.closure.matrixFiberCrossedProduct.laws
      .canonicalTraceCyclic
  starPreserving :=
    cut.closure.matrixFiberCrossedProduct.laws
      .canonicalTraceStar
  positiveReal :=
    cut.closure.matrixFiberCrossedProduct.laws
      .canonicalTracePositiveReal
  positiveImaginaryZero :=
    cut.closure.matrixFiberCrossedProduct.laws
      .canonicalTracePositiveImaginaryZero

theorem finite_stable_trace_is_canonical
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule)
    (observable : cut.Algebra) :
    (finiteCrossedProductStableTrace cut).trace
        observable =
      cut.stableTrace observable :=
  rfl

end Mathematics.StratifiedBoundary.Trace
```
