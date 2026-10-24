# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AB.Variant9cbccaa2c62c9a04b6240ff980fabb3b5eda640dabf4ff239e2598fb19ed946a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c87cb042f31043f35d3b2ee47ad4ea5bdcb2524f` · SHA-256 `e5bd83338e344d1bae1f007e78221081c447866366076d571e5b2ac01040c61b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasExactColimitsOfShape.Variant58dbcdc3e53c68ce3aa47a9082579ef8be8fd2c38a2209bda9b700fd824fb1cb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"58dbcdc3e53c68ce3aa47a9082579ef8be8fd2c38a2209bda9b700fd824fb1cb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HasExactColimitsOfShape.Variant58dbcdc3e53c68ce3aa47a9082579ef8be8fd2c38a2209bda9b700fd824fb1cb","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"58dbcdc3e53c68ce3aa47a9082579ef8be8fd2c38a2209bda9b700fd824fb1cb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Condensed/AB.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.Algebra.Category.ModuleCat.AB
import Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.Sheaf
import Mathlib.CategoryTheory.Sites.Coherent.ExtensiveColimits
import Mathlib.Condensed.Equivalence
import Mathlib.Condensed.Limits
/-!

# AB axioms in condensed modules

This file proves that the category of condensed modules over a ring satisfies Grothendieck's axioms
AB5, AB4, and AB4*.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasExactColimitsOfShape.Variant58dbcdc3e53c68ce3aa47a9082579ef8be8fd2c38a2209bda9b700fd824fb1cb

universe u

open Condensed CategoryTheory Limits

namespace Condensed

variable (A J : Type*) [Category A] [Category J] [Preadditive A]
  [∀ X, HasLimitsOfShape (StructuredArrow X Stonean.toCompHaus.op) A]
  [HasWeakSheafify (coherentTopology CompHaus.{u}) A]
  [HasWeakSheafify (extensiveTopology Stonean.{u}) A]
-- One of the `HasWeakSheafify` instances could be deduced from the other using the dense subsite
-- API, but when `A` is a concrete category, these will both be synthesized anyway.

set_option Elab.async false in  -- TODO: universe levels from type are unified in proof
lemma hasExactColimitsOfShape [HasColimitsOfShape J A] [HasExactColimitsOfShape J A]
    [HasFiniteLimits A] : HasExactColimitsOfShape J (Condensed.{u} A) := by
  let e : Condensed.{u} A ≌ Sheaf (extensiveTopology Stonean.{u}) A :=
    (StoneanCompHaus.equivalence A).symm.trans Presheaf.coherentExtensiveEquivalence
  have : HasColimitsOfShape J (Sheaf (extensiveTopology Stonean.{u}) A) :=
    hasColimitsOfShape_of_hasColimitsOfShape_createsColimitsOfShape e.inverse
  exact HasExactColimitsOfShape.domain_of_functor _ e.functor

set_option Elab.async false in  -- TODO: universe levels from type are unified in proof
lemma hasExactLimitsOfShape [HasLimitsOfShape J A] [HasExactLimitsOfShape J A]
    [HasFiniteColimits A] : HasExactLimitsOfShape J (Condensed.{u} A) := by
  let e : Condensed.{u} A ≌ Sheaf (extensiveTopology Stonean.{u}) A :=
    (StoneanCompHaus.equivalence A).symm.trans Presheaf.coherentExtensiveEquivalence
  have : HasLimitsOfShape J (Sheaf (extensiveTopology Stonean.{u}) A) :=
    hasLimitsOfShape_of_hasLimitsOfShape_createsLimitsOfShape e.inverse
  exact HasExactLimitsOfShape.domain_of_functor _ e.functor

section Module

variable (R : Type (u + 1)) [Ring R]

local instance : HasLimitsOfSize.{u, u + 1} (ModuleCat.{u + 1} R) :=
  hasLimitsOfSizeShrink.{u, u + 1, u + 1, u} _

variable (X Y : CondensedMod.{u} R)

instance : AB5 (CondensedMod.{u} R) where
  ofShape J _ _ := hasExactColimitsOfShape (ModuleCat R) J

attribute [local instance] Abelian.hasFiniteBiproducts

instance : AB4 (CondensedMod.{u} R) := AB4.of_AB5 _

instance : AB4Star (CondensedMod.{u} R) where
  ofShape J := hasExactLimitsOfShape (ModuleCat R) (Discrete J)

end Module

end Condensed
```
