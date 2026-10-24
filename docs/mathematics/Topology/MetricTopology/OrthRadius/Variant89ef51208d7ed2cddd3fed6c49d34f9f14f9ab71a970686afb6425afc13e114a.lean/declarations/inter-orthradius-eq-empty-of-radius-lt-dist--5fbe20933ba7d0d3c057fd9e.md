# inter_orthRadius_eq_empty_of_radius_lt_dist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65b069e8-809f-0210-815a-d83e4d4ca027",
  "kind": "lemma",
  "lexical_name": "inter_orthRadius_eq_empty_of_radius_lt_dist",
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
  "slug": "inter-orthradius-eq-empty-of-radius-lt-dist--5fbe20933ba7d0d3c057fd9e",
  "source": {
    "blob": "de7647a3031d40b9dc9023c37541d35ef7f37a03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 227,
    "path": "GRWTSK/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fbe20933ba7d0d3c057fd9e2c66789d2870d1feaa267476cd397d3833c2be4f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65b069e8-809f-0210-815a-d83e4d4ca027`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inter_orthRadius_eq_empty_of_radius_lt_dist {s : Sphere P} {p : P}
    (hp : s.radius < dist p s.center) : (s ∩ s.orthRadius p : Set P) = ∅ := by
  ext p'
  rw [mem_inter_orthRadius_iff_radius_nonneg_and_vsub_mem_and_norm_sq]
  simp only [Set.mem_empty_iff_false, iff_false, not_and]
  rintro hle - h
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/OrthRadius/Variant89ef51208d7ed2cddd3fed6c49d34f9f14f9ab71a970686afb6425afc13e114a.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de7647a3031d40b9dc9023c37541d35ef7f37a03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
