# prod_dist_eq_of_L1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "62192202a71ae5be09376acbbace426de1c7691f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 702,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed59a1f9d646c926df802672303017b76ed5c09145f9173374ef7091a5483607.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f293f49e-8f86-22e2-5d87-6c1d9e6d252f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:051aa2bc-0e9c-1144-9cf9-8d07e5d8c1e2",
  "kind": "theorem",
  "lexical_name": "prod_dist_eq_of_L1",
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
  "slug": "prod-dist-eq-of-l1--c3288e872e0ce0f9ceba0e6a",
  "source": {
    "blob": "62192202a71ae5be09376acbbace426de1c7691f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 705,
    "line": 702,
    "path": "GRWTSK/Topology/MetricTopology/ProdLp/Varianted59a1f9d646c926df802672303017b76ed5c09145f9173374ef7091a5483607.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3288e872e0ce0f9ceba0e6a00a5280ee03ed94e27891be79002a0609e16f52c",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ProdLp/Varianted59a1f9d646c926df802672303017b76ed5c09145f9173374ef7091a5483607.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:051aa2bc-0e9c-1144-9cf9-8d07e5d8c1e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 702–705.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_dist_eq_of_L1 (x y : WithLp 1 (α × β)) :
    dist x y = dist x.fst y.fst + dist x.snd y.snd := by
  simp_rw [dist_eq_norm, prod_norm_eq_of_L1, sub_fst, sub_snd]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ProdLp/Varianted59a1f9d646c926df802672303017b76ed5c09145f9173374ef7091a5483607.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ProdLp/Varianted59a1f9d646c926df802672303017b76ed5c09145f9173374ef7091a5483607.lean#L702).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62192202a71ae5be09376acbbace426de1c7691f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
