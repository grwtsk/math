# uniformContinuous_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dfd61578b3b146a2ae9bf8d4ea948cdd5a8f4f17",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba729640-eb8b-ce63-15e5-5f505d64d1b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:38d7568f-a307-1e01-c4f4-c2dc174640d5",
  "kind": "theorem",
  "lexical_name": "uniformContinuous_add",
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
  "slug": "uniformcontinuous-add--74348c339413b10d91bb0176",
  "source": {
    "blob": "dfd61578b3b146a2ae9bf8d4ea948cdd5a8f4f17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 74,
    "path": "GRWTSK/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74348c339413b10d91bb0176c35d3aec5fe37012c1327fa3866f4840f6025411",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38d7568f-a307-1e01-c4f4-c2dc174640d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformContinuous_add : UniformContinuous fun p : ℚ × ℚ => p.1 + p.2 :=
  Rat.isUniformEmbedding_coe_real.isUniformInducing.uniformContinuous_iff.2 <| by
    simp only [Function.comp_def, Rat.cast_add]
    exact Real.uniformContinuous_add.comp
      (Rat.uniformContinuous_coe_real.prodMap Rat.uniformContinuous_coe_real)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfd61578b3b146a2ae9bf8d4ea948cdd5a8f4f17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
