# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rounding.Variant7a9ffbcafcb0fc34857fbe226695f43ebeaf7e4ad19abf563179b1cd8b4a1926

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `abf5ce7397df7a7706e1eb0f2787ad969d8b7963` · SHA-256 `6131b22fb5bfd3dad88aa6aac01fed49b2593706ab18b8d917b385e6fd80e4f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExactRationalCoordinate.Variant2f0c22f5bdfaf073ad078acdffc2364c1e151d680bb8cb1e4875f1867bac590b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2f0c22f5bdfaf073ad078acdffc2364c1e151d680bb8cb1e4875f1867bac590b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ExactRationalCoordinate.Variant2f0c22f5bdfaf073ad078acdffc2364c1e151d680bb8cb1e4875f1867bac590b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2f0c22f5bdfaf073ad078acdffc2364c1e151d680bb8cb1e4875f1867bac590b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:0fb42e20fee1ea48f0f02cd1/workspace/lib/SurfaceCore/Surface/Core/NetworkSurgery/Rounding.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.NetworkSurgery.Identity
public import Mathlib.Tactic

/-!
# Exact half-threshold frontier quantization

The quotient/remainder witness is part of the finite input contract.  It makes
the signed numerator interpretation explicit while keeping every admission
quantity integral.  Quantization selects an index only; it contains no edit or
source-mutation operation.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExactRationalCoordinate.Variant2f0c22f5bdfaf073ad078acdffc2364c1e151d680bb8cb1e4875f1867bac590b

public section

namespace Surface.Core.NetworkSurgery

@[surface_novel]
structure ExactRationalCoordinate where
  numerator : Int
  denominator : Nat
  denominatorPositive : 0 < denominator
  quotient : Int
  remainder : Nat
  decomposition : numerator = quotient * Int.ofNat denominator + Int.ofNat remainder
  remainderLt : remainder < denominator

@[expose] def inboundRound (coordinate : ExactRationalCoordinate) : Int :=
  if 2 * coordinate.remainder < coordinate.denominator then
    coordinate.quotient
  else
    coordinate.quotient + 1

@[expose] def outboundRound (coordinate : ExactRationalCoordinate) : Int :=
  if 2 * coordinate.remainder ≤ coordinate.denominator then
    coordinate.quotient
  else
    coordinate.quotient + 1

@[surface_novel, surface_published]
theorem inboundRound_below_half (coordinate : ExactRationalCoordinate)
    (below : 2 * coordinate.remainder < coordinate.denominator) :
    inboundRound coordinate = coordinate.quotient := by
  simp [inboundRound, below]

@[surface_novel, surface_published]
theorem inboundRound_at_half_up (coordinate : ExactRationalCoordinate)
    (atHalf : 2 * coordinate.remainder = coordinate.denominator) :
    inboundRound coordinate = coordinate.quotient + 1 := by
  simp [inboundRound, atHalf]

@[surface_novel, surface_published]
theorem inboundRound_above_half (coordinate : ExactRationalCoordinate)
    (above : coordinate.denominator < 2 * coordinate.remainder) :
    inboundRound coordinate = coordinate.quotient + 1 := by
  simp [inboundRound, Nat.not_lt.mpr (Nat.le_of_lt above)]

@[surface_novel, surface_published]
theorem outboundRound_below_half (coordinate : ExactRationalCoordinate)
    (below : 2 * coordinate.remainder < coordinate.denominator) :
    outboundRound coordinate = coordinate.quotient := by
  simp [outboundRound, Nat.le_of_lt below]

@[surface_novel, surface_published]
theorem outboundRound_at_half_down (coordinate : ExactRationalCoordinate)
    (atHalf : 2 * coordinate.remainder = coordinate.denominator) :
    outboundRound coordinate = coordinate.quotient := by
  simp [outboundRound, atHalf]

@[surface_novel, surface_published]
theorem outboundRound_above_half (coordinate : ExactRationalCoordinate)
    (above : coordinate.denominator < 2 * coordinate.remainder) :
    outboundRound coordinate = coordinate.quotient + 1 := by
  simp [outboundRound, Nat.not_le.mpr above]

@[surface_novel, surface_published]
theorem inbound_rounding_result_adjacent_to_floor
    (coordinate : ExactRationalCoordinate) :
    inboundRound coordinate = coordinate.quotient ∨
      inboundRound coordinate = coordinate.quotient + 1 := by
  unfold inboundRound
  split <;> simp

@[surface_novel, surface_published]
theorem outbound_rounding_result_adjacent_to_floor
    (coordinate : ExactRationalCoordinate) :
    outboundRound coordinate = coordinate.quotient ∨
      outboundRound coordinate = coordinate.quotient + 1 := by
  unfold outboundRound
  split <;> simp

@[expose] def clampCandidateIndex (candidate : Int) (count : Nat) : Nat :=
  if count = 0 then 0
  else min candidate.toNat (count - 1)

@[surface_novel, surface_published]
theorem rounding_preserves_bounds_after_clamp
    (candidate : Int) (count : Nat) (nonempty : 0 < count) :
    clampCandidateIndex candidate count < count := by
  rw [clampCandidateIndex, if_neg (Nat.ne_of_gt nonempty)]
  exact Nat.lt_of_le_of_lt (Nat.min_le_right _ _)
    (Nat.sub_lt nonempty (by omega))

end Surface.Core.NetworkSurgery
```
