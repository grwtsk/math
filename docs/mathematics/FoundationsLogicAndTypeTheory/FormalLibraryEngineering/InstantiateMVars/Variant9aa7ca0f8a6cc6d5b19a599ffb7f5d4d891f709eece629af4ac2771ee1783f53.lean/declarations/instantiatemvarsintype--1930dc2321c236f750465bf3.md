# instantiateMVarsInType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:800c5e78dd63c1a28579b2d5280f2d4196280cfe476e098f915a98f482843fc5",
  "kind": "def",
  "lexical_name": "instantiateMVarsInType",
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
  "slug": "instantiatemvarsintype--1930dc2321c236f750465bf3",
  "source": {
    "blob": "e72d52961a7e8fb94b81034084f2161cbc2489cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateMVars/Variant9aa7ca0f8a6cc6d5b19a599ffb7f5d4d891f709eece629af4ac2771ee1783f53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1930dc2321c236f750465bf370d8f9ac107fbbf15fc08eb46fbb046594971483",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateMVars/Variant9aa7ca0f8a6cc6d5b19a599ffb7f5d4d891f709eece629af4ac2771ee1783f53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:800c5e78dd63c1a28579b2d5280f2d4196280cfe476e098f915a98f482843fc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def instantiateMVarsInType [Monad m] [MonadMCtx m] [MonadError m]
    (mvarId : MVarId) : m Expr := do
  let mdecl ← (← getMCtx).getExprMVarDecl mvarId
  let type := mdecl.type
  if type.hasMVar then
    let type ← instantiateMVars type
    let mdecl := { mdecl with type }
    modifyMCtx (·.declareExprMVar mvarId mdecl)
    return type
  else
    return type

/--
Instantiate metavariables in the `LocalDecl` of the given fvar, update the
`LocalDecl` and return the new `LocalDecl.`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateMVars/Variant9aa7ca0f8a6cc6d5b19a599ffb7f5d4d891f709eece629af4ac2771ee1783f53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateMVars/Variant9aa7ca0f8a6cc6d5b19a599ffb7f5d4d891f709eece629af4ac2771ee1783f53.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e72d52961a7e8fb94b81034084f2161cbc2489cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
