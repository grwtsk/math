# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.PositiveCapacity.Variant82b161412144cd8aacbaed063c2bd671cd6a965c1e650d7e16278cd218612fc0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88d81a8447b8c69b33b28d83dce76defbe0c70cd` · SHA-256 `73a855405506eae383b9c1bf9010bcd1e265b7a01b67a309722362e72a679810`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PositiveCapacity.Variant984599a575dd3af9da4a2ce1083f231e89523ac28ab75899a501b3925ddc3c3c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"984599a575dd3af9da4a2ce1083f231e89523ac28ab75899a501b3925ddc3c3c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PositiveCapacity.Variant984599a575dd3af9da4a2ce1083f231e89523ac28ab75899a501b3925ddc3c3c","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"984599a575dd3af9da4a2ce1083f231e89523ac28ab75899a501b3925ddc3c3c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/PositiveCapacity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.OperatorOrder
import Mathematics.SemiLocalDefect.PrimeUniverse

/-!
# Positive monotone diagonal capacities

`PositiveCapacity` is abstract-first at the finite rational diagonal level.
The structure stores the exact lower bound, identity upper bound, and
monotonicity laws.  No Hardy, Sonin, transfer, or arithmetic object appears in
its definition.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PositiveCapacity.Variant984599a575dd3af9da4a2ce1083f231e89523ac28ab75899a501b3925ddc3c3c

namespace Mathematics.SemiLocalDefect

structure PositiveCapacity
    (Prime : Type u)
    (Coordinate : Type v)
    [DecidableEq Prime] where
  primeUniverse : FinitePrimeUniverse Prime
  capacityId : String
  value : Finset Prime → DiagonalOperator Coordinate
  nonnegative :
    ∀ cut,
      cut ⊆ primeUniverse.primes →
      OperatorNonnegative (value cut)
  bounded_by_identity :
    ∀ cut,
      cut ⊆ primeUniverse.primes →
      OperatorLe (value cut) (identityOperator Coordinate)
  monotone :
    ∀ source target,
      source ⊆ target →
      target ⊆ primeUniverse.primes →
      OperatorLe (value source) (value target)

def PositiveCapacity.increment
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime)
    (prime : Prime) :
    DiagonalOperator Coordinate :=
  capacity.value (insert prime cut) - capacity.value cut

def PositiveCapacity.reduced
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime) :
    DiagonalOperator Coordinate :=
  capacity.value cut - capacity.value ∅

theorem reduced_empty_zero
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate) :
    capacity.reduced ∅ = 0 := by
  funext coordinate
  simp [PositiveCapacity.reduced]

theorem capacity_increment_nonnegative
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime)
    (prime : Prime)
    (cut_in_universe : cut ⊆ capacity.primeUniverse.primes)
    (prime_registered : prime ∈ capacity.primeUniverse.primes) :
    OperatorNonnegative (capacity.increment cut prime) := by
  apply operator_increment_nonnegative
  apply capacity.monotone cut (insert prime cut)
  · exact Finset.subset_insert prime cut
  · exact Finset.insert_subset
      prime_registered
      cut_in_universe

theorem capacity_value_bounded
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime)
    (cut_in_universe : cut ⊆ capacity.primeUniverse.primes) :
    OperatorLe
      (capacity.value cut)
      (identityOperator Coordinate) :=
  capacity.bounded_by_identity cut cut_in_universe

end Mathematics.SemiLocalDefect
```
