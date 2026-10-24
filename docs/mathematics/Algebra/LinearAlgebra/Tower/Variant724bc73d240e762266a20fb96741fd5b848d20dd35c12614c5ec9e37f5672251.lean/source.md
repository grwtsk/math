# Complete source: GRWTSK.Algebra.LinearAlgebra.Tower.Variant724bc73d240e762266a20fb96741fd5b848d20dd35c12614c5ec9e37f5672251

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e84905be5f78a51663cec4331a057b538bbbdbe5` · SHA-256 `69fcdda257f9b543b24889484eaf4d0b912e32a48a9dddd5b1e5cbf18f513e16`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Left.Variant21fad8be80b1f4acaabf26475028c0391b9a80fba254033bf72088f9f85fc88c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"21fad8be80b1f4acaabf26475028c0391b9a80fba254033bf72088f9f85fc88c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Left.Variant21fad8be80b1f4acaabf26475028c0391b9a80fba254033bf72088f9f85fc88c","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"21fad8be80b1f4acaabf26475028c0391b9a80fba254033bf72088f9f85fc88c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/FieldTheory/Tower.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
module

public import Mathlib.RingTheory.Noetherian.Basic

/-!
# Finiteness of `IsScalarTower`

We prove that given `IsScalarTower F K A`, if `A` is finite as a module over `F` then
`A` is finite over `K`, and
(as long as `A` is Noetherian over `F` and torsion-free over `K`) `K` is finite over `F`.

In particular these conditions hold when `A`, `F`, and `K` are fields.

The formulas for the dimensions are given elsewhere by `Module.finrank_mul_finrank`.

## Tags

tower law

-/


namespace GRWTSK.Algebra.LinearAlgebra.Left.Variant21fad8be80b1f4acaabf26475028c0391b9a80fba254033bf72088f9f85fc88c

public section


universe u v w u₁ v₁ w₁

open Submodule

variable (F : Type u) (K : Type v) (A : Type w)

namespace Module.Finite

variable [Ring F] [Ring K] [Module F K]
  [AddCommGroup A] [Module K A] [Module.IsTorsionFree K A]
  [Module F A] [IsNoetherian F A] [IsScalarTower F K A] in
/-- In a tower of field extensions `A / K / F`, if `A / F` is finite, so is `K / F`.

(In fact, it suffices that `A` is a nontrivial ring.)

Note this cannot be an instance as Lean cannot infer `A`.
-/
theorem left [IsDomain K] [Nontrivial A] : Module.Finite F K :=
  let ⟨x, hx⟩ := exists_ne (0 : A)
  Module.Finite.of_injective
    (LinearMap.ringLmapEquivSelf K ℕ A |>.symm x |>.restrictScalars F) (smul_left_injective K hx)

variable [Semiring F] [Semiring K] [Module F K]
  [AddCommMonoid A] [Module K A] [Module F A] [IsScalarTower F K A] in
@[stacks 09G5]
theorem right [hf : Module.Finite F A] : Module.Finite K A :=
  let ⟨⟨b, hb⟩⟩ := hf
  ⟨⟨b, Submodule.restrictScalars_injective F _ _ <| by
    rw [Submodule.restrictScalars_top, eq_top_iff, ← hb, Submodule.span_le]
    exact Submodule.subset_span⟩⟩

end Module.Finite

alias FiniteDimensional.left := Module.Finite.left
alias FiniteDimensional.right := Module.Finite.right
```
