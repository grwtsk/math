# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Bitfield.Variant59defd17787cf33798d31d5ccc19e14ea46bdd31a566bc9c8f31843301ad0eef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6188ed5b51a44e2d728898fd13e9d17f69005063` · SHA-256 `59defd17787cf33798d31d5ccc19e14ea46bdd31a566bc9c8f31843301ad0eef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std

/-!
# Registered finite bitfields

The spectral-closure bitfield is finite by construction.  Its coordinates are
not anonymous booleans: every coordinate carries a source locus, meaning,
authority class, admissibility rule reference, metric weight, event reference,
and an explicit unresolved flag.
-/

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
