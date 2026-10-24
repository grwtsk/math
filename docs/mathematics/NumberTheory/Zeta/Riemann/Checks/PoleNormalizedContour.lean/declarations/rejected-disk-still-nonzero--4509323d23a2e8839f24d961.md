# rejected_disk_still_nonzero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:303aae4a-d41f-2c46-61ed-a2813e74aceb",
  "kind": "theorem",
  "lexical_name": "rejected_disk_still_nonzero",
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
  "slug": "rejected-disk-still-nonzero--4509323d23a2e8839f24d961",
  "source": {
    "blob": "e0a2cb639cd5546581130b553642428cb726603f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 64,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PoleNormalizedContour.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4509323d23a2e8839f24d961206cd669bde47e4eb35c877f629744592e4e96a3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/PoleNormalizedContour.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:303aae4a-d41f-2c46-61ed-a2813e74aceb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rejected_disk_still_nonzero :
    ∀ z ∈ Metric.closedBall (1 : ℂ) (1 / 8 : ℝ), poleNormalizedZeta z ≠ 0 := by
  intro z hz hzero
  have hd : ‖z - 1‖ ≤ (1 / 5 : ℝ) := by
    have h : ‖z - 1‖ ≤ (1 / 8 : ℝ) := by simpa only [Metric.mem_closedBall, dist_eq_norm] using hz
    linarith
  have h := PoleNormalizedContourBounds.pole_collar_lower hd
  rw [hzero, norm_zero] at h
  norm_num at h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/PoleNormalizedContour.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/PoleNormalizedContour.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0a2cb639cd5546581130b553642428cb726603f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
