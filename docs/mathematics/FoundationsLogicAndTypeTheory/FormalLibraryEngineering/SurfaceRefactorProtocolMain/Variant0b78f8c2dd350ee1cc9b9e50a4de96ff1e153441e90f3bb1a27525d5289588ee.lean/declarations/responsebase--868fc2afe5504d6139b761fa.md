# responseBase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70c723c7c5347a247b9d6bb6813bd769fc5ffaaf04494dfdd4b6863f5109ecc8",
  "kind": "def",
  "lexical_name": "responseBase",
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
  "slug": "responsebase--868fc2afe5504d6139b761fa",
  "source": {
    "blob": "585cb208a0d14f9a96e99df9c0588e3890750bee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 103,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant0b78f8c2dd350ee1cc9b9e50a4de96ff1e153441e90f3bb1a27525d5289588ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:868fc2afe5504d6139b761fa5c0ab8acd98b74f4d0856641ddb235ba4dab570b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant0b78f8c2dd350ee1cc9b9e50a4de96ff1e153441e90f3bb1a27525d5289588ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70c723c7c5347a247b9d6bb6813bd769fc5ffaaf04494dfdd4b6863f5109ecc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def responseBase
    (requestId operation : String)
    (sessionId : Option String)
    (ok : Bool)
    (authority : String) : List (String × Json) := [
  ("schema", toJson responseSchema),
  ("protocolVersion", toJson protocolVersion),
  ("requestId", toJson requestId),
  ("sessionId", sessionId.map toJson |>.getD Json.null),
  ("operation", toJson operation),
  ("ok", toJson ok),
  ("elapsedMicros", toJson (0 : Nat)),
  ("authority", toJson authority)
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant0b78f8c2dd350ee1cc9b9e50a4de96ff1e153441e90f3bb1a27525d5289588ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant0b78f8c2dd350ee1cc9b9e50a4de96ff1e153441e90f3bb1a27525d5289588ee.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `585cb208a0d14f9a96e99df9c0588e3890750bee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
