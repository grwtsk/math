# Suggestion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ccf30901f8264d899260df368b0508b08d0f807702b24d683ae92b9d11a18241",
  "kind": "structure",
  "lexical_name": "Suggestion",
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
  "slug": "suggestion--f2444cdd0edec526f1d61e22",
  "source": {
    "blob": "4a782eeb30f8678df6a7319a3c8a6fdae9aedfb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 236,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Varianta7cab5343d78dcab0949beb3c456996a5cb48d1be6e458465160796e9ba1663d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2444cdd0edec526f1d61e22d9ae9fd3681cea6aa28e66289e588c10758b437b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Varianta7cab5343d78dcab0949beb3c456996a5cb48d1be6e458465160796e9ba1663d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ccf30901f8264d899260df368b0508b08d0f807702b24d683ae92b9d11a18241`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Suggestion extends toTryThisSuggestion : TryThis.Suggestion where
  /--
  The span at which this suggestion should apply. This allows a single hint to suggest modifications
  at different locations. If `span?` is not specified, then the syntax reference provided to
  `MessageData.hint` will be used.
  -/
  span? : Option Syntax := none
  /--
  The syntax to render in the inline diff preview. This syntax must have valid position information
  and must contain the span at which the edit occurs.
  -/
  previewSpan? : Option Syntax := none
  /--
  The granularity at which the diff for this suggestion should be rendered in the Infoview. See
  `DiffMode` for the possible granularities. This is `.auto` by default.
  -/
  diffGranularity : DiffGranularity := .auto

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Varianta7cab5343d78dcab0949beb3c456996a5cb48d1be6e458465160796e9ba1663d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Varianta7cab5343d78dcab0949beb3c456996a5cb48d1be6e458465160796e9ba1663d.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a782eeb30f8678df6a7319a3c8a6fdae9aedfb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
