# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Substs.Variant3e81fdb61e4b16ae5f2951a72d20f276fc8f0d4ea5b540baa9ae3047b92aa514

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8eb45040b266fb37455350e9aa9a540bc861d4a8` · SHA-256 `3b2acf2681d972b1222addb5996a008949c535682f1b9ca181c56d2c4fbcf7b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variant66403f5dabe8fb36b2bc6f37a421b049939fa910381cf9abbd3d099456cab2c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"66403f5dabe8fb36b2bc6f37a421b049939fa910381cf9abbd3d099456cab2c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SourceUnit.Variant66403f5dabe8fb36b2bc6f37a421b049939fa910381cf9abbd3d099456cab2c6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"66403f5dabe8fb36b2bc6f37a421b049939fa910381cf9abbd3d099456cab2c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Substs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","scope_end_name_mismatch","scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Evan Lohn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Evan Lohn, Mario Carneiro
-/
import Mathlib.Init

/-!
# The `substs` macro

The `substs` macro applies the `subst` tactic to a list of hypothesis, in left to right order.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variant66403f5dabe8fb36b2bc6f37a421b049939fa910381cf9abbd3d099456cab2c6

namespace Mathlib.Tactic.Substs


/--
Applies the `subst` tactic to all given hypotheses from left to right.
-/
syntax (name := substs) "substs" (colGt ppSpace ident)* : tactic

macro_rules
| `(tactic| substs $xs:ident*) => `(tactic| ($[subst $xs]*))

end Substs

end Mathlib.Tactic
```
