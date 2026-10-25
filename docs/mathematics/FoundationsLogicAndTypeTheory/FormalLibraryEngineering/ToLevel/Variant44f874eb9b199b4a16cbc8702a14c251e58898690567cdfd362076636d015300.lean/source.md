# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToLevel.Variant44f874eb9b199b4a16cbc8702a14c251e58898690567cdfd362076636d015300

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22744da962e71a443318e9b43b6af5ed9b0c0224` · SHA-256 `be4a9c7e246d0f182e3f2961b7879818911e0cc24fefcbda9bc17e91ed02540e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PPWithUniv.Variant3e35c855a31bdfe1c61e6262a7c46f88213b1eda1a345c6bf7f70ea8aaf31a5a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3e35c855a31bdfe1c61e6262a7c46f88213b1eda1a345c6bf7f70ea8aaf31a5a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PPWithUniv.Variant3e35c855a31bdfe1c61e6262a7c46f88213b1eda1a345c6bf7f70ea8aaf31a5a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3e35c855a31bdfe1c61e6262a7c46f88213b1eda1a345c6bf7f70ea8aaf31a5a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/ToLevel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.Tactic.PPWithUniv

/-! # `ToLevel` class

This module defines `Lean.ToLevel`, which is the `Lean.Level` analogue to `Lean.ToExpr`.

**Warning:** Import `Mathlib/Tactic/ToExpr.lean` instead of this one if you are writing `ToExpr`
instances. This ensures that you are using the universe polymorphic `ToExpr` instances that
override the ones from Lean 4 core.

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PPWithUniv.Variant3e35c855a31bdfe1c61e6262a7c46f88213b1eda1a345c6bf7f70ea8aaf31a5a

namespace Lean

attribute [pp_with_univ] toLevel

end Lean
```
