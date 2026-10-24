# CertificateMetadata

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a76846c6de5bc3ded57ae411532699c3c4df90bb42dd215332722b3b2486860a",
  "kind": "structure",
  "lexical_name": "CertificateMetadata",
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
  "slug": "certificatemetadata--42965a1d21ff1ff9552b5507",
  "source": {
    "blob": "b83d4bdec347f0720085afb4dc452b85c2126f92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 98,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42965a1d21ff1ff9552b5507ecf9f4ac670db484ecb5ac2fb2a05ddbde692e7e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a76846c6de5bc3ded57ae411532699c3c4df90bb42dd215332722b3b2486860a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CertificateMetadata where
  id : ObjectAddress
  subject : StableId
  kind : CertificateKind
  snapshot : SnapshotId
  dependencies : Finset SnapshotDependency
  dependencies_valid : SnapshotDependencySetValid dependencies
  authority : Concept.Profile
  authorityState : CertificateAuthorityState
  upstreamCertificates : Finset ObjectAddress
  dependencyRank : Nat
  provenance : Finset StableId
  unresolved : Finset StableId
  metadataDigest : Digest
  metadataDigest_valid : metadataDigest.Valid

/--
Registry validation makes the recorded component set transitively closed.
Every upstream certificate has lower rank, so recursive validation terminates.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b83d4bdec347f0720085afb4dc452b85c2126f92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
