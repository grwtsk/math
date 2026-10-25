# visitForall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca0933e111557b5813c4d10ebe801fe1b923422a1036a849854390047a2cb137",
  "kind": "def",
  "lexical_name": "visitForall",
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
  "slug": "visitforall--2b387feae0874cb4eeceb924",
  "source": {
    "blob": "f8ac672a71447edb01d29648bd1514c5140a07e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 274,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetToHave/Variant30b24e65c26df88ac3bfd5625c0ad8c9bcd88edceaf10c8c0e13448ebc91bfd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b387feae0874cb4eeceb92428da29c553b4a061d7c821105dcdfae7d8a8ac85",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetToHave/Variant30b24e65c26df88ac3bfd5625c0ad8c9bcd88edceaf10c8c0e13448ebc91bfd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca0933e111557b5813c4d10ebe801fe1b923422a1036a849854390047a2cb137`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def visitForall (e : Expr) : M Result := do
  if canSkip e then
    return { expr := e, type? := none }
  else
    go (← getLCtx) #[] #[] e
where
  go (lctx : LocalContext) (fvars : Array Expr) (doms : Array Result) (e : Expr) : M Result := do
    if let some e' ← findCacheNoBVars? e then
      return ← withLCtx lctx {} do finalize fvars doms e'
    else
      match e with
      | .forallE n t b bi =>
        let t ← withLCtx lctx {} do visitType (t.instantiateRev fvars)
        let fvarId ← mkFreshFVarId
        let lctx := lctx.mkLocalDecl fvarId n t.expr bi
        go lctx (fvars.push (.fvar fvarId)) (doms.push t) b
      | _ =>
        withLCtx lctx {} do
          let e' ← visit (e.instantiateRev fvars)
          finalize fvars doms e'
  finalize (fvars : Array Expr) (doms : Array Result) (body : Result) : M Result := do
    let e' := (← getLCtx).mkForall fvars body
    if (← read).check then
      let bodyLevel := (← ensureType body).type?.get!.sortLevel!
      let u ← doms.foldrM (init := bodyLevel) fun dom u =>
        return mkLevelIMax' (← dom.type).sortLevel! u
      return { expr := e', type? := Expr.sort u }
    else
      return { expr := e', type? := none }

/--
Visits lambdas, lets, and haves.

Enters the entire telescope at once.
We do not check the cache at each step of the telescope since we assume that there are no unused variables.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetToHave/Variant30b24e65c26df88ac3bfd5625c0ad8c9bcd88edceaf10c8c0e13448ebc91bfd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetToHave/Variant30b24e65c26df88ac3bfd5625c0ad8c9bcd88edceaf10c8c0e13448ebc91bfd5.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8ac672a71447edb01d29648bd1514c5140a07e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
