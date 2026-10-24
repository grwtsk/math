# derivative_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac44dc67-1c46-1a69-2fa2-4d44fb5da248",
  "kind": "theorem",
  "lexical_name": "derivative_norm_le",
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
  "slug": "derivative-norm-le--1a3884bb7b9af60dada7191c",
  "source": {
    "blob": "599d0c6d4ed707bd4338b76a1ab2e0c6a39f8a81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 31,
    "path": "GRWTSK/Analysis/Complex/CenterJetVariation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a3884bb7b9af60dada7191c44b1e1ffa337f72968f4292549128b7acc77701a",
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

Occurrence: `result:ac44dc67-1c46-1a69-2fa2-4d44fb5da248`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivative_norm_le {f : ℂ → ℂ} {c z : ℂ} {R D L : ℝ}
    (hR : 0 ≤ R) (hL : 0 ≤ L) (hc : ‖deriv f c‖ ≤ D)
    (hdf : ∀ w ∈ closedBall c R, DifferentiableAt ℂ (deriv f) w)
    (hcurv : ∀ w ∈ closedBall c R, ‖deriv (deriv f) w‖ ≤ L)
    (hz : z ∈ closedBall c R) : ‖deriv f z‖ ≤ D + L * R := by
  have hv := Convex.norm_image_sub_le_of_norm_deriv_le hdf hcurv
    (convex_closedBall c R) (mem_closedBall_self hR) hz
  have hr : ‖z - c‖ ≤ R := by simpa only [mem_closedBall, dist_eq_norm] using hz
  have hvR : ‖deriv f z - deriv f c‖ ≤ L * R :=
    hv.trans (mul_le_mul_of_nonneg_left hr hL)
  calc
    _ ≤ ‖deriv f z - deriv f c‖ + ‖deriv f c‖ := by
      simpa only [dist_eq_norm, sub_zero] using dist_triangle (deriv f z) (deriv f c) 0
    _ ≤ L * R + D := add_le_add hvR hc
    _ = _ := add_comm _ _

/-- The quadratic contribution is retained, without claiming a factor one-half. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/CenterJetVariation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/CenterJetVariation.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `599d0c6d4ed707bd4338b76a1ab2e0c6a39f8a81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
