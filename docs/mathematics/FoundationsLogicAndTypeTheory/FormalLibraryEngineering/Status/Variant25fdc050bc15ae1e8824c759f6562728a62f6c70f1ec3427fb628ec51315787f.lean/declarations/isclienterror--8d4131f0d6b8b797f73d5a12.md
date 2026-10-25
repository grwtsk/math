# isClientError

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1e49aa9c768348539be6fd02380e13eb180eb72f8b1919c7fb094fb08c23781",
  "kind": "def",
  "lexical_name": "isClientError",
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
  "slug": "isclienterror--8d4131f0d6b8b797f73d5a12",
  "source": {
    "blob": "d9882d23632ec77ee863954168b09616964d714d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 629,
    "line": 620,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Status/Variant25fdc050bc15ae1e8824c759f6562728a62f6c70f1ec3427fb628ec51315787f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d4131f0d6b8b797f73d5a12e46645be6a44dfdf46785fb7f903d3c3c5847324",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Status/Variant25fdc050bc15ae1e8824c759f6562728a62f6c70f1ec3427fb628ec51315787f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1e49aa9c768348539be6fd02380e13eb180eb72f8b1919c7fb094fb08c23781`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 620–629.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isClientError (c : Status) : Bool :=
  400 ≤ c.toCode ∧ c.toCode < 500

/--
Checks if the type of the status code is a server error, meaning that the server failed to fulfill
an apparently valid request.

Reference: https://httpwg.org/specs/rfc9110.html#status.codes
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Status/Variant25fdc050bc15ae1e8824c759f6562728a62f6c70f1ec3427fb628ec51315787f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Status/Variant25fdc050bc15ae1e8824c759f6562728a62f6c70f1ec3427fb628ec51315787f.lean#L620).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9882d23632ec77ee863954168b09616964d714d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
