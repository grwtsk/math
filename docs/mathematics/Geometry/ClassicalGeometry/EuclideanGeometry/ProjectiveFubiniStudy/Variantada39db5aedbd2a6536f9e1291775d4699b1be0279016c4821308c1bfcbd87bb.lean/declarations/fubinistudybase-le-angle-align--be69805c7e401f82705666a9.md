# fubiniStudyBase_le_angle_align

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1158d0b5-f0c1-bdcc-ab4e-14cc6040b014",
  "kind": "theorem",
  "lexical_name": "fubiniStudyBase_le_angle_align",
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
  "slug": "fubinistudybase-le-angle-align--be69805c7e401f82705666a9",
  "source": {
    "blob": "4207bbba730394f2666283dd79c9bc3e3b0175af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 245,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ProjectiveFubiniStudy/Variantada39db5aedbd2a6536f9e1291775d4699b1be0279016c4821308c1bfcbd87bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be69805c7e401f82705666a9a191d4f5f44ca30f63ba7bca962c26d66431b442",
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

Occurrence: `result:1158d0b5-f0c1-bdcc-ab4e-14cc6040b014`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fubiniStudyBase_le_angle_align (x y z : H) (hx : x ≠ 0) (hz : z ≠ 0)
    (hxy : inner ℂ x y ≠ 0) (hyz : inner ℂ y z ≠ 0) :
    letI : InnerProductSpace ℝ H := InnerProductSpace.rclikeToReal ℂ H
    fubiniStudyBase x z ≤
      InnerProductGeometry.angle (alignLeft x y) (alignRight y z) := by
  letI : InnerProductSpace ℝ H := InnerProductSpace.rclikeToReal ℂ H
  rw [fubiniStudyBase, InnerProductGeometry.angle]
  change Real.arccos (‖inner ℂ x z‖ / (‖x‖ * ‖z‖)) ≤
    Real.arccos ((inner ℂ (alignLeft x y) (alignRight y z)).re /
      (‖alignLeft x y‖ * ‖alignRight y z‖))
  apply Real.arccos_le_arccos
  rw [norm_alignLeft x y hxy, norm_alignRight y z hyz]
  apply (div_le_div_iff_of_pos_right
    (mul_pos (norm_pos_iff.mpr hx) (norm_pos_iff.mpr hz))).2
  calc
    (inner ℂ (alignLeft x y) (alignRight y z)).re ≤
        ‖inner ℂ (alignLeft x y) (alignRight y z)‖ := Complex.re_le_norm _
    _ = ‖inner ℂ x z‖ := norm_inner_align x y z hxy hyz

/--
Triangle inequality for the base ray angle on nonzero outer vectors.  When an
adjacent inner product vanishes, that edge already has angle `π / 2`; otherwise
the proof phase-aligns and invokes the real-angle triangle inequality.
-/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/ProjectiveFubiniStudy/Variantada39db5aedbd2a6536f9e1291775d4699b1be0279016c4821308c1bfcbd87bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ProjectiveFubiniStudy/Variantada39db5aedbd2a6536f9e1291775d4699b1be0279016c4821308c1bfcbd87bb.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4207bbba730394f2666283dd79c9bc3e3b0175af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
