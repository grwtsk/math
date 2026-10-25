# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Map.Variant7c010bf2e2636a894c3b7d1970d1460cea4a15996edcbc3b39016596c5bdf173

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ca8ac16ffe3210a187df5ded5177fbf635dcfa6` · SHA-256 `eb59b03d141fdf962c1f534503462dbbf4906bd227b22ac56b8407a9639b8abe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofDisposition.Variant56be85dbe2043be394067077f550fc7646405ac7077ff6a94155836e5b51f5ef","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"56be85dbe2043be394067077f550fc7646405ac7077ff6a94155836e5b51f5ef","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ProofDisposition.Variant56be85dbe2043be394067077f550fc7646405ac7077ff6a94155836e5b51f5ef","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"56be85dbe2043be394067077f550fc7646405ac7077ff6a94155836e5b51f5ef","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/Stability/Map.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std

/-!
# Reflective construction maps

This namespace is deliberately independent of runtime ownership.  A map is a
total Lean function, while its declared operational domain and invariant-domain
evidence remain explicit data.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofDisposition.Variant56be85dbe2043be394067077f550fc7646405ac7077ff6a94155836e5b51f5ef

namespace Mathematics.Stability

abbrev StableId := String

inductive ProofDisposition
  | proved
  | open
  | refuted
  deriving DecidableEq, Repr

inductive StabilityUnknown
  | invariantDomain
  | fixedPointExistence
  | fixedPointUniqueness
  | derivativeBound
  | contractionMargin
  | inverseConditioning
  | logarithmDomain
  | logarithmBranch
  | higherOrderRemainder
  | residualFloor
  | basinMembership
  | expansionLowerBound
  | escapeSet
  | periodicOrbit
  | cycleLength
  | cycleMultiplier
  | dampingPreservation
  | dampingContraction
  | defectPotentialCompleteness
  | pathGain
  | globalConvergence
  | verification
  | correctionValidity
  | periodicStability
  | terminalBoundary
  deriving DecidableEq, Repr

structure DeclaredDomain (X : Type) where
  contains : X → Prop

structure ReflectiveMap (X : Type) where
  mapId : StableId
  apply : X → X
  domain : DeclaredDomain X

def ReflectiveMap.mapsDeclaredDomain
    {X : Type}
    (construction : ReflectiveMap X) : Prop :=
  ∀ x, construction.domain.contains x →
    construction.domain.contains (construction.apply x)

structure InvariantDomainCertificate
    {X : Type}
    (construction : ReflectiveMap X) where
  invariant : construction.mapsDeclaredDomain

theorem construction_map_is_total
    {X : Type}
    (construction : ReflectiveMap X)
    (x : X) :
    ∃ y, construction.apply x = y :=
  ⟨construction.apply x, rfl⟩

def iterate
    {X : Type}
    (construction : X → X) :
    Nat → X → X
  | 0, x => x
  | n + 1, x => construction (iterate construction n x)

@[simp] theorem iterate_zero
    {X : Type}
    (construction : X → X)
    (x : X) :
    iterate construction 0 x = x :=
  rfl

@[simp] theorem iterate_succ
    {X : Type}
    (construction : X → X)
    (n : Nat)
    (x : X) :
    iterate construction (n + 1) x =
      construction (iterate construction n x) :=
  rfl

structure OpenObligation where
  obligationId : StableId
  unknown : StabilityUnknown
  statement : Prop
  disposition : ProofDisposition

end Mathematics.Stability
```
