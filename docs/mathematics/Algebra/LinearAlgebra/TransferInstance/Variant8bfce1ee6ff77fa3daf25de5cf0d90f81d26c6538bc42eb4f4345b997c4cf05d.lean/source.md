# Complete source: GRWTSK.Algebra.LinearAlgebra.TransferInstance.Variant8bfce1ee6ff77fa3daf25de5cf0d90f81d26c6538bc42eb4f4345b997c4cf05d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96c37f582e47b90ededf88ab5d236d65abf60446` · SHA-256 `06daf76f1895ed5d82838e741d3a384a7355c7dfe97e3dab46edd73557e89f78`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.AddEquivLieRing.Variant93bf10255980af700018a41e5ac2d6b8c397f3ac14fe20b23f93279dd782b4f3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"93bf10255980af700018a41e5ac2d6b8c397f3ac14fe20b23f93279dd782b4f3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.AddEquivLieRing.Variant93bf10255980af700018a41e5ac2d6b8c397f3ac14fe20b23f93279dd782b4f3","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"93bf10255980af700018a41e5ac2d6b8c397f3ac14fe20b23f93279dd782b4f3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Lie/TransferInstance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Leonid Ryvkin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonid Ryvkin
-/

module

public import Mathlib.Algebra.Lie.Basic
public import Mathlib.Algebra.Group.TransferInstance

/-!
# Transfer Lie brackets along AddEquiv, LinearEquiv and Equiv

Main definitions:
* `AddEquiv.lieRing` transferring a LieRing structure along an additive equivalence.
* `LinearEquiv.lieAlgebra` transferring a Lie algebra structure along a linear equivalence.

-/


namespace GRWTSK.Algebra.LinearAlgebra.AddEquivLieRing.Variant93bf10255980af700018a41e5ac2d6b8c397f3ac14fe20b23f93279dd782b4f3

@[expose] public section

section

variable {R M L : Type*} [CommRing R] [AddCommGroup M] [Module R M] [LieRing L] [LieAlgebra R L]

/-- Transfer `LieRing` across an `AddEquiv` -/
protected abbrev AddEquiv.lieRing (e : M ≃+ L) : LieRing M where
  bracket x y := e.symm ⁅e x, e y⁆
  add_lie _ _ _ := by simp
  lie_add _ _ _ := by simp
  lie_self _ := by simp
  leibniz_lie _ _ _ := by simp

lemma AddEquiv.bracket_def (e : M ≃+ L) (x y : M) :
    letI := e.lieRing
    ⁅x, y⁆ = e.symm ⁅e x, e y⁆ := rfl

/-- Transfer `LieAlgebra` across a `LinearEquiv` -/
protected abbrev LinearEquiv.lieAlgebra (e : M ≃ₗ[R] L) :
    letI := e.toAddEquiv.lieRing
    LieAlgebra R M :=
  letI := e.toAddEquiv.lieRing
  { lie_smul _ _ _ := by simp [AddEquiv.bracket_def] }

variable (R) in
/-- An equivalence `e : M ≃ₗ[R] L` gives a Lie algebra equivalence `M ≃ₗ⁅R⁆ L` where the Lie bracket
on `M` is the one obtained by transporting a Lie Bracket on `L` back along `e`. -/
def LinearEquiv.lieEquiv (e : M ≃ₗ[R] L) :
    letI := e.toAddEquiv.lieRing
    letI := e.lieAlgebra
    M ≃ₗ⁅R⁆ L :=
  letI := e.toAddEquiv.lieRing
  letI := e.lieAlgebra
  { e with map_lie' := by simp [AddEquiv.bracket_def] }

@[simp]
lemma LinearEquiv.lieEquiv_apply (e : M ≃ₗ[R] L) (a : M) :
    e.lieEquiv R a = e a := rfl

@[simp]
lemma LinearEquiv.lieEquiv_symm_apply (e : M ≃ₗ[R] L) (b : L) :
    letI := e.toAddEquiv.lieRing
    letI := e.lieAlgebra
    (e.lieEquiv R).symm b = e.symm b := rfl

end

namespace Equiv

variable {R L' L : Type*} [CommRing R] [LieRing L] [LieAlgebra R L] (e : L' ≃ L)

/-- Transfer `LieRing` across an `Equiv` -/
@[deprecated AddEquiv.lieRing (since := "2026-07-30")]
protected abbrev lieRing : LieRing L' :=
  letI := e.addCommGroup
  e.addEquiv.lieRing

@[deprecated AddEquiv.bracket_def (since := "2026-07-30")]
lemma bracket_def (x y : L') :
    letI := e.lieRing
    ⁅x, y⁆ = e.symm ⁅e x, e y⁆ := rfl

@[deprecated (since := "2026-07-30")] alias lieAlgebra := LinearEquiv.lieAlgebra
@[deprecated (since := "2026-07-30")] alias lieEquiv := LinearEquiv.lieEquiv
@[deprecated (since := "2026-07-30")] alias lieEquiv_apply := LinearEquiv.lieEquiv_apply
@[deprecated (since := "2026-07-30")] alias lieEquiv_symm_apply := LinearEquiv.lieEquiv_symm_apply

end Equiv
```
