# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AsSmall.Variant46b8618fc0955c20e7f5ae173b81e95a7ea2c660de42f8f8073de13bf198eef9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dfc9014244cc36e25f7d708b718aab81a1cfe58a` · SHA-256 `6fe245faae7cc176ee924582c633fe36502b4ca6b8f16da0736b924bd6fa59f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AsSmallFunctor.Variantacc66a00cf033d9fe5b784febbb4ad97bf4b2417369dd3baeb5c8634538aef7c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"acc66a00cf033d9fe5b784febbb4ad97bf4b2417369dd3baeb5c8634538aef7c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.AsSmallFunctor.Variantacc66a00cf033d9fe5b784febbb4ad97bf4b2417369dd3baeb5c8634538aef7c","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"acc66a00cf033d9fe5b784febbb4ad97bf4b2417369dd3baeb5c8634538aef7c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Category/Cat/AsSmall.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jakob von Raumer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jakob von Raumer
-/
module

public import Mathlib.CategoryTheory.Category.Cat
public import Mathlib.CategoryTheory.Category.ULift

/-!
# Functorially embedding `Cat` into the category of small categories

There is a canonical functor `asSmallFunctor` between the category of categories of any size and
any larger category of small categories.

## Future Work

Show that `asSmallFunctor` is faithful.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AsSmallFunctor.Variantacc66a00cf033d9fe5b784febbb4ad97bf4b2417369dd3baeb5c8634538aef7c

@[expose] public section

universe w v u

namespace CategoryTheory

namespace Cat

/-- Assigning to each category `C` the small category `AsSmall C` induces a functor `Cat ⥤ Cat`. -/
@[simps]
def asSmallFunctor : Cat.{v, u} ⥤ Cat.{max w v u, max w v u} where
  obj C := ↧(AsSmall C)
  map F := (AsSmall.down ⋙ F.toFunctor ⋙ AsSmall.up).toCatHom

end Cat

end CategoryTheory
```
