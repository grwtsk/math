# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EnvSearch.Variant6609e5283caad2b016ccb6ee5bd06936b47bd5bc9aaeeb5e851665d14966e738

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc6accd958ce4d493fa3d063aab9368d458b17dc` · SHA-256 `ada2c44bb5f46857a3cefdf19f4d30d485fe839266712ee2af33ce9f46e675e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetMatchingConstants.Variant06813622906cbf401db07edd54296675d71ab7949b353722b382b2bfe734ec6b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"06813622906cbf401db07edd54296675d71ab7949b353722b382b2bfe734ec6b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetMatchingConstants.Variant06813622906cbf401db07edd54296675d71ab7949b353722b382b2bfe734ec6b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"06813622906cbf401db07edd54296675d71ab7949b353722b382b2bfe734ec6b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Lean/Util/EnvSearch.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Shing Tak Lam. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Shing Tak Lam, Daniel Selsam, Mario Carneiro
-/
import Lean.Modifiers
import Std.Tactic.Lint.Misc


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetMatchingConstants.Variant06813622906cbf401db07edd54296675d71ab7949b353722b382b2bfe734ec6b

namespace Lean

/--
Find constants in current environment that match find options and predicate.
-/
def getMatchingConstants {m} [Monad m] [MonadEnv m]
    (p : ConstantInfo → m Bool)
    (includeImports := true)
    : m (Array ConstantInfo) := do
  let matches_ ←
    if includeImports then
      (← getEnv).constants.map₁.foldM (init := #[]) check
    else
      pure #[]
  (← getEnv).constants.map₂.foldlM (init := matches_) check
where
  /-- Check constant should be returned -/
  @[nolint unusedArguments]
  check matches_ (_name : Name) cinfo := do
    let include ← p cinfo
    if include then
      pure $ matches_.push cinfo
    else
      pure matches_
```
