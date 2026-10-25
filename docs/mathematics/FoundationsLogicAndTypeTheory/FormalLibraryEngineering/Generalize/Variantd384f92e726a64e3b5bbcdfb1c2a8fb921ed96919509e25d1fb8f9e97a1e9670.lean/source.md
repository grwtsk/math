# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Generalize.Variantd384f92e726a64e3b5bbcdfb1c2a8fb921ed96919509e25d1fb8f9e97a1e9670

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3800eaae32440e3f7f6fa91993828d50b22799cf` · SHA-256 `5bc838120ad29bdb32562e1331b580528f1ba151147bf7e424a46c99f95ca1a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Binders.Variant68e4ea738e81eda934912977fbeeb45fbaf18896193db564a9a26c3511f109cf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"68e4ea738e81eda934912977fbeeb45fbaf18896193db564a9a26c3511f109cf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Binders.Variant68e4ea738e81eda934912977fbeeb45fbaf18896193db564a9a26c3511f109cf","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"68e4ea738e81eda934912977fbeeb45fbaf18896193db564a9a26c3511f109cf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Generalize.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Init
import Lean.Elab.Binders
import Lean.Elab.Tactic.ElabTerm
import Lean.Meta.Tactic.Generalize

/-!
# Backwards compatibility shim for `generalize`.

In https://github.com/leanprover/lean4/pull/3575 the transparency setting for `generalize` was
changed to `instances`. This file provides a shim for the old setting, so that users who
haven't updated their code yet can still use `generalize` with the old setting.

This file can be removed once all uses of the compatibility shim have been removed from Mathlib.

(Possibly we will instead add a `transparency` argument to `generalize`.
This would also allow removing this file.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Binders.Variant68e4ea738e81eda934912977fbeeb45fbaf18896193db564a9a26c3511f109cf

open Lean Elab Tactic Meta in
/-- Backwards compatibility shim for `generalize`. -/
elab "generalize'" h:ident " : " t:term:51 " = " x:ident : tactic => do
  withMainContext do
      let mut xIdents := #[]
      let mut hIdents := #[]
      let mut args := #[]
      hIdents := hIdents.push h
      let expr ← elabTerm t none
      xIdents := xIdents.push x
      args := args.push { hName? := h.getId, expr, xName? := x.getId : GeneralizeArg }
      let hyps := #[]
      let mvarId ← getMainGoal
      mvarId.withContext do
        let (_, newVars, mvarId) ← mvarId.generalizeHyp args hyps (transparency := default)
        mvarId.withContext do
          for v in newVars, id in xIdents ++ hIdents do
            Term.addLocalVarInfo id (.fvar v)
          replaceMainGoal [mvarId]
```
