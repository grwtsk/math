# visitInner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d34a8e968b020527072aa24f9d80ba9c581e29268e5d458864521eb69146c6a",
  "kind": "def",
  "lexical_name": "visitInner",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "visitinner--6cea450afdae9fcbc70ea88c",
  "source": {
    "blob": "e694ff179c58bd373538d9e3f48bae26c18cdbbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 326,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DepRewrite/Variantfd43d0c9890f0602349138ccf6ee2f1395e8934b4a0205cfee3869c7b6b2ee58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6cea450afdae9fcbc70ea88c49ca747bd3d1d6afbb09a6c6836717d7b0adc051",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DepRewrite/Variantfd43d0c9890f0602349138ccf6ee2f1395e8934b4a0205cfee3869c7b6b2ee58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d34a8e968b020527072aa24f9d80ba9c581e29268e5d458864521eb69146c6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def visitInner (e : Expr) (et? : Option Expr) : M Expr := do
  let ctx ← read
  if e.hasLooseBVars then
    throwError "internal error: forgot to instantiate"
  if e.toHeadIndex == ctx.pHeadIdx && e.headNumArgs == ctx.pNumArgs then
    -- We save the metavariable context here,
    -- so that it can be rolled back unless `occs.contains i`.
    let mctx ← getMCtx
    -- Note that the pattern `ctx.p` is created in the outer lctx,
    -- so bvars from the visited term will not be unified into the pattern.
    if ← withTransparency ctx.cfg.transparency <| isDefEq e ctx.p then
      let i ← modifyGet fun i => (i, i+1)
      if ctx.cfg.occs.contains i then
        return ctx.x
      else
        -- Revert the metavariable context,
        -- so that other matches are still possible.
        setMCtx mctx
  match e with
  | .mdata d b => return .mdata d (← visitAndCast b et?)
  | .app f a =>
    let (fup, tr) ← do
      let fup ← visit f none
      let tfup ← inferType fup
      withAtLeastTransparency .default <| forallBoundedTelescope tfup (some 1) fun xs _ => do
        match xs with
        | #[r] => return (fup, ← inferType r)
        | _ =>
          -- The term in function position was rewritten to a non-function,
          -- so cast it back to one.
          let some fup' ← castBack? fup tfup ctx.x ctx.h ctx.Δ ctx.δ
            | throwError "internal error: unexpected castBack failure on{indentExpr fup}"
          let tfup' ← inferType fup'
          withAtLeastTransparency .default <| forallBoundedTelescope tfup' (some 1) fun xs _ => do
            let #[r] := xs | throwError "internal error: function expected, got{indentExpr fup'}"
            return (fup', ← inferType r)

    let aup ← visitAndCast a tr
    return .app fup aup
  | .proj n i b =>
    let bup ← visit b none
    let tbup ← inferType bup
    if (← withAtLeastTransparency .default <| whnf tbup).isAppOf n then
      return .proj n i bup

    /- Otherwise the term in structure position was rewritten to have a different type,
    so cast it back to the original type.
    (While the other type may itself be a structure type,
    we can't assume that its projections are the same as those of the original.) -/
    let some bup' ← castBack? bup tbup ctx.x ctx.h ctx.Δ ctx.δ
      | throwError "internal error: could not cast back in{indentExpr bup}"
    return .proj n i bup'
  | .letE n t v b nondep =>
    let tup ← visit t none
    let vup ← visitAndCast v tup
    if nondep || !vup.hasAnyFVar (fun f => f == ctx.x.fvarId! || f == ctx.h.fvarId! ||
        ctx.Δ.any (·.1 == f) || ctx.δ.contains f) then
      return ← withLetDecl n tup vup (nondep := nondep) fun r => do
        let motive ← castBack?.motive tup ctx.x ctx.h ctx.Δ ctx.δ
        let bup ← withReader (fun ctx => { ctx with Δ := ctx.Δ.push (r.fvarId!, motive) })
          (visitAndCast (b.instantiate1 r) et?)
        return .letE n tup vup (bup.abstract #[r]) nondep

    withLetDecl n tup vup (nondep := nondep) fun r => do
      let bup ← withReader (fun ctx => { ctx with δ := ctx.δ.insert r.fvarId! })
        (visitAndCast (b.instantiate1 r) et?)
      return .letE n tup vup (bup.abstract #[r]) nondep
  | .lam n t b bi =>
    let tup ← visit t none
    withLocalDecl n bi tup fun r => do
      -- NOTE(WN): there should be some way to propagate the expected type here,
      -- but it is not easy to do correctly (see `lam (as argument)` tests).
      let motive ← castBack?.motive tup ctx.x ctx.h ctx.Δ ctx.δ
      let bup ← withReader (fun ctx => { ctx with Δ := ctx.Δ.push (r.fvarId!, motive) })
        (visit (b.instantiate1 r) none)
      return .lam n tup (bup.abstract #[r]) bi
  | .forallE n t b bi =>
    let tup ← visit t none
    withLocalDecl n bi tup fun r => do
      let motive ← castBack?.motive tup ctx.x ctx.h ctx.Δ ctx.δ
      let bup ← withReader (fun ctx => { ctx with Δ := ctx.Δ.push (r.fvarId!, motive) })
        (visit (b.instantiate1 r) none)
      return .forallE n tup (bup.abstract #[r]) bi
  | _ => return e

end

/-- Analogue of `kabstract` with support for inserting casts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DepRewrite/Variantfd43d0c9890f0602349138ccf6ee2f1395e8934b4a0205cfee3869c7b6b2ee58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DepRewrite/Variantfd43d0c9890f0602349138ccf6ee2f1395e8934b4a0205cfee3869c7b6b2ee58.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e694ff179c58bd373538d9e3f48bae26c18cdbbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
