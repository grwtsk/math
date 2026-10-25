# exposeSubtrees

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5c761fef1224937856520d573e2c010323ce6b23b87779aaeddb912f8ca273e",
  "kind": "def",
  "lexical_name": "exposeSubtrees",
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
  "slug": "exposesubtrees--9be9879cdfc61b767949d76b",
  "source": {
    "blob": "7c2ee08defb381768cd32c43caab17a657ca1bb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 415,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant99acaaf4d9680ac0172deb5a93f70ce5a43795b26a6342080de3dee33570bc38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9be9879cdfc61b767949d76bf34022629b1e1dfa6f112e0b293b8f5a17693583",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant99acaaf4d9680ac0172deb5a93f70ce5a43795b26a6342080de3dee33570bc38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5c761fef1224937856520d573e2c010323ce6b23b87779aaeddb912f8ca273e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 415–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def exposeSubtrees (p : TracePattern) : TracePostprocessor := fun roots =>
  roots.mapM fun root => return (← go root).1
where
  /-- Returns the transformed tree and whether it contains a match. -/
  go (t : TraceTree) : CoreM (TraceTree × Bool) := do
    if ← p t then return (t, true)
    let results ← t.children.mapM go
    let hasMatchBelow := results.any (·.2)
    let t := t.withChildren (results.map (·.1))
    let t := if hasMatchBelow then t.modifyData ({ · with collapsed := false }) else t
    return (t, hasMatchBelow)

/-- Appends the number of nodes inside each subtree to the subtree's head message. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant99acaaf4d9680ac0172deb5a93f70ce5a43795b26a6342080de3dee33570bc38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant99acaaf4d9680ac0172deb5a93f70ce5a43795b26a6342080de3dee33570bc38.lean#L415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c2ee08defb381768cd32c43caab17a657ca1bb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
