# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Init.Variantbf8aec715a2584f66ed39673b2f8dea84ec5355b04bb0de48069d63f0972847a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `373d7e93cffe6e84c2d27bc4a020791c6c065be7` · SHA-256 `9739ea3024d1aedcf00c8737e57b5a1a2d1c57e700f12055f4c66b454152fcd3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Varianta4792a5c08bd1a4291e12a9e13c0d00e823645e6874a5653c2c83dfbc3a688ec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a4792a5c08bd1a4291e12a9e13c0d00e823645e6874a5653c2c83dfbc3a688ec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Varianta4792a5c08bd1a4291e12a9e13c0d00e823645e6874a5653c2c83dfbc3a688ec","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a4792a5c08bd1a4291e12a9e13c0d00e823645e6874a5653c2c83dfbc3a688ec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Sym/Sym2/Init.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Mathlib.Init
import Aesop

/-!
# Sym2 Rule Set

This module defines the `Sym2` Aesop rule set. Aesop rule sets only become
visible once the file in which they're declared is imported, so we must put this
declaration into its own file.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Varianta4792a5c08bd1a4291e12a9e13c0d00e823645e6874a5653c2c83dfbc3a688ec

declare_aesop_rule_sets [Sym2]
```
