# exists_forall_closed_ball_dist_add_le_two_mul_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b0e8b82-6837-6db9-8f2f-f3fb7ece0865",
  "kind": "theorem",
  "lexical_name": "exists_forall_closed_ball_dist_add_le_two_mul_sub",
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
  "slug": "exists-forall-closed-ball-dist-add-le-two-mul-sub--3606ebf6d2063ffc72e01aec",
  "source": {
    "blob": "57a43a45025e37eca448a7ebc2c1b8a4afd43db1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 110,
    "path": "GRWTSK/Topology/MetricTopology/Uniform/Varianta0bc0136f084722f59a772ecc0f458240bd3dfc5e333b02509bb03981cf255e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3606ebf6d2063ffc72e01aece44774a935e473394029ae5c93752df58acbfec7",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Uniform/Varianta0bc0136f084722f59a772ecc0f458240bd3dfc5e333b02509bb03981cf255e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b0e8b82-6837-6db9-8f2f-f3fb7ece0865`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_forall_closed_ball_dist_add_le_two_mul_sub (hε : 0 < ε) (r : ℝ) :
    ∃ δ, 0 < δ ∧ ∀ ⦃x : E⦄, ‖x‖ ≤ r → ∀ ⦃y⦄, ‖y‖ ≤ r → ε ≤ ‖x - y‖ → ‖x + y‖ ≤ 2 * r - δ := by
  obtain hr | hr := le_or_gt r 0
  · exact ⟨1, one_pos, fun x hx y hy h => (hε.not_ge <|
      h.trans <| (norm_sub_le _ _).trans <| add_nonpos (hx.trans hr) (hy.trans hr)).elim⟩
  obtain ⟨δ, hδ, h⟩ := exists_forall_closed_ball_dist_add_le_two_sub E (div_pos hε hr)
  refine ⟨δ * r, mul_pos hδ hr, fun x hx y hy hxy => ?_⟩
  rw [← div_le_one hr, div_eq_inv_mul, ← norm_smul_of_nonneg (inv_nonneg.2 hr.le)] at hx hy
  have := h hx hy
  simp_rw [← smul_add, ← smul_sub, norm_smul_of_nonneg (inv_nonneg.2 hr.le), ← div_eq_inv_mul,
    div_le_div_iff_of_pos_right hr, div_le_iff₀ hr, sub_mul] at this
  exact this hxy

end SeminormedAddCommGroup

variable [NormedAddCommGroup E] [NormedSpace ℝ E] [UniformConvexSpace E]

-- See note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Uniform/Varianta0bc0136f084722f59a772ecc0f458240bd3dfc5e333b02509bb03981cf255e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Uniform/Varianta0bc0136f084722f59a772ecc0f458240bd3dfc5e333b02509bb03981cf255e4.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57a43a45025e37eca448a7ebc2c1b8a4afd43db1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
