# Complete source: GRWTSK.Algebra.UniversalAlgebra.PreservesSheafification.Variantbd38ecb7eddf8610b7c281f6117835e1ec093317ff666f297f398cd7b134360b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a96ba6c9386cdcba81d2776d6bfe9c8e2bfcb509` · SHA-256 `e480cd46739ca6be8103d38826e3491395cb2a4462bedac1624baafad098b6d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Colimits.Variant1d967c9d691a9b2f91307045eb8930eb168e876c5644f254bfb6dffa9140456f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1d967c9d691a9b2f91307045eb8930eb168e876c5644f254bfb6dffa9140456f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Colimits.Variant1d967c9d691a9b2f91307045eb8930eb168e876c5644f254bfb6dffa9140456f","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"1d967c9d691a9b2f91307045eb8930eb168e876c5644f254bfb6dffa9140456f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/CategoryTheory/Sites/PreservesSheafification.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Category.ModuleCat.Colimits
import Mathlib.Algebra.Category.ModuleCat.Limits
import Mathlib.Algebra.Category.ModuleCat.FilteredColimits
import Mathlib.CategoryTheory.Sites.Equivalence


namespace GRWTSK.Algebra.UniversalAlgebra.Colimits.Variant1d967c9d691a9b2f91307045eb8930eb168e876c5644f254bfb6dffa9140456f

universe u

open CategoryTheory GrothendieckTopology

attribute [local instance] Types.instFunLike Types.instConcreteCategory

section Small

variable {C : Type u} [SmallCategory C] (J : GrothendieckTopology C) (R : Type u) [Ring R]

example : PreservesSheafification J (forget (ModuleCat.{u} R)) := inferInstance

end Small

section Large

variable {C : Type (u + 1)} [LargeCategory C] (J : GrothendieckTopology C)

example (R : Type (u + 1)) [Ring R] : PreservesSheafification J (forget (ModuleCat.{u+1} R)) :=
  inferInstance

variable [EssentiallySmall.{u} C]

example (R : Type u) [Ring R] : PreservesSheafification J (forget (ModuleCat.{u} R)) :=
  inferInstance

end Large
```
