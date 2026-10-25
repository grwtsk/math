# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TryThis.Variant80665eb9a9fa30881645270337491f2d2082dc539f7c9e8029fb98bcd0176028

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `196902e0cd6595d741f4fdf3657a315074a38d60` · SHA-256 `38ff41c5f149358e68c55d0dfaea396297156d32e8909dc9d113e0a5970c704d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TryThis.Variant4bf1ad3adc344b017b40c119edac556de311e9ab3a7e53a45ab10fecc04ce03a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4bf1ad3adc344b017b40c119edac556de311e9ab3a7e53a45ab10fecc04ce03a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TryThis.Variant4bf1ad3adc344b017b40c119edac556de311e9ab3a7e53a45ab10fecc04ce03a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4bf1ad3adc344b017b40c119edac556de311e9ab3a7e53a45ab10fecc04ce03a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/TryThis.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Init
import Lean.Meta.Tactic.TryThis

/-!
# 'Try this' tactic macro

This is a convenient shorthand intended for macro authors to be able to generate "Try this"
recommendations. (It is not the main implementation of 'Try this',
which is implemented in Lean core, see `Lean.Meta.Tactic.TryThis`.)
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TryThis.Variant4bf1ad3adc344b017b40c119edac556de311e9ab3a7e53a45ab10fecc04ce03a

namespace Mathlib.Tactic
open Lean

/-- Produces the text `Try this: <tac>` with the given tactic, and then executes it. -/
elab tk:"try_this" tac:tactic info:(str)? : tactic => do
  Elab.Tactic.evalTactic tac
  Meta.Tactic.TryThis.addSuggestion tk
    { suggestion := tac, postInfo? := TSyntax.getString <$> info }
    (origSpan? := ← getRef)

/-- Produces the text `Try this: <tac>` with the given conv tactic, and then executes it. -/
elab tk:"try_this" tac:conv info:(str)? : conv => do
  Elab.Tactic.evalTactic tac
  Meta.Tactic.TryThis.addSuggestion tk
    { suggestion := tac, postInfo? := TSyntax.getString <$> info }
    (origSpan? := ← getRef)

end Mathlib.Tactic
```
