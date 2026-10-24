# Complete source: GRWTSK.Topology.AlgebraicTopology.Contractible.Variant3d94f52966cc1bd7ae765406a1354e8a34320b34124d5f27d0b52e18a59e14e7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `11e31398472e31074a2e14768c67d1dfe09e6a65` · SHA-256 `119c1999101eade5a7f4b64c76bfcce94ffb88471630490d5da397a56784edc3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.AlgebraicTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.AlgebraicTopology.ContractibleSpace.Variant50e6acf1ca2ebf1fb72a935cab528f98b617b24c65a7e212f69292a176a91a30","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"50e6acf1ca2ebf1fb72a935cab528f98b617b24c65a7e212f69292a176a91a30","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.AlgebraicTopology.SourceCorpus.ContractibleSpace.Variant50e6acf1ca2ebf1fb72a935cab528f98b617b24c65a7e212f69292a176a91a30","mathematical_subject":"Topology.AlgebraicTopology","original_sha256":"50e6acf1ca2ebf1fb72a935cab528f98b617b24c65a7e212f69292a176a91a30","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Topology/Homotopy/Contractible.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Praneeth Kolichala. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Praneeth Kolichala
-/
import Mathlib.Topology.Homotopy.Path
import Mathlib.Topology.Homotopy.Equiv


namespace GRWTSK.Topology.AlgebraicTopology.ContractibleSpace.Variant50e6acf1ca2ebf1fb72a935cab528f98b617b24c65a7e212f69292a176a91a30

#align_import topology.homotopy.contractible from "leanprover-community/mathlib"@"16728b3064a1751103e1dc2815ed8d00560e0d87"

/-!
# Contractible spaces

In this file, we define `ContractibleSpace`, a space that is homotopy equivalent to `Unit`.
-/


noncomputable section

namespace ContinuousMap

variable {X Y Z : Type*} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]

/-- A map is nullhomotopic if it is homotopic to a constant map. -/
def Nullhomotopic (f : C(X, Y)) : Prop :=
  ∃ y : Y, Homotopic f (ContinuousMap.const _ y)
#align continuous_map.nullhomotopic ContinuousMap.Nullhomotopic

theorem nullhomotopic_of_constant (y : Y) : Nullhomotopic (ContinuousMap.const X y) :=
  ⟨y, by rfl⟩
#align continuous_map.nullhomotopic_of_constant ContinuousMap.nullhomotopic_of_constant

theorem Nullhomotopic.comp_right {f : C(X, Y)} (hf : f.Nullhomotopic) (g : C(Y, Z)) :
    (g.comp f).Nullhomotopic := by
  cases' hf with y hy
  use g y
  exact Homotopic.hcomp hy (Homotopic.refl g)
#align continuous_map.nullhomotopic.comp_right ContinuousMap.Nullhomotopic.comp_right

theorem Nullhomotopic.comp_left {f : C(Y, Z)} (hf : f.Nullhomotopic) (g : C(X, Y)) :
    (f.comp g).Nullhomotopic := by
  cases' hf with y hy
  use y
  exact Homotopic.hcomp (Homotopic.refl g) hy
#align continuous_map.nullhomotopic.comp_left ContinuousMap.Nullhomotopic.comp_left

end ContinuousMap

open ContinuousMap

/-- A contractible space is one that is homotopy equivalent to `Unit`. -/
class ContractibleSpace (X : Type*) [TopologicalSpace X] : Prop where
  hequiv_unit' : Nonempty (X ≃ₕ Unit)
#align contractible_space ContractibleSpace

-- Porting note: added to work around lack of infer kinds
theorem ContractibleSpace.hequiv_unit (X : Type*) [TopologicalSpace X] [ContractibleSpace X] :
    Nonempty (X ≃ₕ Unit) :=
  ContractibleSpace.hequiv_unit'
#align contractible_space.hequiv_unit ContractibleSpace.hequiv_unit

theorem id_nullhomotopic (X : Type*) [TopologicalSpace X] [ContractibleSpace X] :
    (ContinuousMap.id X).Nullhomotopic := by
  obtain ⟨hv⟩ := ContractibleSpace.hequiv_unit X
  use hv.invFun ()
  convert hv.left_inv.symm
#align id_nullhomotopic id_nullhomotopic

theorem contractible_iff_id_nullhomotopic (Y : Type*) [TopologicalSpace Y] :
    ContractibleSpace Y ↔ (ContinuousMap.id Y).Nullhomotopic := by
  constructor
  · intro
    apply id_nullhomotopic
  rintro ⟨p, h⟩
  refine
    { hequiv_unit' :=
        ⟨{  toFun := ContinuousMap.const _ ()
            invFun := ContinuousMap.const _ p
            left_inv := ?_
            right_inv := ?_ }⟩ }
  · exact h.symm
  · convert Homotopic.refl (ContinuousMap.id Unit)
#align contractible_iff_id_nullhomotopic contractible_iff_id_nullhomotopic

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

protected theorem ContinuousMap.HomotopyEquiv.contractibleSpace [ContractibleSpace Y] (e : X ≃ₕ Y) :
    ContractibleSpace X :=
  ⟨(ContractibleSpace.hequiv_unit Y).map e.trans⟩
#align continuous_map.homotopy_equiv.contractible_space ContinuousMap.HomotopyEquiv.contractibleSpace

protected theorem ContinuousMap.HomotopyEquiv.contractibleSpace_iff (e : X ≃ₕ Y) :
    ContractibleSpace X ↔ ContractibleSpace Y :=
  ⟨fun _ => e.symm.contractibleSpace, fun _ => e.contractibleSpace⟩
#align continuous_map.homotopy_equiv.contractible_space_iff ContinuousMap.HomotopyEquiv.contractibleSpace_iff

protected theorem Homeomorph.contractibleSpace [ContractibleSpace Y] (e : X ≃ₜ Y) :
    ContractibleSpace X :=
  e.toHomotopyEquiv.contractibleSpace
#align homeomorph.contractible_space Homeomorph.contractibleSpace

protected theorem Homeomorph.contractibleSpace_iff (e : X ≃ₜ Y) :
    ContractibleSpace X ↔ ContractibleSpace Y :=
  e.toHomotopyEquiv.contractibleSpace_iff
#align homeomorph.contractible_space_iff Homeomorph.contractibleSpace_iff

namespace ContractibleSpace

instance (priority := 100) [ContractibleSpace X] : PathConnectedSpace X := by
  obtain ⟨p, ⟨h⟩⟩ := id_nullhomotopic X
  have : ∀ x, Joined p x := fun x => ⟨(h.evalAt x).symm⟩
  rw [pathConnectedSpace_iff_eq]; use p; ext; tauto

end ContractibleSpace
```
