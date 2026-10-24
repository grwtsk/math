# dist_lt_dist_add_dist_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5745e0a4-d0e8-2738-059c-78fa0293be87",
  "kind": "theorem",
  "lexical_name": "dist_lt_dist_add_dist_iff",
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
  "slug": "dist-lt-dist-add-dist-iff--d4a2a8ba835ae1086a5dca70",
  "source": {
    "blob": "186f1fa55e016220f96a4ab09252ab5b22957aed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 108,
    "path": "GRWTSK/Topology/MetricTopology/StrictConvexBetween/Variantab3f6fcdf342682213a66af07bf9f40e2001e4eef510f682dfbcbf0ab7780645.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4a2a8ba835ae1086a5dca7057e2ade98c550537074353191e54087b0589ee12",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/StrictConvexBetween/Variantab3f6fcdf342682213a66af07bf9f40e2001e4eef510f682dfbcbf0ab7780645.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5745e0a4-d0e8-2738-059c-78fa0293be87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_lt_dist_add_dist_iff {a b c : P} :
    dist a c < dist a b + dist b c ↔ ¬ Wbtw ℝ a b c := by
  rw [← ne_iff_lt_iff_le.mpr (dist_triangle _ _ _), not_iff_not, eq_comm, dist_add_dist_eq_iff]

end MetricSpace

variable {E F PE PF : Type*} [NormedAddCommGroup E] [NormedAddCommGroup F] [NormedSpace ℝ E]
  [NormedSpace ℝ F] [StrictConvexSpace ℝ E] [MetricSpace PE] [MetricSpace PF] [NormedAddTorsor E PE]
  [NormedAddTorsor F PF] {r : ℝ} {f : PF → PE} {x y z : PE}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/StrictConvexBetween/Variantab3f6fcdf342682213a66af07bf9f40e2001e4eef510f682dfbcbf0ab7780645.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/StrictConvexBetween/Variantab3f6fcdf342682213a66af07bf9f40e2001e4eef510f682dfbcbf0ab7780645.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `186f1fa55e016220f96a4ab09252ab5b22957aed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
