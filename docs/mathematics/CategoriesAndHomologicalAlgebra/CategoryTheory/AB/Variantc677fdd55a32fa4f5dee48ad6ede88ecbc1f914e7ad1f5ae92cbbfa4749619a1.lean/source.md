# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AB.Variantc677fdd55a32fa4f5dee48ad6ede88ecbc1f914e7ad1f5ae92cbbfa4749619a1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7427c287578c37652b337656539b3a11ae3a6f70` · SHA-256 `125a7d555db5c03205a06f1e6d3e2fb3eadf8c231b3ab8defee39b0b2bb21640`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AB.Variant8abfe92b21ee892b0cb95ed6c72dd673a485d07d34da2a9c76740aea679d0fb1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8abfe92b21ee892b0cb95ed6c72dd673a485d07d34da2a9c76740aea679d0fb1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.AB.Variant8abfe92b21ee892b0cb95ed6c72dd673a485d07d34da2a9c76740aea679d0fb1","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"8abfe92b21ee892b0cb95ed6c72dd673a485d07d34da2a9c76740aea679d0fb1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Condensed/Light/AB.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.Algebra.Category.ModuleCat.AB
import Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.Sheaf
import Mathlib.Condensed.Light.Epi
/-!

# Grothendieck's AB axioms for light condensed modules

The category of light condensed `R`-modules over a ring satisfies the countable version of
Grothendieck's AB4* axiom
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AB.Variant8abfe92b21ee892b0cb95ed6c72dd673a485d07d34da2a9c76740aea679d0fb1

universe u

open CategoryTheory Limits

namespace LightCondensed

variable {R : Type u} [Ring R]

attribute [local instance] Abelian.hasFiniteBiproducts

noncomputable instance : CountableAB4Star (LightCondMod.{u} R) :=
  have := hasExactLimitsOfShape_of_preservesEpi (LightCondMod R) (Discrete ℕ)
  CountableAB4Star.of_hasExactLimitsOfShape_nat _

instance : IsGrothendieckAbelian.{u} (LightCondMod.{u} R) :=
    inferInstanceAs (IsGrothendieckAbelian.{u} (Sheaf _ _))

end LightCondensed
```
