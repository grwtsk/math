# generalize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77d91137a14c18680ba6c58103483845dd7b8716a5d06d4d6ff17da351c291e9",
  "kind": "def",
  "lexical_name": "generalize",
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
  "slug": "generalize--9cf4d7ed036f510c697d614e",
  "source": {
    "blob": "ab2b4b57363560ab4a981fdcc553128bf077e7d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 918,
    "line": 879,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant960a0ebf9a66c247496fc1fc12083a77e9e0a931646458a78d55f058c133db22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9cf4d7ed036f510c697d614e72db80c76361f01d71b85421b1c431735210b912",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant960a0ebf9a66c247496fc1fc12083a77e9e0a931646458a78d55f058c133db22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77d91137a14c18680ba6c58103483845dd7b8716a5d06d4d6ff17da351c291e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 879–918.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def generalize (discrs : Array Discr) (matchType : Expr) (altViews : Array TermMatchAltView) (generalizing? : Option Bool) : TermElabM GeneralizeResult := do
  let gen := if let some g := generalizing? then g else true
  if !gen then
    return { discrs, matchType, altViews }
  else
    let discrExprs := discrs.map (·.expr)
    /- let-decls are currently being ignored by the generalizer. -/
    let ysFVarIds ← getFVarsToGeneralize discrExprs (ignoreLetDecls := true)
    if ysFVarIds.isEmpty then
      return { discrs, matchType, altViews }
    else
      let ys := ysFVarIds.map mkFVar
      let matchType' ← forallBoundedTelescope matchType discrs.size fun ds type => do
        let type ← mkForallFVars ys type
        let (discrs', ds') := Array.unzip <| Array.zip discrExprs ds |>.filter fun (di, _) => di.isFVar
        let type := type.replaceFVars discrs' ds'
        mkForallFVars ds type
      if (← isTypeCorrect matchType') then
        let discrs := discrs ++  ys.map fun y => { expr := y : Discr }
        let altViews ← altViews.mapM fun altView => do
          let patternVars ← getPatternsVars altView.patterns
          -- We traverse backwards because we want to keep the most recent names.
          -- For example, if `ys` contains `#[h, h]`, we want to make sure `mkFreshUsername is applied to the first `h`,
          -- since it is already shadowed by the second.
          let ysUserNames ← ys.foldrM (init := #[]) fun ys ysUserNames => do
            let yDecl ← ys.fvarId!.getDecl
            let mut yUserName := yDecl.userName
            if ysUserNames.contains yUserName then
              yUserName ← mkFreshUserName yUserName
            -- Explicitly provided pattern variables shadow `y`
            else if patternVars.any fun x => x.getId == yUserName then
              yUserName ← mkFreshUserName yUserName
            return ysUserNames.push yUserName
          let ysIds ← ysUserNames.reverse.mapM fun n => return mkIdentFrom (← getRef) n
          return { altView with patterns := altView.patterns ++ ysIds }
        return { discrs, toClear := ysFVarIds, matchType := matchType', altViews, refined := true }
      else
        return { discrs, matchType, altViews }


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant960a0ebf9a66c247496fc1fc12083a77e9e0a931646458a78d55f058c133db22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant960a0ebf9a66c247496fc1fc12083a77e9e0a931646458a78d55f058c133db22.lean#L879).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab2b4b57363560ab4a981fdcc553128bf077e7d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
