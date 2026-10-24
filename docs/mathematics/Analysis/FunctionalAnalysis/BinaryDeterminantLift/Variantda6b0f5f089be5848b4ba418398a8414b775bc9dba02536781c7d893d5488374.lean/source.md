# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BinaryDeterminantLift.Variantda6b0f5f089be5848b4ba418398a8414b775bc9dba02536781c7d893d5488374

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fa1290feddd1455e9d0a6f34c1447a33d961d019` · SHA-256 `da6b0f5f089be5848b4ba418398a8414b775bc9dba02536781c7d893d5488374`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.SpectralDeterminantLift
import Folder.GrandChallenge.Complexity.RecursiveRuleClosure

/-!
# Folder.GrandChallenge.Complexity.BinaryDeterminantLift

Radiation role: research-boundary
BinaryMatrix spine: This module records determinant lift data for finite BinaryMatrixStream frames.
Ontology: complexity_binary_determinant_lift
Pivot role: determinant
Zero typology: determinant-glitch
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace Complexity

/--
Binary-frame determinant atlas.

This is the finite BinaryMatrixStream-facing version of the precomputed
spectral determinant atlas. The move log and pivot path fields are essential:
matching local determinant values alone is not proof-relevant.
-/
structure BinarySpectralDeterminantAtlas where
  frame : LeanProjectFiniteFrame
  determinantAtlasLabel : String
  precomputedLocalData : Prop
  precomputedLocalData_certified : precomputedLocalData
  moveLogCompatible : Prop
  moveLogCompatible_certified : moveLogCompatible
  pivotPathIndependent : Prop
  pivotPathIndependent_certified : pivotPathIndependent
  regularizationCompatible : Prop
  regularizationCompatible_certified : regularizationCompatible
  sourceLabel : String

/--
Binary determinant quasi-isomorphism lift.

The agreement field states that the finite precomputed atlas and the
determinant-preserving quasi-isomorphism presentation compute the same lifted
determinant invariant, when supplied.
-/
structure BinaryDeterminantQuasiIsoLift where
  frame : LeanProjectFiniteFrame
  determinantAtlas : BinarySpectralDeterminantAtlas
  spectralLift : CanonicalPath.SpectralDeterminantLift
  quasiIsoLiftExists : Prop
  quasiIsoLiftExists_certified : quasiIsoLiftExists
  atlasAndQuasiIsoAgree : Prop
  atlasAndQuasiIsoAgree_certified : atlasAndQuasiIsoAgree
  determinantGlitchDetected : Prop
  determinantGlitchDetected_certified : determinantGlitchDetected
  sourceLabel : String

theorem binary_determinant_atlas_local_data_if_supplied
    (A : BinarySpectralDeterminantAtlas) :
    A.precomputedLocalData :=
  A.precomputedLocalData_certified

theorem binary_determinant_atlas_move_log_if_supplied
    (A : BinarySpectralDeterminantAtlas) :
    A.moveLogCompatible :=
  A.moveLogCompatible_certified

theorem binary_determinant_atlas_path_independent_if_supplied
    (A : BinarySpectralDeterminantAtlas) :
    A.pivotPathIndependent :=
  A.pivotPathIndependent_certified

theorem binary_determinant_atlas_regularization_if_supplied
    (A : BinarySpectralDeterminantAtlas) :
    A.regularizationCompatible :=
  A.regularizationCompatible_certified

theorem binary_determinant_quasi_iso_lift_exists_if_supplied
    (L : BinaryDeterminantQuasiIsoLift) :
    L.quasiIsoLiftExists :=
  L.quasiIsoLiftExists_certified

theorem binary_determinant_lift_if_supplied
    (L : BinaryDeterminantQuasiIsoLift) :
    L.atlasAndQuasiIsoAgree :=
  L.atlasAndQuasiIsoAgree_certified

theorem binary_determinant_glitch_detected_if_supplied
    (L : BinaryDeterminantQuasiIsoLift) :
    L.determinantGlitchDetected :=
  L.determinantGlitchDetected_certified

end Complexity
end GrandChallenge
end Folder
```
