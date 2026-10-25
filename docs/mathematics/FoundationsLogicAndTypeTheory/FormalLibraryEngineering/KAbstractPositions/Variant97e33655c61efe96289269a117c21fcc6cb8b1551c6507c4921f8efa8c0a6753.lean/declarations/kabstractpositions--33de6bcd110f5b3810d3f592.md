# kabstractPositions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd0d82d3b1007332a732e5a3411849b1aeb7f350fc8e0b42fb2b976aea2fb602",
  "kind": "def",
  "lexical_name": "kabstractPositions",
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
  "slug": "kabstractpositions--33de6bcd110f5b3810d3f592",
  "source": {
    "blob": "d8b18350513d2ed93c5b984dae4fb3aaf26147e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KAbstractPositions/Variant97e33655c61efe96289269a117c21fcc6cb8b1551c6507c4921f8efa8c0a6753.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33de6bcd110f5b3810d3f592fd3fcf0a602482054ce4febd7ee236b4539e609d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KAbstractPositions/Variant97e33655c61efe96289269a117c21fcc6cb8b1551c6507c4921f8efa8c0a6753.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd0d82d3b1007332a732e5a3411849b1aeb7f350fc8e0b42fb2b976aea2fb602`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def kabstractPositions (p e : Expr) : MetaM (Array SubExpr.Pos) := do
  let e ← instantiateMVars e
  let mctx ← getMCtx
  let pHeadIdx := p.toHeadIndex
  let pNumArgs := p.headNumArgs
  let rec
  /-- The main loop that loops through all subexpressions -/
  visit (e : Expr) (pos : SubExpr.Pos) (positions : Array SubExpr.Pos) :
      MetaM (Array SubExpr.Pos) := do
    let visitChildren : Array SubExpr.Pos → MetaM (Array SubExpr.Pos) :=
      match e with
      | .app fn arg                  => visit fn pos.pushAppFn
                                    >=> visit arg pos.pushAppArg
      | .mdata _ expr                => visit expr pos
      | .proj _ _ struct             => visit struct pos.pushProj
      | .letE _ type value body _    => visit type pos.pushLetVarType
                                    >=> visit value pos.pushLetValue
                                    >=> visit body pos.pushLetBody
      | .lam _ binderType body _     => visit binderType pos.pushBindingDomain
                                    >=> visit body pos.pushBindingBody
      | .forallE _ binderType body _ => visit binderType pos.pushBindingDomain
                                    >=> visit body pos.pushBindingBody
      | _                            => pure
    if e.hasLooseBVars then
      visitChildren positions
    else if e.toHeadIndex != pHeadIdx || e.headNumArgs != pNumArgs then
      visitChildren positions
    else
      if ← isDefEq e p then
        setMCtx mctx -- reset the `MetavarContext` because `isDefEq` can modify it if it succeeds
        visitChildren (positions.push pos)
      else
        visitChildren positions
  visit e .root #[]

/-- Return the subexpression at position `pos` in `e` together with an occurrence number
that allows the expression to be found by `kabstract`.
Return `none` when the subexpression contains loose bound variables. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KAbstractPositions/Variant97e33655c61efe96289269a117c21fcc6cb8b1551c6507c4921f8efa8c0a6753.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KAbstractPositions/Variant97e33655c61efe96289269a117c21fcc6cb8b1551c6507c4921f8efa8c0a6753.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8b18350513d2ed93c5b984dae4fb3aaf26147e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
