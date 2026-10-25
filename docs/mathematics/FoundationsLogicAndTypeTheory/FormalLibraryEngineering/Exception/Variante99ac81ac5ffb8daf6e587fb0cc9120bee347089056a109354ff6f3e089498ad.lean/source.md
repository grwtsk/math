# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Exception.Variante99ac81ac5ffb8daf6e587fb0cc9120bee347089056a109354ff6f3e089498ad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `caba43a7e2394ab8492ac68ba8a0cc91b9ea476a` · SHA-256 `7482c0834ee31bc3fdf46de3727091c74cc5a16df40a5e1c3932907d88d6267a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SuccessIfFail.Variant425fac490c56586cd204b058024f9eac671ab39aafbc26ff4349b89708555201","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"425fac490c56586cd204b058024f9eac671ab39aafbc26ff4349b89708555201","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SuccessIfFail.Variant425fac490c56586cd204b058024f9eac671ab39aafbc26ff4349b89708555201","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"425fac490c56586cd204b058024f9eac671ab39aafbc26ff4349b89708555201","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Lean/Exception.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Edward Ayers. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Edward Ayers
-/
import Mathlib.Init
import Lean.Exception

/-!
# Additional methods for working with `Exception`s

This file contains two additional methods for working with `Exception`s
* `successIfFail`, a generalisation of `fail_if_success` to arbitrary `MonadError`s
* `isFailedToSynthesize`: check if an exception is of the "failed to synthesize" form

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SuccessIfFail.Variant425fac490c56586cd204b058024f9eac671ab39aafbc26ff4349b89708555201

open Lean

/--
A generalisation of `fail_if_success` to an arbitrary `MonadError`.
-/
def successIfFail {α : Type} {M : Type → Type} [MonadError M] [Monad M] (m : M α) :
    M Exception := do
  match ← tryCatch (m *> pure none) (pure ∘ some) with
  | none => throwError "Expected an exception."
  | some ex => return ex

namespace Lean

namespace Exception

/--
Check if an exception is a "failed to synthesize" exception.

These exceptions are raised in several different places,
and the only commonality is the prefix of the string, so that's what we look for.
-/
def isFailedToSynthesize (e : Exception) : IO Bool := do
  pure <| (← e.toMessageData.toString).startsWith "failed to synthesize"

end Exception

end Lean
```
