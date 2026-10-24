# Complete source: GRWTSK.Topology.AlgebraicTopology.SimplyConnected.Variant1d956ae538b34716d4c51e083a70ff27052190c80e38ea870830ec55c33c320f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bdac8dab048517d18ab58fe022e106bb21bce8c2` · SHA-256 `f44aeafe53df07faf2bb828d6de5a7a484c163ff30baa3ada1b82d76849f0e9e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.AlgebraicTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.AlgebraicTopology.SimplyConnectedSpace.Variant0066a54cbe5881ef40d55a3abda3ebecd0e0c72ce0dba58819bafcc635af6d08","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0066a54cbe5881ef40d55a3abda3ebecd0e0c72ce0dba58819bafcc635af6d08","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.AlgebraicTopology.SourceCorpus.SimplyConnectedSpace.Variant0066a54cbe5881ef40d55a3abda3ebecd0e0c72ce0dba58819bafcc635af6d08","mathematical_subject":"Topology.AlgebraicTopology","original_sha256":"0066a54cbe5881ef40d55a3abda3ebecd0e0c72ce0dba58819bafcc635af6d08","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicTopology/FundamentalGroupoid/SimplyConnected.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Praneeth Kolichala. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Praneeth Kolichala
-/
import Mathlib.AlgebraicTopology.FundamentalGroupoid.InducedMaps
import Mathlib.Topology.Homotopy.Contractible
import Mathlib.CategoryTheory.PUnit
import Mathlib.AlgebraicTopology.FundamentalGroupoid.PUnit

/-!
# Simply connected spaces
This file defines simply connected spaces.
A topological space is simply connected if its fundamental groupoid is equivalent to `Unit`.

## Main theorems
  - `simply_connected_iff_unique_homotopic` - A space is simply connected if and only if it is
    nonempty and there is a unique path up to homotopy between any two points

  - `SimplyConnectedSpace.ofContractible` - A contractible space is simply connected
-/


namespace GRWTSK.Topology.AlgebraicTopology.SimplyConnectedSpace.Variant0066a54cbe5881ef40d55a3abda3ebecd0e0c72ce0dba58819bafcc635af6d08

universe u

noncomputable section

open CategoryTheory

open ContinuousMap

open scoped ContinuousMap

/-- A simply connected space is one whose fundamental groupoid is equivalent to `Discrete Unit` -/
@[mk_iff simply_connected_def]
class SimplyConnectedSpace (X : Type*) [TopologicalSpace X] : Prop where
  equiv_unit : Nonempty (FundamentalGroupoid X ≌ Discrete Unit)

theorem simply_connected_iff_unique_homotopic (X : Type*) [TopologicalSpace X] :
    SimplyConnectedSpace X ↔
      Nonempty X ∧ ∀ x y : X, Nonempty (Unique (Path.Homotopic.Quotient x y)) := by
  simp only [simply_connected_def, equiv_punit_iff_unique,
    FundamentalGroupoid.nonempty_iff X, and_congr_right_iff, Nonempty.forall]
  intros
  exact ⟨fun h _ _ => h _ _, fun h _ _ => h _ _⟩

namespace SimplyConnectedSpace

variable {X : Type*} [TopologicalSpace X] [SimplyConnectedSpace X]

instance (x y : X) : Subsingleton (Path.Homotopic.Quotient x y) :=
  @Unique.instSubsingleton _ (Nonempty.some (by
    rw [simply_connected_iff_unique_homotopic] at *; tauto))

attribute [local instance] Path.Homotopic.setoid

instance (priority := 100) : PathConnectedSpace X :=
  let unique_homotopic := (simply_connected_iff_unique_homotopic X).mp inferInstance
  { nonempty := unique_homotopic.1
    joined := fun x y => ⟨(unique_homotopic.2 x y).some.default.out⟩ }

/-- In a simply connected space, any two paths are homotopic -/
theorem paths_homotopic {x y : X} (p₁ p₂ : Path x y) : Path.Homotopic p₁ p₂ :=
  Quotient.eq.mp (@Subsingleton.elim (Path.Homotopic.Quotient x y) _ _ _)

instance (priority := 100) ofContractible (Y : Type u) [TopologicalSpace Y] [ContractibleSpace Y] :
    SimplyConnectedSpace Y where
  equiv_unit :=
    let H : TopCat.of Y ≃ₕ TopCat.of PUnit.{u+1} := (ContractibleSpace.hequiv Y PUnit.{u+1}).some
    ⟨(FundamentalGroupoidFunctor.equivOfHomotopyEquiv H).trans
      FundamentalGroupoid.punitEquivDiscretePUnit⟩

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

/-- Another version of `simply_connected_iff_paths_homotopic` -/
theorem simply_connected_iff_paths_homotopic' {Y : Type*} [TopologicalSpace Y] :
    SimplyConnectedSpace Y ↔
      PathConnectedSpace Y ∧ ∀ {x y : Y} (p₁ p₂ : Path x y), Path.Homotopic p₁ p₂ := by
  convert simply_connected_iff_paths_homotopic (Y := Y)
  simp [Path.Homotopic.Quotient, Setoid.eq_top_iff]; rfl
```
