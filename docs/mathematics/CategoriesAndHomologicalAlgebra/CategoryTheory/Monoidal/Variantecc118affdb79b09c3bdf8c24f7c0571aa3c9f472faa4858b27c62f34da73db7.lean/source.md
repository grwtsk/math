# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monoidal.Variantecc118affdb79b09c3bdf8c24f7c0571aa3c9f472faa4858b27c62f34da73db7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `051442d6f50296630aaa68936b02f2896d28fef3` · SHA-256 `9e55118c652bf9a5d1886b01ec360e48c49b19a5f18a890c959dd042c1fff153`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Closed.Variant35c2fd838bc0ebfef812957ef3b3134e44c08110aaa3a570144248b1c0afa99c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"35c2fd838bc0ebfef812957ef3b3134e44c08110aaa3a570144248b1c0afa99c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Closed.Variant35c2fd838bc0ebfef812957ef3b3134e44c08110aaa3a570144248b1c0afa99c","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"35c2fd838bc0ebfef812957ef3b3134e44c08110aaa3a570144248b1c0afa99c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Condensed/Light/Monoidal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.Algebra.Category.ModuleCat.Monoidal.Closed
public import Mathlib.CategoryTheory.Monoidal.Braided.Reflection
public import Mathlib.CategoryTheory.Sites.Monoidal
public import Mathlib.Condensed.Light.Module
public import Mathlib.CategoryTheory.Sites.CartesianMonoidal

/-!

# Closed symmetric monoidal structure on light condensed modules

We define a symmetric monoidal structure on light condensed modules by localizing the symmetric
monoidal structure on the presheaf category. By Day's reflection theorem, we obtain a closed
structure.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Closed.Variant35c2fd838bc0ebfef812957ef3b3134e44c08110aaa3a570144248b1c0afa99c

public section

universe u

noncomputable section

open CategoryTheory Monoidal Sheaf MonoidalCategory MonoidalClosed MonoidalClosed.FunctorCategory

namespace LightCondensed

variable (R : Type u) [CommRing R]

instance : (coherentTopology LightProfinite.{u}).W (A := ModuleCat.{u} R) |>.IsMonoidal :=
  GrothendieckTopology.W.transport_isMonoidal _ _
    ((equivSmallModel.{u} LightProfinite.{u}).inverse.inducedTopology
      (coherentTopology LightProfinite.{u}))
    (equivSmallModel.{u} LightProfinite.{u}).inverse

instance : MonoidalCategory (LightCondMod.{u} R) :=
  monoidalCategory _ _

instance : MonoidalCategory (Sheaf (coherentTopology LightProfinite.{u}) (ModuleCat.{u} R)) :=
  inferInstanceAs (MonoidalCategory (LightCondMod _))

instance : SymmetricCategory (LightCondMod.{u} R) :=
  symmetricCategory _ _

instance : MonoidalClosed (LightProfinite.{u}ᵒᵖ ⥤ ModuleCat.{u} R) :=
  .ofEquiv _ (equivSmallModel LightProfinite).op.congrLeft.toAdjunction

instance : MonoidalClosed (Sheaf (coherentTopology LightProfinite.{u}) (ModuleCat.{u} R)) :=
  Reflective.monoidalClosed (sheafificationAdjunction _ _)

instance : MonoidalClosed (LightCondMod.{u} R) :=
  inferInstanceAs (MonoidalClosed (Sheaf _ _))

instance : (presheafToSheaf (coherentTopology LightProfinite.{u}) (ModuleCat.{u} R)).Monoidal :=
  inferInstance

instance : (free R).Monoidal := inferInstanceAs (composeAndSheafify _ _).Monoidal

end LightCondensed
```
