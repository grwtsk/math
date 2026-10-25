# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Replace.Variantc1673e11fe76dcc063752235073c254db6da69053e2f8916a6cf536cbb6cc523

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7fee329830eefd77ed1664bd5fdadd3b225ec2a0` · SHA-256 `2f1379f3d72a23fac4d93ffb139e70baae246fea83c7c6876f7dfe599c457885`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Have.Variant1c634187f0286dae5fb87ef255ed2349d450d365318edf5d88fb4498a3823af8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1c634187f0286dae5fb87ef255ed2349d450d365318edf5d88fb4498a3823af8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Have.Variant1c634187f0286dae5fb87ef255ed2349d450d365318edf5d88fb4498a3823af8","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1c634187f0286dae5fb87ef255ed2349d450d365318edf5d88fb4498a3823af8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Replace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arthur Paulino, Mario Carneiro
-/
import Mathlib.Tactic.Have

/-!
# Extending `replace`

This file extends the `replace` tactic from `Batteries` to allow the addition of hypotheses to
the context without requiring their proofs to be provided immediately.

As a style choice, this should not be used in mathlib; but is provided for downstream users who
preferred the old style.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Have.Variant1c634187f0286dae5fb87ef255ed2349d450d365318edf5d88fb4498a3823af8

namespace Mathlib.Tactic

open Lean Elab.Tactic

/--
Acts like `have`, but removes a hypothesis with the same name as
this one if possible. For example, if the state is:

Then after `replace h : β` the state will be:

```lean
case h
f : α → β
h : α
⊢ β

f : α → β
h : β
⊢ goal
```

whereas `have h : β` would result in:

```lean
case h
f : α → β
h : α
⊢ β

f : α → β
h✝ : α
h : β
⊢ goal
```
-/
syntax (name := replace') "replace" haveIdLhs' : tactic

elab_rules : tactic
| `(tactic| replace $n:optBinderIdent $bs* $[: $t:term]?) => withMainContext do
    let (goal1, goal2) ← haveLetCore (← getMainGoal) n bs t false
    let name := optBinderIdent.name n
    let hId? := (← getLCtx).findFromUserName? name |>.map fun d ↦ d.fvarId
    match hId? with
    | some hId => replaceMainGoal [goal1, (← observing? <| goal2.clear hId).getD goal2]
    | none     => replaceMainGoal [goal1, goal2]

end Mathlib.Tactic
````
