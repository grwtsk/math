# tendsto_JD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6013bdd232f102af31e856f1e0116e42e3ff01b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/3629361f65f89f0bc2635c2e3d94a88581b001e433f5e25ddffbcdd80c9842b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d3594e68-8afb-40a2-4c52-18da66c16f83",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa3eaed5-ca20-50ee-b1a8-d2c544456eef",
  "kind": "theorem",
  "lexical_name": "tendsto_JD",
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
  "slug": "tendsto-jd--bdbe5bd98fb1e5cd14c0e123",
  "source": {
    "blob": "6013bdd232f102af31e856f1e0116e42e3ff01b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 178,
    "path": "GRWTSK/Topology/GeneralTopology/Limit/Variant3629361f65f89f0bc2635c2e3d94a88581b001e433f5e25ddffbcdd80c9842b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdbe5bd98fb1e5cd14c0e1237f63668caa94b0212634d6a19c77a7d31d238117",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limit/Variant3629361f65f89f0bc2635c2e3d94a88581b001e433f5e25ddffbcdd80c9842b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa3eaed5-ca20-50ee-b1a8-d2c544456eef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_JD {P : Params} (hP : P.Valid) :
    Tendsto (fun T => 2 / P.L T ^ 3 * ∫ y in (0:ℝ)..(P.L T), (P.localFunD T).g y * y) atTop
      (𝓝 (jStar P.lam)) := by
  apply tendsto_of_close hP.lam_pos (C := 16)
  filter_upwards [(Assembly.tendsto_L_atTop P hP.lam_pos).eventually_ge_atTop (8 * P.w)]
    with T hT
  exact jD_close hP.taper hP.lam_pos hP.lam_le_one hP.one_le_w hT

/-- generic ratio limit: any λ₁-like sequence tending to λ and any data tending to the starred
moments give cRatio → c*_λ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limit/Variant3629361f65f89f0bc2635c2e3d94a88581b001e433f5e25ddffbcdd80c9842b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limit/Variant3629361f65f89f0bc2635c2e3d94a88581b001e433f5e25ddffbcdd80c9842b0.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6013bdd232f102af31e856f1e0116e42e3ff01b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
