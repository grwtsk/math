# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Init.Variant45b7f70143a95512c4bc4a86b83d8ae81166512445c4ff2fce3e4e262c1f61cc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aebbabff8d3dc40bc2e7c2bc12456371c6b0c97a` · SHA-256 `8a2339c31270f7dc397ad170b9271bd4dea87d6733d32766eb5234fc6a16ed41`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant612221f65ece4a39a8a14100041ae5bae367d9f91414219e0626b88f0bfa17c7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"612221f65ece4a39a8a14100041ae5bae367d9f91414219e0626b88f0bfa17c7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variant612221f65ece4a39a8a14100041ae5bae367d9f91414219e0626b88f0bfa17c7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"612221f65ece4a39a8a14100041ae5bae367d9f91414219e0626b88f0bfa17c7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Sheaves/Init.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang
-/

import Mathlib.Init
import Aesop

/-!
# Rule sets related to topological (pre)sheaves

This module defines the `Restrict` Aesop rule set. Aesop rule sets only become
visible once the file in which they're declared is imported, so we must put this
declaration into its own file.
-/

/- to prove subset relations -/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant612221f65ece4a39a8a14100041ae5bae367d9f91414219e0626b88f0bfa17c7

declare_aesop_rule_sets [Restrict]
```
