# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BinaryDeterminantLift.Variant967cce6895ade5f3aeaef033f65aa8d28a3f8ebd937dd43618b0cf4182fbac00

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40703d9f7fa9270374227c7c16e82c49fa9935de` · SHA-256 `62afdb8fbf29ab1c48f9354cb6d569d584d708613ca98bfc84c68983ec0b0e28`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BinarySpectralDeterminantAtlas.Variantda6b0f5f089be5848b4ba418398a8414b775bc9dba02536781c7d893d5488374","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"da6b0f5f089be5848b4ba418398a8414b775bc9dba02536781c7d893d5488374","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.BinarySpectralDeterminantAtlas.Variantda6b0f5f089be5848b4ba418398a8414b775bc9dba02536781c7d893d5488374","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"da6b0f5f089be5848b4ba418398a8414b775bc9dba02536781c7d893d5488374","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/GrandChallenge/Complexity/BinaryDeterminantLift.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.Analysis.FunctionalAnalysis.BinarySpectralDeterminantAtlas.Variantda6b0f5f089be5848b4ba418398a8414b775bc9dba02536781c7d893d5488374

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
