# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemma.Variant510d081f96b7620fe3f75d9b5a1a662facdf0a1d593a34cd42ffd3fceaec6aec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `760920cdcc0ff6f49ce9ee8ec82357cc7ffa19a7` · SHA-256 `39c66223c2f3eadc43e5b32f4c83e8c98c827b69175f7eea1f65bf22d0bfc933`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantbf534e768b810014e26b13692b95540ed05f67a1a186b309b494c0cc3c2c1028","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bf534e768b810014e26b13692b95540ed05f67a1a186b309b494c0cc3c2c1028","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variantbf534e768b810014e26b13692b95540ed05f67a1a186b309b494c0cc3c2c1028","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"bf534e768b810014e26b13692b95540ed05f67a1a186b309b494c0cc3c2c1028","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Lemma.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Kyle Miller
-/
import Mathlib.Init
import Lean.Parser.Command

/-!
# Support for `lemma` as a synonym for `theorem`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantbf534e768b810014e26b13692b95540ed05f67a1a186b309b494c0cc3c2c1028

open Lean

-- higher priority to override the one in Batteries
/-- `lemma` means the same as `theorem`. It is used to denote "less important" theorems -/
syntax (name := lemma) (priority := default + 1) declModifiers
  group("lemma " declId ppIndent(declSig) declVal) : command

/-- Implementation of the `lemma` command, by macro expansion to `theorem`. -/
@[macro «lemma»] def expandLemma : Macro := fun stx =>
  -- Not using a macro match, to be more resilient against changes to `lemma`.
  -- This implementation ensures that any future changes to `theorem` are reflected in `lemma`
  let stx := stx.modifyArg 1 fun stx =>
    let stx := stx.modifyArg 0 (mkAtomFrom · "theorem" (canonical := true))
    stx.setKind ``Parser.Command.theorem
  pure <| stx.setKind ``Parser.Command.declaration
```
