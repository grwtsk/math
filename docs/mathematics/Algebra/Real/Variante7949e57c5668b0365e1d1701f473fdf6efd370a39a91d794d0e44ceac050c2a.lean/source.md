# Complete source: GRWTSK.Algebra.Real.Variante7949e57c5668b0365e1d1701f473fdf6efd370a39a91d794d0e44ceac050c2a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c3f7e33fecd0f5fe9de14d036d95b3b17799d8d` · SHA-256 `af4ec6333a504081d6e85a51eefc5d60b3fac8b2d719292bf91c594a66f149e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Star.Variantc4fc14e28795bc08f3c31620ce27fb85287870b641aaa3322e83b0f182d6ce66","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c4fc14e28795bc08f3c31620ce27fb85287870b641aaa3322e83b0f182d6ce66","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Star.Variantc4fc14e28795bc08f3c31620ce27fb85287870b641aaa3322e83b0f182d6ce66","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"c4fc14e28795bc08f3c31620ce27fb85287870b641aaa3322e83b0f182d6ce66","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Order/Star/Real.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Algebra.Order.Star.Basic
public import Mathlib.Analysis.Real.Sqrt
public import Mathlib.Basic.NNReal.Star

/-! # `ℝ` and `ℝ≥0` are \*-ordered rings. -/


namespace GRWTSK.Algebra.Star.Variantc4fc14e28795bc08f3c31620ce27fb85287870b641aaa3322e83b0f182d6ce66

public section

open scoped NNReal

/-- Although the instance `RCLike.toStarOrderedRing` exists, it is locked behind the
`ComplexOrder` scope because currently the order on `ℂ` is not enabled globally. But we
want `StarOrderedRing ℝ` to be available globally, so we include this instance separately.
In addition, providing this instance here makes it available earlier in the import
hierarchy; otherwise in order to access it we would need to import
`Mathlib/Analysis/RCLike/Basic.lean`. -/
instance Real.instStarOrderedRing : StarOrderedRing ℝ :=
  StarOrderedRing.of_nonneg_iff' add_le_add_right fun r => by
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

-- for lack of a better place with the necessary imports, we place this here
-- this exists only to satisfy the trivial instances of this class
instance {R : Type*} [AddGroup R] [Lattice R] [AddLeftMono R] [Star R] :
    SelfAdjointDecompose R where
  exists_nonneg_sub_nonneg {a} _ :=
    ⟨a⁺, a⁻, posPart_nonneg a, negPart_nonneg a, by simp⟩
```
