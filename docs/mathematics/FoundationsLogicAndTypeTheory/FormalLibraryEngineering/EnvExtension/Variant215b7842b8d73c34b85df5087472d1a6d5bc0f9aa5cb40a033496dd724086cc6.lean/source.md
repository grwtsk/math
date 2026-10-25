# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EnvExtension.Variant215b7842b8d73c34b85df5087472d1a6d5bc0f9aa5cb40a033496dd724086cc6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d1aeacb5c58daa732a85d50e33dd98d3ce356b2` · SHA-256 `300745cc19c070766db58f90dffe0b73770212f9b6621ad3194383b419b534ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ScopedEnvExtension.Variantc347317420bbd98480dbf7b888728dfa17a1f4036fbcceb0767679ef414ebf03","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c347317420bbd98480dbf7b888728dfa17a1f4036fbcceb0767679ef414ebf03","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ScopedEnvExtension.Variantc347317420bbd98480dbf7b888728dfa17a1f4036fbcceb0767679ef414ebf03","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c347317420bbd98480dbf7b888728dfa17a1f4036fbcceb0767679ef414ebf03","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Lean/EnvExtension.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
import Mathlib.Init
import Lean.ScopedEnvExtension

/-!
# Helper function for environment extensions and attributes.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ScopedEnvExtension.Variantc347317420bbd98480dbf7b888728dfa17a1f4036fbcceb0767679ef414ebf03

open Lean

instance {σ : Type} [Inhabited σ] : Inhabited (ScopedEnvExtension.State σ) := ⟨{state := default}⟩
```
