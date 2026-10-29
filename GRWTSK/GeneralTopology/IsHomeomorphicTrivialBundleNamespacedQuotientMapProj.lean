-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IsHomeomorphicTrivialFiberBundle.Variantd08386b9cc65db4e3457f5bca907d284d951eeec6738f6c9529d910124b4b44a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d08386b9cc65db4e3457f5bca907d284d951eeec6738f6c9529d910124b4b44a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IsHomeomorphicTrivialFiberBundle.Variantd08386b9cc65db4e3457f5bca907d284d951eeec6738f6c9529d910124b4b44a","mathematical_subject":"Topology.GeneralTopology","original_sha256":"d08386b9cc65db4e3457f5bca907d284d951eeec6738f6c9529d910124b4b44a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Topology/FiberBundle/IsHomeomorphicTrivialBundle.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel
-/
import Mathlib.Topology.Homeomorph


namespace GRWTSK.Topology.GeneralTopology.IsHomeomorphicTrivialFiberBundle.Variantd08386b9cc65db4e3457f5bca907d284d951eeec6738f6c9529d910124b4b44a

#align_import topology.fiber_bundle.is_homeomorphic_trivial_bundle from "leanprover-community/mathlib"@"be2c24f56783935652cefffb4bfca7e4b25d167e"

/-!
# Maps equivariantly-homeomorphic to projection in a product

This file contains the definition `IsHomeomorphicTrivialFiberBundle F p`, a Prop saying that a
map `p : Z → B` between topological spaces is a "trivial fiber bundle" in the sense that there
exists a homeomorphism `h : Z ≃ₜ B × F` such that `proj x = (h x).1`.  This is an abstraction which
is occasionally convenient in showing that a map is open, a quotient map, etc.

This material was formerly linked to the main definition of fiber bundles, but after a series of
refactors, there is no longer a direct connection.
-/


variable {B : Type*} (F : Type*) {Z : Type*} [TopologicalSpace B] [TopologicalSpace F]
  [TopologicalSpace Z]

/-- A trivial fiber bundle with fiber `F` over a base `B` is a space `Z`
projecting on `B` for which there exists a homeomorphism to `B × F` that sends `proj`
to `Prod.fst`. -/
def IsHomeomorphicTrivialFiberBundle (proj : Z → B) : Prop :=
  ∃ e : Z ≃ₜ B × F, ∀ x, (e x).1 = proj x
#align is_homeomorphic_trivial_fiber_bundle IsHomeomorphicTrivialFiberBundle

namespace IsHomeomorphicTrivialFiberBundle

variable {F} {proj : Z → B}

protected theorem proj_eq (h : IsHomeomorphicTrivialFiberBundle F proj) :
    ∃ e : Z ≃ₜ B × F, proj = Prod.fst ∘ e :=
  ⟨h.choose, (funext h.choose_spec).symm⟩
#align is_homeomorphic_trivial_fiber_bundle.proj_eq IsHomeomorphicTrivialFiberBundle.proj_eq

/-- The projection from a trivial fiber bundle to its base is surjective. -/
protected theorem surjective_proj [Nonempty F] (h : IsHomeomorphicTrivialFiberBundle F proj) :
    Function.Surjective proj := by
  obtain ⟨e, rfl⟩ := h.proj_eq
  exact Prod.fst_surjective.comp e.surjective
#align is_homeomorphic_trivial_fiber_bundle.surjective_proj IsHomeomorphicTrivialFiberBundle.surjective_proj

/-- The projection from a trivial fiber bundle to its base is continuous. -/
protected theorem continuous_proj (h : IsHomeomorphicTrivialFiberBundle F proj) : Continuous proj :=
  by obtain ⟨e, rfl⟩ := h.proj_eq; exact continuous_fst.comp e.continuous
#align is_homeomorphic_trivial_fiber_bundle.continuous_proj IsHomeomorphicTrivialFiberBundle.continuous_proj

/-- The projection from a trivial fiber bundle to its base is open. -/
protected theorem isOpenMap_proj (h : IsHomeomorphicTrivialFiberBundle F proj) : IsOpenMap proj :=
  by obtain ⟨e, rfl⟩ := h.proj_eq; exact isOpenMap_fst.comp e.isOpenMap
#align is_homeomorphic_trivial_fiber_bundle.is_open_map_proj IsHomeomorphicTrivialFiberBundle.isOpenMap_proj

/-- The projection from a trivial fiber bundle to its base is open. -/
protected theorem quotientMap_proj [Nonempty F] (h : IsHomeomorphicTrivialFiberBundle F proj) :
    QuotientMap proj :=
  h.isOpenMap_proj.to_quotientMap h.continuous_proj h.surjective_proj
#align is_homeomorphic_trivial_fiber_bundle.quotient_map_proj IsHomeomorphicTrivialFiberBundle.quotientMap_proj

end IsHomeomorphicTrivialFiberBundle

/-- The first projection in a product is a trivial fiber bundle. -/
theorem isHomeomorphicTrivialFiberBundle_fst :
    IsHomeomorphicTrivialFiberBundle F (Prod.fst : B × F → B) :=
  ⟨Homeomorph.refl _, fun _x => rfl⟩
#align is_homeomorphic_trivial_fiber_bundle_fst isHomeomorphicTrivialFiberBundle_fst

/-- The second projection in a product is a trivial fiber bundle. -/
theorem isHomeomorphicTrivialFiberBundle_snd :
    IsHomeomorphicTrivialFiberBundle F (Prod.snd : F × B → B) :=
  ⟨Homeomorph.prodComm _ _, fun _x => rfl⟩
#align is_homeomorphic_trivial_fiber_bundle_snd isHomeomorphicTrivialFiberBundle_snd
