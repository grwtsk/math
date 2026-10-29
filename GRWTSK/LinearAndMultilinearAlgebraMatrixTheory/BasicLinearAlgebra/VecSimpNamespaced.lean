-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.VecUtil.Variant609b174a9910590f859ca914c932bdf387d8a6b98c4faa9f2ecd48acd579bc87","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"609b174a9910590f859ca914c932bdf387d8a6b98c4faa9f2ecd48acd579bc87","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.VecUtil.Variant609b174a9910590f859ca914c932bdf387d8a6b98c4faa9f2ecd48acd579bc87","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"609b174a9910590f859ca914c932bdf387d8a6b98c4faa9f2ecd48acd579bc87","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Tactic/VecSimp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Tactic.VecUtil
import Mathlib.Tactic.NormNum

/-!
# vec_simp: Vector simplification

## Tactics

* `vec_simp` - vector indexing: `![a,b,c] 2` → `c`, `![a,b,c] ⟨1, proof⟩` → `b`
* `vec_simp!` - + dite, abs, norm_num; use `vec_simp! [M]` for named matrices

## Why needed

Mathlib's `cons_val` uses `int?` which misses `Fin.mk` applications like `⟨0, by omega⟩`.
Uses `VecUtil.vecConsFinMk` which handles both via `Fin.val` reduction.

Shared utilities in `LeanCert.Tactic.VecUtil`. Debug: `set_option trace.VecUtil.debug true`
-/


namespace GRWTSK.Algebra.LinearAlgebra.VecUtil.Variant609b174a9910590f859ca914c932bdf387d8a6b98c4faa9f2ecd48acd579bc87

/-- Simplify vector indexing: `![a,b,c] ⟨1, proof⟩` → `b`, `![a,b,c] 2` → `c`.
    See `vec_simp!` for dite/abs support. -/
macro "vec_simp" : tactic =>
  `(tactic| simp only [VecUtil.vecConsFinMk, Matrix.cons_val_zero, Matrix.cons_val_zero',
                       Matrix.cons_val_one, Matrix.head_cons])

/-- `vec_simp` + dite conditions + abs + norm_num. Use `vec_simp! [M]` for named matrices. -/
macro "vec_simp!" : tactic =>
  `(tactic| (vec_index_simp_with_dite; try norm_num))

/-- Unfold definitions then `vec_simp!`. E.g., `vec_simp! [M]` for `def M := ![![...]]`. -/
macro "vec_simp!" "[" defs:Lean.Parser.Tactic.simpLemma,* "]" : tactic =>
  `(tactic| (simp only [$defs,*]; vec_simp!))
