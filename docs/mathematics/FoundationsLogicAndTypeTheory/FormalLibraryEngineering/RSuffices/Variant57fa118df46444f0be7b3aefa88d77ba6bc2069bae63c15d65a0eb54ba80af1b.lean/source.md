# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RSuffices.Variant57fa118df46444f0be7b3aefa88d77ba6bc2069bae63c15d65a0eb54ba80af1b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fa437028b9434e74c62a7db06ae7e0038387f459` · SHA-256 `94eebe7ce2b874c6a7d4eafc60aa9fdf18e3c627ca3c17cf4e325218879cf142`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantbbef4921a84f768ce217e3058663558ea8075442f847451c29a5a26f121a0602","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bbef4921a84f768ce217e3058663558ea8075442f847451c29a5a26f121a0602","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Tactic.Variantbbef4921a84f768ce217e3058663558ea8075442f847451c29a5a26f121a0602","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"bbef4921a84f768ce217e3058663558ea8075442f847451c29a5a26f121a0602","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/RSuffices.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Moritz Doll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll
-/
import Mathlib.Tactic.Basic

/-!
# `rsuffices` tactic

The `rsuffices` tactic is an alternative version of `suffices`, that allows the usage
of any syntax that would be valid in an `obtain` block. This tactic just calls `obtain`
on the expression, and then `rotate_left`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantbbef4921a84f768ce217e3058663558ea8075442f847451c29a5a26f121a0602

namespace Mathlib.Tactic

/--
The `rsuffices` tactic is an alternative version of `suffices`, that allows the usage
of any syntax that would be valid in an `obtain` block. This tactic just calls `obtain`
on the expression, and then `rotate_left`.
-/
syntax (name := rsuffices) "rsuffices"
  (ppSpace Lean.Parser.Tactic.rcasesPatMed)? (" : " term)? (" := " term,+)? : tactic

macro_rules
| `(tactic| rsuffices $[$pred]? $[: $foo]? $[:= $bar]?) =>
`(tactic | (obtain $[$pred]? $[: $foo]? $[:= $bar]?; rotate_left))

end Mathlib.Tactic
```
