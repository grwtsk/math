# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Process.Variant3a6986e5648e4c0a4daba178d97954b52f6f89a8ac002b1af3de77ec1dd98e1a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e39f37d25dc4f1aac044e18ef39169c4f0c9b3d3` · SHA-256 `8468478e71f735098ff84878679d6691f0f6be4773b966e4494d5e4bc818aa43`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RunCmdWithInputPrime.Variantf0ef3d34f45e6fb1e0c7f0b01ba55cc3fe2c4e9dc06c67c0ca5cddb176cb15cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f0ef3d34f45e6fb1e0c7f0b01ba55cc3fe2c4e9dc06c67c0ca5cddb176cb15cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.RunCmdWithInputPrime.Variantf0ef3d34f45e6fb1e0c7f0b01ba55cc3fe2c4e9dc06c67c0ca5cddb176cb15cd","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"f0ef3d34f45e6fb1e0c7f0b01ba55cc3fe2c4e9dc06c67c0ca5cddb176cb15cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Lean/IO/Process.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RunCmdWithInputPrime.Variantf0ef3d34f45e6fb1e0c7f0b01ba55cc3fe2c4e9dc06c67c0ca5cddb176cb15cd

@[expose] public section

/-!
# Running external commands.
-/

namespace IO.Process

open System (FilePath)

/--
Pipe `input` into stdin of the spawned process,
then return `(exitCode, stdout, stdErr)` upon completion.
-/
def runCmdWithInput' (cmd : String) (args : Array String)
    (input : String := "") (throwFailure := true) : IO Output := do
  let child ← spawn
    { cmd := cmd, args := args, stdin := .piped, stdout := .piped, stderr := .piped }
  let (stdin, child) ← child.takeStdin
  stdin.putStr input
  stdin.flush
  let stdout ← IO.asTask child.stdout.readToEnd Task.Priority.dedicated
  let err ← child.stderr.readToEnd
  let exitCode ← child.wait
  if exitCode != 0 && throwFailure then
    throw $ IO.userError err
  else
    let out ← IO.ofExcept stdout.get
    return ⟨exitCode, out, err⟩

/--
Pipe `input` into stdin of the spawned process,
then return the entire content of stdout as a `String` upon completion.
-/
def runCmdWithInput (cmd : String) (args : Array String)
    (input : String := "") (throwFailure := true) : IO String := do
  return (← runCmdWithInput' cmd args input throwFailure).stdout
```
