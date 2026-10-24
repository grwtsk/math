# ncard_tangentsFrom_eq_two_of_radius_lt_dist

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
      "line": 342,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/524d141d9e21b780d11fbb193c860776b1e7fbc963afd7b1b4c5630ef772467c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:79df5382-f427-c745-5a8d-295b94ba6010",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c26e53b2-9c0f-d990-a224-99eb58827450",
  "kind": "lemma",
  "lexical_name": "ncard_tangentsFrom_eq_two_of_radius_lt_dist",
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
  "slug": "ncard-tangentsfrom-eq-two-of-radius-lt-dist--55967e4a49a17a68f9f725e6",
  "source": {
    "blob": "ebb9a37c11a420956e1454d1ec57bcab4564a6ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 342,
    "path": "GRWTSK/Topology/MetricTopology/Tangent/Variant524d141d9e21b780d11fbb193c860776b1e7fbc963afd7b1b4c5630ef772467c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55967e4a49a17a68f9f725e621b97832a3ffc618694fba4e97acd008f04bc986",
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

Occurrence: `result:c26e53b2-9c0f-d990-a224-99eb58827450`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ncard_tangentsFrom_eq_two_of_radius_lt_dist [Fact (Module.finrank ℝ V = 2)] {s : Sphere P}
    (hs : 0 < s.radius) {p : P} (hp : s.radius < dist p s.center) :
    (s.tangentsFrom p).ncard = 2 := by
  rw [tangentsFrom_eq_image_orthRadius_inter_polar (fun h ↦ by rw [h, dist_self] at hp; grind),
    Set.ncard_image_of_injective _ s.orthRadius_injective,
    ncard_inter_polar_eq_two_of_radius_lt_dist hs hp]

/-- The set of all maximal common tangent spaces to the spheres `s₁` and `s₂`. -/
-- Note: `Set` has no computational content, but Lean still attempts to compile it.
-- See https://github.com/leanprover/lean4/issues/14084.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Tangent/Variant524d141d9e21b780d11fbb193c860776b1e7fbc963afd7b1b4c5630ef772467c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Tangent/Variant524d141d9e21b780d11fbb193c860776b1e7fbc963afd7b1b4c5630ef772467c.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebb9a37c11a420956e1454d1ec57bcab4564a6ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
