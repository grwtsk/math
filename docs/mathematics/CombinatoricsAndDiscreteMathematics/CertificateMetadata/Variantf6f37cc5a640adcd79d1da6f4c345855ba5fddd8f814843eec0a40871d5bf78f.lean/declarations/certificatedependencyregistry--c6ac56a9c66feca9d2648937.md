# CertificateDependencyRegistry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c398bf83234e31cb7c3cb24bf33a0b93c1c7ac9c555d9d0e3036993b8238849",
  "kind": "structure",
  "lexical_name": "CertificateDependencyRegistry",
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
  "slug": "certificatedependencyregistry--c6ac56a9c66feca9d2648937",
  "source": {
    "blob": "2a2312728418de85a6ed8866b5d31f2e6339d999",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 110,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variantf6f37cc5a640adcd79d1da6f4c345855ba5fddd8f814843eec0a40871d5bf78f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6ac56a9c66feca9d264893752f52f95da222b55258f5788142c3b8a9e098532",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variantf6f37cc5a640adcd79d1da6f4c345855ba5fddd8f814843eec0a40871d5bf78f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c398bf83234e31cb7c3cb24bf33a0b93c1c7ac9c555d9d0e3036993b8238849`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CertificateDependencyRegistry where
  lookup : ObjectAddress → Option CertificateMetadata
  directUpstream : ObjectAddress → Finset ObjectAddress
  rank : ObjectAddress → Nat
  upstream_bound :
    ∀ {certificate metadata},
      lookup certificate = some metadata →
        directUpstream certificate = metadata.upstreamCertificates
  upstream_registered :
    ∀ {certificate upstream metadata},
      lookup certificate = some metadata →
      upstream ∈ directUpstream certificate →
        ∃ upstreamMetadata, lookup upstream = some upstreamMetadata
  upstream_rank_decreases :
    ∀ {certificate upstream metadata},
      lookup certificate = some metadata →
      upstream ∈ directUpstream certificate →
        rank upstream < rank certificate
  metadata_rank_bound :
    ∀ {certificate metadata},
      lookup certificate = some metadata →
        rank certificate = metadata.dependencyRank
  component_dependencies_closed :
    ∀ {certificate upstream metadata upstreamMetadata},
      lookup certificate = some metadata →
      upstream ∈ directUpstream certificate →
      lookup upstream = some upstreamMetadata →
        upstreamMetadata.dependencies ⊆ metadata.dependencies

namespace CertificateDependencyRegistry

/-- Nonempty transitive reachability through direct upstream certificates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variantf6f37cc5a640adcd79d1da6f4c345855ba5fddd8f814843eec0a40871d5bf78f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variantf6f37cc5a640adcd79d1da6f4c345855ba5fddd8f814843eec0a40871d5bf78f.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a2312728418de85a6ed8866b5d31f2e6339d999` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
