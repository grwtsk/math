# Complete source: GRWTSK.Algebra.UniversalAlgebra.BigOperators.Variantcc4181a16ff3145683ef7cf604175d1b649827c145d9b908d365ce504e31e120

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ca2566ff4d7fd86d4707e8aad31396faa8de000` · SHA-256 `9bf2c0ffe762c0076d754c099273510c35e84e4e776fa51a927d11f984fa5eff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.StarProd.Varianta407d63ba89013b9686094b95090ba28d60350732e2b039e8b3c252e95624fc5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a407d63ba89013b9686094b95090ba28d60350732e2b039e8b3c252e95624fc5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.StarProd.Varianta407d63ba89013b9686094b95090ba28d60350732e2b039e8b3c252e95624fc5","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"a407d63ba89013b9686094b95090ba28d60350732e2b039e8b3c252e95624fc5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Star/BigOperators.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs

/-! # Big-operators lemmas about `star` algebraic operations

These results are kept separate from `Algebra.Star.Basic` to avoid it needing to import `Finset`.
-/



namespace GRWTSK.Algebra.UniversalAlgebra.StarProd.Varianta407d63ba89013b9686094b95090ba28d60350732e2b039e8b3c252e95624fc5

variable {R : Type*}

@[simp]
theorem star_prod [CommMonoid R] [StarMul R] {α : Type*} (s : Finset α) (f : α → R) :
    star (∏ x ∈ s, f x) = ∏ x ∈ s, star (f x) := map_prod (starMulAut : R ≃* R) _ _

@[simp]
theorem star_sum [AddCommMonoid R] [StarAddMonoid R] {α : Type*} (s : Finset α) (f : α → R) :
    star (∑ x ∈ s, f x) = ∑ x ∈ s, star (f x) := map_sum (starAddEquiv : R ≃+ R) _ _
```
