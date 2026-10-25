# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TypeStar.Variant1641357baae5ce17dc1803b39906cc2b65189880f0af761936fe5fabe0406540

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ff4f4289850d40f11b94ba42b6d1f4ef71a0975` · SHA-256 `07fad59948d6f9cad8460319b4f4237cdc2ba815e24eb9c32087a11b7ccc66f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Term.Variantfc04b05b5c9f1b28c72f184c7830661fee5e49efe3fb54e316f7dd6595bb3b73","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fc04b05b5c9f1b28c72f184c7830661fee5e49efe3fb54e316f7dd6595bb3b73","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Term.Variantfc04b05b5c9f1b28c72f184c7830661fee5e49efe3fb54e316f7dd6595bb3b73","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fc04b05b5c9f1b28c72f184c7830661fee5e49efe3fb54e316f7dd6595bb3b73","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/TypeStar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Matthew Robert Ballard. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.Init
import Lean.Elab.Term

/-!
# Support for `Sort*` and `Type*`.

These elaborate as `Sort u` and `Type u` with a fresh implicit universe variable `u`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Term.Variantfc04b05b5c9f1b28c72f184c7830661fee5e49efe3fb54e316f7dd6595bb3b73

open Lean

/-- The syntax `variable (X Y ... Z : Sort*)` creates a new distinct implicit universe variable
for each variable in the sequence. -/
elab "Sort*" : term => do
  let u ← Lean.Meta.mkFreshLevelMVar
  Elab.Term.levelMVarToParam (.sort u)

/-- The syntax `variable (X Y ... Z : Type*)` creates a new distinct implicit universe variable
`> 0` for each variable in the sequence. -/
elab "Type*" : term => do
  let u ← Lean.Meta.mkFreshLevelMVar
  Elab.Term.levelMVarToParam (.sort (.succ u))
```
