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
