# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Time.Variant919c4902171d87ee5b4b8cc02477e034ce74ec6fd65acb5eaac551cce797726d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fae2f7f99950c6fa7865654d8b6fc505b647c505` · SHA-256 `57bfb6eccd075b2945688251c2f66981d4219212b078882439bdfc89c730f4b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant5445b1a7622f0daed7712a92f1ea3842fe80c1e1bbb0622e59574036637239df","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5445b1a7622f0daed7712a92f1ea3842fe80c1e1bbb0622e59574036637239df","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant5445b1a7622f0daed7712a92f1ea3842fe80c1e1bbb0622e59574036637239df","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5445b1a7622f0daed7712a92f1ea3842fe80c1e1bbb0622e59574036637239df","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Time.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

prelude
public import Lean.Elab.Command


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant5445b1a7622f0daed7712a92f1ea3842fe80c1e1bbb0622e59574036637239df

public section

/-!
# Defines `#time` command.

Time the elaboration of a command, and print the result (in milliseconds).
-/

namespace Lean.Elab.Time

open Command

@[builtin_command_elab Lean.Parser.timeCmd] def elabTimeCmd : CommandElab
  | `(#time%$tk $stx:command) => do
    let start ← IO.monoMsNow
    elabCommand stx
    logInfoAt tk m!"time: {(← IO.monoMsNow) - start}ms"
  | _ => throwUnsupportedSyntax

end Lean.Elab.Time
```
