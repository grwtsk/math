# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Abelian.Variant75d7b9d9d528a6294e05cd1134caff21abf199071d1442ab69e3a6209ed64378

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `02b1fcad03e54deaf6fc787f4a4a70d7747ecf07` · SHA-256 `cc145f0c8cb828f1435520dc5ff5e70df13dca935e967a0279880169250df060`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variantfb4e57482bfa71ce6bf504bea7b5331602586adb10fcf59ab5ebb0fd99b21c2d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fb4e57482bfa71ce6bf504bea7b5331602586adb10fcf59ab5ebb0fd99b21c2d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FunctorCategory.Variantfb4e57482bfa71ce6bf504bea7b5331602586adb10fcf59ab5ebb0fd99b21c2d","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"fb4e57482bfa71ce6bf504bea7b5331602586adb10fcf59ab5ebb0fd99b21c2d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Sites/Abelian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz, Jujian Zhang
-/
import Mathlib.CategoryTheory.Abelian.FunctorCategory
import Mathlib.CategoryTheory.Preadditive.AdditiveFunctor
import Mathlib.CategoryTheory.Abelian.Transfer
import Mathlib.CategoryTheory.Sites.Limits

/-!
# Category of sheaves is abelian
Let `C, D` be categories and `J` be a grothendieck topology on `C`, when `D` is abelian and
sheafification is possible in `C`, `Sheaf J D` is abelian as well (`sheafIsAbelian`).

Hence, `presheafToSheaf` is an additive functor (`presheafToSheaf_additive`).

-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variantfb4e57482bfa71ce6bf504bea7b5331602586adb10fcf59ab5ebb0fd99b21c2d

noncomputable section

namespace CategoryTheory

open CategoryTheory.Limits

section Abelian

universe w' w v u

variable {C : Type u} [Category.{v} C]
variable {D : Type w} [Category.{w'} D] [Abelian D]
variable {J : GrothendieckTopology C}
variable [HasSheafify J D]

instance sheafIsAbelian : Abelian (Sheaf J D) :=
  let adj := sheafificationAdjunction J D
  abelianOfAdjunction _ _ (asIso adj.counit) adj

attribute [local instance] preservesBinaryBiproducts_of_preservesBinaryProducts

instance presheafToSheaf_additive : (presheafToSheaf J D).Additive :=
  (presheafToSheaf J D).additive_of_preservesBinaryBiproducts

end Abelian

end CategoryTheory
```
