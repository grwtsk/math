# Complete source: GRWTSK.Topology.GeneralTopology.TopologicallyNilpotent.Variant889bc156d6926c251d67883246419aad79f623194d28a43471e79d852f784d36

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2cddf0e05fddaab8cfb22faca8ff245d01e3623` · SHA-256 `05fee225aca8d94408d2b48d1604641da23ba764ec69f05dce135721246fc417`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IsTopologicallyNilpotent.Variant3dae93da7dae4d79c7ce6c10b5369b16f0a2961c57f17c0234656f4c8f35807f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3dae93da7dae4d79c7ce6c10b5369b16f0a2961c57f17c0234656f4c8f35807f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IsTopologicallyNilpotent.Variant3dae93da7dae4d79c7ce6c10b5369b16f0a2961c57f17c0234656f4c8f35807f","mathematical_subject":"Topology.GeneralTopology","original_sha256":"3dae93da7dae4d79c7ce6c10b5369b16f0a2961c57f17c0234656f4c8f35807f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Algebra/TopologicallyNilpotent.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Antoine Chambert-Loir, María Inés de Frutos-Fernández. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Antoine Chambert-Loir, María Inés de Frutos-Fernández
-/
module

public import Mathlib.Topology.Algebra.LinearTopology
public import Mathlib.RingTheory.Ideal.Basic

/-! # Topologically nilpotent elements

Let `M` be a monoid with zero `M`, endowed with a topology.

* `IsTopologicallyNilpotent a` says that `a : M` is *topologically nilpotent*,
  i.e., its powers converge to zero.

* `IsTopologicallyNilpotent.map`:
  The image of a topologically nilpotent element under a continuous morphism of
  monoids with zero endowed with a topology is topologically nilpotent.

* `IsTopologicallyNilpotent.zero`: `0` is topologically nilpotent.

Let `R` be a commutative ring with a linear topology.

* `IsTopologicallyNilpotent.mul_left`: if `a : R` is topologically nilpotent,
  then `a*b` is topologically nilpotent.

* `IsTopologicallyNilpotent.mul_right`: if `a : R` is topologically nilpotent,
  then `a * b` is topologically nilpotent.

* `IsTopologicallyNilpotent.add`: if `a b : R` are topologically nilpotent,
  then `a + b` is topologically nilpotent.

These lemmas are actually deduced from their analogues for commuting elements of rings.

-/


namespace GRWTSK.Topology.GeneralTopology.IsTopologicallyNilpotent.Variant3dae93da7dae4d79c7ce6c10b5369b16f0a2961c57f17c0234656f4c8f35807f

@[expose] public section

open Filter

open scoped Topology

/-- An element is topologically nilpotent if its powers converge to `0`. -/
def IsTopologicallyNilpotent
    {R : Type*} [MonoidWithZero R] [TopologicalSpace R] (a : R) : Prop :=
  Tendsto (a ^ ·) atTop (𝓝 0)

namespace IsTopologicallyNilpotent

section MonoidWithZero

variable {R S : Type*} [TopologicalSpace R] [MonoidWithZero R]
  [MonoidWithZero S] [TopologicalSpace S]

/-- The image of a topologically nilpotent element under a continuous morphism
  is topologically nilpotent -/
theorem map {F : Type*} [FunLike F R S] [MonoidWithZeroHomClass F R S]
    {φ : F} (hφ : Continuous φ) {a : R} (ha : IsTopologicallyNilpotent a) :
    IsTopologicallyNilpotent (φ a) := by
  unfold IsTopologicallyNilpotent at ha ⊢
  simp_rw [← map_pow]
  exact (map_zero φ ▸ hφ.tendsto 0).comp ha

/-- `0` is topologically nilpotent -/
theorem zero : IsTopologicallyNilpotent (0 : R) :=
  tendsto_atTop_of_eventually_const (i₀ := 1)
    (fun _ hi => by rw [zero_pow (Nat.ne_zero_iff_zero_lt.mpr hi)])

theorem _root_.GRWTSK.Topology.GeneralTopology.IsTopologicallyNilpotent.Variant3dae93da7dae4d79c7ce6c10b5369b16f0a2961c57f17c0234656f4c8f35807f.IsNilpotent.isTopologicallyNilpotent {a : R} (ha : IsNilpotent a) :
    IsTopologicallyNilpotent a := by
  obtain ⟨n, hn⟩ := ha
  apply tendsto_atTop_of_eventually_const (i₀ := n)
  intro i hi
  rw [← Nat.add_sub_of_le hi, pow_add, hn, zero_mul]

theorem exists_pow_mem_of_mem_nhds {a : R} (ha : IsTopologicallyNilpotent a)
    {v : Set R} (hv : v ∈ 𝓝 0) :
    ∃ n, a ^ n ∈ v :=
  (ha.eventually_mem hv).exists

end MonoidWithZero

section Ring

variable {R : Type*} [TopologicalSpace R] [Ring R]

/-- If `a` and `b` commute and `a` is topologically nilpotent,
  then `a * b` is topologically nilpotent. -/
theorem mul_right_of_commute [IsLinearTopology Rᵐᵒᵖ R]
    {a b : R} (ha : IsTopologicallyNilpotent a) (hab : Commute a b) :
    IsTopologicallyNilpotent (a * b) := by
  simp_rw [IsTopologicallyNilpotent, hab.mul_pow]
  exact IsLinearTopology.tendsto_mul_zero_of_left _ _ ha

/-- If `a` and `b` commute and `b` is topologically nilpotent,
  then `a * b` is topologically nilpotent. -/
theorem mul_left_of_commute [IsLinearTopology R R] {a b : R}
    (hb : IsTopologicallyNilpotent b) (hab : Commute a b) :
    IsTopologicallyNilpotent (a * b) := by
  simp_rw [IsTopologicallyNilpotent, hab.mul_pow]
  exact IsLinearTopology.tendsto_mul_zero_of_right _ _ hb

/-- If `a` and `b` are topologically nilpotent and commute,
  then `a + b` is topologically nilpotent. -/
theorem add_of_commute [IsLinearTopology R R] {a b : R}
    (ha : IsTopologicallyNilpotent a) (hb : IsTopologicallyNilpotent b) (h : Commute a b) :
    IsTopologicallyNilpotent (a + b) := by
  simp only [IsTopologicallyNilpotent, atTop_basis.tendsto_iff IsLinearTopology.hasBasis_ideal,
    true_and]
  intro I I_mem_nhds
  obtain ⟨na, ha⟩ := ha.exists_pow_mem_of_mem_nhds I_mem_nhds
  obtain ⟨nb, hb⟩ := hb.exists_pow_mem_of_mem_nhds I_mem_nhds
  exact ⟨na + nb, fun m hm ↦
    I.add_pow_mem_of_pow_mem_of_le_of_commute ha hb (le_trans hm (Nat.le_add_right _ _)) h⟩

end Ring

section CommRing

variable {R : Type*} [TopologicalSpace R] [CommRing R] [IsLinearTopology R R]

/-- If `a` is topologically nilpotent, then `a * b` is topologically nilpotent. -/
theorem mul_right {a : R} (ha : IsTopologicallyNilpotent a) (b : R) :
    IsTopologicallyNilpotent (a * b) :=
  ha.mul_right_of_commute (Commute.all ..)

/-- If `b` is topologically nilpotent, then `a * b` is topologically nilpotent. -/
theorem mul_left (a : R) {b : R} (hb : IsTopologicallyNilpotent b) :
    IsTopologicallyNilpotent (a * b) :=
  hb.mul_left_of_commute (Commute.all ..)

/-- If `a` and `b` are topologically nilpotent, then `a + b` is topologically nilpotent. -/
theorem add {a b : R} (ha : IsTopologicallyNilpotent a) (hb : IsTopologicallyNilpotent b) :
    IsTopologicallyNilpotent (a + b) :=
  ha.add_of_commute hb (Commute.all ..)

variable (R) in
/-- The topological nilradical of a ring with a linear topology -/
@[simps]
def _root_.GRWTSK.Topology.GeneralTopology.IsTopologicallyNilpotent.Variant3dae93da7dae4d79c7ce6c10b5369b16f0a2961c57f17c0234656f4c8f35807f.topologicalNilradical : Ideal R where
  carrier := {a | IsTopologicallyNilpotent a}
  add_mem' := add
  zero_mem' := zero
  smul_mem' := mul_left

theorem mem_topologicalNilradical_iff {a : R} :
    a ∈ topologicalNilradical R ↔ IsTopologicallyNilpotent a := by
  simp [topologicalNilradical]

end CommRing

end IsTopologicallyNilpotent
```
