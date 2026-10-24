# normalized_log_deriv_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31f5d3de-61cb-d345-4f10-911d0031da6f",
  "kind": "theorem",
  "lexical_name": "normalized_log_deriv_le",
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
  "slug": "normalized-log-deriv-le--c2c167e267a546f76eea7742",
  "source": {
    "blob": "6e5f8f18f1f52d26684e95996420fa0bcbf43134",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 159,
    "path": "GRWTSK/Analysis/Complex/GammaVerticalBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2c167e267a546f76eea7742bc6cfd70809af73b5f2e2caf3584b124584be70e",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/GammaVerticalBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31f5d3de-61cb-d345-4f10-911d0031da6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_log_deriv_le (L : ℂ → ℂ) (H : ℝ) (hH : 0 < H)
    (hL : DifferentiableOn ℂ L (ball 0 (2 : ℝ))) (h0 : L 0 = 0)
    (hr : ∀ w ∈ ball 0 (2 : ℝ), (L w).re ≤ H)
    (w : ℂ) (hw : ‖w‖ ≤ 3 / 2) : ‖deriv L w‖ ≤ 56 * H := by
  have hmid (v : ℂ) (hv : ‖v‖ ≤ 7 / 4) : ‖L v‖ ≤ 14 * H := by
    have hv' : v ∈ ball (0 : ℂ) (2 : ℝ) := by
      rw [Metric.mem_ball, dist_zero_right]
      linarith
    have hb := Complex.borelCaratheodory_zero hH hL hr (by norm_num) hv' h0
    apply hb.trans
    apply (div_le_iff₀ (by linarith : 0 < 2 - ‖v‖)).mpr
    nlinarith [mul_le_mul_of_nonneg_left hv hH.le]
  have hcircle (v : ℂ) (hv : v ∈ closedBall w (1 / 4 : ℝ)) : ‖v‖ ≤ 7 / 4 := by
    have hd : ‖v - w‖ ≤ (1 / 4 : ℝ) := by simpa [Metric.mem_closedBall, dist_eq_norm] using hv
    linarith [norm_le_norm_sub_add v w]
  have hsub : closedBall w (1 / 4 : ℝ) ⊆ ball (0 : ℂ) (2 : ℝ) := by
    intro v hv
    rw [Metric.mem_ball, dist_zero_right]
    linarith [hcircle v hv]
  have hcont : DiffContOnCl ℂ L (ball w (1 / 4 : ℝ)) :=
    DiffContOnCl.mk_ball (hL.mono (ball_subset_closedBall.trans hsub))
      (hL.continuousOn.mono hsub)
  have hd := Complex.norm_deriv_le_of_forall_mem_sphere_norm_le
    (by norm_num : (0 : ℝ) < 1 / 4) hcont
    (fun v hv => hmid v (hcircle v (sphere_subset_closedBall hv)))
  convert hd using 1; ring

/-- Full actual digamma on the reflected positive strip; no series identity is assumed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/GammaVerticalBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/GammaVerticalBound.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e5f8f18f1f52d26684e95996420fa0bcbf43134` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
