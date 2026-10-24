# Complete source: GRWTSK.Algebra.LinearAlgebra.Finsupp.Variantf61a60decde40a78db28e8e76bc9e3e86a2c5a296572100569d9ef4ebd6ae436

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b121e60b41da57b7743e4e50f5b14007efff33e` · SHA-256 `2fe2a5262b1c72c4b3b0060b77e1224d13820d3d2cc53c92fd30aa5631257bbd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.FinsuppLEquivDirectSum.Variantfae377658c2d04c58253b009e162f1cd4ccc71b36a8471df7ce0460c8757ff69","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fae377658c2d04c58253b009e162f1cd4ccc71b36a8471df7ce0460c8757ff69","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.FinsuppLEquivDirectSum.Variantfae377658c2d04c58253b009e162f1cd4ccc71b36a8471df7ce0460c8757ff69","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"fae377658c2d04c58253b009e162f1cd4ccc71b36a8471df7ce0460c8757ff69","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/DirectSum/Finsupp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl
-/
import Mathlib.Algebra.DirectSum.Module
import Mathlib.Data.Finsupp.ToDFinsupp

/-!
# Results on direct sums and finitely supported functions.

1. The linear equivalence between finitely supported functions `ι →₀ M` and
the direct sum of copies of `M` indexed by `ι`.
-/



namespace GRWTSK.Algebra.LinearAlgebra.FinsuppLEquivDirectSum.Variantfae377658c2d04c58253b009e162f1cd4ccc71b36a8471df7ce0460c8757ff69

universe u v w

noncomputable section

open DirectSum

open LinearMap Submodule

variable {R : Type u} {M : Type v} [Semiring R] [AddCommMonoid M] [Module R M]

section finsuppLequivDirectSum

variable (R M) (ι : Type*) [DecidableEq ι]

/-- The finitely supported functions `ι →₀ M` are in linear equivalence with the direct sum of
copies of M indexed by ι. -/
def finsuppLEquivDirectSum : (ι →₀ M) ≃ₗ[R] ⨁ _ : ι, M :=
  haveI : ∀ m : M, Decidable (m ≠ 0) := Classical.decPred _
  finsuppLequivDFinsupp R

@[simp]
theorem finsuppLEquivDirectSum_single (i : ι) (m : M) :
    finsuppLEquivDirectSum R M ι (Finsupp.single i m) = DirectSum.lof R ι _ i m :=
  Finsupp.toDFinsupp_single i m

@[simp]
theorem finsuppLEquivDirectSum_symm_lof (i : ι) (m : M) :
    (finsuppLEquivDirectSum R M ι).symm (DirectSum.lof R ι _ i m) = Finsupp.single i m :=
  letI : ∀ m : M, Decidable (m ≠ 0) := Classical.decPred _
  DFinsupp.toFinsupp_single i m

end finsuppLequivDirectSum
```
