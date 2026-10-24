# NormalizedPolyhierarchy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f19eb7309cb9fe0cadac9a06538e0e748e2c3369fc697b45583fb344d6d81b4",
  "kind": "structure",
  "lexical_name": "NormalizedPolyhierarchy",
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
  "slug": "normalizedpolyhierarchy--06d1363f69f29b6c68b82b0a",
  "source": {
    "blob": "0447c794c790298c5d0aee09000fcbe986a95bb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 17,
    "line": 9,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A1465f7920c20799d/Variantf46537b0b4bf54c3e2ecaaaf982d4859325a1eaaf118609046ac004744b2b20c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06d1363f69f29b6c68b82b0a8ba7fcf3905555b14ca1e920b6e5b3a39c0c4441",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A1465f7920c20799d/Variantf46537b0b4bf54c3e2ecaaaf982d4859325a1eaaf118609046ac004744b2b20c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f19eb7309cb9fe0cadac9a06538e0e748e2c3369fc697b45583fb344d6d81b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–17.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NormalizedPolyhierarchy where
  concepts : List Concept.Record
  taxa : List Taxonomy.MathematicalTaxon
  binaryRelations : List BinaryRelationRecord
  hyperrelations : List HyperrelationRecord
  deriving DecidableEq

/-- The only decoder admitted by the formal projection boundary. It recovers
the semantic graph records and discards projection-only occurrences. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A1465f7920c20799d/Variantf46537b0b4bf54c3e2ecaaaf982d4859325a1eaaf118609046ac004744b2b20c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A1465f7920c20799d/Variantf46537b0b4bf54c3e2ecaaaf982d4859325a1eaaf118609046ac004744b2b20c.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0447c794c790298c5d0aee09000fcbe986a95bb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
