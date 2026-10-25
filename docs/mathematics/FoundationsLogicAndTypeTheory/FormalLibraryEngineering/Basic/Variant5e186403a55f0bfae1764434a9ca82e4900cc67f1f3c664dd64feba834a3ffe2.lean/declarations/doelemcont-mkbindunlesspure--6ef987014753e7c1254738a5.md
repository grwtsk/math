# DoElemCont.mkBindUnlessPure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4efb7b4614a6cc3a735035cc1bb173219d7984da6cc9e478a8b36a91dfe1aa0",
  "kind": "def",
  "lexical_name": "DoElemCont.mkBindUnlessPure",
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
  "slug": "doelemcont-mkbindunlesspure--6ef987014753e7c1254738a5",
  "source": {
    "blob": "d0c31f6213534340fa7b33f8a3eca82a2214a819",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 557,
    "line": 512,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5e186403a55f0bfae1764434a9ca82e4900cc67f1f3c664dd64feba834a3ffe2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ef987014753e7c1254738a5e39d429b3920eaf31430f8d3cf92347fbba7e7c8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5e186403a55f0bfae1764434a9ca82e4900cc67f1f3c664dd64feba834a3ffe2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4efb7b4614a6cc3a735035cc1bb173219d7984da6cc9e478a8b36a91dfe1aa0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 512–557.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DoElemCont.mkBindUnlessPure (dec : DoElemCont) (e : Expr) : DoElabM Expr := do
  -- let eResultTy ← mkFreshResultType
  -- let e ← Term.ensureHasType (← mkMonadApp eResultTy) e
  -- let dec ← dec.ensureHasType eResultTy
  let x := dec.resultName
  let k := dec.k
  let eResultTy := dec.resultType
  -- The .ofBinderName below is mainly to interpret `__do_lift` binders as implementation details.
  let declKind := .ofBinderName x
  let kResultTy ← mkFreshResultType `kResultTy
  withLocalDecl x .default eResultTy (kind := declKind) fun xFVar => do
    let body ← k
    let body' := body.consumeMData
    let ops := (← read).ops.toDoOps
    -- First try to contract `e >>= pure` into `e`.
    -- Reason: for `pure e >>= pure`, we want to get `pure e` and not `have xFVar := e; pure xFVar`.
    if let some pureArg := ops.isPureApp? body' then
      if pureArg == xFVar then
        let body'' ← mkPureApp eResultTy xFVar
        if ← withNewMCtxDepth do isDefEq body' body'' then
          return e

    -- Now test whether we can contract `pure e >>= k` into `have xFVar := e; k xFVar`. We zeta `xFVar` when
    -- `e` is duplicable; we don't look at `k` to see whether it is used at most once.
    let e' := e.consumeMData
    if let some eRes := ops.isPureApp? e' then
      let e' ← mkPureApp eResultTy eRes
      let (isPure, isDuplicable) ← withNewMCtxDepth do
        let isPure ← isDefEq e e'
        let isDuplicable ← isDefEq eResultTy (← mkPUnit)
          -- <||> pure eRes.isFVar -- this is too aggressive; users expect to see "useless binds" after elaboration
        return (isPure, isDuplicable)
      if isPure then
        if isDuplicable then
          return ← mapLetDeclZeta (nondep := true) (kind := declKind) x eResultTy eRes fun _ => k
        -- else -- would be too aggressive
        --   return ← mapLetDecl (nondep := true) (kind := declKind) x eResultTy eRes fun _ => k ref

    let body ← Term.ensureHasType (← mkMonadApp kResultTy) body
    let k ← mkLambdaFVars #[xFVar] body
    mkBindApp eResultTy kResultTy e k

/--
Return `let $k.resultName : PUnit := PUnit.unit; $(← k.k)`, ensuring that the result type of `k.k`
is `PUnit` and then immediately zeta-reduce the `let`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5e186403a55f0bfae1764434a9ca82e4900cc67f1f3c664dd64feba834a3ffe2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5e186403a55f0bfae1764434a9ca82e4900cc67f1f3c664dd64feba834a3ffe2.lean#L512).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0c31f6213534340fa7b33f8a3eca82a2214a819` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
