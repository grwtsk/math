# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ext.Variant5682d74eb028c74658f2a3f9fc6759b56cab7976fb6539b15b9c4116de924952

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `56b03d0ed69879cbd54f12f8a607aa65cd6521f2` · SHA-256 `a0a46440d8a88919cf51fad5a120c24cb6b33b36348c8cfa9be86eea105ea3f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variante9f6701732955690e1700d6b0e87d7ca488f1600a30125b9f11d3487f8aa4c47","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e9f6701732955690e1700d6b0e87d7ca488f1600a30125b9f11d3487f8aa4c47","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variante9f6701732955690e1700d6b0e87d7ca488f1600a30125b9f11d3487f8aa4c47","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e9f6701732955690e1700d6b0e87d7ca488f1600a30125b9f11d3487f8aa4c47","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/Ext.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variante9f6701732955690e1700d6b0e87d7ca488f1600a30125b9f11d3487f8aa4c47

example (f g : α → β) (h : ∀ a, f a = g a) : f = g := by
  aesop

example (x y : α × β) (h₁ : x.1 = y.1) (h₂ : x.2 = y.2) : x = y := by
  aesop
```
