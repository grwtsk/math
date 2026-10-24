# overlap_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:881f47c1-e1f0-e359-11f0-5017140049fc",
  "kind": "theorem",
  "lexical_name": "overlap_lower_bound",
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
  "slug": "overlap-lower-bound--e3ecd89b050051ed808e28f6",
  "source": {
    "blob": "4207bbba730394f2666283dd79c9bc3e3b0175af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 425,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ProjectiveFubiniStudy/Variantada39db5aedbd2a6536f9e1291775d4699b1be0279016c4821308c1bfcbd87bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3ecd89b050051ed808e28f6b3285e081d838bb599900829135bf780a38999ba",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/ProjectiveFubiniStudy/Variantada39db5aedbd2a6536f9e1291775d4699b1be0279016c4821308c1bfcbd87bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:881f47c1-e1f0-e359-11f0-5017140049fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem overlap_lower_bound (x y z : H)
    (hx : ‖x‖ = 1) (hy : ‖y‖ = 1) (hz : ‖z‖ = 1) :
    ‖inner ℂ x y‖ * ‖inner ℂ y z‖ -
        Real.sqrt (1 - ‖inner ℂ x y‖ ^ 2) *
          Real.sqrt (1 - ‖inner ℂ y z‖ ^ 2) ≤ ‖inner ℂ x z‖ := by
  let p : ℂ := inner ℂ x y * inner ℂ y z
  let r : ℂ := inner ℂ (orthogonalRemainder y x) (orthogonalRemainder y z)
  have hdecomp : inner ℂ x z = p + r := by
    simpa [p, r] using inner_eq_parallel_add_remainder x y z hy
  have hreverse : ‖p‖ - ‖r‖ ≤ ‖p + r‖ := by
    calc
      ‖p‖ - ‖r‖ = ‖p‖ - ‖-r‖ := by rw [norm_neg]
      _ ≤ ‖p - (-r)‖ := norm_sub_norm_le p (-r)
      _ = ‖p + r‖ := by rw [sub_neg_eq_add]
  calc
    ‖inner ℂ x y‖ * ‖inner ℂ y z‖ -
          Real.sqrt (1 - ‖inner ℂ x y‖ ^ 2) *
            Real.sqrt (1 - ‖inner ℂ y z‖ ^ 2) =
        ‖p‖ - ‖orthogonalRemainder y x‖ * ‖orthogonalRemainder y z‖ := by
          rw [norm_orthogonalRemainder_unit y x hy hx,
            norm_orthogonalRemainder_unit y z hy hz]
          simp [p, norm_inner_symm y x]
    _ ≤ ‖p‖ - ‖r‖ := by
      apply sub_le_sub_left
      exact norm_inner_le_norm (orthogonalRemainder y x) (orthogonalRemainder y z)
    _ ≤ ‖p + r‖ := hreverse
    _ = ‖inner ℂ x z‖ := by rw [hdecomp]

/-- The direct unit-sphere triangle theorem obtained from the two isolated bridges. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/ProjectiveFubiniStudy/Variantada39db5aedbd2a6536f9e1291775d4699b1be0279016c4821308c1bfcbd87bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ProjectiveFubiniStudy/Variantada39db5aedbd2a6536f9e1291775d4699b1be0279016c4821308c1bfcbd87bb.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4207bbba730394f2666283dd79c9bc3e3b0175af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
