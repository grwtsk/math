# PlankGluingCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a798f5fb26786b729ba33a519eb41e5a1990c6984d415511e57800f1269648dd",
  "kind": "structure",
  "lexical_name": "PlankGluingCertificate",
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
  "slug": "plankgluingcertificate--ead2e7933d50e7b6a4061d18",
  "source": {
    "blob": "518684005eb57186e315519b6f9cf1b7049c57aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 120,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ead2e7933d50e7b6a4061d18847190e48d32144f4a6c923db61cab96e2c102d6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a798f5fb26786b729ba33a519eb41e5a1990c6984d415511e57800f1269648dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PlankGluingCertificate where
  plankDescriptor : String
  angleCompatibility : Prop
  angleCompatibilityCertified : angleCompatibility
  thickenedNeighborhoodCompatibility : Prop
  thickenedNeighborhoodCompatibilityCertified :
    thickenedNeighborhoodCompatibility
  normalizedTransportFeedsGluing : Prop
  normalizedTransportFeedsGluingCertified :
    normalizedTransportFeedsGluing
  boundary : List String

/--
Wang--Zahl-motivated name for the plank angle obligation.

This is a projection, not an additional proof source.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `518684005eb57186e315519b6f9cf1b7049c57aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
