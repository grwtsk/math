# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OldObtain.Variantad262b23ae25445d5882a8c409ffe11514358938ea4256fa6351c1d7a571e13a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d3382241241a47b64bb9164a5dc6968ef142399` · SHA-256 `2bd48d96bc8e273aa4973d842b37bcac6303a95fa943d7493d78493622c51a45`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsObtainWithoutProof.Variant88ca263bc4e557c4b8db1cf39eb025a4d8fac49f41ce813eab3a62a4ea00656e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"88ca263bc4e557c4b8db1cf39eb025a4d8fac49f41ce813eab3a62a4ea00656e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IsObtainWithoutProof.Variant88ca263bc4e557c4b8db1cf39eb025a4d8fac49f41ce813eab3a62a4ea00656e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"88ca263bc4e557c4b8db1cf39eb025a4d8fac49f41ce813eab3a62a4ea00656e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Linter/OldObtain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Michael Rothgang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Rothgang
-/

import Lean.Elab.Command
-- Import this linter explicitly to ensure that
-- this file has a valid copyright header and module docstring.
import Mathlib.Tactic.Linter.Header

/-!
# The `oldObtain` linter, against stream-of-consciousness `obtain`

The `oldObtain` linter flags any occurrences of "stream-of-consciousness" `obtain`,
i.e. uses of the `obtain` tactic which do not immediately provide a proof.

## Example

There are six different kinds of `obtain` uses. In one example, they look like this.
```
theorem foo : True := by
  -- These cases are fine.
  obtain := trivial
  obtain h := trivial
  obtain : True := trivial
  obtain h : True := trivial
  -- These are linted against.
  obtain : True
  · trivial
  obtain h : True
  · trivial
```
We allow the first four (since an explicit proof is provided), but lint against the last two.

## Why is this bad?

This is similar to removing all uses of `Tactic.Replace` and `Tactic.Have`
from mathlib: in summary,
- this version is a Lean3-ism, which can be unlearned now
- the syntax `obtain foo : type := proof` is slightly shorter;
  particularly so when the first tactic of the proof is `exact`
- when using the old syntax as `obtain foo : type; · proof`, there is an intermediate state with
multiple goals right before the focusing dot. This can be confusing.
(This gets amplified with the in-flight "multiple goal linter", which seems generally desired ---
for many reasons, including teachability. Granted, the linter could be tweaked to not lint in this
case... but by now, the "old" syntax is not clearly better.)
- the old syntax *could* be slightly nicer when deferring goals: however, this is rare.
In the 30 replacements of the last PR, this occurred twice. In both cases, the `suffices` tactic
could also be used, as was in fact clearer. -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsObtainWithoutProof.Variant88ca263bc4e557c4b8db1cf39eb025a4d8fac49f41ce813eab3a62a4ea00656e

open Lean Elab

namespace Mathlib.Linter.Style

/-- Whether a syntax element is an `obtain` tactic call without a provided proof. -/
def isObtainWithoutProof : Syntax → Bool
  -- Using the `obtain` tactic without a proof requires proving a type;
  -- a pattern is optional.
  | `(tactic|obtain : $_type) | `(tactic|obtain $_pat : $_type) => true
  | _ => false

/-- Deprecated alias for `Mathlib.Linter.Style.isObtainWithoutProof`. -/
@[deprecated isObtainWithoutProof (since := "2024-12-07")]
def is_obtain_without_proof := @isObtainWithoutProof

/-- The `oldObtain` linter emits a warning upon uses of the "stream-of-consciousness" variants
of the `obtain` tactic, i.e. with the proof postponed. -/
register_option linter.oldObtain : Bool := {
  defValue := false
  descr := "enable the `oldObtain` linter"
}

/-- The `oldObtain` linter: see docstring above -/
def oldObtainLinter : Linter where run := withSetOptionIn fun stx => do
    unless Linter.getLinterValue linter.oldObtain (← getOptions) do
      return
    if (← MonadState.get).messages.hasErrors then
      return
    if let some head := stx.find? isObtainWithoutProof then
      Linter.logLint linter.oldObtain head m!"Please remove stream-of-consciousness `obtain` syntax"

initialize addLinter oldObtainLinter

end Mathlib.Linter.Style
````
