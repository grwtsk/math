# Complete source: GRWTSK.Algebra.UniversalAlgebra.StarOrdered.Variantdea54f71c3cbcbbe971169e6faa2f638e94848851d961b0e35e917abe4fa466e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `191e2a897a02396f34cccc82347c6a82adcb2707` · SHA-256 `cb669624a23c2beb1a25bd4e2e30e67cb0dc29002770ef5b6656d9a5751cad8b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Star.Variantdcd9d41c09bd25ed48e4527421271b12abc279975ac9eca180d19451a1fd7ad1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dcd9d41c09bd25ed48e4527421271b12abc279975ac9eca180d19451a1fd7ad1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Star.Variantdcd9d41c09bd25ed48e4527421271b12abc279975ac9eca180d19451a1fd7ad1","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"dcd9d41c09bd25ed48e4527421271b12abc279975ac9eca180d19451a1fd7ad1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Real/StarOrdered.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.Order.Star.Basic
import Mathlib.Data.NNReal.Star
import Mathlib.Data.Real.Sqrt

/-! # `ℝ` and `ℝ≥0` are *-ordered rings. -/


namespace GRWTSK.Algebra.UniversalAlgebra.Star.Variantdcd9d41c09bd25ed48e4527421271b12abc279975ac9eca180d19451a1fd7ad1

open scoped NNReal

/-- Although the instance `RCLike.toStarOrderedRing` exists, it is locked behind the
`ComplexOrder` scope because currently the order on `ℂ` is not enabled globally. But we
want `StarOrderedRing ℝ` to be available globally, so we include this instance separately.
In addition, providing this instance here makes it available earlier in the import
hierarchy; otherwise in order to access it we would need to import
`Mathlib/Analysis/RCLike/Basic.lean`. -/
instance Real.instStarOrderedRing : StarOrderedRing ℝ :=
  StarOrderedRing.of_nonneg_iff' add_le_add_left fun r => by
    refine ⟨fun hr => ⟨√r, (mul_self_sqrt hr).symm⟩, ?_⟩
    rintro ⟨s, rfl⟩
    exact mul_self_nonneg s

instance NNReal.instStarOrderedRing : StarOrderedRing ℝ≥0 := by
  refine .of_le_iff fun x y ↦ ⟨fun h ↦ ?_, ?_⟩
  · obtain ⟨d, rfl⟩ := exists_add_of_le h
    refine ⟨sqrt d, ?_⟩
    simp only [star_trivial, mul_self_sqrt]
  · rintro ⟨p, -, rfl⟩
    exact le_self_add
```
