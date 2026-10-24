# inverse_project

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "72e021039990e072da279bbfed404bfb08e00e71",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 202,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c96d51d-a2d1-fd16-b7bb-ebcc3a47ef08",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a12543a8-7110-77d0-808c-f93d9d11f2e1",
  "kind": "theorem",
  "lexical_name": "inverse_project",
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
  "slug": "inverse-project--80fcace0c96e4496eaec974f",
  "source": {
    "blob": "72e021039990e072da279bbfed404bfb08e00e71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 202,
    "path": "GRWTSK/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80fcace0c96e4496eaec974f775028e53ba412e24f1eb175a9e3b708c97a71a9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a12543a8-7110-77d0-808c-f93d9d11f2e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverse_project {a c : ℝ} (ha : 0 < a) (hc : 0 < c)
    (p : PuncturedSpheroid (ι := ι) a c) :
    inverse ha hc (project c p) = p := by
  have hgap : 0 < c - p.1.2 := projectDenominator_pos ha hc p
  have hgap_ne : c - p.1.2 ≠ 0 := hgap.ne'
  have hscale : 0 ≤ c / (c - p.1.2) := by positivity
  have hproject_norm :
      ‖project c p‖ ^ 2 =
        (c / (c - p.1.2)) ^ 2 * ‖p.1.1‖ ^ 2 := by
    rw [project, norm_smul, Real.norm_of_nonneg hscale]
    ring
  have hpoly := spheroid_polynomial (ι := ι) ha hc p.2.1
  have hdenominator :
      inverseDenominator a (project c p) =
        2 * a ^ 2 * c / (c - p.1.2) := by
    unfold inverseDenominator
    rw [hproject_norm]
    field_simp [hgap_ne, hc.ne']
    nlinarith
  apply Subtype.ext
  change inverseRaw a c (project c p) = p.1
  apply Prod.ext
  · change
      ((2 * a ^ 2) / inverseDenominator a (project c p)) •
          project c p = p.1.1
    rw [hdenominator, project, smul_smul]
    rw [show
      (2 * a ^ 2 / (2 * a ^ 2 * c / (c - p.1.2))) *
          (c / (c - p.1.2)) = 1 by
        field_simp [ha.ne', hc.ne', hgap_ne]]
    exact one_smul ℝ p.1.1
  · change
      c * (‖project c p‖ ^ 2 - a ^ 2) /
          inverseDenominator a (project c p) = p.1.2
    rw [hdenominator, hproject_norm]
    field_simp [ha.ne', hc.ne', hgap_ne]
    nlinarith

/-! ## Angular parameterization and the tangent half-angle chart -/

/-- The ambient spheroid point with angular parameter measured from the south
pole and equatorial direction `ω`.  The condition `‖ω‖ = 1` is imposed by the
range theorem rather than by this raw coordinate definition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72e021039990e072da279bbfed404bfb08e00e71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
