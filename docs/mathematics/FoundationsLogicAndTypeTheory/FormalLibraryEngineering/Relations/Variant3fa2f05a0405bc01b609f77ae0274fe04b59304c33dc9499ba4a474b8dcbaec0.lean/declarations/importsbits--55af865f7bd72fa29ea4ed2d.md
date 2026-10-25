# importsBits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ed2af6384bfc1eabbfc356aa0b3608965af1d7844e47397c3b1cb977e6d329a",
  "kind": "def",
  "lexical_name": "importsBits",
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
  "slug": "importsbits--55af865f7bd72fa29ea4ed2d",
  "source": {
    "blob": "acafd948d3a17c535a8f43201b13180ebb038d85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 16,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant3fa2f05a0405bc01b609f77ae0274fe04b59304c33dc9499ba4a474b8dcbaec0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55af865f7bd72fa29ea4ed2da44059c8a84e63d3eab05d1b52ddc225cd67eadf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant3fa2f05a0405bc01b609f77ae0274fe04b59304c33dc9499ba4a474b8dcbaec0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ed2af6384bfc1eabbfc356aa0b3608965af1d7844e47397c3b1cb977e6d329a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def importsBits : BitMatrix projectCount projectCount :=
  fun consumer dependency ↦
    ((consumer.val == 3) &&
      ((dependency.val == 0) ||
        (dependency.val == 1) ||
        (dependency.val == 2))) ||
    ((consumer.val == 4) &&
      ((dependency.val == 0) ||
        (dependency.val == 2))) ||
    ((consumer.val == 5) &&
      ((dependency.val == 0) ||
        (dependency.val == 3) ||
        (dependency.val == 4)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant3fa2f05a0405bc01b609f77ae0274fe04b59304c33dc9499ba4a474b8dcbaec0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant3fa2f05a0405bc01b609f77ae0274fe04b59304c33dc9499ba4a474b8dcbaec0.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acafd948d3a17c535a8f43201b13180ebb038d85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
