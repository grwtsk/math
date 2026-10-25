# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KAbstract.Variant448edd3645b0b93857bca2dce3de07752c5058834ffa6529e467c9066ac4ce37

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd5f65766baf51614b1774c93201b4451ce3eda3` · SHA-256 `5f1d0bbab43b67e62ad15d47e721bd9d2af4ed680fa5eee26b75cfd80f34977c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Kabstract.Variantf9e8539020646b17761a0284f1774be2653e64d90a540a5d93aef784518ff67c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f9e8539020646b17761a0284f1774be2653e64d90a540a5d93aef784518ff67c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Kabstract.Variantf9e8539020646b17761a0284f1774be2653e64d90a540a5d93aef784518ff67c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f9e8539020646b17761a0284f1774be2653e64d90a540a5d93aef784518ff67c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/KAbstract.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Leonardo de Moura
-/
module

prelude
public import Lean.HeadIndex
public import Lean.Meta.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Kabstract.Variantf9e8539020646b17761a0284f1774be2653e64d90a540a5d93aef784518ff67c

public section

namespace Lean.Meta

/--
Abstract occurrences of `p` in `e`. We detect subterms equivalent to `p` using key-matching.
That is, only perform `isDefEq` tests when the head symbol of subterm is equivalent to head symbol of `p`.

By default, all occurrences are abstracted,
but this behavior can be controlled using the `occs` parameter.

All matches of `p` in `e` are considered for occurrences,
but for each match that is included by the `occs` parameter,
metavariables appearing in `p` (or `e`) may become instantiated,
affecting the possibility of subsequent matches.
For matches that are not included in the `occs` parameter, the metavariable context is rolled back
to prevent blocking subsequent matches which require different instantiations.
-/
def kabstract (e : Expr) (p : Expr) (occs : Occurrences := .all) : MetaM Expr := do
  let e ← instantiateMVars e
  if p.isFVar && occs == Occurrences.all then
    return e.abstract #[p] -- Easy case
  else
    let pHeadIdx := p.toHeadIndex
    let pNumArgs := p.headNumArgs
    let rec visit (e : Expr) (offset : Nat) : StateRefT Nat MetaM Expr := do
      let visitChildren : Unit → StateRefT Nat MetaM Expr := fun _ => do
        match e with
        | .app f a         => return e.updateApp! (← visit f offset) (← visit a offset)
        | .mdata _ b       => return e.updateMData! (← visit b offset)
        | .proj _ _ b      => return e.updateProj! (← visit b offset)
        | .letE _ t v b _  => return e.updateLetE! (← visit t offset) (← visit v offset) (← visit b (offset+1))
        | .lam _ d b _     => return e.updateLambdaE! (← visit d offset) (← visit b (offset+1))
        | .forallE _ d b _ => return e.updateForallE! (← visit d offset) (← visit b (offset+1))
        | e                => return e
      if e.hasLooseBVars then
        visitChildren ()
      else if e.toHeadIndex != pHeadIdx || e.headNumArgs != pNumArgs then
        visitChildren ()
      else
        -- We save the metavariable context here,
        -- so that it can be rolled back unless `occs.contains i`.
        let mctx ← getMCtx
        if (← isDefEq e p) then
          let i ← get
          set (i+1)
          if occs.contains i then
            return mkBVar offset
          else
            -- Revert the metavariable context,
            -- so that other matches are still possible.
            setMCtx mctx
            visitChildren ()
        else
          visitChildren ()
    visit e 0 |>.run' 1

end Lean.Meta
```
