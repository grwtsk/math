# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.YonedaProfile.Variant086d6a3b08a36f621b106c523837f5961540c5d428b9725077e4a4e0d3e89d09

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4c650bcbfaa9dd2df4988aa14597ad69cc7f01c` · SHA-256 `602fa37b3fb3f4f7641d33565280567dd3878c3c8838a9531732e34d5e40f96b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CompleteMorphismProfile.Variant0b03aa3c9f9a9fb6d1f4c6496fcca8b2aec43f92f7d721c1a0e51d0dc4bc4b84","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b03aa3c9f9a9fb6d1f4c6496fcca8b2aec43f92f7d721c1a0e51d0dc4bc4b84","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CompleteMorphismProfile.Variant0b03aa3c9f9a9fb6d1f4c6496fcca8b2aec43f92f7d721c1a0e51d0dc4bc4b84","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"0b03aa3c9f9a9fb6d1f4c6496fcca8b2aec43f92f7d721c1a0e51d0dc4bc4b84","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/MobiusOntology/YonedaProfile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Terrain.YonedaProfile

/-!
# Complete morphism profiles

Only the complete representable profile has Yoneda reconstruction authority.
A finite incidence sketch or Boolean shadow does not.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CompleteMorphismProfile.Variant0b03aa3c9f9a9fb6d1f4c6496fcca8b2aec43f92f7d721c1a0e51d0dc4bc4b84

namespace Mathematics.MobiusOntology

open CategoryTheory

universe v u

variable {C : Type u} [Category.{v} C]

abbrev CompleteMorphismProfile (object : C) :=
  Mathematics.Terrain.YonedaProfile.CompleteMorphismProfile object

noncomputable def reconstructFromCompleteProfile
    {left right : C}
    (profileIso :
      CompleteMorphismProfile left ≅ CompleteMorphismProfile right) :
    left ≅ right :=
  Mathematics.Terrain.YonedaProfile.reconstructIso profileIso

theorem complete_profile_reconstructs_up_to_iso
    (left right : C) :
    Nonempty
        (CompleteMorphismProfile left ≅ CompleteMorphismProfile right) ↔
      Nonempty (left ≅ right) :=
  Mathematics.Terrain.YonedaProfile.profileIso_nonempty_iff_objectIso_nonempty
    left right

end Mathematics.MobiusOntology
```
