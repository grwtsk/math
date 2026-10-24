# norm_integral_lt_of_norm_le_const_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3def2495-da04-4d08-7482-1e95231432e0",
  "kind": "theorem",
  "lexical_name": "norm_integral_lt_of_norm_le_const_of_lt",
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
  "slug": "norm-integral-lt-of-norm-le-const-of-lt--c75e68bc9d5868eda474c4be",
  "source": {
    "blob": "49d5b9cb9f0b055378ce106546db3baf19691401",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 429,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CircleIntegral/Variant99de4dfc330493acf1cd99480aed97683208c12cea62cfa8592ccfdd3de457d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c75e68bc9d5868eda474c4becf0fceb5ba522e0ad216e64e9ae04da8d75d8e1f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CircleIntegral/Variant99de4dfc330493acf1cd99480aed97683208c12cea62cfa8592ccfdd3de457d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3def2495-da04-4d08-7482-1e95231432e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_integral_lt_of_norm_le_const_of_lt {f : ℂ → E} {c : ℂ} {R C : ℝ} (hR : 0 < R)
    (hc : ContinuousOn f (sphere c R)) (hf : ∀ z ∈ sphere c R, ‖f z‖ ≤ C)
    (hlt : ∃ z ∈ sphere c R, ‖f z‖ < C) : ‖∮ z in C(c, R), f z‖ < 2 * π * R * C := by
  rw [← _root_.abs_of_pos hR, ← image_circleMap_Ioc] at hlt
  rcases hlt with ⟨_, ⟨θ₀, hmem, rfl⟩, hlt⟩
  calc
    ‖∮ z in C(c, R), f z‖ ≤ ∫ θ in (0)..2 * π, ‖deriv (circleMap c R) θ • f (circleMap c R θ)‖ :=
      intervalIntegral.norm_integral_le_integral_norm Real.two_pi_pos.le
    _ < ∫ _ in (0)..2 * π, R * C := by
      simp only [norm_smul, deriv_circleMap, norm_eq_abs, map_mul, abs_I, mul_one,
        abs_circleMap_zero, abs_of_pos hR]
      refine' intervalIntegral.integral_lt_integral_of_continuousOn_of_le_of_exists_lt
          Real.two_pi_pos _ continuousOn_const (fun θ _ => _) ⟨θ₀, Ioc_subset_Icc_self hmem, _⟩
      · exact continuousOn_const.mul (hc.comp (continuous_circleMap _ _).continuousOn fun θ _ =>
          circleMap_mem_sphere _ hR.le _).norm
      · exact mul_le_mul_of_nonneg_left (hf _ <| circleMap_mem_sphere _ hR.le _) hR.le
      · exact (mul_lt_mul_left hR).2 hlt
    _ = 2 * π * R * C := by simp [mul_assoc]; ring
#align circle_integral.norm_integral_lt_of_norm_le_const_of_lt circleIntegral.norm_integral_lt_of_norm_le_const_of_lt

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CircleIntegral/Variant99de4dfc330493acf1cd99480aed97683208c12cea62cfa8592ccfdd3de457d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CircleIntegral/Variant99de4dfc330493acf1cd99480aed97683208c12cea62cfa8592ccfdd3de457d6.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49d5b9cb9f0b055378ce106546db3baf19691401` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
