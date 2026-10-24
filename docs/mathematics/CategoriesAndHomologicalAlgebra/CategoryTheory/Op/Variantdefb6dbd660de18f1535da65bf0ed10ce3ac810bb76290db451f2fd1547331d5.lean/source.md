# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Op.Variantdefb6dbd660de18f1535da65bf0ed10ce3ac810bb76290db451f2fd1547331d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd98f1c9620f40139da7c4bc5c409972a68e9caa` · SHA-256 `291f096d550041b99843a5ec4b6d303bc20cf276dcd394f96fc314317704052d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OpFunctor.Variantc9a6d0bd43da1842ca05f8b6d3c7aadc4905f2afca2d85ab09bc6a1a78e57f74","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c9a6d0bd43da1842ca05f8b6d3c7aadc4905f2afca2d85ab09bc6a1a78e57f74","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.OpFunctor.Variantc9a6d0bd43da1842ca05f8b6d3c7aadc4905f2afca2d85ab09bc6a1a78e57f74","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"c9a6d0bd43da1842ca05f8b6d3c7aadc4905f2afca2d85ab09bc6a1a78e57f74","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Category/Cat/Op.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jakob von Raumer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jakob von Raumer
-/
import Mathlib.CategoryTheory.Category.Cat
import Mathlib.CategoryTheory.Opposites

/-!
# The dualizing functor on `Cat`

We define a (strict) functor `opFunctor` and an equivalence assigning opposite categories to
categories. We then show that this functor is strictly involutive and that it induces an
equivalence on `Cat`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OpFunctor.Variantc9a6d0bd43da1842ca05f8b6d3c7aadc4905f2afca2d85ab09bc6a1a78e57f74

universe v₁ v₂ u₁ u₂

namespace CategoryTheory

namespace Cat

/-- The endofunctor `Cat ⥤ Cat` assigning to each category its opposite category. -/
@[simps]
def opFunctor : Cat.{v₁, u₁} ⥤ Cat.{v₁, u₁} where
  obj C := .of Cᵒᵖ
  map := Functor.op

/-- The natural isomorphism between the double application of `Cat.opFunctor` and the
identity functor on `Cat`. -/
@[simps!]
def opFunctorInvolutive : opFunctor.{v₁, u₁} ⋙ opFunctor.{v₁, u₁} ≅ 𝟭 _ :=
  NatIso.ofComponents (fun C => .mk (unopUnop C) (opOp C))

/-- The equivalence `Cat ≌ Cat` associating each category with its opposite category. -/
@[simps]
def opEquivalence : Cat.{v₁, u₁} ≌ Cat.{v₁, u₁} where
  functor := opFunctor
  inverse := opFunctor
  unitIso := NatIso.ofComponents (fun _ => Iso.mk (opOp _) (unopUnop _))
  counitIso := NatIso.ofComponents (fun _ => Iso.mk (unopUnop _) (opOp _))

end Cat

end CategoryTheory
```
