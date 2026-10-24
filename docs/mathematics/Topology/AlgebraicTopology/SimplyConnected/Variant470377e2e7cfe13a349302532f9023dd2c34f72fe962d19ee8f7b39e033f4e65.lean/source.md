# Complete source: GRWTSK.Topology.AlgebraicTopology.SimplyConnected.Variant470377e2e7cfe13a349302532f9023dd2c34f72fe962d19ee8f7b39e033f4e65

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd879279e19088d8611f0b57b411e2e545536158` · SHA-256 `b6c5884256698ae58a587bd8f8d81c4f0fd20f999f568c7dcfeaa21916a9cb0b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.AlgebraicTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.AlgebraicTopology.SimplyConnectedSpace.Variantb9d84d7ad051bc7ea4ff274e5a7ec7ea569083774b185e8f1e640f2e6f4730c7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b9d84d7ad051bc7ea4ff274e5a7ec7ea569083774b185e8f1e640f2e6f4730c7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.AlgebraicTopology.SourceCorpus.SimplyConnectedSpace.Variantb9d84d7ad051bc7ea4ff274e5a7ec7ea569083774b185e8f1e640f2e6f4730c7","mathematical_subject":"Topology.AlgebraicTopology","original_sha256":"b9d84d7ad051bc7ea4ff274e5a7ec7ea569083774b185e8f1e640f2e6f4730c7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/AlgebraicTopology/FundamentalGroupoid/SimplyConnected.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Praneeth Kolichala. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Praneeth Kolichala
-/
import Mathlib.AlgebraicTopology.FundamentalGroupoid.InducedMaps
import Mathlib.Topology.Homotopy.Contractible
import Mathlib.CategoryTheory.PUnit
import Mathlib.AlgebraicTopology.FundamentalGroupoid.PUnit


namespace GRWTSK.Topology.AlgebraicTopology.SimplyConnectedSpace.Variantb9d84d7ad051bc7ea4ff274e5a7ec7ea569083774b185e8f1e640f2e6f4730c7

#align_import algebraic_topology.fundamental_groupoid.simply_connected from "leanprover-community/mathlib"@"38341f11ded9e2bc1371eb42caad69ecacf8f541"

/-!
# Simply connected spaces
This file defines simply connected spaces.
A topological space is simply connected if its fundamental groupoid is equivalent to `Unit`.

## Main theorems
  - `simply_connected_iff_unique_homotopic` - A space is simply connected if and only if it is
    nonempty and there is a unique path up to homotopy between any two points

  - `SimplyConnectedSpace.ofContractible` - A contractible space is simply connected
-/


noncomputable section

open CategoryTheory

open ContinuousMap

open scoped ContinuousMap

/-- A simply connected space is one whose fundamental groupoid is equivalent to `Discrete Unit` -/
class SimplyConnectedSpace (X : Type*) [TopologicalSpace X] : Prop where
  equiv_unit : Nonempty (FundamentalGroupoid X ≌ Discrete Unit)
#align simply_connected_space SimplyConnectedSpace

theorem simply_connected_def (X : Type*) [TopologicalSpace X] :
    SimplyConnectedSpace X ↔ Nonempty (FundamentalGroupoid X ≌ Discrete Unit) :=
  ⟨fun h => @SimplyConnectedSpace.equiv_unit X _ h, fun h => ⟨h⟩⟩
#align simply_connected_def simply_connected_def

theorem simply_connected_iff_unique_homotopic (X : Type*) [TopologicalSpace X] :
    SimplyConnectedSpace X ↔
      Nonempty X ∧ ∀ x y : X, Nonempty (Unique (Path.Homotopic.Quotient x y)) := by
  rw [simply_connected_def, equiv_punit_iff_unique]; rfl
#align simply_connected_iff_unique_homotopic simply_connected_iff_unique_homotopic

namespace SimplyConnectedSpace

variable {X : Type*} [TopologicalSpace X] [SimplyConnectedSpace X]

instance (x y : X) : Subsingleton (Path.Homotopic.Quotient x y) :=
  @Unique.instSubsingleton _ (Nonempty.some (by
    rw [simply_connected_iff_unique_homotopic] at *; tauto))

attribute [local instance] Path.Homotopic.setoid

instance (priority := 100) : PathConnectedSpace X :=
  let unique_homotopic := (simply_connected_iff_unique_homotopic X).mp inferInstance
  { Nonempty := unique_homotopic.1
    Joined := fun x y => ⟨(unique_homotopic.2 x y).some.default.out⟩ }

/-- In a simply connected space, any two paths are homotopic -/
theorem paths_homotopic {x y : X} (p₁ p₂ : Path x y) : Path.Homotopic p₁ p₂ :=
  Quotient.eq.mp (@Subsingleton.elim (Path.Homotopic.Quotient x y) _ _ _)
#align simply_connected_space.paths_homotopic SimplyConnectedSpace.paths_homotopic

instance (priority := 100) ofContractible (Y : Type _) [TopologicalSpace Y] [ContractibleSpace Y] :
    SimplyConnectedSpace Y where
  equiv_unit :=
    let H : TopCat.of Y ≃ₕ TopCat.of Unit := (ContractibleSpace.hequiv_unit Y).some
    ⟨(FundamentalGroupoidFunctor.equivOfHomotopyEquiv H).trans
      FundamentalGroupoid.punitEquivDiscretePUnit⟩
#align simply_connected_space.of_contractible SimplyConnectedSpace.ofContractible

end SimplyConnectedSpace

attribute [local instance] Path.Homotopic.setoid

/-- A space is simply connected iff it is path connected, and there is at most one path
  up to homotopy between any two points. -/
theorem simply_connected_iff_paths_homotopic {Y : Type*} [TopologicalSpace Y] :
    SimplyConnectedSpace Y ↔
      PathConnectedSpace Y ∧ ∀ x y : Y, Subsingleton (Path.Homotopic.Quotient x y) :=
  ⟨by intro; constructor <;> infer_instance, fun h => by
    cases h; rw [simply_connected_iff_unique_homotopic]
    exact ⟨inferInstance, fun x y => ⟨uniqueOfSubsingleton ⟦PathConnectedSpace.somePath x y⟧⟩⟩⟩
#align simply_connected_iff_paths_homotopic simply_connected_iff_paths_homotopic

/-- Another version of `simply_connected_iff_paths_homotopic` -/
theorem simply_connected_iff_paths_homotopic' {Y : Type*} [TopologicalSpace Y] :
    SimplyConnectedSpace Y ↔
      PathConnectedSpace Y ∧ ∀ {x y : Y} (p₁ p₂ : Path x y), Path.Homotopic p₁ p₂ := by
  convert simply_connected_iff_paths_homotopic (Y := Y)
  simp [Path.Homotopic.Quotient, Setoid.eq_top_iff]; rfl
#align simply_connected_iff_paths_homotopic' simply_connected_iff_paths_homotopic'
```
