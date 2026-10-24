# Complete source: GRWTSK.Algebra.UniversalAlgebra.Directed.Varianta9d24b876915acb583dd58a44670669a54946d7ecc4c3576ce530ed8e3acb276

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1dd284dae0765cc2953b6e8a2e53002a26f32bd2` · SHA-256 `1c51ba9a6ca09ba5727ba8af8b4fa4e0eb446e55179d24bb54f55d0daba4d2d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.CoeISupOfDirected.Variantb6d8c9f7650653d1a12460596bc9eda024a53dca63a88a6654a78458b8b11c31","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b6d8c9f7650653d1a12460596bc9eda024a53dca63a88a6654a78458b8b11c31","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.CoeISupOfDirected.Variantb6d8c9f7650653d1a12460596bc9eda024a53dca63a88a6654a78458b8b11c31","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"b6d8c9f7650653d1a12460596bc9eda024a53dca63a88a6654a78458b8b11c31","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Algebra/Subalgebra/Directed.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes
-/
module

public import Mathlib.Algebra.Algebra.Subalgebra.Lattice
public import Mathlib.Data.Set.UnionLift

/-!
# Subalgebras and directed Unions of sets

## Main results

* `Subalgebra.coe_iSup_of_directed`: a directed supremum consists of the union of the algebras
* `Subalgebra.iSupLift`: define an algebra homomorphism on a directed supremum of subalgebras by
  defining it on each subalgebra, and proving that it agrees on the intersection of subalgebras.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.CoeISupOfDirected.Variantb6d8c9f7650653d1a12460596bc9eda024a53dca63a88a6654a78458b8b11c31

@[expose] public section

namespace Subalgebra

open Algebra

variable {R A B : Type*} [CommSemiring R] [Semiring A] [Algebra R A] [Semiring B] [Algebra R B]
variable (S : Subalgebra R A)

variable {ι : Type*} [Nonempty ι] {K : ι → Subalgebra R A}

theorem coe_iSup_of_directed (dir : Directed (· ≤ ·) K) : ↑(iSup K) = ⋃ i, (K i : Set A) := by
  let s : Subalgebra R A :=
    { __ := Subsemiring.copy _ _ (Subsemiring.coe_iSup_of_directed dir).symm
      algebraMap_mem' := fun _ ↦ Set.mem_iUnion.2
        ⟨Classical.arbitrary ι, Subalgebra.algebraMap_mem _ _⟩ }
  have : iSup K = s := le_antisymm
    (iSup_le fun i ↦ le_iSup (fun i ↦ (K i : Set A)) i) (Set.iUnion_subset fun _ ↦ le_iSup K _)
  simp [this, s]

theorem isMulCommutative_iSup {S : ι → Subalgebra R A}
    [hS : ∀ i, IsMulCommutative (S i)] (dir : Directed (· ≤ ·) S) :
    IsMulCommutative (⨆ i, S i : Subalgebra R A) := by
  simpa [isMulCommutative_iff, ← SetLike.mem_coe, coe_iSup_of_directed dir,
    Subsemiring.coe_iSup_of_directed dir] using Subsemiring.isMulCommutative_iSup dir

instance instIsMulCommutative_iSup [Preorder ι] [IsDirectedOrder ι]
    {S : ι →o Subalgebra R A} [hS : ∀ i, IsMulCommutative (S i)] :
    IsMulCommutative (⨆ i, S i : Subalgebra R A) :=
  isMulCommutative_iSup S.monotone.directed_le

variable (K)

