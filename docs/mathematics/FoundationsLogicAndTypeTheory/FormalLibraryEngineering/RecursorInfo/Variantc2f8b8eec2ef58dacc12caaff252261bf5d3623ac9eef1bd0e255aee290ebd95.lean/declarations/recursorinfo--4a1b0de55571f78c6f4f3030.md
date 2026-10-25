# RecursorInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c77f6ba3ffa099ac3911234ba701338038ed4b0464c434e66a315af76cbfa3e7",
  "kind": "structure",
  "lexical_name": "RecursorInfo",
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
  "slug": "recursorinfo--4a1b0de55571f78c6f4f3030",
  "source": {
    "blob": "de349fb7bbf8c5f72c73724ba0e3ffd52420de08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursorInfo/Variantc2f8b8eec2ef58dacc12caaff252261bf5d3623ac9eef1bd0e255aee290ebd95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a1b0de55571f78c6f4f3030b2bf6edd5be07ab0847ba9707ec7d8791b728dca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursorInfo/Variantc2f8b8eec2ef58dacc12caaff252261bf5d3623ac9eef1bd0e255aee290ebd95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c77f6ba3ffa099ac3911234ba701338038ed4b0464c434e66a315af76cbfa3e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RecursorInfo where
  recursorName  : Name
  typeName      : Name
  univLevelPos  : List RecursorUnivLevelPos
  depElim       : Bool
  recursive     : Bool
  numArgs       : Nat -- Total number of arguments
  majorPos      : Nat
  paramsPos     : List (Option Nat) -- Position of the recursor parameters in the major premise, instance implicit arguments are `none`
  indicesPos    : List Nat -- Position of the recursor indices in the major premise
  produceMotive : List Bool -- If the i-th element is true then i-th minor premise produces the motive

namespace RecursorInfo

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursorInfo/Variantc2f8b8eec2ef58dacc12caaff252261bf5d3623ac9eef1bd0e255aee290ebd95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursorInfo/Variantc2f8b8eec2ef58dacc12caaff252261bf5d3623ac9eef1bd0e255aee290ebd95.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de349fb7bbf8c5f72c73724ba0e3ffd52420de08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
