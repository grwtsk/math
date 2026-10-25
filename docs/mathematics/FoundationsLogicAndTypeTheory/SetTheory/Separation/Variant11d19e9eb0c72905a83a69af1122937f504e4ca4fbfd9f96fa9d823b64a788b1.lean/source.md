# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Separation.Variant11d19e9eb0c72905a83a69af1122937f504e4ca4fbfd9f96fa9d823b64a788b1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b0e1f037494727f450b22fec741a06534f9392a` · SHA-256 `cfb7676e219cb6c78891f59ab47880c92226fd436c457e6bcc34c554b669720d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.StratifiedLimitObjects.Variant66bc3a1cbbb783711410c5e339f6c0cdf88be36c3ec785ea90b4898a40cb04c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"66bc3a1cbbb783711410c5e339f6c0cdf88be36c3ec785ea90b4898a40cb04c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.StratifiedLimitObjects.Variant66bc3a1cbbb783711410c5e339f6c0cdf88be36c3ec785ea90b4898a40cb04c3","mathematical_subject":"Logic.SetTheory","original_sha256":"66bc3a1cbbb783711410c5e339f6c0cdf88be36c3ec785ea90b4898a40cb04c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/StratifiedBoundary/Separation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Boundary.LimitState
import Mathematics.StratifiedBoundary.Trace.LimitObservable

/-!
# Four-coordinate limit architecture

This bundle is intentionally not a quotient.  The ordinal stratum, persistent
boundary-record identity and address, projective boundary state, and limit
spectral observable remain independently typed coordinates.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.StratifiedLimitObjects.Variant66bc3a1cbbb783711410c5e339f6c0cdf88be36c3ec785ea90b4898a40cb04c3

namespace Mathematics.StratifiedBoundary

open Mathematics.StratifiedBoundary.Boundary
open Mathematics.StratifiedBoundary.Frontier
open Mathematics.StratifiedBoundary.OrdinalTally
open Mathematics.StratifiedBoundary.Trace

universe uScale uTest uSchedule uPersistent

structure StratifiedLimitObjects
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule)
    (PersistentId : Type uPersistent) where
  ordinalStratum :
    StratumBoundaryIndex limits
  boundaryAddress :
    BoundaryAddress
  persistentIdentity :
    PersistentId
  projectiveBoundaryState :
    LimitBoundaryState system
  addressMatchesProjectiveState : Prop
  addressCompatibilityProof :
    addressMatchesProjectiveState
  limitSpectralObservable :
    TraceObservableLimitCertificate system
  spectralObservableDerivedFromFiniteTraces : Prop
  spectralOriginProof :
    spectralObservableDerivedFromFiniteTraces

namespace StratifiedLimitObjects

def boundaryCode
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {PersistentId : Type uPersistent}
    (objects :
      StratifiedLimitObjects system PersistentId) :
    LimitBoundaryCode PersistentId where
  stratumBoundary :=
    objects.ordinalStratum.value
  address := objects.boundaryAddress
  persistentId := objects.persistentIdentity

def authoritativeEffect
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {PersistentId : Type uPersistent}
    (_objects :
      StratifiedLimitObjects system PersistentId) :
    Bool :=
  false

@[simp] theorem nonauthoritative
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {PersistentId : Type uPersistent}
    (objects :
      StratifiedLimitObjects system PersistentId) :
    objects.authoritativeEffect = false :=
  rfl

end StratifiedLimitObjects

end Mathematics.StratifiedBoundary
```
