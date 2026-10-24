# upstream_component_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a2312728418de85a6ed8866b5d31f2e6339d999",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6f37cc5a640adcd79d1da6f4c345855ba5fddd8f814843eec0a40871d5bf78f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5b51b77-d2fa-f755-d764-3c980b41ae83",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:51c71a5b-38e7-0272-d7fc-e05abe2930ad",
  "kind": "theorem",
  "lexical_name": "upstream_component_subset",
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
  "slug": "upstream-component-subset--199c955c3c1533fc8949ff2f",
  "source": {
    "blob": "2a2312728418de85a6ed8866b5d31f2e6339d999",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 168,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variantf6f37cc5a640adcd79d1da6f4c345855ba5fddd8f814843eec0a40871d5bf78f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:199c955c3c1533fc8949ff2fb0004ba73dd1c57e67724d53a3f64bd31666ba06",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variantf6f37cc5a640adcd79d1da6f4c345855ba5fddd8f814843eec0a40871d5bf78f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51c71a5b-38e7-0272-d7fc-e05abe2930ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upstream_component_subset
    (registry : CertificateDependencyRegistry)
    {certificate upstream metadata upstreamMetadata}
    (consumerRegistered :
      registry.lookup certificate = some metadata)
    (upstreamMember :
      upstream ∈ registry.directUpstream certificate)
    (upstreamRegistered :
      registry.lookup upstream = some upstreamMetadata) :
    upstreamMetadata.dependencies ⊆ metadata.dependencies :=
  registry.component_dependencies_closed
    consumerRegistered upstreamMember upstreamRegistered

/-- Every transitively reachable certificate is registered. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variantf6f37cc5a640adcd79d1da6f4c345855ba5fddd8f814843eec0a40871d5bf78f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variantf6f37cc5a640adcd79d1da6f4c345855ba5fddd8f814843eec0a40871d5bf78f.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a2312728418de85a6ed8866b5d31f2e6339d999` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
