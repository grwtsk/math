# Complete source: GRWTSK.Algebra.LinearAlgebra.Basic.Variant77cbe364d95c3584dad04f26cc268e6eb7f421a39f994b749eaf38ca53c5a775

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a9395a7fc6f5600d028cad567efdc5e86925362` · SHA-256 `ec53d17b2a14387e8c6242e0ec448a9612f372b98dc6499e0ec4a75d67ba8624`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ToAddSubmonoidStrictMono.Variant34c1fcaddc748a5eb888108fae54b5a537c9361ba604ec07151427e380714a2f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"34c1fcaddc748a5eb888108fae54b5a537c9361ba604ec07151427e380714a2f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ToAddSubmonoidStrictMono.Variant34c1fcaddc748a5eb888108fae54b5a537c9361ba604ec07151427e380714a2f","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"34c1fcaddc748a5eb888108fae54b5a537c9361ba604ec07151427e380714a2f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Module/Submodule/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Nathaniel Thomas. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nathaniel Thomas, Jeremy Avigad, Johannes Hölzl, Mario Carneiro
-/
module

public import Mathlib.Algebra.Field.Defs
public import Mathlib.Algebra.Group.Pointwise.Set.Basic
public import Mathlib.Algebra.Group.Submonoid.BigOperators
public import Mathlib.Algebra.Module.Submodule.Defs
public import Mathlib.Algebra.Module.Torsion.Free

/-!
# Submodules of a module

This file contains basic results on submodules that require further theory to be defined.
As such it is a good target for organizing and splitting further.

## Tags

submodule, subspace, linear map
-/


namespace GRWTSK.Algebra.LinearAlgebra.ToAddSubmonoidStrictMono.Variant34c1fcaddc748a5eb888108fae54b5a537c9361ba604ec07151427e380714a2f

public section

open Function

universe u'' u' u v w

variable {S : Type u'} {R : Type u} {M : Type v} {ι : Type w}

namespace Submodule

variable [Semiring R] [AddCommMonoid M] [Module R M]

variable {p q : Submodule R M}

@[gcongr, mono]
theorem toAddSubmonoid_strictMono : StrictMono (toAddSubmonoid : Submodule R M → AddSubmonoid M) :=
  fun _ _ => id

theorem toAddSubmonoid_le : p.toAddSubmonoid ≤ q.toAddSubmonoid ↔ p ≤ q :=
  Iff.rfl

@[gcongr, mono]
theorem toAddSubmonoid_mono : Monotone (toAddSubmonoid : Submodule R M → AddSubmonoid M) :=
  toAddSubmonoid_strictMono.monotone

@[gcongr, mono]
theorem toSubMulAction_strictMono :
    StrictMono (toSubMulAction : Submodule R M → SubMulAction R M) := fun _ _ => id

@[gcongr, mono]
theorem toSubMulAction_mono : Monotone (toSubMulAction : Submodule R M → SubMulAction R M) :=
  toSubMulAction_strictMono.monotone

end Submodule

namespace Submodule

section AddCommMonoid

variable [Semiring R] [AddCommMonoid M]

-- We can infer the module structure implicitly from the bundled submodule,
-- rather than via typeclass resolution.
variable {module_M : Module R M}
variable {p : Submodule R M}
variable {r : R}
variable (p)

protected theorem sum_mem {t : Finset ι} {f : ι → M} : (∀ c ∈ t, f c ∈ p) → (∑ i ∈ t, f i) ∈ p :=
  sum_mem

theorem sum_smul_mem {t : Finset ι} {f : ι → M} (r : ι → R) (hyp : ∀ c ∈ t, f c ∈ p) :
    (∑ i ∈ t, r i • f i) ∈ p :=
  sum_mem fun i hi => smul_mem _ _ (hyp i hi)

instance isCentralScalar [SMul S R] [SMul S M] [IsScalarTower S R M] [SMul Sᵐᵒᵖ R] [SMul Sᵐᵒᵖ M]
    [IsScalarTower Sᵐᵒᵖ R M] [IsCentralScalar S M] : IsCentralScalar S p :=
  p.toSubMulAction.isCentralScalar

instance instIsTorsionFree [Module.IsTorsionFree R M] : Module.IsTorsionFree R p :=
  Subtype.coe_injective.moduleIsTorsionFree _ (by simp)

section AddAction

/-! ### Additive actions by `Submodule`s
These instances transfer the action by an element `m : M` of an `R`-module `M` written as `m +ᵥ a`
onto the action by an element `s : S` of a submodule `S : Submodule R M` such that
`s +ᵥ a = (s : M) +ᵥ a`.
These instances work particularly well in conjunction with `AddGroup.toAddAction`, enabling
`s +ᵥ m` as an alias for `↑s + m`.
-/


variable {α β : Type*}

instance [VAdd M α] : VAdd p α :=
  AddSubmonoid.instVAddSubtypeMem p

instance vaddCommClass [VAdd M β] [VAdd α β] [VAddCommClass M α β] : VAddCommClass p α β :=
  ⟨fun a => vadd_comm (a : M)⟩

instance [VAdd M α] [FaithfulVAdd M α] : FaithfulVAdd p α :=
  ⟨fun h => Subtype.ext <| eq_of_vadd_eq_vadd h⟩

variable {p}

theorem vadd_def [VAdd M α] (g : p) (m : α) : g +ᵥ m = (g : M) +ᵥ m :=
  rfl

end AddAction

end AddCommMonoid

section AddCommGroup

variable [Ring R] [AddCommGroup M]
variable {module_M : Module R M}
variable (p p' : Submodule R M)


@[gcongr, mono]
theorem toAddSubgroup_strictMono : StrictMono (toAddSubgroup : Submodule R M → AddSubgroup M) :=
  fun _ _ => id

@[gcongr]
theorem toAddSubgroup_le : p.toAddSubgroup ≤ p'.toAddSubgroup ↔ p ≤ p' :=
  Iff.rfl

@[mono]
theorem toAddSubgroup_mono : Monotone (toAddSubgroup : Submodule R M → AddSubgroup M) :=
  toAddSubgroup_strictMono.monotone

@[simp]
theorem toAddSubgroup_toAddSubmonoid (p : Submodule R M) :
    p.toAddSubgroup.toAddSubmonoid = p.toAddSubmonoid :=
  rfl

-- See `neg_coe_set`
theorem neg_coe : -(p : Set M) = p :=
  Set.ext fun _ => p.neg_mem_iff

end AddCommGroup

section IsDomain

variable [Ring R] [IsDomain R]
variable [AddCommGroup M] [Module R M]

theorem notMem_of_ortho {x : M} {N : Submodule R M}
    (ortho : ∀ (c : R), ∀ y ∈ N, c • x + y = (0 : M) → c = 0) : x ∉ N := by
  intro hx
  simpa using ortho (-1) x hx

theorem ne_zero_of_ortho {x : M} {N : Submodule R M}
    (ortho : ∀ (c : R), ∀ y ∈ N, c • x + y = (0 : M) → c = 0) : x ≠ 0 :=
  mt (fun h => show x ∈ N from h.symm ▸ N.zero_mem) (notMem_of_ortho ortho)

end IsDomain

end Submodule

namespace Submodule

variable [DivisionSemiring S] [Semiring R] [AddCommMonoid M] [Module R M]
variable [SMul S R] [Module S M] [IsScalarTower S R M]
variable (p : Submodule R M) {s : S} {x : M}

theorem smul_mem_iff (s0 : s ≠ 0) : s • x ∈ p ↔ x ∈ p :=
  p.toSubMulAction.smul_mem_iff s0

end Submodule

/-- Subspace of a vector space. Defined to equal `Submodule`. -/
abbrev Subspace (R : Type u) (M : Type v) [DivisionRing R] [AddCommGroup M] [Module R M] :=
  Submodule R M
```
