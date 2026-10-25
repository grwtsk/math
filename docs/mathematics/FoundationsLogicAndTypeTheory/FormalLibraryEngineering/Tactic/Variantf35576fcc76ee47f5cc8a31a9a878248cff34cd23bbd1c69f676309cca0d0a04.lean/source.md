# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantf35576fcc76ee47f5cc8a31a9a878248cff34cd23bbd1c69f676309cca0d0a04

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3af4e6ce6d203cf56f5317a34ffad151a753d698` · SHA-256 `669be8cc0f532f986ab6527aaadd97628cc1474b2f82333d42218cf693938d6e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LiftMetaFinishingTactic.Variant9eadd8da76d972139ba3b571fe71502834bfefd94c073c7acf5b3046aed5b8f4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9eadd8da76d972139ba3b571fe71502834bfefd94c073c7acf5b3046aed5b8f4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LiftMetaFinishingTactic.Variant9eadd8da76d972139ba3b571fe71502834bfefd94c073c7acf5b3046aed5b8f4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9eadd8da76d972139ba3b571fe71502834bfefd94c073c7acf5b3046aed5b8f4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Lean/Elab/Tactic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Lean.Elab.Tactic.Basic

/-!
# Tactic combinators in `TacticM`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LiftMetaFinishingTactic.Variant9eadd8da76d972139ba3b571fe71502834bfefd94c073c7acf5b3046aed5b8f4

namespace Lean.Elab.Tactic

/-- Analogue of `liftMetaTactic` for tactics that do not return any goals. -/
def liftMetaFinishingTactic (tac : MVarId → MetaM Unit) : TacticM Unit :=
  liftMetaTactic fun g => do tac g; pure []

end Lean.Elab.Tactic
```
