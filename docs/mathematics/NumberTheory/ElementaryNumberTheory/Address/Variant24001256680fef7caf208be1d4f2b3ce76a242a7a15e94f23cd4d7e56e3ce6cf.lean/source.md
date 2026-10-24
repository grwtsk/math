# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.Address.Variant24001256680fef7caf208be1d4f2b3ce76a242a7a15e94f23cd4d7e56e3ce6cf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb460df2a4830398ffd89acd82aff398ed5363c4` · SHA-256 `c2c786ec46a70d449fddd84c36b2d2ef5cdb716385aef31b84d6d851a1cd3e52`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.SequentialPrimeSpecification.Variant6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.SequentialPrimeSpecification.Variant6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/audit/evidence-resume-workspaces/producer/fdbafaa0423a4c4347f7e99685014d246e83641877c4a213d8d057c1676522d5/workspace/Surface/BitMatrix/Carrier/Address.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Nat.Pairing
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Nat.Prime.Nth

/-!
# Sequential-prime carrier addresses

This module formalizes the finite data and coding boundary used by the
source-relative carrier construction.  It deliberately separates concrete
coding functions from certificates whose mathematical obligations (prime
enumeration, mixed-radix bijectivity, and canonical increasing enumeration)
must be supplied before those functions are treated as exact equivalences.
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.SequentialPrimeSpecification.Variant6abfc6fd9b7a50cd62e0ce159cc53e4e9f8c9002f9f25da912685090dbc0430a

namespace BitMatrix.Carrier

/-- A sequential-prime specification `(start; multiplicities)`. -/
structure SequentialPrimeSpecification where
  start : Nat
  multiplicities : List Nat
  nonempty : multiplicities ≠ []
  admissible : ∀ d ∈ multiplicities, d = 1 ∨ Nat.Prime d

namespace SequentialPrimeSpecification

/-- Total number of axes after expanding the multiplicities. -/
def rank (specification : SequentialPrimeSpecification) : Nat :=
  specification.multiplicities.sum

/-- A capability for the strictly increasing enumeration of prime numbers. -/
structure PrimeEnumeration where
  value : Nat → Nat
  prime : ∀ index, Nat.Prime (value index)
  strictlyIncreasing : StrictMono value
  canonical : ∀ index, value index = Nat.nth Nat.Prime index

end SequentialPrimeSpecification

/-- The Cantor pairing formula used by the rhetorical specification. -/
def cantorPair (left right : Nat) : Nat :=
  ((left + right) * (left + right + 1)) / 2 + right

/-- The fixed recursive code for a finite natural-number sequence. -/
def finiteSequenceCode : List Nat → Nat
  | [] => 0
  | head :: tail => 1 + cantorPair head (finiteSequenceCode tail)

/-- The fixed code of a sequential-prime specification. -/
def specificationCode (specification : SequentialPrimeSpecification) : Nat :=
  cantorPair specification.start
    (finiteSequenceCode specification.multiplicities)

/-- A finite coordinate together with the cardinality of every axis. -/
structure FiberCoordinate where
  values : List Nat
  axisCardinalities : List Nat
  sameLength : values.length = axisCardinalities.length
  inBounds : ∀ index : Fin values.length,
    values[index] < axisCardinalities[index.cast sameLength]

/-- Least-significant-coordinate-first mixed-radix evaluation. -/
def mixedRadixValues : List Nat → List Nat → Nat
  | [], _ => 0
  | _, [] => 0
  | value :: values, radix :: radices =>
      value + radix * mixedRadixValues values radices

/-- Evaluate a checked fiber coordinate in the fixed mixed-radix convention. -/
def FiberCoordinate.mixedRadix (coordinate : FiberCoordinate) : Nat :=
  mixedRadixValues coordinate.values coordinate.axisCardinalities

/--
A certificate that a selected coordinate representation is exactly the
documented mixed-radix finite equivalence.  No certificate is synthesized from
cardinality alone.
-/
structure MixedRadixEquivalence
    (Coordinate : Type)
    (cardinality : Nat)
    (formula : Coordinate → Nat) where
  equivalence : Coordinate ≃ Fin cardinality
  agreesWithFormula : ∀ coordinate,
    (equivalence coordinate).val = formula coordinate

/-- Raw address codes before restricting specification and coordinate codes. -/
structure RawCarrierAddress where
  occurrence : Nat
  specification : Nat
  coordinate : Nat
  deriving DecidableEq, Repr

/-- The nested documented address code. -/
def rawAddressCode (address : RawCarrierAddress) : Nat :=
  cantorPair address.occurrence
    (cantorPair address.specification address.coordinate)

/--
An exact canonical enumeration capability for a validated address type.
`canonicalOrder` prevents an arbitrary countability equivalence from being
misreported as the increasing enumeration of the selected address code.
-/
structure AddressEnumeration (Address : Type) where
  enumerate : Nat ≃ Address
  code : Address → Nat
  codeInjective : Function.Injective code
  canonicalOrder : ∀ left right,
    left < right ↔ code (enumerate left) < code (enumerate right)

/-- Mathlib's pairing gives an executable bijection for the raw triple type. -/
def rawAddressEquivNat : RawCarrierAddress ≃ Nat where
  toFun address :=
    Nat.pair address.occurrence
      (Nat.pair address.specification address.coordinate)
  invFun value :=
    let outer := Nat.unpair value
    let inner := Nat.unpair outer.2
    ⟨outer.1, inner.1, inner.2⟩
  left_inv address := by
    cases address
    simp
  right_inv value := by
    simp

/-- A concrete enumeration of raw triples; it is not the certified increasing
enumeration of the restricted sequential-prime carrier. -/
def rawAddressEnumeration : Nat ≃ RawCarrierAddress :=
  rawAddressEquivNat.symm

end BitMatrix.Carrier
```
