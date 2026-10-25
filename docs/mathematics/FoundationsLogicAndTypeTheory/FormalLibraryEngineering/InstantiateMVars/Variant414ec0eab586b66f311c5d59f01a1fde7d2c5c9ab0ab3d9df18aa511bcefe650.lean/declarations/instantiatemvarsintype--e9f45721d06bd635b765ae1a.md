# instantiateMVarsInType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dfdb8a850639afab9395ba81ff6b0b8f531a1de79b6f8b481f7b6943cc07254d",
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
  "slug": "instantiatemvarsintype--e9f45721d06bd635b765ae1a",
  "source": {
    "blob": "4cb98b1b98a892b1731cb4cbd2b925ae86aee5c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateMVars/Variant414ec0eab586b66f311c5d59f01a1fde7d2c5c9ab0ab3d9df18aa511bcefe650.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9f45721d06bd635b765ae1a0901a650e5bb0d270045591213a644e566098812",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateMVars/Variant414ec0eab586b66f311c5d59f01a1fde7d2c5c9ab0ab3d9df18aa511bcefe650.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dfdb8a850639afab9395ba81ff6b0b8f531a1de79b6f8b481f7b6943cc07254d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–35.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateMVars/Variant414ec0eab586b66f311c5d59f01a1fde7d2c5c9ab0ab3d9df18aa511bcefe650.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateMVars/Variant414ec0eab586b66f311c5d59f01a1fde7d2c5c9ab0ab3d9df18aa511bcefe650.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cb98b1b98a892b1731cb4cbd2b925ae86aee5c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
