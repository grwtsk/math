# y_eq_zero_of_not_mem_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5db3d09-369c-c2bc-1a06-23da6d953d17",
  "kind": "theorem",
  "lexical_name": "y_eq_zero_of_not_mem_ball",
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
  "slug": "y-eq-zero-of-not-mem-ball--b028d14a47928b1c558cb4df",
  "source": {
    "blob": "3191cc571e0ba59fb2e2dc833e98f2f3ba15c502",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 394,
    "path": "GRWTSK/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b028d14a47928b1c558cb4df026463f129579ff024e58f098c3a35b2a411f288",
  "verification": {
    "reference": "docs/verification/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5db3d09-369c-c2bc-1a06-23da6d953d17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem y_eq_zero_of_not_mem_ball {D : ℝ} {x : E} (Dpos : 0 < D) (hx : x ∉ ball (0 : E) (1 + D)) :
    y D x = 0 := by
  change (w D ⋆[lsmul ℝ ℝ, μ] φ) x = 0
  have B : ∀ y, y ∈ ball x D → φ y = 0 := by
    intro y hy
    simp only [φ, indicator, mem_closedBall_zero_iff, ite_eq_right_iff, one_ne_zero]
    intro h'y
    have C : ball y D ⊆ ball 0 (1 + D) := by
      apply ball_subset_ball'
      rw [← dist_zero_right] at h'y
      linarith only [h'y]
    exact hx (C (mem_ball_comm.1 hy))
  have Bx : φ x = 0 := B _ (mem_ball_self Dpos)
  have B' : ∀ y, y ∈ ball x D → φ y = φ x := by rw [Bx]; exact B
  rw [convolution_eq_right' _ (le_of_eq (w_support E Dpos)) B']
  simp only [lsmul_apply, Algebra.id.smul_eq_mul, Bx, mul_zero, integral_const]
#align exists_cont_diff_bump_base.Y_eq_zero_of_not_mem_ball ExistsContDiffBumpBase.y_eq_zero_of_not_mem_ball

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3191cc571e0ba59fb2e2dc833e98f2f3ba15c502` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
