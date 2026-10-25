/-
DistinguishedNaturalTags — exact tagged natural data, no valuation or geometric place claim
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 7b4cabd75540e55ac13ef80aa022d89f8e0da855ed10cb989568d2cd0f433cb3
Organized SHA-256: af242442a9189658fbd4aab07ac3e25fc1e7c7e90b79481760545eae961f5111
PMD: 510.0.070.020.050 inductive types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

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

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveTypes.TaggedNaturalPlaces.Variant7b4cabd75540e55a

inductive Place where
  | archimedean : Place
  | finite : Nat → Place
deriving DecidableEq, Repr

def IsArchimedeanPlace (v : Place) : Prop :=
  v = Place.archimedean

theorem archimedean_ne_finite
    (p : Nat) :
    Place.archimedean ≠ Place.finite p := by
  intro h
  cases h


end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveTypes.TaggedNaturalPlaces.Variant7b4cabd75540e55a
