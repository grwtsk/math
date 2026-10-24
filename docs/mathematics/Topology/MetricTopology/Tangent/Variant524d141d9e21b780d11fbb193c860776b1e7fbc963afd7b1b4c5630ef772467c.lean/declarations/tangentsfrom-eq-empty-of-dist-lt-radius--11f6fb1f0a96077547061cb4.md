# tangentsFrom_eq_empty_of_dist_lt_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ebb9a37c11a420956e1454d1ec57bcab4564a6ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 314,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/524d141d9e21b780d11fbb193c860776b1e7fbc963afd7b1b4c5630ef772467c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7eea9854-0300-ccd4-5f53-4ded3e80c4c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52a1d2e4-edb0-77e1-99ce-4d952d318899",
  "kind": "lemma",
  "lexical_name": "tangentsFrom_eq_empty_of_dist_lt_radius",
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
  "slug": "tangentsfrom-eq-empty-of-dist-lt-radius--11f6fb1f0a96077547061cb4",
  "source": {
    "blob": "ebb9a37c11a420956e1454d1ec57bcab4564a6ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 314,
    "path": "GRWTSK/Topology/MetricTopology/Tangent/Variant524d141d9e21b780d11fbb193c860776b1e7fbc963afd7b1b4c5630ef772467c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11f6fb1f0a96077547061cb4c28ab0414e080f8b4f2a0a4f5095eb07cf3e307c",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Tangent/Variant524d141d9e21b780d11fbb193c860776b1e7fbc963afd7b1b4c5630ef772467c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52a1d2e4-edb0-77e1-99ce-4d952d318899`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tangentsFrom_eq_empty_of_dist_lt_radius {s : Sphere P} {p : P}
    (hp : dist p s.center < s.radius) : s.tangentsFrom p = ∅ := by
  ext as
  rw [tangentsFrom, tangentSet]
  simp only [Set.mem_image, Metric.mem_sphere, mem_coe', Set.mem_ofPred_eq, Set.mem_empty_iff_false,
    iff_false, not_and, forall_exists_index, and_imp]
  rintro p' hp' rfl hpm
  exact (isTangent_orthRadius_iff_mem.2 hp').radius_le_dist_center hpm |>.not_gt hp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Tangent/Variant524d141d9e21b780d11fbb193c860776b1e7fbc963afd7b1b4c5630ef772467c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Tangent/Variant524d141d9e21b780d11fbb193c860776b1e7fbc963afd7b1b4c5630ef772467c.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebb9a37c11a420956e1454d1ec57bcab4564a6ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
