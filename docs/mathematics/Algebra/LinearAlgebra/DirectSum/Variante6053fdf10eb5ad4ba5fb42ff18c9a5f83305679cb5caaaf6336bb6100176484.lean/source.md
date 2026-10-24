# Complete source: GRWTSK.Algebra.LinearAlgebra.DirectSum.Variante6053fdf10eb5ad4ba5fb42ff18c9a5f83305679cb5caaaf6336bb6100176484

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3f728e5648cc66597201f6b810a18aa72ba9e2f` · SHA-256 `3b4ca61f6d0b975e3fe3672291183f7d6c75537b5fa1d252f7792aed7ee58ced`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.DirectSumExt.Variantb6b7e0da2a5839e1d96afb476fd19946e37cfbe77623acb246f52217870e03cb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b6b7e0da2a5839e1d96afb476fd19946e37cfbe77623acb246f52217870e03cb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.DirectSumExt.Variantb6b7e0da2a5839e1d96afb476fd19946e37cfbe77623acb246f52217870e03cb","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"b6b7e0da2a5839e1d96afb476fd19946e37cfbe77623acb246f52217870e03cb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/LinearAlgebra/Multilinear/DirectSum.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Sophie Morel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sophie Morel
-/
module

public import Mathlib.Algebra.DirectSum.Module
public import Mathlib.LinearAlgebra.Multilinear.DFinsupp

/-!
# Multilinear maps from direct sums

This file describes multilinear maps on direct sums.

## Main results

* `MultilinearMap.fromDirectSumEquiv` : If `ι` is a `Fintype`, `κ i` is a family of types
  indexed by `ι` and we are given an `R`-module `M i j` for every `i : ι` and `j : κ i`, this is
  the linear equivalence between `Π p : (i : ι) → κ i, MultilinearMap R (fun i ↦ M i (p i)) M'` and
  `MultilinearMap R (fun i ↦ ⨁ j : κ i, M i j) M'`.
-/


namespace GRWTSK.Algebra.LinearAlgebra.DirectSumExt.Variantb6b7e0da2a5839e1d96afb476fd19946e37cfbe77623acb246f52217870e03cb

@[expose] public section

namespace MultilinearMap

open DirectSum

variable {R ι M' : Type*} {κ : ι → Type*} {M : (i : ι) → κ i → Type*}
variable [CommSemiring R]
variable [∀ i j, AddCommMonoid (M i j)] [∀ i j, Module R (M i j)] [AddCommMonoid M'] [Module R M']

/-- Two multilinear maps from direct sums are equal if they agree on the generators. -/
@[ext]
theorem directSum_ext [Finite ι] [(i : ι) → DecidableEq (κ i)]
    ⦃f g : MultilinearMap R (fun i ↦ ⨁ j : κ i, M i j) M'⦄
    (h : ∀ p : (i : ι) → κ i,
      f.compLinearMap (fun i => DirectSum.lof _ _ _ (p i)) =
      g.compLinearMap (fun i => DirectSum.lof _ _ _ (p i))) : f = g :=
  dfinsupp_ext h

variable [DecidableEq ι]

/-- The linear equivalence between families indexed by `p : Π i : ι, κ i` of multilinear maps
on the `fun i ↦ M i (p i)` and the space of multilinear map on `fun i ↦ ⨁ j : κ i, M i j`. -/
noncomputable def fromDirectSumEquiv [Finite ι] :
    ((p : (i : ι) → κ i) → MultilinearMap R (fun i ↦ M i (p i)) M') ≃ₗ[R]
    MultilinearMap R (fun i ↦ ⨁ j : κ i, M i j) M' :=
  haveI : Fintype ι := Fintype.ofFinite ι
  haveI : (i : ι) → DecidableEq (κ i) := fun i ↦ Classical.typeDecidableEq (κ i)
  fromDFinsuppEquiv _ _

@[simp]
theorem fromDirectSumEquiv_lof [Finite ι] [(i : ι) → DecidableEq (κ i)]
    (f : (p : (i : ι) → κ i) → MultilinearMap R (fun i ↦ M i (p i)) M')
    (p : (i : ι) → κ i) (x : (i : ι) → M i (p i)) :
    fromDirectSumEquiv f (fun i => lof R _ _ _ (x i)) = f p x := by
  have : Fintype ι := Fintype.ofFinite ι
  rw [fromDirectSumEquiv, ← fromDFinsuppEquiv_single]
  convert! rfl

/-- Prefer using `fromDirectSumEquiv_lof` where possible. -/
theorem fromDirectSumEquiv_apply [Fintype ι] [(i : ι) → DecidableEq (κ i)]
    [Π i (j : κ i) (x : M i j), Decidable (x ≠ 0)]
    (f : (p : (i : ι) → κ i) → MultilinearMap R (fun i ↦ M i (p i)) M')
    (x : ⨁ i, ⨁ (j : κ i), M i j) :
    fromDirectSumEquiv f x =
      ∑ p ∈ Fintype.piFinset (fun i ↦ (x i).support), f p (fun i ↦ x i (p i)) := by
  rw [fromDirectSumEquiv, ← fromDFinsuppEquiv_apply]
  convert! rfl

@[simp]
theorem fromDirectSumEquiv_symm_apply [Finite ι] [(i : ι) → DecidableEq (κ i)]
    (f : MultilinearMap R (fun i ↦ ⨁ j : κ i, M i j) M')
    (p : (i : ι) → κ i) :
    fromDirectSumEquiv.symm f p = f.compLinearMap (fun i ↦ DirectSum.lof _ _ _ (p i)) := by
  have : Fintype ι := Fintype.ofFinite ι
  simp_rw [fromDirectSumEquiv, DirectSum.lof, ← fromDFinsuppEquiv_symm_apply]
  convert! rfl

end MultilinearMap
```
