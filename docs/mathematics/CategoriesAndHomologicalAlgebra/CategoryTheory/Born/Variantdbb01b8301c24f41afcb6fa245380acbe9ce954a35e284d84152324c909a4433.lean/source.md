# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Born.Variantdbb01b8301c24f41afcb6fa245380acbe9ce954a35e284d84152324c909a4433

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ff664425f4e43ad34287144035a31774109cc94` · SHA-256 `8edd4d7acb5b36fac0c43255996d587554de84586512c012cd8701e93a3dfc57`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Born.Variant5d9c33320654fcc8254b494256a0a3add1568be95264779aaf7f46559e7ad1b6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5d9c33320654fcc8254b494256a0a3add1568be95264779aaf7f46559e7ad1b6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Born.Variant5d9c33320654fcc8254b494256a0a3add1568be95264779aaf7f46559e7ad1b6","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"5d9c33320654fcc8254b494256a0a3add1568be95264779aaf7f46559e7ad1b6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Category/Born.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.CategoryTheory.ConcreteCategory.Basic
import Mathlib.Topology.Bornology.Hom

/-!
# The category of bornologies

This defines `Born`, the category of bornologies.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Born.Variant5d9c33320654fcc8254b494256a0a3add1568be95264779aaf7f46559e7ad1b6

universe u

open CategoryTheory

/-- The category of bornologies. -/
structure Born where
  /-- The underlying bornology. -/
  carrier : Type*
  [str : Bornology carrier]

attribute [instance] Born.str

namespace Born

instance : CoeSort Born Type* :=
  ⟨carrier⟩

/-- Construct a bundled `Born` from a `Bornology`. -/
abbrev of (α : Type*) [Bornology α] : Born where
  carrier := α

instance : Inhabited Born :=
  ⟨of PUnit⟩

instance : LargeCategory.{u} Born where
  Hom X Y := LocallyBoundedMap X Y
  id X := LocallyBoundedMap.id X
  comp f g := g.comp f

instance : ConcreteCategory Born (LocallyBoundedMap · ·) where
  hom f := f
  ofHom f := f

end Born
```
