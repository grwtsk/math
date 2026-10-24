# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Unit.Variantf0688202e771e26dd4ec3136799c5f398b6a1892899fe129a5a3a8b26de0839c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f353e5fcd891157b430a941364e6c8c9af3bae2e` · SHA-256 `fe4bf1e372e4d8805bae4cf6d0944bed7948b1773c3db6d45c4a20ca83429aad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PunitCone.Variant22432a86b3dbadd453b543c49ce43cc0fadd845e3a4a468a4664c07bafeec021","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"22432a86b3dbadd453b543c49ce43cc0fadd845e3a4a468a4664c07bafeec021","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PunitCone.Variant22432a86b3dbadd453b543c49ce43cc0fadd845e3a4a468a4664c07bafeec021","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"22432a86b3dbadd453b543c49ce43cc0fadd845e3a4a468a4664c07bafeec021","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/Unit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.PUnit
import Mathlib.CategoryTheory.Limits.HasLimits

/-!
# `Discrete PUnit` has limits and colimits

Mostly for the sake of constructing trivial examples, we show all (co)cones into `Discrete PUnit`
are (co)limit (co)cones. We also show that such (co)cones exist, and that `Discrete PUnit` has all
(co)limits.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PunitCone.Variant22432a86b3dbadd453b543c49ce43cc0fadd845e3a4a468a4664c07bafeec021

universe v' v

open CategoryTheory

namespace CategoryTheory.Limits

variable {J : Type v} [Category.{v'} J] {F : J ⥤ Discrete PUnit}

/-- A trivial cone for a functor into `PUnit`. `punitConeIsLimit` shows it is a limit. -/
def punitCone : Cone F :=
  ⟨⟨⟨⟩⟩, (Functor.punitExt _ _).hom⟩

/-- A trivial cocone for a functor into `PUnit`. `punitCoconeIsLimit` shows it is a colimit. -/
def punitCocone : Cocone F :=
  ⟨⟨⟨⟩⟩, (Functor.punitExt _ _).hom⟩

/-- Any cone over a functor into `PUnit` is a limit cone.
-/
def punitConeIsLimit {c : Cone F} : IsLimit c where
  lift := fun s => eqToHom (by simp [eq_iff_true_of_subsingleton])

/-- Any cocone over a functor into `PUnit` is a colimit cocone.
-/
def punitCoconeIsColimit {c : Cocone F} : IsColimit c where
  desc := fun s => eqToHom (by simp [eq_iff_true_of_subsingleton])

instance : HasLimitsOfSize.{v', v} (Discrete PUnit) :=
  ⟨fun _ _ => ⟨fun _ => ⟨punitCone, punitConeIsLimit⟩⟩⟩

instance : HasColimitsOfSize.{v', v} (Discrete PUnit) :=
  ⟨fun _ _ => ⟨fun _ => ⟨punitCocone, punitCoconeIsColimit⟩⟩⟩

end CategoryTheory.Limits
```
