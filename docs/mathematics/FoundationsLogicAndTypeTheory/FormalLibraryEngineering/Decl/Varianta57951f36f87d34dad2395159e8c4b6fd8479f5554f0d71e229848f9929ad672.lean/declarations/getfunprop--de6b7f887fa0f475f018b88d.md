# getFunProp?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:976210ce4ec51b31c06327bf3885f487698cd969df99f0f883ce50c4745ce83c",
  "kind": "def",
  "lexical_name": "getFunProp?",
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
  "slug": "getfunprop--de6b7f887fa0f475f018b88d",
  "source": {
    "blob": "5ddf3d53b2e5ad7520b108027881b9a50e744f6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 89,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decl/Varianta57951f36f87d34dad2395159e8c4b6fd8479f5554f0d71e229848f9929ad672.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de6b7f887fa0f475f018b88d78338534b590d738af5bc3b5c136fdb443a8a9e3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decl/Varianta57951f36f87d34dad2395159e8c4b6fd8479f5554f0d71e229848f9929ad672.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:976210ce4ec51b31c06327bf3885f487698cd969df99f0f883ce50c4745ce83c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getFunProp? (e : Expr) : MetaM (Option (FunPropDecl × Expr)) := do
  let ext := funPropDeclsExt.getState (← getEnv)

  let decls ← ext.decls.getMatch e (← read)

  if h : decls.size = 0 then
    return none
  else
    if decls.size > 1 then
      throwError "fun_prop bug: expression {← ppExpr e} matches multiple function properties\n\
        {decls.map (fun d => d.funPropName)}"

    let decl := decls[0]
    unless decl.funArgId < e.getAppNumArgs do return none
    let f := e.getArg! decl.funArgId

    return (decl,f)

/-- Is `e` a function property statement? -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decl/Varianta57951f36f87d34dad2395159e8c4b6fd8479f5554f0d71e229848f9929ad672.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decl/Varianta57951f36f87d34dad2395159e8c4b6fd8479f5554f0d71e229848f9929ad672.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ddf3d53b2e5ad7520b108027881b9a50e744f6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
