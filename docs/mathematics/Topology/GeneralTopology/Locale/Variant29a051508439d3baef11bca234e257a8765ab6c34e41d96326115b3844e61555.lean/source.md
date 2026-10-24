# Complete source: GRWTSK.Topology.GeneralTopology.Locale.Variant29a051508439d3baef11bca234e257a8765ab6c34e41d96326115b3844e61555

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `46c9a93c342dcdf2f297d705c5962c9bb60a70cc` · SHA-256 `0203298a969c0eef5b9aeccc5c10e2420a874ded6b0f65921b8393a4f70dc705`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Locale.Variant779758e65a38668877f158165ae2a881868aaf599b2ec15f55168df25d4dcd79","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"779758e65a38668877f158165ae2a881868aaf599b2ec15f55168df25d4dcd79","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Locale.Variant779758e65a38668877f158165ae2a881868aaf599b2ec15f55168df25d4dcd79","mathematical_subject":"Topology.GeneralTopology","original_sha256":"779758e65a38668877f158165ae2a881868aaf599b2ec15f55168df25d4dcd79","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Category/Locale.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Order.Category.Frm
public import Mathlib.Topology.Category.CompHaus.Frm

/-!
# The category of locales

This file defines `Locale`, the category of locales. This is the opposite of the category of frames.
-/


namespace GRWTSK.Topology.GeneralTopology.Locale.Variant779758e65a38668877f158165ae2a881868aaf599b2ec15f55168df25d4dcd79

@[expose] public section


universe u

open CategoryTheory Opposite Order TopologicalSpace


/-- The category of locales. -/
def Locale :=
  Frmᵒᵖ deriving LargeCategory

namespace Locale

instance : CoeSort Locale Type* :=
  ⟨fun X => X.unop⟩

instance (X : Locale) : Frame X :=
  X.unop.str

/-- Construct a bundled `Locale` from a `Frame`. -/
def of (α : Type*) [Frame α] : Locale :=
  op ↧α

open Lean.PrettyPrinter.Delaborator in
/-- This prints `Locale.of X` as `↧X`. -/
@[app_delab Locale.of]
meta def delabOf : Delab := CategoryTheory.delabOf

@[simp]
theorem coe_of (α : Type*) [Frame α] : ↥(of α) = α :=
  rfl

instance : Inhabited Locale :=
  ⟨of PUnit⟩

end Locale

/-- The forgetful functor from `Top` to `Locale` which forgets that the space has "enough points".
-/
@[simps!]
def topToLocale : TopCat ⥤ Locale :=
  topCatOpToFrm.rightOp

-- Note, `CompHaus` is too strong. We only need `T0Space`.
instance CompHausToLocale.faithful : (compHausToTop ⋙ topToLocale.{u}).Faithful :=
  ⟨fun h => by
    dsimp at h
    exact ConcreteCategory.ext (Opens.comap_injective (congr_arg Frm.Hom.hom
      (Quiver.Hom.op_inj h)))⟩
```
