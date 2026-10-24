# value_variation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:259bc91e-7551-979d-8f89-3b769e3d205c",
  "kind": "theorem",
  "lexical_name": "value_variation",
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
  "slug": "value-variation--951bd730d827446209cd72c6",
  "source": {
    "blob": "599d0c6d4ed707bd4338b76a1ab2e0c6a39f8a81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 48,
    "path": "GRWTSK/Analysis/Complex/CenterJetVariation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:951bd730d827446209cd72c6b82e04683d2c1cde54f8fa9ef13179e07f9d5aee",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CenterJetVariation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:259bc91e-7551-979d-8f89-3b769e3d205c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem value_variation {f : ℂ → ℂ} {c z : ℂ} {R D L : ℝ}
    (hR : 0 ≤ R) (hD : 0 ≤ D) (hL : 0 ≤ L) (hc : ‖deriv f c‖ ≤ D)
    (hf : ∀ w ∈ closedBall c R, DifferentiableAt ℂ f w)
    (hdf : ∀ w ∈ closedBall c R, DifferentiableAt ℂ (deriv f) w)
    (hcurv : ∀ w ∈ closedBall c R, ‖deriv (deriv f) w‖ ≤ L)
    (hz : z ∈ closedBall c R) : ‖f z - f c‖ ≤ (D + L * R) * R := by
  have hv := Convex.norm_image_sub_le_of_norm_deriv_le hf
    (fun w hw => derivative_norm_le hR hL hc hdf hcurv hw)
    (convex_closedBall c R) (mem_closedBall_self hR) hz
  exact hv.trans (mul_le_mul_of_nonneg_left
    (by simpa only [mem_closedBall, dist_eq_norm] using hz)
    (add_nonneg hD (mul_nonneg hL hR)))

/-- Cauchy supplies the full curvature hypothesis, retaining 2! and the radius gap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/CenterJetVariation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/CenterJetVariation.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `599d0c6d4ed707bd4338b76a1ab2e0c6a39f8a81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
