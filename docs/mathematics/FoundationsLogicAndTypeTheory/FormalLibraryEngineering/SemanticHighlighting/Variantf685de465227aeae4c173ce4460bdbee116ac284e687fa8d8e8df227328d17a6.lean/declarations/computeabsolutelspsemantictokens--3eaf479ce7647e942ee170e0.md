# computeAbsoluteLspSemanticTokens

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6f81bbc83f57792706df2670530d20e1e53f5a91a830f4ab3bd75cd14334045",
  "kind": "def",
  "lexical_name": "computeAbsoluteLspSemanticTokens",
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
  "slug": "computeabsolutelspsemantictokens--3eaf479ce7647e942ee170e0",
  "source": {
    "blob": "dbfe4cbe254b55b50d0905e8465111920d0e579e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantf685de465227aeae4c173ce4460bdbee116ac284e687fa8d8e8df227328d17a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3eaf479ce7647e942ee170e0def2c0b0f355912d9aa26d47b8146e9654cc682b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantf685de465227aeae4c173ce4460bdbee116ac284e687fa8d8e8df227328d17a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6f81bbc83f57792706df2670530d20e1e53f5a91a830f4ab3bd75cd14334045`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def computeAbsoluteLspSemanticTokens
    (text     : FileMap)
    (beginPos : String.Pos.Raw)
    (endPos?  : Option String.Pos.Raw)
    (tokens   : Array LeanSemanticToken)
    : Array AbsoluteLspSemanticToken :=
  tokens.filterMap fun tok => do
    let (pos, tailPos) := (← tok.stx.getPos?, ← tok.stx.getTailPos?)
    guard <| beginPos <= pos && endPos?.all (pos < ·)
    let (lspPos, lspTailPos) := (text.utf8PosToLspPos pos, text.utf8PosToLspPos tailPos)
    return { tok with pos := lspPos, tailPos := lspTailPos }

/--
The state used to handle computing non-overlapping semantic tokens. See
`handleOverlappingSemanticTokens` for a description of the problem.

Tokens are computed by iterating over every token _boundary_. At a given boundary, one of the
following things may happen:
1. We leave the range of a token, and there is no current token
2. We leave the range of a token, starting a new one
3. We start a token when there was none before

To do this, we maintain a set of tokens that could in principle occupy the interval from the last
token boundary to the one being considered. This includes tokens that are already in progress, and
potentially a new one from the input. The one with the highest priority is selected to be the next
one at each transition.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantf685de465227aeae4c173ce4460bdbee116ac284e687fa8d8e8df227328d17a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantf685de465227aeae4c173ce4460bdbee116ac284e687fa8d8e8df227328d17a6.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbfe4cbe254b55b50d0905e8465111920d0e579e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
