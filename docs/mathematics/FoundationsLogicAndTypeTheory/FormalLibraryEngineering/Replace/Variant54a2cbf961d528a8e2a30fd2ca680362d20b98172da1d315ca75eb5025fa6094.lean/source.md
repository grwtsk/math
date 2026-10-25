# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Replace.Variant54a2cbf961d528a8e2a30fd2ca680362d20b98172da1d315ca75eb5025fa6094

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `844cfd35a3be582d92af6b7e5b5b84ed243067a0` · SHA-256 `f3a14ea4cd961e93afebe1b5328e7e750e8b31214c3cd5a2bacd8ead6dbe8e40`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant405886712b9e9b00c4d8b4ea62bf46a39d027c6d79f4915d1ad2f591f662dcba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"405886712b9e9b00c4d8b4ea62bf46a39d027c6d79f4915d1ad2f591f662dcba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Tactic.Variant405886712b9e9b00c4d8b4ea62bf46a39d027c6d79f4915d1ad2f591f662dcba","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"405886712b9e9b00c4d8b4ea62bf46a39d027c6d79f4915d1ad2f591f662dcba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Tactic/Replace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arthur Paulino, Mario Carneiro
-/
import Lean.Elab.Tactic.Basic
import Lean.Elab.Do
import Lean.Meta.Tactic.Clear


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant405886712b9e9b00c4d8b4ea62bf46a39d027c6d79f4915d1ad2f591f662dcba

namespace Std.Tactic

open Lean Elab.Tactic

/--
Acts like `have`, but removes a hypothesis with the same name as
this one if possible. For example, if the state is:

```lean
f : α → β
h : α
⊢ goal
```

Then after `replace h := f h` the state will be:

```lean
f : α → β
h : β
⊢ goal
```

whereas `have h := f h` would result in:

```lean
f : α → β
h† : α
h : β
⊢ goal
```

This can be used to simulate the `specialize` and `apply at` tactics of Coq.
-/
syntax "replace" haveDecl : tactic

elab_rules : tactic
  | `(tactic| replace $decl:haveDecl) =>
    withMainContext do
      let vars ← Elab.Term.Do.getDoHaveVars <| mkNullNode #[.missing, decl]
      let origLCtx ← getLCtx
      evalTactic $ ← `(tactic| have $decl:haveDecl)
      let mut toClear := #[]
      for fv in vars do
        if let some ldecl := origLCtx.findFromUserName? fv.getId then
          toClear := toClear.push ldecl.fvarId
      liftMetaTactic1 (·.tryClearMany toClear)
````
