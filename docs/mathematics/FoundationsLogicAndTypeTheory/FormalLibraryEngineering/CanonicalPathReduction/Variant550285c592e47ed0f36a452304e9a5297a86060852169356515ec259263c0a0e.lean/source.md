# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CanonicalPathReduction.Variant550285c592e47ed0f36a452304e9a5297a86060852169356515ec259263c0a0e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `571a5fabb12ffe63a051e40840535b37c5ae4370` · SHA-256 `550285c592e47ed0f36a452304e9a5297a86060852169356515ec259263c0a0e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Folder.GrandChallenge.RH.CanonicalPathReduction

Radiation role: research-boundary
BinaryMatrix spine: This module records RH as a Canonical Path theorem-ladder branch.
Ontology: rh_canonical_path_reduction
Pivot role: spectral
Zero typology: off-critical
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace RH

structure RHCanonicalPathReduction where
  canonicalPathLabel : String
  pivotAtlasSupplied : Prop
  pivotAtlasSupplied_certified : pivotAtlasSupplied
  continuationQuasiIsoSupplied : Prop
  continuationQuasiIsoSupplied_certified : continuationQuasiIsoSupplied
  fixedPointTranscendencySupplied : Prop
  fixedPointTranscendencySupplied_certified :
    fixedPointTranscendencySupplied
  offCriticalObstructionSupplied : Prop
  offCriticalObstructionSupplied_certified : offCriticalObstructionSupplied
  spectralBoundaryCriterionSupplied : Prop
  spectralBoundaryCriterionSupplied_certified :
    spectralBoundaryCriterionSupplied
  sourceLabel : String

theorem rh_pivot_atlas_if_supplied
    (R : RHCanonicalPathReduction) :
    R.pivotAtlasSupplied :=
  R.pivotAtlasSupplied_certified

theorem rh_spectral_boundary_criterion_if_supplied
    (R : RHCanonicalPathReduction) :
    R.spectralBoundaryCriterionSupplied :=
  R.spectralBoundaryCriterionSupplied_certified

end RH
end GrandChallenge
end Folder
```
