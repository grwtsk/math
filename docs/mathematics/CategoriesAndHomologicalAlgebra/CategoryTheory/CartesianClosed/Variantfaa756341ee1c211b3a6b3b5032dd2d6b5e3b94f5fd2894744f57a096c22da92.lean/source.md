# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CartesianClosed.Variantfaa756341ee1c211b3a6b3b5032dd2d6b5e3b94f5fd2894744f57a096c22da92

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f4f9af9b084904a6e095385814fadb38d2480d7` · SHA-256 `ea2e1e2cec5acaeb78c596443b02d93c83556c7197b0feaa46e9f915cdd5b131`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Types.Variant5819719d559d4c9764b4951e51220cb0fc77a198956992454b9883df2e2efdfb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5819719d559d4c9764b4951e51220cb0fc77a198956992454b9883df2e2efdfb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Types.Variant5819719d559d4c9764b4951e51220cb0fc77a198956992454b9883df2e2efdfb","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"5819719d559d4c9764b4951e51220cb0fc77a198956992454b9883df2e2efdfb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Condensed/Light/CartesianClosed.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.Closed.Types
import Mathlib.CategoryTheory.Sites.CartesianClosed
import Mathlib.CategoryTheory.Sites.Equivalence
import Mathlib.Condensed.Light.Basic
/-!

# Light condensed sets form a cartesian closed category
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Types.Variant5819719d559d4c9764b4951e51220cb0fc77a198956992454b9883df2e2efdfb

universe u

noncomputable section

open CategoryTheory

variable {C : Type u} [SmallCategory C]

instance : CartesianMonoidalCategory (LightCondSet.{u}) :=
  inferInstanceAs (CartesianMonoidalCategory (Sheaf _ _))

attribute [local instance] Types.instFunLike Types.instConcreteCategory in
instance : CartesianClosed (LightCondSet.{u}) := inferInstanceAs (CartesianClosed (Sheaf _ _))
```
