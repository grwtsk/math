# Complete source: GRWTSK.Algebra.UniversalAlgebra.ConcreteSheafification.Variant2f8e862769642e4d974e02d92a2f6e356f54f31de7beb5c75f0fb488248793d9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b33d745395f0d76780144ace4d631afc88e79b7b` · SHA-256 `b0d8b0c2bb52a9d424672e8e20a177e8b80028a55e40b3ec772d6999ff5f9042`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Colimits.Variantc531bf087fcd75be5d65f1ce5aa1612f72537d6c6e062147dc47bbae4b8ca6ef","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c531bf087fcd75be5d65f1ce5aa1612f72537d6c6e062147dc47bbae4b8ca6ef","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Colimits.Variantc531bf087fcd75be5d65f1ce5aa1612f72537d6c6e062147dc47bbae4b8ca6ef","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"c531bf087fcd75be5d65f1ce5aa1612f72537d6c6e062147dc47bbae4b8ca6ef","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/CategoryTheory/Sites/ConcreteSheafification.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Category.ModuleCat.Colimits
import Mathlib.Algebra.Category.ModuleCat.Limits
import Mathlib.Algebra.Category.ModuleCat.FilteredColimits
import Mathlib.CategoryTheory.Sites.Equivalence


namespace GRWTSK.Algebra.UniversalAlgebra.Colimits.Variantc531bf087fcd75be5d65f1ce5aa1612f72537d6c6e062147dc47bbae4b8ca6ef

universe u

open CategoryTheory

attribute [local instance] Types.instFunLike Types.instConcreteCategory

section Small

variable {C : Type u} [SmallCategory C] (J : GrothendieckTopology C)

example : HasSheafify J (Type u) := inferInstance

example (R : Type u) [Ring R] : HasSheafify J (ModuleCat.{u} R) := inferInstance

end Small

section Large

variable {C : Type (u + 1)} [LargeCategory C] (J : GrothendieckTopology C)

example : HasSheafify J (Type (u+1)) := inferInstance

example (R : Type (u + 1)) [Ring R] : HasSheafify J (ModuleCat.{u+1} R) := inferInstance

variable [EssentiallySmall.{u} C]

example : HasSheafify J (Type u) := inferInstance

example (R : Type u) [Ring R] : HasSheafify J (ModuleCat.{u} R) := inferInstance

end Large
```
