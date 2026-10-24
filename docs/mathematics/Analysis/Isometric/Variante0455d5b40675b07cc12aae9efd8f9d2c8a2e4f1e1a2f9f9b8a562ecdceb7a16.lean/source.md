# Complete source: GRWTSK.Analysis.Isometric.Variante0455d5b40675b07cc12aae9efd8f9d2c8a2e4f1e1a2f9f9b8a562ecdceb7a16

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `705398b780979d378b6db688503250ed4e714516` · SHA-256 `87eb36f1cd01506c0d7aac6995f7ec7c3180d7ce3e742a4886ef67e66ffcad5c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.CStarAlgebraNormPosPartLe.Variantc8be1a60d587b7c2ba41163d963f6dc763407dc88fbe8ee1f87fcc696736e507","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c8be1a60d587b7c2ba41163d963f6dc763407dc88fbe8ee1f87fcc696736e507","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.GeneralAnalysis.SourceCorpus.CStarAlgebraNormPosPartLe.Variantc8be1a60d587b7c2ba41163d963f6dc763407dc88fbe8ee1f87fcc696736e507","mathematical_subject":"Analysis.GeneralAnalysis","original_sha256":"c8be1a60d587b7c2ba41163d963f6dc763407dc88fbe8ee1f87fcc696736e507","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/SpecialFunctions/ContinuousFunctionalCalculus/PosPart/Isometric.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/

import Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.PosPart.Basic
import Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Isometric

/-! # Facts about `CFC.posPart` and `CFC.negPart` involving norms

This file collects various facts about the positive and negative parts of elements of a
C⋆-algebra that involve the norm.

## Main results

* `CFC.norm_eq_max_norm_posPart_negPart`: states that `‖a‖ = max ‖a⁺‖ ‖a⁻‖`
* `CFC.norm_posPart_le` and `CFC.norm_negPart_le`: state that `‖a⁺‖ ≤ ‖a‖` and `‖a⁻‖ ≤ ‖a‖`
  respectively.
-/


namespace GRWTSK.Analysis.CStarAlgebraNormPosPartLe.Variantc8be1a60d587b7c2ba41163d963f6dc763407dc88fbe8ee1f87fcc696736e507

variable {A : Type*} [NonUnitalNormedRing A] [NormedSpace ℝ A] [SMulCommClass ℝ A A]
  [IsScalarTower ℝ A A] [StarRing A]
  [NonUnitalIsometricContinuousFunctionalCalculus ℝ A IsSelfAdjoint]

@[simp]
lemma CStarAlgebra.norm_posPart_le (a : A) : ‖a⁺‖ ≤ ‖a‖ := by
  by_cases ha : IsSelfAdjoint a
  case neg => simp [CFC.posPart_def, cfcₙ_apply_of_not_predicate a ha]
  refine norm_cfcₙ_le fun x hx ↦ ?_
  obtain (h | h) := le_or_lt x 0
  · simp [posPart_def, max_eq_right h]
  · simp only [posPart_def, max_eq_left h.le]
    exact NonUnitalIsometricContinuousFunctionalCalculus.norm_quasispectrum_le a hx ha

@[simp]
lemma CStarAlgebra.norm_negPart_le (a : A) : ‖a⁻‖ ≤ ‖a‖ := by
  simpa [CFC.negPart_neg] using norm_posPart_le (-a)

open CStarAlgebra in
lemma IsSelfAdjoint.norm_eq_max_norm_posPart_negPart (a : A) (ha : IsSelfAdjoint a := by cfc_tac) :
    ‖a‖ = max ‖a⁺‖ ‖a⁻‖ := by
  refine le_antisymm ?_ <| max_le (norm_posPart_le a) (norm_negPart_le a)
  conv_lhs => rw [← cfcₙ_id' ℝ a]
  rw [norm_cfcₙ_le_iff ..]
  intro x hx
  obtain (hx' | hx') := le_total 0 x
  · apply le_max_of_le_left
    refine le_of_eq_of_le ?_ <| norm_apply_le_norm_cfcₙ _ a hx
    rw [posPart_eq_self.mpr hx']
  · apply le_max_of_le_right
    refine le_of_eq_of_le ?_ <| norm_apply_le_norm_cfcₙ _ a hx
    rw [negPart_eq_neg.mpr hx', norm_neg]
```
