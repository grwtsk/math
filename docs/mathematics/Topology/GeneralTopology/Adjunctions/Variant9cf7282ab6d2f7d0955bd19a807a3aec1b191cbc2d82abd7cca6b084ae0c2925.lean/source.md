# Complete source: GRWTSK.Topology.GeneralTopology.Adjunctions.Variant9cf7282ab6d2f7d0955bd19a807a3aec1b191cbc2d82abd7cca6b084ae0c2925

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25dc670656b162fe7216f647fdf372b01ecaa566` · SHA-256 `362c9dfd106f85ad67f82ee76af3c3b31f086a83d195445d43a7625f5faccc27`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Adj.Variant6a9e9b45244f75e121312f8fceab83ab9fd44f4e6841e379906db3a66f87b9a2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6a9e9b45244f75e121312f8fceab83ab9fd44f4e6841e379906db3a66f87b9a2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Adj.Variant6a9e9b45244f75e121312f8fceab83ab9fd44f4e6841e379906db3a66f87b9a2","mathematical_subject":"Topology.GeneralTopology","original_sha256":"6a9e9b45244f75e121312f8fceab83ab9fd44f4e6841e379906db3a66f87b9a2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Category/TopCat/Adjunctions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Massot, Mario Carneiro
-/
import Mathlib.Topology.Category.TopCat.Basic
import Mathlib.CategoryTheory.Adjunction.Basic

/-!
# Adjunctions regarding the category of topological spaces

This file shows that the forgetful functor from topological spaces to types has a left and right
adjoint, given by `TopCat.discrete`, resp. `TopCat.trivial`, the functors which equip a type with
the discrete, resp. trivial, topology.
-/



namespace GRWTSK.Topology.GeneralTopology.Adj.Variant6a9e9b45244f75e121312f8fceab83ab9fd44f4e6841e379906db3a66f87b9a2

universe u

open CategoryTheory

open TopCat

namespace TopCat

/-- Equipping a type with the discrete topology is left adjoint to the forgetful functor
`Top ⥤ Type`. -/
@[simps! unit counit]
def adj₁ : discrete ⊣ forget TopCat.{u} where
  unit := { app := fun _ => id }
  counit := { app := fun X => TopCat.ofHom (X := discrete.obj X) ⟨id, continuous_bot⟩ }

/-- Equipping a type with the trivial topology is right adjoint to the forgetful functor
`Top ⥤ Type`. -/
@[simps! unit counit]
def adj₂ : forget TopCat.{u} ⊣ trivial where
  unit := { app := fun X => TopCat.ofHom (Y := trivial.obj X) ⟨id, continuous_top⟩ }
  counit := { app := fun _ => id }

instance : (forget TopCat.{u}).IsRightAdjoint :=
  ⟨_, ⟨adj₁⟩⟩

instance : (forget TopCat.{u}).IsLeftAdjoint :=
  ⟨_, ⟨adj₂⟩⟩

end TopCat
```
