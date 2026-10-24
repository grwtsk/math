# Complete source: GRWTSK.Algebra.Idempotents.Variant59056eed0c7779310f8b3a2842842928ad3c1baaf0aa5cc228c8c4e9a81c4387

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `180c686a7a779d91b1c36e7b06e0bcb22d4a73ec` · SHA-256 `0097ee4326612d65f30d9b076200bbeb4ec1f2f0a76197d201657f5317c42768`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Idempotent.Variant93a427056ec6c1c865024626f60460ecc32f49bcc21025abf59b3b314c399502","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"93a427056ec6c1c865024626f60460ecc32f49bcc21025abf59b3b314c399502","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Idempotent.Variant93a427056ec6c1c865024626f60460ecc32f49bcc21025abf59b3b314c399502","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"93a427056ec6c1c865024626f60460ecc32f49bcc21025abf59b3b314c399502","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/DirectSum/Idempotents.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yunzhou Xie. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yunzhou Xie, Jujian Zhang, Andrew Yang
-/
import Mathlib.RingTheory.Idempotents
import Mathlib.Algebra.DirectSum.Decomposition

/-!
# Decomposition of the identity of a semiring into orthogonal idempotents

In this file we show that if a semiring `R` can be decomposed into a direct sum
of (left) ideals `R = V₁ ⊕ V₂ ⊕ ⬝ ⬝ ⬝ ⊕ Vₙ` then in the corresponding decomposition
`1 = e₁ + e₂ + ⬝ ⬝ ⬝ + eₙ` with `eᵢ ∈ Vᵢ`, each `eᵢ` is an idempotent and the
`eᵢ`'s form a family of complete orthogonal idempotents.
-/


namespace GRWTSK.Algebra.Idempotent.Variant93a427056ec6c1c865024626f60460ecc32f49bcc21025abf59b3b314c399502

namespace DirectSum

section OrthogonalIdempotents

variable {R I : Type*} [Semiring R] [DecidableEq I] (V : I → Ideal R) [Decomposition V]

/-- The decomposition of `(1 : R)` where `1 = e₁ + e₂ + ⬝ ⬝ ⬝ + eₙ` which is induced by
  the decomposition of the semiring `R = V1 ⊕ V2 ⊕ ⬝ ⬝ ⬝ ⊕ Vn`. -/
def idempotent (i : I) : R :=
  decompose V 1 i

lemma decompose_eq_mul_idempotent (x : R) (i : I) : decompose V x i = x * idempotent V i := by
  rw [← smul_eq_mul (a := x), idempotent, ← Submodule.coe_smul, ← smul_apply, ← decompose_smul,
    smul_eq_mul, mul_one]

lemma isIdempotentElem_idempotent (i : I) : IsIdempotentElem (idempotent V i : R) := by
  rw [IsIdempotentElem, ← decompose_eq_mul_idempotent, idempotent, decompose_coe, of_eq_same]

/-- If a semiring can be decomposed into direct sum of finite left ideals `Vᵢ`
  where `1 = e₁ + ... + eₙ` and `eᵢ ∈ Vᵢ`, then `eᵢ` is a family of complete
  orthogonal idempotents. -/
theorem completeOrthogonalIdempotents_idempotent [Fintype I]:
    CompleteOrthogonalIdempotents (idempotent V) where
  idem := isIdempotentElem_idempotent V
  ortho i j hij := by
    simp only
    rw [← decompose_eq_mul_idempotent, idempotent, decompose_coe,
      of_eq_of_ne (h := hij), Submodule.coe_zero]
  complete := by
    apply (decompose V).injective
    refine DFunLike.ext _ _ fun i ↦ ?_
    rw [decompose_sum, DFinsupp.finset_sum_apply]
    simp [idempotent, of_apply]

end OrthogonalIdempotents

end DirectSum
```
