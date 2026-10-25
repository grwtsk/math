# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantd3dd19f211f10669be35dc9cd08f008b3b2a82f8c4d155a19f286ea6cf2e853e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f704e35f1a6379bf3e20144af739b4af3c0d07c3` · SHA-256 `4edda525026e1e05de5c48f7c4263c3928a99d82fb605981fe0db127994998cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModifyMetavarDecl.Variantbbfd821037be8e97f917e6ddd9ccec338b59990046d53086fe611e974e60d5ac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bbfd821037be8e97f917e6ddd9ccec338b59990046d53086fe611e974e60d5ac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ModifyMetavarDecl.Variantbbfd821037be8e97f917e6ddd9ccec338b59990046d53086fe611e974e60d5ac","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"bbfd821037be8e97f917e6ddd9ccec338b59990046d53086fe611e974e60d5ac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Util/Tactic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Arthur Paulino. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arthur Paulino, Jannis Limperg
-/
import Mathlib.Init
import Lean.MetavarContext

/-!
# Miscellaneous helper functions for tactics.

[TODO] Ideally we would find good homes for everything in this file, eventually removing it.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModifyMetavarDecl.Variantbbfd821037be8e97f917e6ddd9ccec338b59990046d53086fe611e974e60d5ac

namespace Mathlib.Tactic

open Lean Meta Tactic

variable {m : Type → Type}

/--
`modifyMetavarDecl mvarId f` updates the `MetavarDecl` for `mvarId` with `f`.
Conditions on `f`:

- The target of `f mdecl` is defeq to the target of `mdecl`.
- The local context of `f mdecl` must contain the same fvars as the local
  context of `mdecl`. For each fvar in the local context of `f mdecl`, the type
  (and value, if any) of the fvar must be defeq to the corresponding fvar in
  the local context of `mdecl`.

If `mvarId` does not refer to a declared metavariable, nothing happens.
-/
def modifyMetavarDecl [MonadMCtx m] (mvarId : MVarId)
    (f : MetavarDecl → MetavarDecl) : m Unit :=
  modifyMCtx fun mctx ↦
    match mctx.decls.find? mvarId with
    | none => mctx
    | some mdecl => { mctx with decls := mctx.decls.insert mvarId (f mdecl) }

/--
`modifyTarget mvarId f` updates the target of the metavariable `mvarId` with
`f`. For any `e`, `f e` must be defeq to `e`. If `mvarId` does not refer to
a declared metavariable, nothing happens.
-/
def modifyTarget [MonadMCtx m] (mvarId : MVarId) (f : Expr → Expr) : m Unit :=
  modifyMetavarDecl mvarId fun mdecl ↦
    { mdecl with type := f mdecl.type }

/--
`modifyLocalContext mvarId f` updates the local context of the metavariable
`mvarId` with `f`. The new local context must contain the same fvars as the old
local context and the types (and values, if any) of the fvars in the new local
context must be defeq to their equivalents in the old local context.

If `mvarId` does not refer to a declared metavariable, nothing happens.
-/
def modifyLocalContext [MonadMCtx m] (mvarId : MVarId)
    (f : LocalContext → LocalContext) : m Unit :=
  modifyMetavarDecl mvarId fun mdecl ↦
    { mdecl with lctx := f mdecl.lctx }

/--
`modifyLocalDecl mvarId fvarId f` updates the local decl `fvarId` in the local
context of `mvarId` with `f`. `f` must leave the `fvarId` and `index` of the
`LocalDecl` unchanged. The type of the new `LocalDecl` must be defeq to the type
of the old `LocalDecl` (and the same applies to the value of the `LocalDecl`, if
any).

If `mvarId` does not refer to a declared metavariable or if `fvarId` does not
exist in the local context of `mvarId`, nothing happens.
-/
def modifyLocalDecl [MonadMCtx m] (mvarId : MVarId) (fvarId : FVarId)
    (f : LocalDecl → LocalDecl) : m Unit :=
  modifyLocalContext mvarId fun lctx ↦ lctx.modifyLocalDecl fvarId f

end Mathlib.Tactic
```
