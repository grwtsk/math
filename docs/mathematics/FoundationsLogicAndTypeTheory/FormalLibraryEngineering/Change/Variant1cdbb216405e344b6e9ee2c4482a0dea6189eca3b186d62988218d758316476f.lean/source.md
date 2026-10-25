# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Change.Variant1cdbb216405e344b6e9ee2c4482a0dea6189eca3b186d62988218d758316476f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5018a0c5048979702408568b694528c4d6b36620` · SHA-256 `fa99fee3b46c4faae0620bc5ab78215d4a3240f613fc6a4c966ffe2eff06fce1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabTerm.Variant6f9c41e2ed17728420280a457c3ad5e3527812688f22d186cf47f6c808818223","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6f9c41e2ed17728420280a457c3ad5e3527812688f22d186cf47f6c808818223","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabTerm.Variant6f9c41e2ed17728420280a457c3ad5e3527812688f22d186cf47f6c808818223","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6f9c41e2ed17728420280a457c3ad5e3527812688f22d186cf47f6c808818223","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Change.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/

import Mathlib.Init
import Lean.Elab.Tactic.ElabTerm
import Lean.Meta.Tactic.TryThis
/-!

# Tactic `change? term`

This tactic is used to suggest a replacement of the goal by a definitionally equal term.
`term` is intended to contain holes which get unified with the main goal and filled in explicitly
in the suggestion.

`term` can also be omitted, in which case `change?` simply suggests `change` with the main goal.
This is helpful after tactics like `dsimp`, which can then be deleted.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabTerm.Variant6f9c41e2ed17728420280a457c3ad5e3527812688f22d186cf47f6c808818223

/-- `change? term` unifies `term` with the current goal, then suggests explicit `change` syntax
that uses the resulting unified term.

If `term` is not present, `change?` suggests the current goal itself. This is useful after tactics
which transform the goal while maintaining definitional equality, such as `dsimp`; those preceding
tactic calls can then be deleted.
```lean
example : (fun x : Nat => x) 0 = 1 := by
  change? 0 = _  -- `Try this: change 0 = 1`
```
-/
syntax (name := change?) "change?" (ppSpace colGt term)? : tactic

open Lean Meta Elab.Tactic Meta.Tactic.TryThis in
elab_rules : tactic
| `(tactic|change?%$tk $[$sop:term]?) => withMainContext do
  let stx ← getRef
  let expr ← match sop with
    | none => getMainTarget
    | some sop => do
      let tgt ← getMainTarget
      let ex ← withRef sop <| elabTermEnsuringType sop (← inferType tgt)
      if !(← isDefEq ex tgt) then throwErrorAt sop "\
        The term{indentD ex}\n\
        is not defeq to the goal:{indentD tgt}"
      instantiateMVars ex
  let dstx ← delabToRefinableSyntax expr
  addSuggestion tk (← `(tactic| change $dstx)) (origSpan? := stx)
````
