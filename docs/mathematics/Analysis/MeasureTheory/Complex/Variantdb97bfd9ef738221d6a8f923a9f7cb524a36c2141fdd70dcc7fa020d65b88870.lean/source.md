# Complete source: GRWTSK.Analysis.MeasureTheory.Complex.Variantdb97bfd9ef738221d6a8f923a9f7cb524a36c2141fdd70dcc7fa020d65b88870

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f30e4443b5d751f707eb6dfd0d1ec3ac6f57fb1b` · SHA-256 `c47a759d099e441518c210aef2308135d758324c6b0ca90dcab6670dad43e101`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.Complex.Variante8b5697bf30f223ceb286244fada58f23abbfd1f9edecd04ebe0e2361f77e1cc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e8b5697bf30f223ceb286244fada58f23abbfd1f9edecd04ebe0e2361f77e1cc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.Complex.Variante8b5697bf30f223ceb286244fada58f23abbfd1f9edecd04ebe0e2361f77e1cc","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"e8b5697bf30f223ceb286244fada58f23abbfd1f9edecd04ebe0e2361f77e1cc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/Constructions/BorelSpace/Complex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Analysis.Complex.Basic
import Mathlib.MeasureTheory.Constructions.BorelSpace.Basic

/-! # Equip `ℂ` with the Borel sigma-algebra -/



namespace GRWTSK.Analysis.MeasureTheory.Complex.Variante8b5697bf30f223ceb286244fada58f23abbfd1f9edecd04ebe0e2361f77e1cc

noncomputable section

instance (priority := 900) RCLike.measurableSpace {𝕜 : Type*} [RCLike 𝕜] : MeasurableSpace 𝕜 :=
  borel 𝕜

instance (priority := 900) RCLike.borelSpace {𝕜 : Type*} [RCLike 𝕜] : BorelSpace 𝕜 :=
  ⟨rfl⟩

instance Complex.measurableSpace : MeasurableSpace ℂ :=
  borel ℂ

instance Complex.borelSpace : BorelSpace ℂ :=
  ⟨rfl⟩
```
