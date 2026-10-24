# Complete source: GRWTSK.Algebra.Small.Variant0dd255fbf9c85ce55c26552bb1445cafd4d1c8f7448cf69e8a738bfb57b9e7c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c7e44aa0a3c7b917223de0f41d56351c7b66bc1` · SHA-256 `26f44f33a26e70d168b2803d082f93c2f680d2c40a0796e8f74fadbbda707df6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Set.Variant55c77a2352593533be693181d3b5f7a9176dfaae4e39a02577a2eb069488ddf9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"55c77a2352593533be693181d3b5f7a9176dfaae4e39a02577a2eb069488ddf9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Set.Variant55c77a2352593533be693181d3b5f7a9176dfaae4e39a02577a2eb069488ddf9","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"55c77a2352593533be693181d3b5f7a9176dfaae4e39a02577a2eb069488ddf9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Group/Pointwise/Set/Small.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Violeta Hernández Palacios. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Violeta Hernández Palacios
-/
module

public import Mathlib.Algebra.Group.Pointwise.Set.Basic
public import Mathlib.Logic.Small.Set

/-!
# Small instances for pointwise operations
-/


namespace GRWTSK.Algebra.Set.Variant55c77a2352593533be693181d3b5f7a9176dfaae4e39a02577a2eb069488ddf9

public section

universe u

variable {α : Type*} (s t : Set α)

open scoped Pointwise

instance small_set_zero [Zero α] : Small.{u} (0 : Set α) := small_single _
instance small_set_one [One α] : Small.{u} (1 : Set α) := small_single _

instance small_neg [InvolutiveNeg α] [Small.{u} s] : Small.{u} (-s :) := by
  rw [← Set.image_neg_eq_neg]
  infer_instance

instance small_add [Add α] [Small.{u} s] [Small.{u} t] : Small.{u} (s + t) := small_image2 ..
instance small_sub [Sub α] [Small.{u} s] [Small.{u} t] : Small.{u} (s - t) := small_image2 ..
instance small_mul [Mul α] [Small.{u} s] [Small.{u} t] : Small.{u} (s * t) := small_image2 ..
instance small_div [Div α] [Small.{u} s] [Small.{u} t] : Small.{u} (s / t) := small_image2 ..
```
