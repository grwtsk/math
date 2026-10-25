# async

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7e1204a58e9b1699c2844215c3305ff8db80db89cfa0a6168d7fd01186cb78c",
  "kind": "def",
  "lexical_name": "async",
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
  "slug": "async--efda40ba5ba4330d4979064a",
  "source": {
    "blob": "256377c54708627fb767d434edb18bdd1c2c9e53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 177,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantcd3c30d26df2dbfcd291e4de7e129426df7d705c1d3e84b0e1e80ee1c76a9359.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:efda40ba5ba4330d4979064af037fa62457e8014a5dafc994b5ed42a60ff94eb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantcd3c30d26df2dbfcd291e4de7e129426df7d705c1d3e84b0e1e80ee1c76a9359.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7e1204a58e9b1699c2844215c3305ff8db80db89cfa0a6168d7fd01186cb78c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[nospecialize] public protected def async
  [OptDataKind α] (act : JobM α) (prio := Task.Priority.default) (caption := "")
: SpawnM (Job α) := .ofFn fun fetch pkg? stack store ctx _ =>
  .ofTask (caption := caption) <$> BaseIO.asTask (prio := prio) do
    (withLoggedIO act).toFn fetch pkg? stack store ctx {}

/-- Wait for a job to complete and return the result. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantcd3c30d26df2dbfcd291e4de7e129426df7d705c1d3e84b0e1e80ee1c76a9359.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantcd3c30d26df2dbfcd291e4de7e129426df7d705c1d3e84b0e1e80ee1c76a9359.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `256377c54708627fb767d434edb18bdd1c2c9e53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
