# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SetLike.Variant0ddcd063c630cb6e160d833675ad9e391f84003772dd24259a8472955adf098a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5721c4401dff90c3841b05726be4cac0c2ed672` · SHA-256 `c16f244bb992af5e2bc12191dec63ce0426288adc7c2e5215e3783ed6508fdee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant5416b7e5dddfc7b1f12191705915811f64bce9ee4e87109b00d7f552ca89b166","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5416b7e5dddfc7b1f12191705915811f64bce9ee4e87109b00d7f552ca89b166","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variant5416b7e5dddfc7b1f12191705915811f64bce9ee4e87109b00d7f552ca89b166","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5416b7e5dddfc7b1f12191705915811f64bce9ee4e87109b00d7f552ca89b166","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/SetLike.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/

import Mathlib.Init
import Aesop

/-!
# SetLike Rule Set

This module defines the `SetLike` Aesop rule set which is used by the
`SetLike` tactic. Aesop rule sets only become visible once the file in which
they're declared is imported, so we must put this declaration into its own file.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant5416b7e5dddfc7b1f12191705915811f64bce9ee4e87109b00d7f552ca89b166

declare_aesop_rule_sets [SetLike] (default := true)
```
