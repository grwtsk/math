# Complete source: GRWTSK.Algebra.FiniteCut.Variant3c3a4a042ea55e23303b22c208c755c84b03f3996d44a230390577b09016c357

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e75e58c31a606757877a26bcd1b6967f93675057` · SHA-256 `a68a5fbf6dfdadbfa05201d33a476ab912c1e54ee057b849c510f5cffcdb637f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.FiniteReflectiveCut.Variant3d6546569859df748aa963b0078ba458c5691ebe08cd3eaa65f1fadc4cbca9b8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3d6546569859df748aa963b0078ba458c5691ebe08cd3eaa65f1fadc4cbca9b8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.FiniteReflectiveCut.Variant3d6546569859df748aa963b0078ba458c5691ebe08cd3eaa65f1fadc4cbca9b8","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"3d6546569859df748aa963b0078ba458c5691ebe08cd3eaa65f1fadc4cbca9b8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/StratifiedBoundary/Boundary/FiniteCut.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.ConnesBitfield.Closure
import Mathematics.StratifiedBoundary.OrdinalTally.Stratum

/-!
# Finite reflective spectral-closure cut

Each stratum is an already certified finite Connes--bitfield closure package.
The ordinal code indexes that package; it does not manufacture any of its
proofs.
-/


namespace GRWTSK.Algebra.FiniteReflectiveCut.Variant3d6546569859df748aa963b0078ba458c5691ebe08cd3eaa65f1fadc4cbca9b8

namespace Mathematics.StratifiedBoundary.Boundary

open Mathematics.ConnesBitfield
open Mathematics.StratifiedBoundary.OrdinalTally

universe uScale uTest uSchedule

structure FiniteReflectiveCut
    (limits : LimitSemantics)
    (Scale : Type uScale)
    (TestFunction : Type uTest)
    (Schedule : Type uSchedule) where
  stratum : OrdinalStratum limits
  limitRegistry :
    CountableLimitRegistry
  stratumRegistered :
    stratum.RegisteredIn limitRegistry
  closure :
    BoundaryLawSquareRootPackage
      Scale TestFunction Schedule
  tallyPositionOrderRef : String
  tallyPositionOrderImmutable : Prop
  tallyPositionOrderProof :
    tallyPositionOrderImmutable
  stratumAssignmentCertificateId : String
  ordinalIndexAuthoritative : Bool := false
  ordinalIndexNonauthoritative :
    ordinalIndexAuthoritative = false := by
      rfl

namespace FiniteReflectiveCut

abbrev State
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule) :=
  Bitfield cut.closure.system.bits

abbrev Law
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule) :=
  cut.closure.lawCarrier.Law

abbrev Automorphism
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule) :=
  cut.closure.crossedProduct.Automorphism

abbrev Algebra
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule) :=
  MatrixFiberCrossedProductElement
    cut.closure.system
    cut.closure.crossedProduct.Automorphism
    cut.closure.spectral.dim

noncomputable def stableTrace
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule)
    (observable : cut.Algebra) : ℂ :=
  canonicalMatrixFiberCrossedProductTrace
    observable

theorem stableTrace_eq_canonical
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule)
    (observable : cut.Algebra) :
    cut.stableTrace observable =
      canonicalMatrixFiberCrossedProductTrace
        observable :=
  rfl

end FiniteReflectiveCut

end Mathematics.StratifiedBoundary.Boundary
```
