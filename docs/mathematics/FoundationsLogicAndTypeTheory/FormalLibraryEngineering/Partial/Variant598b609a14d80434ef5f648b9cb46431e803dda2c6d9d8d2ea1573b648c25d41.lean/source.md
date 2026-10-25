# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Partial.Variant598b609a14d80434ef5f648b9cb46431e803dda2c6d9d8d2ea1573b648c25d41

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5592de6bd0783dcc4d424027e0606fd0a0fc87c` · SHA-256 `e1cdb2406fbf5fce066db9055d67e5ab1583db2908911a1cf5966df07afa9b3f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterMPartial.Variant9b570bb201eb42151f885e52b507f29540370c2386d87a23445fe9eb3fdc7885","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9b570bb201eb42151f885e52b507f29540370c2386d87a23445fe9eb3fdc7885","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterMPartial.Variant9b570bb201eb42151f885e52b507f29540370c2386d87a23445fe9eb3fdc7885","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"9b570bb201eb42151f885e52b507f29540370c2386d87a23445fe9eb3fdc7885","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Iterators/Consumers/Monadic/Partial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterMPartial.Variant9b570bb201eb42151f885e52b507f29540370c2386d87a23445fe9eb3fdc7885

set_option linter.missingDocs true

public section

namespace Std

/--
A wrapper around an iterator that provides partial consumers. See `IterM.allowNontermination`.
-/
structure IterM.Partial {α : Type w} (m : Type w → Type w') (β : Type w) where
  /--
  The wrapped iterator, which was wrapped by `IterM.allowNontermination`.
  -/
  it : IterM (α := α) m β

/--
For an iterator `it`, `it.allowNontermination` provides potentially nonterminating variants of
consumers such as `toList`. They can be used without any proof of termination such as `Finite`
or `Productive`, but as they are implemented with the `partial` declaration modifier, they are
opaque for the kernel and it is impossible to prove anything about them.
-/
@[always_inline, inline, deprecated "The consumers on iterators do not require proofs of termination anymore. For example, use `it.toList` instead of `it.allowNontermination.toList`." (since := "2026-01-28")]
def IterM.allowNontermination {α : Type w} {m : Type w → Type w'} {β : Type w}
    (it : IterM (α := α) m β) : IterM.Partial (α := α) m β :=
  ⟨it⟩

end Std
```
