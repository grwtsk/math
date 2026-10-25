# DiffGranularity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d2e4b7b7d9b6b96e1d88ca3e918cb3f7722638af9fe4111c70f8f58ee8ab1a0",
  "kind": "inductive",
  "lexical_name": "DiffGranularity",
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
  "slug": "diffgranularity--6d79ea49b91317857df3cdd7",
  "source": {
    "blob": "4a782eeb30f8678df6a7319a3c8a6fdae9aedfb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 213,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Varianta7cab5343d78dcab0949beb3c456996a5cb48d1be6e458465160796e9ba1663d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d79ea49b91317857df3cdd725462bddaef25ac3f2867a4c8c6b8f3cb5ec34e1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Varianta7cab5343d78dcab0949beb3c456996a5cb48d1be6e458465160796e9ba1663d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d2e4b7b7d9b6b96e1d88ca3e918cb3f7722638af9fe4111c70f8f58ee8ab1a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive DiffGranularity where
  /-- Automatically select diff granularity based on edit distance. -/
  | auto
  /-- Character-level diff. -/
  | char
  /-- Diff using whitespace-separated tokens. -/
  | word
  /--
  "Monolithic" diff: shows a deletion of the entire existing source, followed by an insertion of the
  entire suggestion.
  -/
  | all
  /--
  No diff: Shows no deletion of the existing source, only an insertion of the suggestion.
  -/
  | none

/--
A code action suggestion associated with a hint in a message.

Refer to `TryThis.Suggestion`. This extends that structure with several fields specific to inline
hints.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Varianta7cab5343d78dcab0949beb3c456996a5cb48d1be6e458465160796e9ba1663d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Varianta7cab5343d78dcab0949beb3c456996a5cb48d1be6e458465160796e9ba1663d.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a782eeb30f8678df6a7319a3c8a6fdae9aedfb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
