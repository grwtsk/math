# angle_alignRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0d55f987a0bbf403231cbef3037420b39ea77a6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/2690b05583405b2ee6c6fd3742b21d79010b520b9e1a744bae45f67b82be08b9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8cc98d87-6129-6b71-d94c-7b9153a20f9f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c662ea0-9d47-4dd6-6834-339dc51b6e53",
  "kind": "theorem",
  "lexical_name": "angle_alignRight",
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
  "slug": "angle-alignright--c58c9e8f9b95af4349afa2fa",
  "source": {
    "blob": "0d55f987a0bbf403231cbef3037420b39ea77a6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 223,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ProjectiveFubiniStudy/Variant2690b05583405b2ee6c6fd3742b21d79010b520b9e1a744bae45f67b82be08b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c58c9e8f9b95af4349afa2fa4beac109554d6f6d6d4228633a2e78cfa21fb06a",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/ProjectiveFubiniStudy/Variant2690b05583405b2ee6c6fd3742b21d79010b520b9e1a744bae45f67b82be08b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c662ea0-9d47-4dd6-6834-339dc51b6e53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angle_alignRight (y z : H) (h : inner ℂ y z ≠ 0) :
    letI : InnerProductSpace ℝ H := InnerProductSpace.rclikeToReal ℂ H
    InnerProductGeometry.angle y (alignRight y z) = fubiniStudyBase y z := by
  letI : InnerProductSpace ℝ H := InnerProductSpace.rclikeToReal ℂ H
  rw [InnerProductGeometry.angle, fubiniStudyBase]
  change Real.arccos ((inner ℂ y (alignRight y z)).re /
    (‖y‖ * ‖alignRight y z‖)) = _
  rw [show inner ℂ y (alignRight y z) = (‖inner ℂ y z‖ : ℂ) by
    simpa [alignRight] using aligned_right_inner y z h]
  rw [norm_alignRight y z h]
  simp

/-- The ray angle is bounded by the real angle between phase-aligned representatives. -/
@[surface_novel]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/ProjectiveFubiniStudy/Variant2690b05583405b2ee6c6fd3742b21d79010b520b9e1a744bae45f67b82be08b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ProjectiveFubiniStudy/Variant2690b05583405b2ee6c6fd3742b21d79010b520b9e1a744bae45f67b82be08b9.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d55f987a0bbf403231cbef3037420b39ea77a6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
