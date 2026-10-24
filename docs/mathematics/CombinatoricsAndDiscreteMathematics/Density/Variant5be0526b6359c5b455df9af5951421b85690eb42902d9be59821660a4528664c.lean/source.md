# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Density.Variant5be0526b6359c5b455df9af5951421b85690eb42902d9be59821660a4528664c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e276016911895a08187f5c5742c2a9e9234d56a0` · SHA-256 `c6a07b2773de275c9a008ecd3c15527addd228d65bd0ac9d672551a0f931ae2f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.DensInv.Variant1e20d2beb25dce96b50d09bb5611c04ca05a089075869b5aef79bb2bd8c4b79c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1e20d2beb25dce96b50d09bb5611c04ca05a089075869b5aef79bb2bd8c4b79c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.DensInv.Variant1e20d2beb25dce96b50d09bb5611c04ca05a089075869b5aef79bb2bd8c4b79c","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"1e20d2beb25dce96b50d09bb5611c04ca05a089075869b5aef79bb2bd8c4b79c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Pointwise/Finset/Density.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn, Yaël Dillies
-/
import Mathlib.Algebra.Group.Pointwise.Finset.Scalar
import Mathlib.Algebra.Group.Action.Pointwise.Finset
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Data.Finset.Density

/-!
# Theorems about the density of pointwise operations on finsets.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DensInv.Variant1e20d2beb25dce96b50d09bb5611c04ca05a089075869b5aef79bb2bd8c4b79c

open scoped Pointwise

variable {α β : Type*}

namespace Finset

variable [DecidableEq α] [InvolutiveInv α] {s : Finset α} {a : α} in
@[to_additive (attr := simp)]
lemma dens_inv [Fintype α] (s : Finset α) : s⁻¹.dens = s.dens := by simp [dens]

variable [DecidableEq β] [Group α] [MulAction α β] {s t : Finset β} {a : α} {b : β} in
@[to_additive (attr := simp)]
lemma dens_smul_finset [Fintype β] (a : α) (s : Finset β) : (a • s).dens = s.dens := by simp [dens]

end Finset
```
