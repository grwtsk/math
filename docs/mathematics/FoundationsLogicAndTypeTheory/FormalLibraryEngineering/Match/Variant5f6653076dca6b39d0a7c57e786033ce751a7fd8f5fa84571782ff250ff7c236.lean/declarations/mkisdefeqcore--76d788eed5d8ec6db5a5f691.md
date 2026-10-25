# mkIsDefEqCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74f4976920730b44025d4b484278bf9e362fbce5729f6e0d72137d2475133432",
  "kind": "def",
  "lexical_name": "mkIsDefEqCore",
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
  "slug": "mkisdefeqcore--76d788eed5d8ec6db5a5f691",
  "source": {
    "blob": "5282c3d9163e2bea7f38434eb7519de759ac252d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant5f6653076dca6b39d0a7c57e786033ce751a7fd8f5fa84571782ff250ff7c236.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76d788eed5d8ec6db5a5f6914f5c246946798f30f6010704dfc5baf88d7e882a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant5f6653076dca6b39d0a7c57e786033ce751a7fd8f5fa84571782ff250ff7c236.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74f4976920730b44025d4b484278bf9e362fbce5729f6e0d72137d2475133432`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkIsDefEqCore (decls : List PatVarDecl) (pat discr : Q(Expr)) :
    List PatVarDecl → MetaM Q(MetaM $(mkIsDefEqType decls))
  | { ty := none, fvarId := fvarId, userName := userName } :: rest =>
    let decl : PatVarDecl := { ty := none, fvarId := fvarId, userName := userName }
    return q(Bind.bind mkFreshLevelMVar $(← mkLambdaQ `x decl.fvar (← mkIsDefEqCore decls pat discr rest)))
  | { ty := some ty, fvarId := fvarId, userName := userName } :: rest =>
    let decl : PatVarDecl := { ty := some ty, fvarId := fvarId, userName := userName }
    return q(Bind.bind (mkFreshExprMVar $ty) $(← mkLambdaQ `x decl.fvar (← mkIsDefEqCore decls pat discr rest)))
  | [] => do
    let instMVars ← mkInstantiateMVars decls decls
    return q(do
      let matches? ← withReducible $ isDefEq $pat $discr
      (if matches? then $instMVars else return $(mkIsDefEqResult false decls)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant5f6653076dca6b39d0a7c57e786033ce751a7fd8f5fa84571782ff250ff7c236.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant5f6653076dca6b39d0a7c57e786033ce751a7fd8f5fa84571782ff250ff7c236.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5282c3d9163e2bea7f38434eb7519de759ac252d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
