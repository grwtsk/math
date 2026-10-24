# Complete source: GRWTSK.Algebra.LinearAlgebra.Nilpotent.Variant394156446d84c5b78420f506234c4a0151f73645bf1c741a50c0b9af7e78b6b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d099c86b700faa75fba8ec134868f970ebc70a8` · SHA-256 `cbaeb1d4aa47b1ad5603e74bd9e85850f6dd8ce86a1f6dbb2e55933fb5f01f5b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ModuleEndIsNilpotentIffOfFinite.Variantdb41ac4f408ebe60cd97867923e554e12c3045c61066caf93e1e9c306515594c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"db41ac4f408ebe60cd97867923e554e12c3045c61066caf93e1e9c306515594c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ModuleEndIsNilpotentIffOfFinite.Variantdb41ac4f408ebe60cd97867923e554e12c3045c61066caf93e1e9c306515594c","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"db41ac4f408ebe60cd97867923e554e12c3045c61066caf93e1e9c306515594c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Finiteness/Nilpotent.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.RingTheory.Finiteness.Defs
import Mathlib.RingTheory.Nilpotent.Defs

/-!
# Nilpotent maps on finite modules

-/


namespace GRWTSK.Algebra.LinearAlgebra.ModuleEndIsNilpotentIffOfFinite.Variantdb41ac4f408ebe60cd97867923e554e12c3045c61066caf93e1e9c306515594c

variable {R M : Type*} [CommSemiring R] [AddCommMonoid M] [Module R M]

theorem Module.End.isNilpotent_iff_of_finite [Module.Finite R M] {f : End R M} :
    IsNilpotent f ↔ ∀ m : M, ∃ n : ℕ, (f ^ n) m = 0 := by
  refine ⟨fun ⟨n, hn⟩ m ↦ ⟨n, by simp [hn]⟩, fun h ↦ ?_⟩
  rcases Module.Finite.fg_top (R := R) (M := M) with ⟨S, hS⟩
  choose g hg using h
  use Finset.sup S g
  ext m
  have hm : m ∈ Submodule.span R S := by simp [hS]
  induction hm using Submodule.span_induction with
  | mem x hx => exact pow_map_zero_of_le (Finset.le_sup hx) (hg x)
  | zero => simp
  | add => simp_all
  | smul => simp_all
```
