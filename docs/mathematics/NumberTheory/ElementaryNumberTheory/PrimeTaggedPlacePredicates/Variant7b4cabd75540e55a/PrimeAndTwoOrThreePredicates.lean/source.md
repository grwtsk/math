# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeTaggedPlacePredicates.Variant7b4cabd75540e55a.PrimeAndTwoOrThreePredicates

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b516b9219358652322e00a81e74224b311868a97` · SHA-256 `7c481ac918e71f3c80b60a8f10954785fd1d36f2e9c48033c6aa9dabcd90e7ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
PrimeAndTwoOrThreePredicates — exact tagged natural data, no valuation or geometric place claim
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 7b4cabd75540e55ac13ef80aa022d89f8e0da855ed10cb989568d2cd0f433cb3
Organized SHA-256: af242442a9189658fbd4aab07ac3e25fc1e7c7e90b79481760545eae961f5111
PMD: 510.2.010 elementary number theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveTypes.TaggedNaturalPlaces.Variant7b4cabd75540e55a.DistinguishedNaturalTags

import Folder.Basic

/-!
# Folder.AdelicInfinityTopos.Place

Radiation role: research-boundary
BinaryMatrix spine: This module indexes adelic spectral fibers rather than BinaryMatrix carriers.
Ontology: adelic.place
Pivot role: dual
Zero typology: mixed
Contract boundary: definition
Composite stack role: adelic-infinity-topos
-/

open GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveTypes.TaggedNaturalPlaces.Variant7b4cabd75540e55a

namespace GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeTaggedPlacePredicates.Variant7b4cabd75540e55a

def IsFinitePrimePlace (v : Place) : Prop :=
  ∃ p : Nat, v = Place.finite p ∧ Nat.Prime p

def IsBadTMFPrime (v : Place) : Prop :=
  v = Place.finite 2 ∨ v = Place.finite 3

theorem bad_tmf_prime_is_finite
    {v : Place}
    (h : IsBadTMFPrime v) :
    ∃ p, v = Place.finite p := by
  rcases h with h2 | h3
  · exact ⟨2, h2⟩
  · exact ⟨3, h3⟩


end GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeTaggedPlacePredicates.Variant7b4cabd75540e55a
```
