# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant76454ef5cffd4c270261fc4b631c5d6f6958b7a10fbbad63eff65712f2c66f59

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0adaa3316de1d9747f5a30a994b2aa2305771287` · SHA-256 `1d4858f9514c3b388db5f3ca91cb032c24de6136c050c70cbc5cc935524be688`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModifyMetavarDecl.Variant173783f1ce2d09824d19e6f58f9c5aa7fd00572db70446777861e52787316a21","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"173783f1ce2d09824d19e6f58f9c5aa7fd00572db70446777861e52787316a21","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ModifyMetavarDecl.Variant173783f1ce2d09824d19e6f58f9c5aa7fd00572db70446777861e52787316a21","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"173783f1ce2d09824d19e6f58f9c5aa7fd00572db70446777861e52787316a21","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Util/Tactic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Arthur Paulino. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arthur Paulino, Jannis Limperg
-/
module

public import Mathlib.Init
public meta import Lean.MetavarContext

/-!
# Miscellaneous helper functions for tactics.

TODO: Ideally we would find good homes for everything in this file, eventually removing it.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModifyMetavarDecl.Variant173783f1ce2d09824d19e6f58f9c5aa7fd00572db70446777861e52787316a21

public meta section

namespace Mathlib.Tactic

open Lean

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
