# handleOverlappingSemanticTokens

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47b39e853aa745b6cff3a0fe40dbf781c15669030c066d9cc712d451a1a14361",
  "kind": "def",
  "lexical_name": "handleOverlappingSemanticTokens",
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
  "slug": "handleoverlappingsemantictokens--8fb05bfb4e11fb3f1cab88c3",
  "source": {
    "blob": "d957c35cbcf9ee6f6c36ed5d7d10aa34b38aac70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 267,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantd8621f2c5c08811d64abc7372abd4cd1f9e9e5f09f03fe38c5b9c037ca47c037.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8fb05bfb4e11fb3f1cab88c32e37e87ecc966b02599484497e078821f7276ea7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantd8621f2c5c08811d64abc7372abd4cd1f9e9e5f09f03fe38c5b9c037ca47c037.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47b39e853aa745b6cff3a0fe40dbf781c15669030c066d9cc712d451a1a14361`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def handleOverlappingSemanticTokens (tokens : Array AbsoluteLspSemanticToken) :
    Array AbsoluteLspSemanticToken := Id.run do
  -- `insertionSort` is used because a stable sort is needed here in order to allow the final
  -- tiebreaker to be position in the input array
  let count := tokens.size
  let tokens := tokens.toList.mergeSort fun ⟨pos1, tailPos1, _, _⟩ ⟨pos2, tailPos2, _, _⟩ =>
    pos1 < pos2 || pos1 == pos2 && tailPos1 ≤ tailPos2
  let mut st : HandleOverlapState := {
    current? := none
    -- Reserve 10% for overlaps
    nonOverlapping := Array.mkEmpty ((count * 11) / 10)
    surrounding := []
  }
  for t in tokens do
    st := st.token t
  st := st.untilToken none
  return st.nonOverlapping


/--
Given a set of `AbsoluteLspSemanticToken`, computes the LSP `SemanticTokens` data with
token-relative positioning.
See https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#textDocument_semanticTokens.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantd8621f2c5c08811d64abc7372abd4cd1f9e9e5f09f03fe38c5b9c037ca47c037.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantd8621f2c5c08811d64abc7372abd4cd1f9e9e5f09f03fe38c5b9c037ca47c037.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d957c35cbcf9ee6f6c36ed5d7d10aa34b38aac70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
