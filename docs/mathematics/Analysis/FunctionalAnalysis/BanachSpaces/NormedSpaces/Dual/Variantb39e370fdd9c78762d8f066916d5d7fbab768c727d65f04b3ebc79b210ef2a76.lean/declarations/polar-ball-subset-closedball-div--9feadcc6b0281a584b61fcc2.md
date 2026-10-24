# polar_ball_subset_closedBall_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5d64de0-fa31-caaa-b40c-426f12a1a595",
  "kind": "theorem",
  "lexical_name": "polar_ball_subset_closedBall_div",
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
  "slug": "polar-ball-subset-closedball-div--9feadcc6b0281a584b61fcc2",
  "source": {
    "blob": "612f92f141966fafc8bc0ca843aa601699edff48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 245,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9feadcc6b0281a584b61fcc26e2c867a6135b220cc8b202eff7174b9fc49b888",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5d64de0-fa31-caaa-b40c-426f12a1a595`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polar_ball_subset_closedBall_div {c : 𝕜} (hc : 1 < ‖c‖) {r : ℝ} (hr : 0 < r) :
    polar 𝕜 (ball (0 : E) r) ⊆ closedBall (0 : Dual 𝕜 E) (‖c‖ / r) := by
  intro x' hx'
  rw [mem_polar_iff] at hx'
  simp only [polar, mem_setOf, mem_closedBall_zero_iff, mem_ball_zero_iff] at *
  have hcr : 0 < ‖c‖ / r := div_pos (zero_lt_one.trans hc) hr
  refine' ContinuousLinearMap.op_norm_le_of_shell hr hcr.le hc fun x h₁ h₂ => _
  calc
    ‖x' x‖ ≤ 1 := hx' _ h₂
    _ ≤ ‖c‖ / r * ‖x‖ := (inv_pos_le_iff_one_le_mul' hcr).1 (by rwa [inv_div])

#align normed_space.polar_ball_subset_closed_ball_div NormedSpace.polar_ball_subset_closedBall_div

variable (𝕜)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `612f92f141966fafc8bc0ca843aa601699edff48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
