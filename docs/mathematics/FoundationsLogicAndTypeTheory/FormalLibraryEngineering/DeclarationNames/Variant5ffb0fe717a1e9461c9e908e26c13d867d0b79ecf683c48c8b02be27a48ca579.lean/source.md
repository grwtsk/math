# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeclarationNames.Variant5ffb0fe717a1e9461c9e908e26c13d867d0b79ecf683c48c8b02be27a48ca579

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89b1ecfd5341281c602375745b75e4dc93fce4d3` · SHA-256 `5e047599af19429884adf58d1a3fed1c1f87460f819ffe054d6d2ff607cba14e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetNamesFrom.Varianta54cbc096c830706a1428fc0fc25b8d60aa9068c439266a788c516a402f222c2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a54cbc096c830706a1428fc0fc25b8d60aa9068c439266a788c516a402f222c2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetNamesFrom.Varianta54cbc096c830706a1428fc0fc25b8d60aa9068c439266a788c516a402f222c2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a54cbc096c830706a1428fc0fc25b8d60aa9068c439266a788c516a402f222c2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/DeclarationNames.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Moritz Firsching. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa, Moritz Firsching
-/

import Lean.DeclarationRange
import Lean.ResolveName
-- Import this linter explicitly to ensure that
-- this file has a valid copyright header and module docstring.
import Mathlib.Tactic.Linter.Header

/-!
This file contains functions that are used by multiple linters.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetNamesFrom.Varianta54cbc096c830706a1428fc0fc25b8d60aa9068c439266a788c516a402f222c2

open Lean Parser Elab Command Meta
namespace Mathlib.Linter

/--
If `pos` is a `String.Pos`, then `getNamesFrom pos` returns the array of identifiers
for the names of the declarations whose syntax begins in position at least `pos`.
-/
def getNamesFrom {m} [Monad m] [MonadEnv m] [MonadFileMap m] (pos : String.Pos) :
    m (Array Syntax) := do
  -- declarations from parallelism branches should not be interesting here, so use `local`
  let drs := declRangeExt.toPersistentEnvExtension.getState (asyncMode := .local) (← getEnv)
  let fm ← getFileMap
  let mut nms := #[]
  for (nm, rgs) in drs do
    if pos ≤ fm.ofPosition rgs.range.pos then
      let ofPos1 := fm.ofPosition rgs.selectionRange.pos
      let ofPos2 := fm.ofPosition rgs.selectionRange.endPos
      nms := nms.push (mkIdentFrom (.ofRange ⟨ofPos1, ofPos2⟩) nm)
  return nms

/--
If `stx` is a syntax node for an `export` statement, then `getAliasSyntax stx` returns the array of
identifiers with the "exported" names.
-/
def getAliasSyntax {m} [Monad m] [MonadResolveName m] (stx : Syntax) : m (Array Syntax) := do
  let mut aliases := #[]
  if let `(export $_ ($ids*)) := stx then
    let currNamespace ← getCurrNamespace
    for idStx in ids do
      let id := idStx.getId
      aliases := aliases.push
        (mkIdentFrom (.ofRange (idStx.raw.getRange?.getD default)) (currNamespace ++ id))
  return aliases

/-- Used for linters which use `0` instead of `false` for disabling. -/
def logLint0Disable {m} [Monad m] [MonadLog m] [AddMessageContext m] [MonadOptions m]
    (linterOption : Lean.Option Nat) (stx : Syntax) (msg : MessageData) : m Unit :=
  let disable := m!"note: this linter can be disabled with `set_option {linterOption.name} 0`"
  logWarningAt stx (.tagged linterOption.name m!"{msg}\n{disable}")
```
