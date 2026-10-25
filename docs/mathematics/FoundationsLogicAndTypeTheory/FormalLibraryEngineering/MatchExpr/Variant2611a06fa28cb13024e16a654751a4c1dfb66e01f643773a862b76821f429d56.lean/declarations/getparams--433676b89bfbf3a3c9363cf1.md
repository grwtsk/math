# getParams

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1be63873d13b677c438c0d6a1624b72544ed9df478f13f26e2fde9fa9ec5ef9c",
  "kind": "def",
  "lexical_name": "getParams",
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
  "slug": "getparams--433676b89bfbf3a3c9363cf1",
  "source": {
    "blob": "df2375f029f3d7a31ac246a611e23c449310b043",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 137,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchExpr/Variant2611a06fa28cb13024e16a654751a4c1dfb66e01f643773a862b76821f429d56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:433676b89bfbf3a3c9363cf1ed9f4bc42ca6700dffa41295414531cd361be08a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchExpr/Variant2611a06fa28cb13024e16a654751a4c1dfb66e01f643773a862b76821f429d56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1be63873d13b677c438c0d6a1624b72544ed9df478f13f26e2fde9fa9ec5ef9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getParams (alt : Alt) : MacroM (Array (TSyntax ``bracketedBinder)) := do
  let mut params := #[]
  if let some var := alt.var? then
    params := params.push (← `(bracketedBinderF| ($var : Expr)))
  params := params ++ (← alt.pvars.toArray.reverse.filterMapM fun
    | none => return none
    | some arg => return some (← `(bracketedBinderF| ($arg : Expr))))
  if params.isEmpty then
    return #[(← `(bracketedBinderF| (_ : Unit)))]
  return params

/--
Generates the actual arguments for invoking the auxiliary continuation function
associated with the given alternative. The arguments are the actuals stored in `alt`.
`discr` is also an argument if `alt.var?` is not none.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchExpr/Variant2611a06fa28cb13024e16a654751a4c1dfb66e01f643773a862b76821f429d56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchExpr/Variant2611a06fa28cb13024e16a654751a4c1dfb66e01f643773a862b76821f429d56.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df2375f029f3d7a31ac246a611e23c449310b043` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
