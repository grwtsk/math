# Complete source: GRWTSK.Algebra.LinearAlgebra.Diagonal.Variant3f893871d28745a19666449a668d3d4af51f64291ecc72beca175b0508572fc3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7e2ed3dd9e2cffda7fc3fe9fe127785b695d4bfb` · SHA-256 `7d63417d1b0e257ea23d713e0b98d4134f0089ea6e9793b6a59409ae2256aa23`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ProjDiagonal.Variant8f24ea0833cb498d1a4f771aec3be8adb7e990660015920659b0f31dc103bb29","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8f24ea0833cb498d1a4f771aec3be8adb7e990660015920659b0f31dc103bb29","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ProjDiagonal.Variant8f24ea0833cb498d1a4f771aec3be8adb7e990660015920659b0f31dc103bb29","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"8f24ea0833cb498d1a4f771aec3be8adb7e990660015920659b0f31dc103bb29","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/Matrix/Diagonal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Patrick Massot, Casper Putz, Anne Baanen
-/
import Mathlib.LinearAlgebra.Dimension.LinearMap
import Mathlib.LinearAlgebra.Matrix.ToLin

/-!
# Diagonal matrices

This file contains some results on the linear map corresponding to a
diagonal matrix (`range`, `ker` and `rank`).

## Tags

matrix, diagonal, linear_map
-/



namespace GRWTSK.Algebra.LinearAlgebra.ProjDiagonal.Variant8f24ea0833cb498d1a4f771aec3be8adb7e990660015920659b0f31dc103bb29

noncomputable section

open LinearMap Matrix Set Submodule Matrix

universe u v w

namespace Matrix

section CommSemiring

variable {n : Type*} [Fintype n] [DecidableEq n] {R : Type v} [CommSemiring R]

theorem proj_diagonal (i : n) (w : n → R) : (proj i).comp (toLin' (diagonal w)) = w i • proj i :=
  LinearMap.ext fun _ => mulVec_diagonal _ _ _

theorem diagonal_comp_single (w : n → R) (i : n) :
    (diagonal w).toLin'.comp (LinearMap.single R (fun _ : n => R) i) =
      w i • LinearMap.single R (fun _ : n => R) i :=
  LinearMap.ext fun x => (diagonal_mulVec_single w _ _).trans (Pi.single_smul' i (w i) x)

theorem diagonal_toLin' (w : n → R) :
    toLin' (diagonal w) = LinearMap.pi fun i => w i • LinearMap.proj i :=
  LinearMap.ext fun _ => funext fun _ => mulVec_diagonal _ _ _

end CommSemiring

section Semifield

variable {m : Type*} [Fintype m] {K : Type u} [Semifield K]

-- maybe try to relax the universe constraint
theorem ker_diagonal_toLin' [DecidableEq m] (w : m → K) :
    ker (toLin' (diagonal w)) =
      ⨆ i ∈ { i | w i = 0 }, LinearMap.range (LinearMap.single K (fun _ => K) i) := by
  rw [← comap_bot, ← iInf_ker_proj, comap_iInf]
  have := fun i : m => ker_comp (toLin' (diagonal w)) (proj i)
  simp only [comap_iInf, ← this, proj_diagonal, ker_smul']
  have : univ ⊆ { i : m | w i = 0 } ∪ { i : m | w i = 0 }ᶜ := by rw [Set.union_compl_self]
  exact (iSup_range_single_eq_iInf_ker_proj K (fun _ : m => K) disjoint_compl_right this
    (Set.toFinite _)).symm

theorem range_diagonal [DecidableEq m] (w : m → K) :
    LinearMap.range (toLin' (diagonal w)) =
      ⨆ i ∈ { i | w i ≠ 0 }, LinearMap.range (LinearMap.single K (fun _ => K) i) := by
  dsimp only [mem_setOf_eq]
  rw [← Submodule.map_top, ← iSup_range_single, Submodule.map_iSup]
  congr; funext i
  rw [← LinearMap.range_comp, diagonal_comp_single, ← range_smul']

end Semifield

end Matrix

namespace LinearMap

section Field

variable {m : Type*} [Fintype m] {K : Type u} [Field K]

theorem rank_diagonal [DecidableEq m] [DecidableEq K] (w : m → K) :
    LinearMap.rank (toLin' (diagonal w)) = Fintype.card { i // w i ≠ 0 } := by
  have hu : univ ⊆ { i : m | w i = 0 }ᶜ ∪ { i : m | w i = 0 } := by rw [Set.compl_union_self]
  have hd : Disjoint { i : m | w i ≠ 0 } { i : m | w i = 0 } := disjoint_compl_left
  have B₁ := iSup_range_single_eq_iInf_ker_proj K (fun _ : m => K) hd hu (Set.toFinite _)
  have B₂ := iInfKerProjEquiv K (fun _ ↦ K) hd hu
  rw [LinearMap.rank, range_diagonal, B₁, ← @rank_fun' K]
  apply LinearEquiv.rank_eq
  apply B₂

end Field

end LinearMap
```
