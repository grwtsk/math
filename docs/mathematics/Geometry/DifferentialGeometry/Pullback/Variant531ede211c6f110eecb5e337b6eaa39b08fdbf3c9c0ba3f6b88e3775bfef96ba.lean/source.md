# Complete source: GRWTSK.Geometry.DifferentialGeometry.Pullback.Variant531ede211c6f110eecb5e337b6eaa39b08fdbf3c9c0ba3f6b88e3775bfef96ba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0677587091233429a7f614b20b22cf602d99774` · SHA-256 `c182a837005c6b2dd9b44fb11a1b3abcec8f228ce2f2768cc9f58d10d47282a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.DifferentialGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.DifferentialGeometry.ContMDiffMap.Variant6be75e11f88127c7d62576a54d4bba2e6a85dc2b7cc956711e3b666746ef5260","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6be75e11f88127c7d62576a54d4bba2e6a85dc2b7cc956711e3b666746ef5260","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.DifferentialGeometry.SourceCorpus.ContMDiffMap.Variant6be75e11f88127c7d62576a54d4bba2e6a85dc2b7cc956711e3b666746ef5260","mathematical_subject":"Geometry.DifferentialGeometry","original_sha256":"6be75e11f88127c7d62576a54d4bba2e6a85dc2b7cc956711e3b666746ef5260","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Geometry/Manifold/VectorBundle/Pullback.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Floris van Doorn, Heather Macbeth. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn, Heather Macbeth
-/
import Mathlib.Geometry.Manifold.ContMDiffMap
import Mathlib.Geometry.Manifold.VectorBundle.Basic

/-! # Pullbacks of `C^n` vector bundles

This file defines pullbacks of `C^n` vector bundles over a manifold.

## Main definitions

* `ContMDiffVectorBundle.pullback`: For a `C^n` vector bundle `E` over a manifold `B` and a `C^n`
  map `f : B' → B`, the pullback vector bundle `f *ᵖ E` is a `C^n` vector bundle.

-/


namespace GRWTSK.Geometry.DifferentialGeometry.ContMDiffMap.Variant6be75e11f88127c7d62576a54d4bba2e6a85dc2b7cc956711e3b666746ef5260

open Bundle Set
open scoped Manifold

variable {𝕜 B B' : Type*} (F : Type*) (E : B → Type*) {n : WithTop ℕ∞}
variable [NontriviallyNormedField 𝕜] [∀ x, AddCommMonoid (E x)] [∀ x, Module 𝕜 (E x)]
  [NormedAddCommGroup F] [NormedSpace 𝕜 F] [TopologicalSpace (TotalSpace F E)]
  [∀ x, TopologicalSpace (E x)] {EB : Type*} [NormedAddCommGroup EB] [NormedSpace 𝕜 EB]
  {HB : Type*} [TopologicalSpace HB] {IB : ModelWithCorners 𝕜 EB HB} [TopologicalSpace B]
  [ChartedSpace HB B] {EB' : Type*} [NormedAddCommGroup EB']
  [NormedSpace 𝕜 EB'] {HB' : Type*} [TopologicalSpace HB'] (IB' : ModelWithCorners 𝕜 EB' HB')
  [TopologicalSpace B'] [ChartedSpace HB' B'] [FiberBundle F E]
  [VectorBundle 𝕜 F E] [ContMDiffVectorBundle n F E IB] (f : ContMDiffMap IB' IB B' B n)

/-- For a `C^n` vector bundle `E` over a manifold `B` and a `C^n` map `f : B' → B`, the pullback
vector bundle `f *ᵖ E` is a `C^n` vector bundle. -/
instance ContMDiffVectorBundle.pullback : ContMDiffVectorBundle n F (f *ᵖ E) IB' where
  contMDiffOn_coordChangeL := by
    rintro _ _ ⟨e, he, rfl⟩ ⟨e', he', rfl⟩
    refine ((contMDiffOn_coordChangeL e e').comp f.contMDiff.contMDiffOn fun b hb => hb).congr ?_
    rintro b (hb : f b ∈ e.baseSet ∩ e'.baseSet); ext v
    show ((e.pullback f).coordChangeL 𝕜 (e'.pullback f) b) v = (e.coordChangeL 𝕜 e' (f b)) v
    rw [e.coordChangeL_apply e' hb, (e.pullback f).coordChangeL_apply' _]
    exacts [rfl, hb]
```
