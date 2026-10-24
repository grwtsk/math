# Sbtw.dist_lt_max_dist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3bfc41f-6271-4692-e502-0bef01f9707d",
  "kind": "theorem",
  "lexical_name": "Sbtw.dist_lt_max_dist",
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
  "slug": "sbtw-dist-lt-max-dist--1c07809ba8fd006a3964a651",
  "source": {
    "blob": "c865d37a730e5b142b22f9f5def2cdd9c80e45c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 32,
    "path": "GRWTSK/Topology/MetricTopology/StrictConvexBetween/Varianta1981f9c35dd7198cae69fb32d0b2b7074ac93e5976d166a5397aaaa862544b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c07809ba8fd006a3964a65160e1c208012c225601233552104972cda743e788",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/StrictConvexBetween/Varianta1981f9c35dd7198cae69fb32d0b2b7074ac93e5976d166a5397aaaa862544b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3bfc41f-6271-4692-e502-0bef01f9707d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Sbtw.dist_lt_max_dist (p : P) {p₁ p₂ p₃ : P} (h : Sbtw ℝ p₁ p₂ p₃) :
    dist p₂ p < max (dist p₁ p) (dist p₃ p) := by
  have hp₁p₃ : p₁ -ᵥ p ≠ p₃ -ᵥ p := by simpa using h.left_ne_right
  rw [Sbtw, ← wbtw_vsub_const_iff p, Wbtw, affineSegment_eq_segment, ← insert_endpoints_openSegment,
    Set.mem_insert_iff, Set.mem_insert_iff] at h
  rcases h with ⟨h | h | h, hp₂p₁, hp₂p₃⟩
  · rw [vsub_left_cancel_iff] at h
    exact False.elim (hp₂p₁ h)
  · rw [vsub_left_cancel_iff] at h
    exact False.elim (hp₂p₃ h)
  · rw [openSegment_eq_image, Set.mem_image] at h
    rcases h with ⟨r, ⟨hr0, hr1⟩, hr⟩
    simp_rw [@dist_eq_norm_vsub V, ← hr]
    exact
      norm_combo_lt_of_ne (le_max_left _ _) (le_max_right _ _) hp₁p₃ (sub_pos.2 hr1) hr0 (by abel)
#align sbtw.dist_lt_max_dist Sbtw.dist_lt_max_dist

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/StrictConvexBetween/Varianta1981f9c35dd7198cae69fb32d0b2b7074ac93e5976d166a5397aaaa862544b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/StrictConvexBetween/Varianta1981f9c35dd7198cae69fb32d0b2b7074ac93e5976d166a5397aaaa862544b4.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c865d37a730e5b142b22f9f5def2cdd9c80e45c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
