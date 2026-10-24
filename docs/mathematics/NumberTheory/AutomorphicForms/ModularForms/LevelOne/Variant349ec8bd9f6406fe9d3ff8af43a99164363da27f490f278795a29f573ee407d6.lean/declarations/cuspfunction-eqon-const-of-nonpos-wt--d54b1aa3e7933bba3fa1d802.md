# cuspFunction_eqOn_const_of_nonpos_wt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01570c47-e6b9-33d8-3ef9-a3ba1541eca5",
  "kind": "theorem",
  "lexical_name": "cuspFunction_eqOn_const_of_nonpos_wt",
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
  "slug": "cuspfunction-eqon-const-of-nonpos-wt--d54b1aa3e7933bba3fa1d802",
  "source": {
    "blob": "606cf3cd5b75b04d9d44ae4b783478469e04161f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 63,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant349ec8bd9f6406fe9d3ff8af43a99164363da27f490f278795a29f573ee407d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d54b1aa3e7933bba3fa1d80242e439787a5a4aa1118b21b92a247694da3e2bf9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant349ec8bd9f6406fe9d3ff8af43a99164363da27f490f278795a29f573ee407d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01570c47-e6b9-33d8-3ef9-a3ba1541eca5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem cuspFunction_eqOn_const_of_nonpos_wt (hk : k ≤ 0) (f : F) :
    Set.EqOn (cuspFunction 1 f) (const ℂ (cuspFunction 1 f 0)) (Metric.ball 0 1) := by
  refine eq_const_of_exists_le (fun q hq ↦ ?_) (exp_nonneg (-π)) ?_ (fun q hq ↦ ?_)
  · exact (differentiableAt_cuspFunction 1 f (mem_ball_zero_iff.mp hq)).differentiableWithinAt
  · simp only [exp_lt_one_iff, Left.neg_neg_iff, pi_pos]
  · simp only [Metric.mem_closedBall, dist_zero_right]
    rcases eq_or_ne q 0 with rfl | hq'
    · refine ⟨0, by simpa only [norm_zero] using exp_nonneg _, le_rfl⟩
    · obtain ⟨ξ, hξ, hξ₂⟩ := exists_one_half_le_im_and_norm_le hk f
        ⟨_, im_invQParam_pos_of_norm_lt_one Real.zero_lt_one (mem_ball_zero_iff.mp hq) hq'⟩
      exact ⟨_, norm_qParam_le_of_one_half_le_im hξ,
        by simpa only [← eq_cuspFunction 1 f, Nat.cast_one, coe_mk_subtype,
          qParam_right_inv one_ne_zero hq'] using hξ₂⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant349ec8bd9f6406fe9d3ff8af43a99164363da27f490f278795a29f573ee407d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant349ec8bd9f6406fe9d3ff8af43a99164363da27f490f278795a29f573ee407d6.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `606cf3cd5b75b04d9d44ae4b783478469e04161f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