/-- Define an algebra homomorphism on a directed supremum of subalgebras by defining
it on each subalgebra, and proving that it agrees on the intersection of subalgebras. -/
noncomputable def iSupLift (dir : Directed (· ≤ ·) K) (f : ∀ i, K i →ₐ[R] B)
    (hf : ∀ (i j : ι) (h : K i ≤ K j), f i = (f j).comp (inclusion h))
    (T : Subalgebra R A) (hT : T ≤ iSup K) : ↥T →ₐ[R] B := by
  let compat :
      ∀ (i j) (x : A) (hxi : x ∈ (K i : Set A)) (hxj : x ∈ (K j : Set A)),
        f i ⟨x, hxi⟩ = f j ⟨x, hxj⟩ := by
    intro i j x hxi hxj
    rcases dir i j with ⟨k, hik, hjk⟩
    simp [hf i k hik, hf j k hjk]
  let liftSup : ((iSup K : Subalgebra R A)) →ₐ[R] B :=
    { toFun :=
        Set.iUnionLift (fun i => ↑(K i)) (fun i x => f i x) compat
          ((iSup K : Subalgebra R A) : Set A)
          (le_of_eq <| coe_iSup_of_directed (K := K) dir)
      map_one' := by
        dsimp
        exact Set.iUnionLift_const _ (fun i : ι => (1 : K i)) (fun _ => rfl) _ (by simp)
      map_zero' := by
        dsimp
        exact Set.iUnionLift_const _ (fun i : ι => (0 : K i)) (fun _ => rfl) _ (by simp)
      map_mul' := by
        dsimp
        apply Set.iUnionLift_binary (coe_iSup_of_directed (K := K) dir) dir _ (fun _ => (· * ·))
        all_goals simp
      map_add' := by
        dsimp
        apply Set.iUnionLift_binary (coe_iSup_of_directed (K := K) dir) dir _ (fun _ => (· + ·))
        all_goals simp
      commutes' := fun r => by
        dsimp
        exact
          Set.iUnionLift_const _ (fun i : ι => algebraMap R (K i) r) (fun _ => rfl) _ (by simp) }
  exact liftSup.comp (inclusion hT)


@[simp]
theorem iSupLift_inclusion {dir : Directed (· ≤ ·) K} {f : ∀ i, K i →ₐ[R] B}
    {hf : ∀ (i j : ι) (h : K i ≤ K j), f i = (f j).comp (inclusion h)}
    {T : Subalgebra R A} {hT : T ≤ iSup K} {i : ι} (x : K i) (h : K i ≤ T) :
    iSupLift K dir f hf T hT (inclusion h x) = f i x := by
  dsimp [iSupLift, inclusion]
  rw [Set.iUnionLift_inclusion]
  exact SetLike.coe_subset_coe.mpr <| h.trans hT

@[simp]
theorem iSupLift_comp_inclusion {dir : Directed (· ≤ ·) K} {f : ∀ i, K i →ₐ[R] B}
    {hf : ∀ (i j : ι) (h : K i ≤ K j), f i = (f j).comp (inclusion h)}
    {T : Subalgebra R A} {hT : T ≤ iSup K} {i : ι} (h : K i ≤ T) :
    (iSupLift K dir f hf T hT).comp (inclusion h) = f i := by ext; simp

@[simp]
theorem iSupLift_mk {dir : Directed (· ≤ ·) K} {f : ∀ i, K i →ₐ[R] B}
    {hf : ∀ (i j : ι) (h : K i ≤ K j), f i = (f j).comp (inclusion h)}
    {T : Subalgebra R A} {hT : T ≤ iSup K} {i : ι} (x : K i) (hx : (x : A) ∈ T) :
    iSupLift K dir f hf T hT ⟨x, hx⟩ = f i x := by
  dsimp [iSupLift, inclusion]
  rw [Set.iUnionLift_mk]

theorem iSupLift_of_mem {dir : Directed (· ≤ ·) K} {f : ∀ i, K i →ₐ[R] B}
    {hf : ∀ (i j : ι) (h : K i ≤ K j), f i = (f j).comp (inclusion h)}
    {T : Subalgebra R A} {hT : T ≤ iSup K} {i : ι} (x : T) (hx : (x : A) ∈ K i) :
    iSupLift K dir f hf T hT x = f i ⟨x, hx⟩ := by
  dsimp [iSupLift, inclusion]
  rw [Set.iUnionLift_of_mem]

end Subalgebra
```
