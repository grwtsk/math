# Lean.MVarId.obviousFunext?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad62c7aa4f85795498c12eb8220b03ad79a0d7183b905e2b259fca422b603875",
  "kind": "def",
  "lexical_name": "Lean.MVarId.obviousFunext?",
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
  "slug": "lean-mvarid-obviousfunext--be629e639a4daaec54a47583",
  "source": {
    "blob": "5dab970ac46b8d79d823379ea7951e93247fbb02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 662,
    "line": 650,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variantc590e4ac269203922fe409beb2a778ba5996043c49a93a3db5e32d3bc639da35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be629e639a4daaec54a4758367402b9644e8daf7e8a2522378b609f721c2ee90",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variantc590e4ac269203922fe409beb2a778ba5996043c49a93a3db5e32d3bc639da35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad62c7aa4f85795498c12eb8220b03ad79a0d7183b905e2b259fca422b603875`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 650–662.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.MVarId.obviousFunext? (mvarId : MVarId) : MetaM (Option (List MVarId)) :=
  mvarId.withContext <| observing? do
    let some (_, lhs, rhs) := (← withReducible mvarId.getType').eq? | failure
    if not lhs.cleanupAnnotations.isLambda && not rhs.cleanupAnnotations.isLambda then failure
    mvarId.apply (← mkConstWithFreshMVarLevels ``funext)

/--
Try to apply `Function.hfunext`, returning the new goals if it succeeds.
Like `Lean.MVarId.obviousFunext?`, we only do so if at least one side of the `HEq` is a lambda.
This prevents unfolding of things like `Set`.

Need to have `Mathlib.Logic.Function.Basic` imported for this to succeed.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variantc590e4ac269203922fe409beb2a778ba5996043c49a93a3db5e32d3bc639da35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variantc590e4ac269203922fe409beb2a778ba5996043c49a93a3db5e32d3bc639da35.lean#L650).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dab970ac46b8d79d823379ea7951e93247fbb02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
