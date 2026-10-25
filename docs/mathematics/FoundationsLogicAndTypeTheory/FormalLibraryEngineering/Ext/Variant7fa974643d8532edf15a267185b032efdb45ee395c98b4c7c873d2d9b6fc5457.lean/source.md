# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ext.Variant7fa974643d8532edf15a267185b032efdb45ee395c98b4c7c873d2d9b6fc5457

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99e2acb3ca1e273ad7c500123e3601e53134ec92` · SHA-256 `08b3134fc18a01aebe3fd1e0b657e423cf364c6daec88cfb26320500a7bb42e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attr.Variant79c590d926b73f111eaf946101ab837ac8b2f3d444a94b8acb5ebaf88e3c597c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"79c590d926b73f111eaf946101ab837ac8b2f3d444a94b8acb5ebaf88e3c597c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Attr.Variant79c590d926b73f111eaf946101ab837ac8b2f3d444a94b8acb5ebaf88e3c597c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"79c590d926b73f111eaf946101ab837ac8b2f3d444a94b8acb5ebaf88e3c597c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/ReduceModChar/Ext.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen
-/
import Mathlib.Init
import Lean.Meta.Tactic.Simp.Attr

/-!
# `@[reduce_mod_char]` attribute

This file registers `@[reduce_mod_char]` as a `simp` attribute.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attr.Variant79c590d926b73f111eaf946101ab837ac8b2f3d444a94b8acb5ebaf88e3c597c

open Lean Meta

/-- `@[reduce_mod_char]` is an attribute that tags lemmas for preprocessing and cleanup in the
`reduce_mod_char` tactic -/
initialize reduceModCharExt : SimpExtension ←
  registerSimpAttr `reduce_mod_char
    "lemmas for preprocessing and cleanup in the `reduce_mod_char` tactic"
```
