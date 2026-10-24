# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Dedup.Variant6381d7a7052751cf1c9b6a5135155510a71e84379a5d393800e0fd4ca0269935

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dcdce0a6ac81992245ad7f8c46e9dcfb2dbad496` · SHA-256 `3777bbbecd4827d6c803243cea97fa1dfa5aafc9af73e574192d1bf449069fd7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DedupBy.Variant61d273bc7eb8b56245b838d8223c77c88593a8c3b59483c42e9b43dc0620faf1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"61d273bc7eb8b56245b838d8223c77c88593a8c3b59483c42e9b43dc0620faf1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DedupBy.Variant61d273bc7eb8b56245b838d8223c77c88593a8c3b59483c42e9b43dc0620faf1","mathematical_subject":"Computation.DataStructures","original_sha256":"61d273bc7eb8b56245b838d8223c77c88593a8c3b59483c42e9b43dc0620faf1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/MLList/Dedup.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Std.Data.MLList.Basic
import Std.Data.HashMap

/-!
# Lazy deduplication of lazy lists
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DedupBy.Variant61d273bc7eb8b56245b838d8223c77c88593a8c3b59483c42e9b43dc0620faf1

set_option autoImplicit true

open Std

namespace MLList

variable [Monad m] [BEq β] [Hashable β]

/-- Lazily deduplicate a lazy list, using a stored `HashMap`. -/
-- We choose `HashMap` here instead of `RBSet` as the initial application is `Expr`.
def dedupBy (L : MLList m α) (f : α → m β) : MLList m α :=
  ((L.liftM : MLList (StateT (HashMap β Unit) m) α) >>= fun a => do
      let b ← f a
      guard !(← get).contains b
      modify fun s => s.insert b ()
      pure a)
  |>.runState' ∅

/-- Lazily deduplicate a lazy list, using a stored `HashMap`. -/
def dedup (L : MLList m β) : MLList m β :=
  L.dedupBy (fun b => pure b)

end MLList
```
