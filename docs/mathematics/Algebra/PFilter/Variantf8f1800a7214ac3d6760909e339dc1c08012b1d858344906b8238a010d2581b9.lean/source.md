# Complete source: GRWTSK.Algebra.PFilter.Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `34a28d2270b07cc44c1e1a29b9624b5aca4e3453` · SHA-256 `afbffc76896968a92241a1768da7cd0f38f0f4073e0f9a8d02b83bb758939c5d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.PFilter.Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.PFilter.Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"b15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/PFilter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Mathieu Guay-Paquet. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mathieu Guay-Paquet
-/
import Mathlib.Order.Ideal

/-!
# Order filters

## Main definitions

Throughout this file, `P` is at least a preorder, but some sections require more structure,
such as a bottom element, a top element, or a join-semilattice structure.

- `Order.PFilter P`: The type of nonempty, downward directed, upward closed subsets of `P`.
               This is dual to `Order.Ideal`, so it simply wraps `Order.Ideal Pᵒᵈ`.
- `Order.IsPFilter P`: a predicate for when a `Set P` is a filter.

Note the relation between `Order/Filter` and `Order/PFilter`: for any type `α`,
`Filter α` represents the same mathematical object as `PFilter (Set α)`.

## References

- <https://en.wikipedia.org/wiki/Filter_(mathematics)>

## Tags

pfilter, filter, ideal, dual

-/


namespace GRWTSK.Algebra.PFilter.Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90

open OrderDual

namespace Order

/-- A filter on a preorder `P` is a subset of `P` that is
  - nonempty
  - downward directed
  - upward closed. -/
structure PFilter (P : Type*) [Preorder P] where
  dual : Ideal Pᵒᵈ

variable {P : Type*}

/-- A predicate for when a subset of `P` is a filter. -/
def IsPFilter [Preorder P] (F : Set P) : Prop :=
  IsIdeal (OrderDual.ofDual ⁻¹' F)

theorem IsPFilter.of_def [Preorder P] {F : Set P} (nonempty : F.Nonempty)
    (directed : DirectedOn (· ≥ ·) F) (mem_of_le : ∀ {x y : P}, x ≤ y → x ∈ F → y ∈ F) :
    IsPFilter F :=
  ⟨fun _ _ _ _ => mem_of_le ‹_› ‹_›, nonempty, directed⟩

/-- Create an element of type `Order.PFilter` from a set satisfying the predicate
`Order.IsPFilter`. -/
def IsPFilter.toPFilter [Preorder P] {F : Set P} (h : IsPFilter F) : PFilter P :=
  ⟨h.toIdeal⟩

namespace PFilter

section Preorder

variable [Preorder P] {x y : P} (F s t : PFilter P)

instance [Inhabited P] : Inhabited (PFilter P) := ⟨⟨default⟩⟩

/-- A filter on `P` is a subset of `P`. -/
instance : SetLike (PFilter P) P where
  coe F := toDual ⁻¹' F.dual.carrier
  coe_injective' := fun ⟨_⟩ ⟨_⟩ h => congr_arg mk <| Ideal.ext h

theorem isPFilter : IsPFilter (F : Set P) := F.dual.isIdeal

protected theorem nonempty : (F : Set P).Nonempty := F.dual.nonempty

theorem directed : DirectedOn (· ≥ ·) (F : Set P) := F.dual.directed

theorem mem_of_le {F : PFilter P} : x ≤ y → x ∈ F → y ∈ F := fun h => F.dual.lower h

/-- Two filters are equal when their underlying sets are equal. -/
@[ext]
theorem ext (h : (s : Set P) = t) : s = t := SetLike.ext' h

@[trans]
theorem mem_of_mem_of_le {F G : PFilter P} (hx : x ∈ F) (hle : F ≤ G) : x ∈ G :=
  hle hx

/-- The smallest filter containing a given element. -/
def principal (p : P) : PFilter P :=
  ⟨Ideal.principal (toDual p)⟩

@[simp]
theorem mem_mk (x : P) (I : Ideal Pᵒᵈ) : x ∈ (⟨I⟩ : PFilter P) ↔ toDual x ∈ I :=
  Iff.rfl

@[simp]
theorem principal_le_iff {F : PFilter P} : principal x ≤ F ↔ x ∈ F :=
  Ideal.principal_le_iff (x := toDual x)

@[simp] theorem mem_principal : x ∈ principal y ↔ y ≤ x := Iff.rfl

theorem principal_le_principal_iff {p q : P} : principal q ≤ principal p ↔ p ≤ q := by simp

-- defeq abuse
theorem antitone_principal : Antitone (principal : P → PFilter P) := fun _ _ =>
  principal_le_principal_iff.2

end Preorder

section OrderTop

variable [Preorder P] [OrderTop P] {F : PFilter P}

/-- A specific witness of `pfilter.nonempty` when `P` has a top element. -/
@[simp] theorem top_mem : ⊤ ∈ F := Ideal.bot_mem _

/-- There is a bottom filter when `P` has a top element. -/
instance : OrderBot (PFilter P) where
  bot := ⟨⊥⟩
  bot_le F := (bot_le : ⊥ ≤ F.dual)

end OrderTop

/-- There is a top filter when `P` has a bottom element. -/
instance {P} [Preorder P] [OrderBot P] : OrderTop (PFilter P) where
  top := ⟨⊤⟩
  le_top F := (le_top : F.dual ≤ ⊤)

section SemilatticeInf

variable [SemilatticeInf P] {x y : P} {F : PFilter P}

/-- A specific witness of `pfilter.directed` when `P` has meets. -/
theorem inf_mem (hx : x ∈ F) (hy : y ∈ F) : x ⊓ y ∈ F :=
  Ideal.sup_mem hx hy

@[simp]
theorem inf_mem_iff : x ⊓ y ∈ F ↔ x ∈ F ∧ y ∈ F :=
  Ideal.sup_mem_iff

end SemilatticeInf

section CompleteSemilatticeInf

variable [CompleteSemilatticeInf P]

theorem sInf_gc :
    GaloisConnection (fun x => toDual (principal x)) fun F => sInf (ofDual F : PFilter P) :=
  fun x F => by simp only [le_sInf_iff, SetLike.mem_coe, toDual_le, SetLike.le_def, mem_principal]

/-- If a poset `P` admits arbitrary `Inf`s, then `principal` and `Inf` form a Galois coinsertion. -/
def infGi :
    GaloisCoinsertion (fun x => toDual (principal x)) fun F => sInf (ofDual F : PFilter P) :=
  sInf_gc.toGaloisCoinsertion fun _ => sInf_le <| mem_principal.2 le_rfl

end CompleteSemilatticeInf

end PFilter

end Order
```
