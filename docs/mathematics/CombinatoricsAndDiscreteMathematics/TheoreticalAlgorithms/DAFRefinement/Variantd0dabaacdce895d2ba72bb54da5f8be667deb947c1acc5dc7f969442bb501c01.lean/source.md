# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DAFRefinement.Variantd0dabaacdce895d2ba72bb54da5f8be667deb947c1acc5dc7f969442bb501c01

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a51d8c9c2263c5ec8b3d266e661d1d6265da503b` · SHA-256 `c0d0d57325c83515b01b4b64810886aaf206c8450e43bee116af0761c2fe4022`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MapSpecSystem.Variantad0b4db44ad472c8bf8b9b20bc17ee52adc40343a5951a7b6f0f19ab05d3300b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ad0b4db44ad472c8bf8b9b20bc17ee52adc40343a5951a7b6f0f19ab05d3300b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MapSpecSystem.Variantad0b4db44ad472c8bf8b9b20bc17ee52adc40343a5951a7b6f0f19ab05d3300b","mathematical_subject":"Computation.DataStructures","original_sha256":"ad0b4db44ad472c8bf8b9b20bc17ee52adc40343a5951a7b6f0f19ab05d3300b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Adapters/DAFRefinement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Refinement
import BitMatrix.Core.Basic

/-!
# Binary-matrix instance of framework refinement

The array-backed `BitMatrix.ArrayBacked` representation is connected to declarative
`BitMatrix` through `toMatrix`.  This module packages the existing unary refinement
theorem as a `DAF.Refinement`: validity is intrinsic in the dependent array
size field, abstraction is `toMatrix`, and optimized mapping commutes with the
declarative operation.

This does not identify raw array structure or proof fields observationally;
implementation values are compared only through their declarative meaning.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MapSpecSystem.Variantad0b4db44ad472c8bf8b9b20bc17ee52adc40343a5951a7b6f0f19ab05d3300b

namespace BitMatrix.Adapters

/-- Declarative pointwise-map transition system. -/
def mapSpecSystem (m n : Nat) : DAF.System where
  Input := Bool → Bool
  State := BitMatrix m n
  Resolution := PUnit
  Observation := fun _ => BitMatrix m n
  step f matrix := BitMatrix.map f matrix
  observe := fun _ matrix => matrix

/-- Array-backed pointwise-map transition system observed through `toMatrix`. -/
def mapImplSystem (m n : Nat) : DAF.System where
  Input := Bool → Bool
  State := BitMatrix.ArrayBacked m n
  Resolution := PUnit
  Observation := fun _ => BitMatrix m n
  step f matrix := matrix.mapInPlace f
  observe := fun _ matrix => matrix.toMatrix

/-- The optimized unary matrix implementation refines its declarative system. -/
def mapRefinement (m n : Nat) :
    DAF.Refinement (mapSpecSystem m n) (mapImplSystem m n) where
  Valid := fun _ => True
  abstract := BitMatrix.ArrayBacked.toMatrix
  mapInput := id
  mapResolution := id
  mapObservation := fun _ => id
  valid_step := by intros; trivial
  step_sound := by
    intro f matrix _
    exact matrix.mapInPlace_spec f
  observe_sound := by intros; rfl

@[simp]
theorem mapRefinement_abstract
    (matrix : BitMatrix.ArrayBacked m n) :
    (mapRefinement m n).abstract matrix = matrix.toMatrix :=
  rfl

@[simp]
theorem mapRefinement_step_sound
    (f : Bool → Bool)
    (matrix : BitMatrix.ArrayBacked m n) :
    (mapRefinement m n).abstract
        ((mapImplSystem m n).step f matrix) =
      (mapSpecSystem m n).step f
        ((mapRefinement m n).abstract matrix) :=
  (mapRefinement m n).step_sound f matrix trivial

/-- Existing pointwise refinement is equality through the framework abstraction. -/
theorem refines_iff_abstract_eq
    (matrix : BitMatrix.ArrayBacked m n)
    (specification : BitMatrix m n) :
    BitMatrix.Refines matrix specification ↔
      (mapRefinement m n).abstract matrix = specification :=
  Iff.rfl

end BitMatrix.Adapters
```
