# y_pos_of_mem_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6fc04b14-fe6d-1968-cd5a-7aab0551fb3b",
  "kind": "theorem",
  "lexical_name": "y_pos_of_mem_ball",
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
  "slug": "y-pos-of-mem-ball--1bc26dbadc57388df0c25238",
  "source": {
    "blob": "84943de0407cf170a3b2f8d3006845709048b006",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 397,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant6c7ddc0e6c0e414d0d1da4b792e5aabbe00714aa65d1689c813aa488dddaa699.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bc26dbadc57388df0c252382505074c3dce2efcb3a252b1cae877ff268cad3d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant6c7ddc0e6c0e414d0d1da4b792e5aabbe00714aa65d1689c813aa488dddaa699.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fc04b14-fe6d-1968-cd5a-7aab0551fb3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem y_pos_of_mem_ball {D : ℝ} {x : E} (Dpos : 0 < D) (D_lt_one : D < 1)
    (hx : x ∈ ball (0 : E) (1 + D)) : 0 < y D x := by
  simp only [mem_ball_zero_iff] at hx
  refine (integral_pos_iff_support_of_nonneg (w_mul_φ_nonneg D x) ?_).2 ?_
  · have F_comp : HasCompactSupport (w D) := w_compact_support E Dpos
    have B : LocallyIntegrable (φ : E → ℝ) μ :=
      (locallyIntegrable_const _).indicator measurableSet_closedBall
    have C : Continuous (w D : E → ℝ) :=
      continuous_const.mul ((u_continuous E).comp (by fun_prop))
    exact (F_comp.convolutionExists_left (lsmul ℝ ℝ : ℝ →L[ℝ] ℝ →L[ℝ] ℝ) C B x).integrable
  · set z := (D / (1 + D)) • x with hz
    have B : 0 < 1 + D := by linarith
    have C : ball z (D * (1 + D - ‖x‖) / (1 + D)) ⊆ support fun y : E => w D y * φ (x - y) := by
      intro y hy
      simp only [support_mul, w_support E Dpos]
      simp only [φ, mem_inter_iff, mem_support, Ne, indicator_apply_eq_zero,
        mem_closedBall_zero_iff, one_ne_zero, not_forall, not_false_iff, exists_prop, and_true]
      constructor
      · apply ball_subset_ball' _ hy
        simp only [hz, norm_smul, abs_of_nonneg Dpos.le, abs_of_nonneg B.le, dist_zero_right,
          Real.norm_eq_abs, abs_div]
        field_simp
        linarith only
      · have ID : ‖D / (1 + D) - 1‖ = 1 / (1 + D) := by
          rw [Real.norm_of_nonpos]
          · field
          · field_simp
            linarith only
        rw [← mem_closedBall_iff_norm']
        apply closedBall_subset_closedBall' _ (ball_subset_closedBall hy)
        rw [← one_smul ℝ x, dist_eq_norm, hz, ← sub_smul, one_smul, norm_smul, ID]
        field_simp
        nlinarith only [hx, D_lt_one]
    apply lt_of_lt_of_le _ (measure_mono C)
    apply measure_ball_pos
    exact div_pos (mul_pos Dpos (by linarith only [hx])) B

variable (E)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant6c7ddc0e6c0e414d0d1da4b792e5aabbe00714aa65d1689c813aa488dddaa699.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant6c7ddc0e6c0e414d0d1da4b792e5aabbe00714aa65d1689c813aa488dddaa699.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84943de0407cf170a3b2f8d3006845709048b006` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
