# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Bitfield.Variant098b6f8586b6b464d9c31c94a9d6754e7ef7d40ecfb775a6b53c7dd6109bbffc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c082b15d9acfaa3d822c5bdba737217a2f347d5f` · SHA-256 `30abf815859f2192accab780a74a92389a7024544e40fd97e5c58311769effee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.ProofDisposition.Variant59defd17787cf33798d31d5ccc19e14ea46bdd31a566bc9c8f31843301ad0eef","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"59defd17787cf33798d31d5ccc19e14ea46bdd31a566bc9c8f31843301ad0eef","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ProofDisposition.Variant59defd17787cf33798d31d5ccc19e14ea46bdd31a566bc9c8f31843301ad0eef","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"59defd17787cf33798d31d5ccc19e14ea46bdd31a566bc9c8f31843301ad0eef","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SpectralClosure/Bitfield.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std

/-!
# Registered finite bitfields

The spectral-closure bitfield is finite by construction.  Its coordinates are
not anonymous booleans: every coordinate carries a source locus, meaning,
authority class, admissibility rule reference, metric weight, event reference,
and an explicit unresolved flag.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.ProofDisposition.Variant59defd17787cf33798d31d5ccc19e14ea46bdd31a566bc9c8f31843301ad0eef

namespace Mathematics.SpectralClosure

abbrev SpectralId := String
abbrev Bitfield (width : Nat) := Fin width → Bool

inductive ProofDisposition
  | proved
  | open
  | refuted
  deriving DecidableEq, Repr

inductive CoordinateAuthority
  | documentary
  | proposalOnly
  | ownerGated
  deriving DecidableEq, Repr

inductive WeightKind
  | semanticImpact
  | authorityImpact
  | proofDependency
  | runtimeCost
  | privacyImpact
  | spectralInfluence
  deriving DecidableEq, Repr

structure BitCoordinate (width : Nat) where
  coordinate : Fin width
  coordinateId : SpectralId
  sourceGraphLocus : SpectralId
  semanticInterpretation : String
  authorityClass : CoordinateAuthority
  admissibilityRuleRef : SpectralId
  weightKind : WeightKind
  positiveWeightNumerator : Nat
  positiveWeightDenominator : Nat
  numeratorPositive : 0 < positiveWeightNumerator
  denominatorPositive : 0 < positiveWeightDenominator
  sourceEventRef : SpectralId
  unresolved : Bool

structure CoordinateRegistry (width : Nat) where
  lookup : Fin width → BitCoordinate width
  indexed : ∀ coordinate, (lookup coordinate).coordinate = coordinate

def AdmissibilityMask (width : Nat) :=
  Bitfield width → Prop

def flipAt
    {width : Nat}
    (field : Bitfield width)
    (coordinate : Fin width) :
    Bitfield width :=
  fun candidate =>
    if candidate = coordinate then !(field candidate) else field candidate

@[simp] theorem flipAt_selected
    {width : Nat}
    (field : Bitfield width)
    (coordinate : Fin width) :
    flipAt field coordinate coordinate = !(field coordinate) := by
  simp [flipAt]

theorem flipAt_other
    {width : Nat}
    (field : Bitfield width)
    (coordinate other : Fin width)
    (different : other ≠ coordinate) :
    flipAt field coordinate other = field other := by
  simp [flipAt, different]

@[simp] theorem flipAt_involutive
    {width : Nat}
    (field : Bitfield width)
    (coordinate : Fin width) :
    flipAt (flipAt field coordinate) coordinate = field := by
  funext candidate
  by_cases same : candidate = coordinate
  · subst candidate
    simp [flipAt]
  · simp [flipAt, same]

theorem every_coordinate_has_registered_semantics
    {width : Nat}
    (registry : CoordinateRegistry width)
    (coordinate : Fin width) :
    ∃ record,
      record = registry.lookup coordinate ∧
      record.coordinate = coordinate :=
  ⟨registry.lookup coordinate, rfl, registry.indexed coordinate⟩

end Mathematics.SpectralClosure
```
