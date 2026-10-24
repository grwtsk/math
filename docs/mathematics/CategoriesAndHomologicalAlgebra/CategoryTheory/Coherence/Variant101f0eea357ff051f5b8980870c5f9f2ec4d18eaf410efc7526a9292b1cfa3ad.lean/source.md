# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Coherence.Variant101f0eea357ff051f5b8980870c5f9f2ec4d18eaf410efc7526a9292b1cfa3ad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8b491e5de0da23c4f3dc4aa07a79784327f6925` · SHA-256 `e2feaefefddbf145e29c1d05a19d6964f3bf4faf42a420e7d4b5f85201c9422c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InformationCoherencePolicy.Variantf1c115b6970fbdef7af337bb22bba4589387bac65ea936ad142027028aa56973","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f1c115b6970fbdef7af337bb22bba4589387bac65ea936ad142027028aa56973","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.InformationCoherencePolicy.Variantf1c115b6970fbdef7af337bb22bba4589387bac65ea936ad142027028aa56973","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"f1c115b6970fbdef7af337bb22bba4589387bac65ea936ad142027028aa56973","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/residue/legacy-framework-shaped/src-lib-rendering-shader/retained/core/lean/Think/Logic/Mathlib/Coherence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Logic.Mathlib.Ecosystem


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InformationCoherencePolicy.Variantf1c115b6970fbdef7af337bb22bba4589387bac65ea936ad142027028aa56973

namespace Think.Logic.MathlibEcosystem

structure InformationCoherencePolicy
    (Inf : Type u) [CategoryTheory.Category.{v} Inf] [CategoryTheory.MonoidalCategory Inf] where
  associatorIsoHash : String
  leftUnitorIsoHash : String
  rightUnitorIsoHash : String
  symmetryIsoHash : String
  coherenceTacticReceiptHash : String
  usesStrictTensorEquality : Bool
  claimBearing : Bool

def InformationCoherencePolicy.accepted
    {Inf : Type u} [CategoryTheory.Category.{v} Inf] [CategoryTheory.MonoidalCategory Inf]
    (P : InformationCoherencePolicy Inf) : Prop :=
  P.usesStrictTensorEquality = false ∧ P.claimBearing = false

theorem InformationCoherencePolicy.no_strict_tensor_equality_if_accepted
    {Inf : Type u} [CategoryTheory.Category.{v} Inf] [CategoryTheory.MonoidalCategory Inf]
    (P : InformationCoherencePolicy Inf) :
    P.accepted → P.usesStrictTensorEquality = false :=
by
  intro h
  exact h.left

end Think.Logic.MathlibEcosystem
```
