-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Presheaf.Variant9b36c82bf5664a6a3ab149bd3c8f9351cfe9dd16932c9ef36460fe758120fc4a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9b36c82bf5664a6a3ab149bd3c8f9351cfe9dd16932c9ef36460fe758120fc4a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Presheaf.Variant9b36c82bf5664a6a3ab149bd3c8f9351cfe9dd16932c9ef36460fe758120fc4a","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"9b36c82bf5664a6a3ab149bd3c8f9351cfe9dd16932c9ef36460fe758120fc4a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/residue/legacy-framework-shaped/src-lib-rendering-shader/retained/core/lean/Think/Knowledge/Sheaf/Presheaf.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Knowledge.Category.Finite


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Presheaf.Variant9b36c82bf5664a6a3ab149bd3c8f9351cfe9dd16932c9ef36460fe758120fc4a

namespace Think.Knowledge.Sheaf

/-! Presheaves and covers for knowledge gluing certificates. -/

abbrev FinCat := Think.Knowledge.Category.FinCat
abbrev Pullback := Think.Knowledge.Category.Pullback

structure Presheaf (C : FinCat) where
  Sec : C.Obj → Type
  res : {U V : C.Obj} → C.Hom U V → Sec V → Sec U
  res_id : ∀ {U} (s : Sec U), res (C.id U) s = s
  res_comp :
    ∀ {U V W} (f : C.Hom U V) (g : C.Hom V W) (s : Sec W),
      res (C.comp f g) s = res f (res g s)

structure Cover (C : FinCat) (V : C.Obj) where
  I : Type
  indices : List I
  U : I → C.Obj
  map : (i : I) → C.Hom (U i) V
  overlap : (i j : I) → Pullback C (map i) (map j)

end Think.Knowledge.Sheaf
