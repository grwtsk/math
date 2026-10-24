# Complete source: GRWTSK.Analysis.ComplexAnalysis.BigOperators.Variantdb3f70bc2b767f47f13300107858f3a9f008775caca7500c9b52ecc4bef9235b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1028a7770c70bc7fe9646d4c17991daa25b0581` · SHA-256 `492d69350ebf9e004d45833ce792a5aaee84ed6400f436ccae6a7dca33970ac2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.ComplexAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ComplexAnalysis.OfRealProd.Varianta6870ef481febd2a03c215f41aebc38f507298b8cc47ecf100942c2d4a02b572","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a6870ef481febd2a03c215f41aebc38f507298b8cc47ecf100942c2d4a02b572","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ComplexAnalysis.SourceCorpus.OfRealProd.Varianta6870ef481febd2a03c215f41aebc38f507298b8cc47ecf100942c2d4a02b572","mathematical_subject":"Analysis.ComplexAnalysis","original_sha256":"a6870ef481febd2a03c215f41aebc38f507298b8cc47ecf100942c2d4a02b572","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Complex/BigOperators.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Kevin Buzzard. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kevin Buzzard, Mario Carneiro
-/
import Mathlib.Algebra.BigOperators.Balance
import Mathlib.Data.Complex.Basic

/-!
# Finite sums and products of complex numbers
-/


namespace GRWTSK.Analysis.ComplexAnalysis.OfRealProd.Varianta6870ef481febd2a03c215f41aebc38f507298b8cc47ecf100942c2d4a02b572

open Fintype
open scoped BigOperators

namespace Complex

variable {α : Type*} (s : Finset α)

@[simp, norm_cast]
theorem ofReal_prod (f : α → ℝ) : ((∏ i ∈ s, f i : ℝ) : ℂ) = ∏ i ∈ s, (f i : ℂ) :=
  map_prod ofRealHom _ _

@[simp, norm_cast]
theorem ofReal_sum (f : α → ℝ) : ((∑ i ∈ s, f i : ℝ) : ℂ) = ∑ i ∈ s, (f i : ℂ) :=
  map_sum ofRealHom _ _

@[simp, norm_cast]
lemma ofReal_expect (f : α → ℝ) : (𝔼 i ∈ s, f i : ℝ) = 𝔼 i ∈ s, (f i : ℂ) :=
  map_expect ofRealHom ..

@[simp, norm_cast]
lemma ofReal_balance [Fintype α] (f : α → ℝ) (a : α) :
    ((balance f a : ℝ) : ℂ) = balance ((↑) ∘ f) a := by simp [balance]

@[simp] lemma ofReal_comp_balance {ι : Type*} [Fintype ι] (f : ι → ℝ) :
    ofReal ∘ balance f = balance (ofReal ∘ f : ι → ℂ) := funext <| ofReal_balance _

@[simp]
theorem re_sum (f : α → ℂ) : (∑ i ∈ s, f i).re = ∑ i ∈ s, (f i).re :=
  map_sum reAddGroupHom f s

@[simp]
lemma re_expect (f : α → ℂ) : (𝔼 i ∈ s, f i).re = 𝔼 i ∈ s, (f i).re :=
  map_expect (LinearMap.mk reAddGroupHom.toAddHom (by simp)) f s

@[simp]
lemma re_balance [Fintype α] (f : α → ℂ) (a : α) : re (balance f a) = balance (re ∘ f) a := by
  simp [balance]

@[simp] lemma re_comp_balance {ι : Type*} [Fintype ι] (f : ι → ℂ) :
    re ∘ balance f = balance (re ∘ f) := funext <| re_balance _

@[simp]
theorem im_sum (f : α → ℂ) : (∑ i ∈ s, f i).im = ∑ i ∈ s, (f i).im :=
  map_sum imAddGroupHom f s

@[simp]
lemma im_expect (f : α → ℂ) : (𝔼 i ∈ s, f i).im = 𝔼 i ∈ s, (f i).im :=
  map_expect (LinearMap.mk imAddGroupHom.toAddHom (by simp)) f s

@[simp]
lemma im_balance [Fintype α] (f : α → ℂ) (a : α) : im (balance f a) = balance (im ∘ f) a := by
  simp [balance]

@[simp] lemma im_comp_balance {ι : Type*} [Fintype ι] (f : ι → ℂ) :
    im ∘ balance f = balance (im ∘ f) := funext <| im_balance _

end Complex
```
