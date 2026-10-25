# instantiateMVarsInType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6012c6a5949f45cd2b27a1eb7e2d2d9a3e32ca555390746ec3e54f5706fb1e0",
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
  "slug": "instantiatemvarsintype--a53efa013897839a2d3fc93c",
  "source": {
    "blob": "d6b6bab220837d65232d8f39c32c51487824ac15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 16,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateMVars/Varianta09064d60989fe84630f175a44e80b20faf8bf2a32c0a085af15b28dfeaf060c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a53efa013897839a2d3fc93cacda307435d8c376b86a4020b17d2f16e38c6f8d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateMVars/Varianta09064d60989fe84630f175a44e80b20faf8bf2a32c0a085af15b28dfeaf060c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6012c6a5949f45cd2b27a1eb7e2d2d9a3e32ca555390746ec3e54f5706fb1e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–31.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateMVars/Varianta09064d60989fe84630f175a44e80b20faf8bf2a32c0a085af15b28dfeaf060c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateMVars/Varianta09064d60989fe84630f175a44e80b20faf8bf2a32c0a085af15b28dfeaf060c.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6b6bab220837d65232d8f39c32c51487824ac15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
