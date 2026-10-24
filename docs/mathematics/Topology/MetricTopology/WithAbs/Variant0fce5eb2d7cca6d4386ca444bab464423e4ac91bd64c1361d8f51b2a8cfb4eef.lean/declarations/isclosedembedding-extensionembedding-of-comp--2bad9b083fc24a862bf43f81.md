# isClosedEmbedding_extensionEmbedding_of_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:423f3890-c147-1347-6262-0dd4017fb58d",
  "kind": "theorem",
  "lexical_name": "isClosedEmbedding_extensionEmbedding_of_comp",
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
  "slug": "isclosedembedding-extensionembedding-of-comp--2bad9b083fc24a862bf43f81",
  "source": {
    "blob": "1af53476f1f147f967f02a37480551bc637bbb69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 122,
    "path": "GRWTSK/Topology/MetricTopology/WithAbs/Variant0fce5eb2d7cca6d4386ca444bab464423e4ac91bd64c1361d8f51b2a8cfb4eef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bad9b083fc24a862bf43f81a2d216997e5bee1a98ffbfe92488a810e3d0287e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/WithAbs/Variant0fce5eb2d7cca6d4386ca444bab464423e4ac91bd64c1361d8f51b2a8cfb4eef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:423f3890-c147-1347-6262-0dd4017fb58d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosedEmbedding_extensionEmbedding_of_comp (h : ∀ x, ‖f x‖ = v x) :
    IsClosedEmbedding (extensionEmbedding_of_comp h) :=
  (isometry_extensionEmbedding_of_comp h).isClosedEmbedding

/-- If the absolute value of a normed field factors through an embedding into another normed field
that is locally compact, then the completion of the first normed field is also locally compact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/WithAbs/Variant0fce5eb2d7cca6d4386ca444bab464423e4ac91bd64c1361d8f51b2a8cfb4eef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/WithAbs/Variant0fce5eb2d7cca6d4386ca444bab464423e4ac91bd64c1361d8f51b2a8cfb4eef.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1af53476f1f147f967f02a37480551bc637bbb69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
