# Complete source: GRWTSK.Topology.GeneralTopology.ClosedSubmodule.Variant859bd6ba8751f7a3bc0063fcbeb247fd3a0608aae4bdcae9472261f409418e05

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `adf71f9f210d99829672a69b8fdea721a6185688` · SHA-256 `738a43107d1ab8468cb730f7f845da36cef6f713d6179ce14ccf92a42187ea2b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ClosedSubmodule.Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ClosedSubmodule.Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7","mathematical_subject":"Topology.GeneralTopology","original_sha256":"cd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/Module/ClosedSubmodule.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Topology.Algebra.Module.LinearMap
import Mathlib.Topology.Sets.Closeds

/-!
# Closed submodules of a topological module

This files builds the frame of closed `R`-submodules of a topological module `M`.

One can turn `s : Submodule R E` + `hs : IsClosed s` into `s : ClosedSubmodule R E` in a tactic
block by doing `lift s to ClosedSubmodule R E using hs`.

## TODO

Actually provide the `Order.Frame (ClosedSubmodule R M)` instance.
-/


namespace GRWTSK.Topology.GeneralTopology.ClosedSubmodule.Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7

open Function Order TopologicalSpace

variable {ι : Sort*} {R M N O : Type*} [Semiring R]
  [AddCommMonoid M] [TopologicalSpace M] [Module R M]
  [AddCommMonoid N] [TopologicalSpace N] [Module R N]
  [AddCommMonoid O] [TopologicalSpace O] [Module R O]

variable (R M) in
/-- The type of closed submodules of a topological module. -/
@[ext]
structure ClosedSubmodule extends Submodule R M, Closeds M where

namespace ClosedSubmodule
variable {s t : ClosedSubmodule R M} {x : M}

attribute [coe] toSubmodule toCloseds

/-- Reinterpret a closed submodule as a submodule. -/
add_decl_doc toSubmodule

/-- Reinterpret a closed submodule as a closed set. -/
add_decl_doc toCloseds

lemma toSubmodule_injective : Injective (toSubmodule : ClosedSubmodule R M → Submodule R M) :=
  fun s t h ↦ by cases s; congr!

instance : SetLike (ClosedSubmodule R M) M where
  coe s := s.1
  coe_injective' _ _ h := toSubmodule_injective <| SetLike.coe_injective h

lemma toCloseds_injective : Injective (toCloseds : ClosedSubmodule R M → Closeds M) :=
  fun _s _t h ↦ SetLike.coe_injective congr(($h : Set M))

instance : AddSubmonoidClass (ClosedSubmodule R M) M where
  zero_mem s := s.zero_mem
  add_mem {s} := s.add_mem

instance : SMulMemClass (ClosedSubmodule R M) R M where
  smul_mem {s} r := s.smul_mem r

instance : Coe (ClosedSubmodule R M) (Submodule R M) where
  coe := toSubmodule

@[simp] lemma carrier_eq_coe (s : ClosedSubmodule R M) : s.carrier = s := rfl

@[simp] lemma mem_mk {s : Submodule R M} {hs} : x ∈ mk s hs ↔ x ∈ s := .rfl

@[simp, norm_cast]
lemma coe_toSubmodule (s : ClosedSubmodule R M) : (s.toSubmodule : Set M) = s := rfl

@[simp]
lemma coe_toCloseds (s : ClosedSubmodule R M) : (s.toCloseds : Set M) = s := rfl

lemma isClosed (s : ClosedSubmodule R M) : IsClosed (s : Set M) := s.isClosed'

initialize_simps_projections ClosedSubmodule (carrier → coe, as_prefix coe)

instance : CanLift (Submodule R M) (ClosedSubmodule R M) toSubmodule (IsClosed (X := M) ·) where
  prf s hs := ⟨⟨s, hs⟩, rfl⟩

@[simp, norm_cast] lemma toSubmodule_le_toSubmodule {s t : ClosedSubmodule R M} :
    s.toSubmodule ≤ t.toSubmodule ↔ s ≤ t := .rfl

/-- The preimage of a closed submodule under a continuous linear map as a closed submodule. -/
@[simps!]
def comap (f : M →L[R] N) (s : ClosedSubmodule R N) : ClosedSubmodule R M where
  toSubmodule := .comap f s
  isClosed' := by simpa using s.isClosed.preimage f.continuous

@[simp]
lemma mem_comap {f : M →L[R] N} {s : ClosedSubmodule R N} {x : M} : x ∈ s.comap f ↔ f x ∈ s := .rfl

@[simp] lemma toSubmodule_comap (f : M →L[R] N) (s : ClosedSubmodule R N) :
    (s.comap f).toSubmodule = s.toSubmodule.comap f := rfl

@[simp] lemma comap_id (s : ClosedSubmodule R M) : s.comap (.id _ _) = s := rfl

lemma comap_comap (g : N →L[R] O) (f : M →L[R] N) (s : ClosedSubmodule R O) :
    (s.comap g).comap f = s.comap (g.comp f) := rfl

instance instInf : Min (ClosedSubmodule R M) where
  min s t := ⟨s ⊓ t, s.isClosed.inter t.isClosed⟩

instance instInfSet : InfSet (ClosedSubmodule R M) where
  sInf S := ⟨⨅ s ∈ S, s, by simpa using isClosed_biInter fun x hx ↦ x.isClosed⟩

@[simp, norm_cast]
lemma toSubmodule_sInf (S : Set (ClosedSubmodule R M)) :
    toSubmodule (sInf S) = ⨅ s ∈ S, s.toSubmodule := rfl

@[simp, norm_cast]
lemma toSubmodule_iInf (f : ι → ClosedSubmodule R M) :
    toSubmodule (⨅ i, f i) = ⨅ i, (f i).toSubmodule := by rw [iInf, toSubmodule_sInf, iInf_range]

@[simp, norm_cast]
lemma coe_sInf (S : Set (ClosedSubmodule R M)) : ↑(sInf S) = ⨅ s ∈ S, (s : Set M) := by
  simp [← coe_toSubmodule]

@[simp, norm_cast]
lemma coe_iInf (f : ι → ClosedSubmodule R M) : ↑(⨅ i, f i) = ⨅ i, (f i : Set M) := by
  simp [← coe_toSubmodule]

@[simp] lemma mem_sInf {S : Set (ClosedSubmodule R M)} : x ∈ sInf S ↔ ∀ s ∈ S, x ∈ s := by
  simp [← SetLike.mem_coe]

@[simp] lemma mem_iInf {f : ι → ClosedSubmodule R M} : x ∈ ⨅ i, f i ↔ ∀ i, x ∈ f i := by
  simp [← SetLike.mem_coe]

instance instSemilatticeInf : SemilatticeInf (ClosedSubmodule R M) :=
  toSubmodule_injective.semilatticeInf _ fun _ _ ↦ rfl

@[simp, norm_cast]
lemma toSubmodule_inf (s t : ClosedSubmodule R M) :
    toSubmodule (s ⊓ t) = s.toSubmodule ⊓ t.toSubmodule := rfl

@[simp, norm_cast] lemma coe_inf (s t : ClosedSubmodule R M) : ↑(s ⊓ t) = (s ⊓ t : Set M) := rfl

@[simp] lemma mem_inf : x ∈ s ⊓ t ↔ x ∈ s ∧ x ∈ t := .rfl

instance instTop : Top (ClosedSubmodule R M) where top := ⟨⊤, isClosed_univ⟩

@[simp, norm_cast] lemma toSubmodule_top : toSubmodule (⊤ : ClosedSubmodule R M) = ⊤ := rfl

@[simp, norm_cast] lemma coe_top : ((⊤ : ClosedSubmodule R M) : Set M) = .univ := rfl

@[simp] lemma mem_top : x ∈ (⊤ : ClosedSubmodule R M) := trivial

section T1Space
variable [T1Space M]

instance instOrderBot : OrderBot (ClosedSubmodule R M) where
  bot := ⟨⊥, isClosed_singleton⟩
  bot_le s := bot_le (a := s.toSubmodule)

@[simp, norm_cast] lemma toSubmodule_bot : toSubmodule (⊥ : ClosedSubmodule R M) = ⊥ := rfl

@[simp, norm_cast] lemma coe_bot : ((⊥ : ClosedSubmodule R M) : Set M) = {0} := rfl

@[simp] lemma mem_bot : x ∈ (⊥ : ClosedSubmodule R M) ↔ x = 0 := .rfl

end T1Space
end ClosedSubmodule

namespace Submodule
variable [ContinuousAdd M] [ContinuousConstSMul R M]

/-- The closure of a submodule as a closed submodule. -/
@[simps!]
protected def closure (s : Submodule R M) : ClosedSubmodule R M where
  toSubmodule := s.topologicalClosure
  isClosed' := isClosed_closure

@[simp] lemma closure_le {s : Submodule R M} {t : ClosedSubmodule R M} : s.closure ≤ t ↔ s ≤ t :=
  t.isClosed.closure_subset_iff

end Submodule

namespace ClosedSubmodule
variable [ContinuousAdd N] [ContinuousConstSMul R N] {f : M →L[R] N}

/-- The closure of the image of a closed submodule under a continuous linear map is a closed
submodule.

`ClosedSubmodule.map f` is left-adjoint to `ClosedSubmodule.comap f`.
See `ClosedSubmodule.gc_map_comap`. -/
def map (f : M →L[R] N) (s : ClosedSubmodule R M) : ClosedSubmodule R N :=
  (s.toSubmodule.map f).closure

@[simp]
lemma map_id [ContinuousAdd M] [ContinuousConstSMul R M] (s : ClosedSubmodule R M) :
    s.map (.id _ _) = s := SetLike.coe_injective <| by simpa [map] using s.isClosed.closure_eq

lemma map_le_iff_le_comap {s : ClosedSubmodule R M} {t : ClosedSubmodule R N} :
    map f s ≤ t ↔ s ≤ comap f t := by
  simp [map, Submodule.map_le_iff_le_comap]; simp [← toSubmodule_le_toSubmodule]

lemma gc_map_comap : GaloisConnection (map f) (comap f) := fun _ _ ↦ map_le_iff_le_comap

end ClosedSubmodule
```
