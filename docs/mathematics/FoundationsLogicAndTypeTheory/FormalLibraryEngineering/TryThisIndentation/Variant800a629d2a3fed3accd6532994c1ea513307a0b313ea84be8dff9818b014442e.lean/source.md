# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TryThisIndentation.Variant800a629d2a3fed3accd6532994c1ea513307a0b313ea84be8dff9818b014442e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9bdcd2df1ac6aecf693d555f8bec217887750507` · SHA-256 `523cf4e1282478c53b8b74a5bc13badd5a47376d1efde0a7993be579a7afb99a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant83ae1a0781d0258dbe0383ad3adad2df9f550cf8a6b563f18146ed554644fda5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"83ae1a0781d0258dbe0383ad3adad2df9f550cf8a6b563f18146ed554644fda5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variant83ae1a0781d0258dbe0383ad3adad2df9f550cf8a6b563f18146ed554644fda5","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"83ae1a0781d0258dbe0383ad3adad2df9f550cf8a6b563f18146ed554644fda5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/TryThisIndentation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant83ae1a0781d0258dbe0383ad3adad2df9f550cf8a6b563f18146ed554644fda5

/--
info: Try this:

  [apply]     intro a_1 a_2
    simp_all only [ne_eq, List.mem_cons, or_self, not_false_eq_true]
-/
#guard_msgs in
example {a y : α} {l : List α} : a ≠ y → a ∉ l → a ∉ y::l := by
  aesop?

/--
info: Try this:

  [apply]   simp_all only [ne_eq, List.mem_cons, or_self, not_false_eq_true]
-/
#guard_msgs in
example {a y : α} {l : List α} : a ≠ y → a ∉ l → a ∉ y::l := by
  intros
  have : ¬ a ∈ y :: l := by
    aesop?
  exact this
```
