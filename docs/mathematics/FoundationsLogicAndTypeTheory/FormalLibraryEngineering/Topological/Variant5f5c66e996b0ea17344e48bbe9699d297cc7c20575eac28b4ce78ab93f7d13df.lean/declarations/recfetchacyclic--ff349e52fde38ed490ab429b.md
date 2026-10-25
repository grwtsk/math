# recFetchAcyclic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:438e4be5002997365034fe369d1e6a090b3f29b90e481c0be258b1f06c8d229b",
  "kind": "def",
  "lexical_name": "recFetchAcyclic",
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
  "slug": "recfetchacyclic--ff349e52fde38ed490ab429b",
  "source": {
    "blob": "e0392a66c197e9aa1053c0a37f0fc29082679437",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 102,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Topological/Variant5f5c66e996b0ea17344e48bbe9699d297cc7c20575eac28b4ce78ab93f7d13df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff349e52fde38ed490ab429beb30fa0c80c26aed14b9495ca569869742d32bdd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Topological/Variant5f5c66e996b0ea17344e48bbe9699d297cc7c20575eac28b4ce78ab93f7d13df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:438e4be5002997365034fe369d1e6a090b3f29b90e481c0be258b1f06c8d229b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[specialize] public def recFetchAcyclic
  [BEq κ] [Monad m] [MonadCycle κ m]
  (keyOf : α → κ) (fetch : DRecFetchFn α β m)
: DFetchFn α β m :=
  recFetch fun a => .mk fun recurse => guardCycle (keyOf a) do
    /-
    NOTE: We provide the stack directly to `recurse` rather than
    using the version in the monad to prevent it being overridden by
    the `fetch` function (and thereby potentially produce a cycle).
    -/
    let stack ← getCallStack
    fetch a |>.run fun a => withCallStack stack (recurse a)

/-!
When building, we usually do not want to build the same thing twice during
a single build pass. At the same time, separate builds may both wish to fetch
the same thing. Thus, we need to store past build results to return them upon
future fetches. This is what `recFetchMemoize` below does.
-/

/--
`recFetchAcyclic` augmented with a `MonadDStore` to
memoize fetch results and thus avoid computing the same result twice.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Topological/Variant5f5c66e996b0ea17344e48bbe9699d297cc7c20575eac28b4ce78ab93f7d13df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Topological/Variant5f5c66e996b0ea17344e48bbe9699d297cc7c20575eac28b4ce78ab93f7d13df.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0392a66c197e9aa1053c0a37f0fc29082679437` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
