# Complete source: GRWTSK.Algebra.Injective.Variant069813f5291c4914b50077352e419d9fbea2db8e6a97d5ff16dc4e2481ce613e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `370af5ceb846f3b9df44803455b60aaf93340ebe` · SHA-256 `d2a7112bde4ef619f32dfb0a3930cff7072cbac595ffab4045e7657d1c1bdbed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.RootRingHomInjectiveStableUnderComposition.Variant566ece4a69645bf0c640732bc5f56a50b44b6a7d45bbe71e929cef509bcc04c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"566ece4a69645bf0c640732bc5f56a50b44b6a7d45bbe71e929cef509bcc04c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.RootRingHomInjectiveStableUnderComposition.Variant566ece4a69645bf0c640732bc5f56a50b44b6a7d45bbe71e929cef509bcc04c3","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"566ece4a69645bf0c640732bc5f56a50b44b6a7d45bbe71e929cef509bcc04c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/RingHom/Injective.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Andrew Yang, Qi Ge, Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang, Qi Ge, Christian Merten
-/
import Mathlib.RingTheory.RingHomProperties

/-! # Meta properties of injective ring homomorphisms -/


namespace GRWTSK.Algebra.RootRingHomInjectiveStableUnderComposition.Variant566ece4a69645bf0c640732bc5f56a50b44b6a7d45bbe71e929cef509bcc04c3

lemma _root_.GRWTSK.Algebra.RootRingHomInjectiveStableUnderComposition.Variant566ece4a69645bf0c640732bc5f56a50b44b6a7d45bbe71e929cef509bcc04c3.RingHom.injective_stableUnderComposition :
    RingHom.StableUnderComposition (fun f ↦ Function.Injective f) := by
  intro R S T _ _ _ f g hf hg
  simp only [RingHom.coe_comp]
  exact Function.Injective.comp hg hf

lemma _root_.GRWTSK.Algebra.RootRingHomInjectiveStableUnderComposition.Variant566ece4a69645bf0c640732bc5f56a50b44b6a7d45bbe71e929cef509bcc04c3.RingHom.injective_respectsIso :
    RingHom.RespectsIso (fun f ↦ Function.Injective f) := by
  apply RingHom.injective_stableUnderComposition.respectsIso
  intro R S _ _ e
  exact e.bijective.injective
```
