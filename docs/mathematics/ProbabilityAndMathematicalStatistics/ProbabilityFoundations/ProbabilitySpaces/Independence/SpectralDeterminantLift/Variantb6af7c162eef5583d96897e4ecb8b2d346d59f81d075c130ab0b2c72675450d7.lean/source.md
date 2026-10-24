# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.SpectralDeterminantLift.Variantb6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74903929d657028fdcab994703762bb9cdf84fb7` · SHA-256 `b6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.PivotAtlas
import Folder.CanonicalPath.ContinuationQuasiIsomorphism
import Folder.CanonicalPath.DeterminantLinePropagation

/-!
# Folder.CanonicalPath.SpectralDeterminantLift

Radiation role: research-boundary
BinaryMatrix spine: This module relates precomputed determinant atlases to determinant-preserving quasi-isomorphisms.
Ontology: spectral_determinant_lift
Pivot role: determinant
Zero typology: determinant-obstruction
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/--
A determinant value in a realization target.

This is a label-level target object. It is not a construction of a spectral
determinant, determinant of cohomology, or regularized determinant.
-/
structure SpectralDeterminantValue where
  targetLabel : String
  determinantLabel : String

/-- A pivot equipped with a local precomputed determinant value. -/
structure DeterminantPivot where
  pivot : CanonicalPivot
  determinant : SpectralDeterminantValue
  pivotLabel : String

/--
Determinant transition on an overlap path.

The move log is carried as a label because local determinant agreement is not
enough: path data is proof-relevant.
-/
structure DeterminantTransition where
  source : DeterminantPivot
  target : DeterminantPivot
  transitionLabel : String
  moveLogLabel : String
  preservesDeterminant : Prop
  preservesDeterminant_certified : preservesDeterminant

/--
Precomputed spectral determinant atlas.

This is the computational / Cech / local-pivot representation. The path,
cocycle, and regularization fields are supplied contract data.
-/
structure PrecomputedSpectralDeterminantAtlas where
  Pivot : Type
  toDetPivot : Pivot → DeterminantPivot
  transition : Pivot → Pivot → Option DeterminantTransition
  coversFrames : Prop
  coversFrames_certified : coversFrames
  cocycleCompatible : Prop
  cocycleCompatible_certified : cocycleCompatible
  pathIndependent : Prop
  pathIndependent_certified : pathIndependent
  regularizationCompatible : Prop
  regularizationCompatible_certified : regularizationCompatible
  pivotTransitionLogLabel : String
  sourceLabel : String

/--
Determinant-preserving quasi-isomorphism.

This is the categorical / derived / global representation. It is a contract
that determinant lines and spectral determinants are preserved.
-/
structure DeterminantPreservingQuasiIsomorphism where
  sourceLabel : String
  targetLabel : String
  quasiIsoLabel : String
  preservesDeterminantLine : Prop
  preservesDeterminantLine_certified : preservesDeterminantLine
  preservesSpectralDeterminant : Prop
  preservesSpectralDeterminant_certified : preservesSpectralDeterminant

/--
Lift certificate relating determinant atlas descent and quasi-isomorphism
transport.

The theorem target is that both representations compute the same global lifted
determinant class after passing to the chosen realization target.
-/
structure SpectralDeterminantLift where
  atlas : PrecomputedSpectralDeterminantAtlas
  quasiIso : DeterminantPreservingQuasiIsomorphism
  atlasDescendsToGlobalDeterminant : Prop
  atlasDescendsToGlobalDeterminant_certified :
    atlasDescendsToGlobalDeterminant
  quasiIsoComputesSameDeterminant : Prop
  quasiIsoComputesSameDeterminant_certified :
    quasiIsoComputesSameDeterminant
  twoRepresentationsAgree : Prop
  twoRepresentationsAgree_certified :
    twoRepresentationsAgree
  atlasToQuasiIso : Prop
  atlasToQuasiIso_certified : atlasToQuasiIso
  quasiIsoToAtlas : Prop
  quasiIsoToAtlas_certified : quasiIsoToAtlas
  sourceLabel : String

theorem determinant_transition_preserves_if_supplied
    (T : DeterminantTransition) :
    T.preservesDeterminant :=
  T.preservesDeterminant_certified

theorem determinant_atlas_covers_if_supplied
    (A : PrecomputedSpectralDeterminantAtlas) :
    A.coversFrames :=
  A.coversFrames_certified

theorem determinant_atlas_cocycle_if_supplied
    (A : PrecomputedSpectralDeterminantAtlas) :
    A.cocycleCompatible :=
  A.cocycleCompatible_certified

theorem determinant_atlas_path_independent_if_supplied
    (A : PrecomputedSpectralDeterminantAtlas) :
    A.pathIndependent :=
  A.pathIndependent_certified

theorem determinant_atlas_regularization_if_supplied
    (A : PrecomputedSpectralDeterminantAtlas) :
    A.regularizationCompatible :=
  A.regularizationCompatible_certified

theorem determinant_quasi_iso_preserves_line_if_supplied
    (Q : DeterminantPreservingQuasiIsomorphism) :
    Q.preservesDeterminantLine :=
  Q.preservesDeterminantLine_certified

theorem determinant_quasi_iso_preserves_spectral_if_supplied
    (Q : DeterminantPreservingQuasiIsomorphism) :
    Q.preservesSpectralDeterminant :=
  Q.preservesSpectralDeterminant_certified

theorem determinant_lift_atlas_descends_if_supplied
    (L : SpectralDeterminantLift) :
    L.atlasDescendsToGlobalDeterminant :=
  L.atlasDescendsToGlobalDeterminant_certified

theorem determinant_lift_quasi_iso_computes_same_if_supplied
    (L : SpectralDeterminantLift) :
    L.quasiIsoComputesSameDeterminant :=
  L.quasiIsoComputesSameDeterminant_certified

theorem determinant_lift_agrees_if_supplied
    (L : SpectralDeterminantLift) :
    L.twoRepresentationsAgree :=
  L.twoRepresentationsAgree_certified

theorem determinant_lift_atlas_to_quasi_iso_if_supplied
    (L : SpectralDeterminantLift) :
    L.atlasToQuasiIso :=
  L.atlasToQuasiIso_certified

theorem determinant_lift_quasi_iso_to_atlas_if_supplied
    (L : SpectralDeterminantLift) :
    L.quasiIsoToAtlas :=
  L.quasiIsoToAtlas_certified

end CanonicalPath
end Folder
```
