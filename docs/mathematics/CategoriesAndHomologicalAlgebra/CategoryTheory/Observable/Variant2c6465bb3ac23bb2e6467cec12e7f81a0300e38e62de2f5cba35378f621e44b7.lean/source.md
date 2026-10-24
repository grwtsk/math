# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Observable.Variant2c6465bb3ac23bb2e6467cec12e7f81a0300e38e62de2f5cba35378f621e44b7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c288a2be1e551edbeb354d95c0e7fed80c88a190` · SHA-256 `dd2d885e1e9bd1c68d80df70666a14acba64627dabd1d02b9c94eb95455f41ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ObservableField.Variantbc3f8c08a0b443dce4d13a95103626b97be99561ba29e301a220cc409719c98b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bc3f8c08a0b443dce4d13a95103626b97be99561ba29e301a220cc409719c98b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ObservableField.Variantbc3f8c08a0b443dce4d13a95103626b97be99561ba29e301a220cc409719c98b","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"bc3f8c08a0b443dce4d13a95103626b97be99561ba29e301a220cc409719c98b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Sheaf/Observable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Sheaf.Basic

/-!
# Folder.Sheaf.Observable

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: sheaf.observable
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ObservableField.Variantbc3f8c08a0b443dce4d13a95103626b97be99561ba29e301a220cc409719c98b

namespace Folder
namespace Sheaf

open CategoryTheory Opposite

universe u v w x

structure ObservableField
    {C : Type u} [Category.{v} C]
    (F : Cᵒᵖ ⥤ Type w)
    (α : Type x) where
  value : ∀ U : C, F.obj (op U) → α
  naturality :
    ∀ {U V : C} (f : U ⟶ V) (s : F.obj (op V)),
      value U (F.map f.op s) = value V s

end Sheaf
end Folder
```
