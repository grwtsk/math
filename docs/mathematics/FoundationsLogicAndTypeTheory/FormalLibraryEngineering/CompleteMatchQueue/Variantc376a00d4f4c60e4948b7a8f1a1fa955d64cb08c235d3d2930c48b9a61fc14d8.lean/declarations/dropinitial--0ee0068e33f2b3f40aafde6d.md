# dropInitial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:920c8776aee0c8fa143fb50a52eda760e792273613f567c8c068c3bd83b73c8a",
  "kind": "def",
  "lexical_name": "dropInitial",
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
  "slug": "dropinitial--0ee0068e33f2b3f40aafde6d",
  "source": {
    "blob": "17898c100d1cf4d6a89cd876752d3b619882c493",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompleteMatchQueue/Variantc376a00d4f4c60e4948b7a8f1a1fa955d64cb08c235d3d2930c48b9a61fc14d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ee0068e33f2b3f40aafde6d3736fe688282da8aed62a08abb7bc37cb306fb13",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompleteMatchQueue/Variantc376a00d4f4c60e4948b7a8f1a1fa955d64cb08c235d3d2930c48b9a61fc14d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:920c8776aee0c8fa143fb50a52eda760e792273613f567c8c068c3bd83b73c8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def dropInitial (queue : CompleteMatchQueue)
    (f : ForwardRuleMatch → Bool) : CompleteMatchQueue :=
  match queue.deleteMin with
  | none => queue
  | some (m, queue') =>
    if f m then
      dropInitial queue' f
    else
      queue

end Aesop.CompleteMatchQueue
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompleteMatchQueue/Variantc376a00d4f4c60e4948b7a8f1a1fa955d64cb08c235d3d2930c48b9a61fc14d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompleteMatchQueue/Variantc376a00d4f4c60e4948b7a8f1a1fa955d64cb08c235d3d2930c48b9a61fc14d8.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17898c100d1cf4d6a89cd876752d3b619882c493` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
