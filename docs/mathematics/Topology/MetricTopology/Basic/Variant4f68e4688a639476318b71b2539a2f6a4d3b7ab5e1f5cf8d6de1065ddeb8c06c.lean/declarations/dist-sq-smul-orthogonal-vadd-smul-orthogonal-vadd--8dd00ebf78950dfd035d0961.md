# dist_sq_smul_orthogonal_vadd_smul_orthogonal_vadd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3710c71e5a57e50eb0eb95a48174feeda0805e6e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 487,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d2cef890-9687-44fb-4324-5dddd2b8ce54",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0884121-8b82-98bc-f735-2ae372746428",
  "kind": "theorem",
  "lexical_name": "dist_sq_smul_orthogonal_vadd_smul_orthogonal_vadd",
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
  "slug": "dist-sq-smul-orthogonal-vadd-smul-orthogonal-vadd--8dd00ebf78950dfd035d0961",
  "source": {
    "blob": "3710c71e5a57e50eb0eb95a48174feeda0805e6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 487,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8dd00ebf78950dfd035d09614189f4c0649cef4ae4c352e3b2379b1df5c38647",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0884121-8b82-98bc-f735-2ae372746428`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_sq_smul_orthogonal_vadd_smul_orthogonal_vadd {s : AffineSubspace ℝ P} {p1 p2 : P}
    (hp1 : p1 ∈ s) (hp2 : p2 ∈ s) (r1 r2 : ℝ) {v : V} (hv : v ∈ s.directionᗮ) :
    dist (r1 • v +ᵥ p1) (r2 • v +ᵥ p2) * dist (r1 • v +ᵥ p1) (r2 • v +ᵥ p2) =
      dist p1 p2 * dist p1 p2 + (r1 - r2) * (r1 - r2) * (‖v‖ * ‖v‖) :=
  calc
    dist (r1 • v +ᵥ p1) (r2 • v +ᵥ p2) * dist (r1 • v +ᵥ p1) (r2 • v +ᵥ p2) =
        ‖p1 -ᵥ p2 + (r1 - r2) • v‖ * ‖p1 -ᵥ p2 + (r1 - r2) • v‖ := by
      rw [dist_eq_norm_vsub V (r1 • v +ᵥ p1), vsub_vadd_eq_vsub_sub, vadd_vsub_assoc, sub_smul,
        add_comm, add_sub_assoc]
    _ = ‖p1 -ᵥ p2‖ * ‖p1 -ᵥ p2‖ + ‖(r1 - r2) • v‖ * ‖(r1 - r2) • v‖ :=
      (norm_add_sq_eq_norm_sq_add_norm_sq_real
        (Submodule.inner_right_of_mem_orthogonal (vsub_mem_direction hp1 hp2)
          (Submodule.smul_mem _ _ hv)))
    _ = ‖(p1 -ᵥ p2 : V)‖ * ‖(p1 -ᵥ p2 : V)‖ + |r1 - r2| * |r1 - r2| * ‖v‖ * ‖v‖ := by
      rw [norm_smul, Real.norm_eq_abs]
      ring
    _ = dist p1 p2 * dist p1 p2 + (r1 - r2) * (r1 - r2) * (‖v‖ * ‖v‖) := by
      rw [dist_eq_norm_vsub V p1, abs_mul_abs_self, mul_assoc]
#align euclidean_geometry.dist_sq_smul_orthogonal_vadd_smul_orthogonal_vadd EuclideanGeometry.dist_sq_smul_orthogonal_vadd_smul_orthogonal_vadd

/-- Reflection in an affine subspace, which is expected to be nonempty
and complete. The word "reflection" is sometimes understood to mean
specifically reflection in a codimension-one subspace, and sometimes
more generally to cover operations such as reflection in a point. The
definition here, of reflection in an affine subspace, is a more
general sense of the word that includes both those common cases. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3710c71e5a57e50eb0eb95a48174feeda0805e6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
