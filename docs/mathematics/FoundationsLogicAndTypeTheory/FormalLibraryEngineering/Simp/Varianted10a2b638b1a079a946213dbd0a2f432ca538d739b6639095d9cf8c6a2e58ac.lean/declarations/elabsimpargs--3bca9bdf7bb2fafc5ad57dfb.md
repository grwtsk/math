# elabSimpArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b03ace4dc4f1c2868d4e918930b79b5165b888d92dd1e2fd1462bca4e45e929",
  "kind": "def",
  "lexical_name": "elabSimpArgs",
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
  "slug": "elabsimpargs--3bca9bdf7bb2fafc5ad57dfb",
  "source": {
    "blob": "379beba19a25407004e5570bc892cf0e8327798b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 419,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bca9bdf7bb2fafc5ad57dfb519d590793ae0f1dd766f26c1b142c192464d0ac",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b03ace4dc4f1c2868d4e918930b79b5165b888d92dd1e2fd1462bca4e45e929`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabSimpArgs (stx : Syntax) (ctx : Simp.Context) (simprocs : Simp.SimprocsArray) (eraseLocal : Bool)
    (kind : SimpKind) (ignoreStarArg := false) : TacticM ElabSimpArgsResult := do
  if stx.isNone then
    return { ctx, simprocs, simpArgs := #[] }
  else
    /-
    syntax simpPre := "↓"
    syntax simpPost := "↑"
    syntax simpLemma := (simpPre <|> simpPost)? "← "? term

    syntax simpErase := "-" ident
    -/
    let go := withMainContext do
      let zetaDeltaSet ← toZetaDeltaSet stx ctx
      withTrackingZetaDeltaSet zetaDeltaSet do
        let mut starArg := false -- only after * we can erase local declarations
        let mut args : Array (Syntax × ElabSimpArgResult) := #[]
        for argStx in stx[1].getSepArgs do
          let arg ← elabSimpArg ctx.indexConfig (eraseLocal || starArg) kind argStx
          starArg := !ignoreStarArg && (starArg || arg matches .star)
          args := args.push (argStx, arg)

        let mut thmsArray := ctx.simpTheorems
        let mut thms      := thmsArray[0]!
        let mut simprocs  := simprocs
        for (ref, arg) in args do
          match arg with
          | .addEntries entries =>
            for entry in entries do
              thms := thms.uneraseSimpEntry entry
              thms := thms.addSimpEntry entry
          | .addLetToUnfold fvarId =>
            thms := thms.addLetDeclToUnfold fvarId
          | .addSimproc declName post =>
            simprocs ← simprocs.add declName post
          | .erase origin =>
            -- `thms.erase` checks if the erasure is effective.
            -- We do not want this check for local hypotheses (they are added later based on `starArg`)
            if origin matches .fvar _ then
              thms := thms.eraseCore origin
            -- Nor for decls to unfold when we do auto unfolding
            else if ctx.config.autoUnfold then
              thms := thms.eraseCore origin
            else
              thms ← withRef ref <| thms.erase origin
          | .eraseSimproc name =>
            simprocs := simprocs.erase name
          | .ext simpExt? simprocExt? _ =>
            if let some simpExt := simpExt? then
              thmsArray := thmsArray.push (← simpExt.getTheorems)
            if let some simprocExt := simprocExt? then
              simprocs := simprocs.push (← simprocExt.getSimprocs)
          | .star => pure ()
          | .none => pure ()

        let mut ctx := ctx.setZetaDeltaSet zetaDeltaSet (← getZetaDeltaFVarIds)
        ctx := ctx.setSimpTheorems (thmsArray.set! 0 thms)
        if !ignoreStarArg && starArg then
          ctx ← applyStarArg ctx

        return { ctx, simprocs, simpArgs := args}
    -- If recovery is disabled, then we want simp argument elaboration failures to be exceptions.
    -- This affects `addSimpTheorem`.
    if (← read).recover then
      go
    else
      Term.withoutErrToSorry go
where
  /-- If `zetaDelta := false`, create a `FVarId` set with all local let declarations in the `simp` argument list. -/
  toZetaDeltaSet (stx : Syntax) (ctx : Simp.Context) : TacticM FVarIdSet := do
    if ctx.config.zetaDelta then return {}
    Term.withoutCheckDeprecated do -- We do not want to report deprecated constants in the first pass
      let mut s : FVarIdSet := {}
      for arg in stx[1].getSepArgs do
        if arg.getKind == ``Lean.Parser.Tactic.simpLemma then
          if arg[0].isNone && arg[1].isNone then
            let term := arg[2]
            let .expr (.fvar fvarId) ← resolveSimpIdTheorem? term | pure ()
            if (← fvarId.getDecl).isLet then
              s := s.insert fvarId
      return s

/-- Position for the `[..]` child syntax in the `simp` tactic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `379beba19a25407004e5570bc892cf0e8327798b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
