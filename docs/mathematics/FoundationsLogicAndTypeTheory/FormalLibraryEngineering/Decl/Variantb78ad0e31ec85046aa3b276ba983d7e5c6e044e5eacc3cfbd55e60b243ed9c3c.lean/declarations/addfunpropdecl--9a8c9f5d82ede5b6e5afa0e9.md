# addFunPropDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb7c598ae2c1d706ecd6818857ea00f28c85a9df8a45e842524410fc22774ca4",
  "kind": "def",
  "lexical_name": "addFunPropDecl",
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
  "slug": "addfunpropdecl--9a8c9f5d82ede5b6e5afa0e9",
  "source": {
    "blob": "beccfc3c84dd076b194ea28864ae541397ffede9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decl/Variantb78ad0e31ec85046aa3b276ba983d7e5c6e044e5eacc3cfbd55e60b243ed9c3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a8c9f5d82ede5b6e5afa0e9c00a5d114642e9c6c9b0bde7ce2ebef0fdd3643a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decl/Variantb78ad0e31ec85046aa3b276ba983d7e5c6e044e5eacc3cfbd55e60b243ed9c3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb7c598ae2c1d706ecd6818857ea00f28c85a9df8a45e842524410fc22774ca4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addFunPropDecl (declName : Name) : MetaM Unit := do

  let info ← getConstInfo declName

  let (xs, bi, b) ← forallMetaTelescope info.type

  if ¬b.isProp then
    throwError "invalid fun_prop declaration, has to be `Prop` valued function"

  let lvls := info.levelParams.map (fun l => Level.param l)
  let e := mkAppN (.const declName lvls) xs
  let path ← DiscrTree.mkPath e

  -- find the argument position of the function `f` in `P f`
  let mut .some funArgId ← (xs.zip bi).findIdxM? fun (x,bi) => do
    if (← inferType x).isForall && bi.isExplicit then
      return true
    else
      return false
    | throwError "invalid fun_prop declaration, can't find argument of type `α → β`"

  let decl : FunPropDecl := {
    funPropName := declName
    path := path
    funArgId := funArgId
  }

  modifyEnv fun env => funPropDeclsExt.addEntry env decl

  trace[Meta.Tactic.funProp.attr]
    "added new function property `{declName}`\nlook up pattern is `{path}`"


/-- Is `e` a function property statement? If yes return function property declaration and
the function it talks about. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decl/Variantb78ad0e31ec85046aa3b276ba983d7e5c6e044e5eacc3cfbd55e60b243ed9c3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decl/Variantb78ad0e31ec85046aa3b276ba983d7e5c6e044e5eacc3cfbd55e60b243ed9c3c.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `beccfc3c84dd076b194ea28864ae541397ffede9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
