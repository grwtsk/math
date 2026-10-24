# Complete source: GRWTSK.Algebra.Pow.Variante0bda376d903d97afb4fe45a110a8426af81a8dd160c176773b9afee7c0395e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24d474b7a546089235bcb610516679e8aa1eb987` · SHA-256 `c5ec9c144fadf7d4bdd0f4c7ba65a0a771848e7f871a7d6d3af9da0abeb45fb0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.PowMulOfLe.Variantf334ef75c2b725c9f7e93aa6482671e2505cdce23f79d2137e37ae5f50de2367","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f334ef75c2b725c9f7e93aa6482671e2505cdce23f79d2137e37ae5f50de2367","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.PowMulOfLe.Variantf334ef75c2b725c9f7e93aa6482671e2505cdce23f79d2137e37ae5f50de2367","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"f334ef75c2b725c9f7e93aa6482671e2505cdce23f79d2137e37ae5f50de2367","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/LinearAlgebra/SModEq/Pow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/

module

public import Mathlib.LinearAlgebra.SModEq.Basic
public import Mathlib.RingTheory.Ideal.Operations
public import Mathlib.Algebra.Ring.GeomSum

/-! # Lemmas about SModEq related to powers -/


namespace GRWTSK.Algebra.PowMulOfLe.Variantf334ef75c2b725c9f7e93aa6482671e2505cdce23f79d2137e37ae5f50de2367

public section

namespace SModEq
variable {R : Type*} [CommRing R] {I J : Ideal R} {p : ℕ} (hpI : (p : R) ∈ I)
include hpI

theorem pow_mul_of_le {x y : R} (h : x ≡ y [SMOD J]) (hJI : J ≤ I) :
    x ^ p ≡ y ^ p [SMOD J * I] := by
  have h₁ := idealQuotientMk.mp <| h.mono hJI
  rw [SModEq.sub_mem] at h ⊢
  rw [← Commute.mul_neg_geom_sum₂ (.all _ _)]
  refine Ideal.mul_mem_mul h ?_
  have h₂ : (p : R ⧸ I) = 0 := by simpa using Ideal.Quotient.eq_zero_iff_mem.mpr hpI
  simp only [← Ideal.Quotient.eq_zero_iff_mem, map_sum, map_mul, map_pow, h₁, ← pow_add]
  trans ∑ x ∈ Finset.range p, Ideal.Quotient.mk I y ^ (p - 1)
  · exact Finset.sum_congr rfl fun _ _ ↦ by grind
  simp [h₂]

theorem pow_add_one {x y : R} {m : ℕ} (hm : m ≠ 0) (h : x ≡ y [SMOD I ^ m]) :
    x ^ p ≡ y ^ p [SMOD I ^ (m + 1)] := h.pow_mul_of_le hpI <| I.pow_le_self hm

theorem pow_pow_add_one {x y : R} (h : x ≡ y [SMOD I]) (m : ℕ) :
    x ^ p ^ m ≡ y ^ p ^ m [SMOD I ^ (m + 1)] := by
  induction m with
  | zero => simpa
  | succ m ih =>
    simp_rw [pow_succ _ m, pow_mul]
    exact ih.pow_add_one hpI m.succ_ne_zero

end SModEq
```
