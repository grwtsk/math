# Theta_one_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76cd5159-47be-df72-b7f6-71267cc24c22",
  "kind": "lemma",
  "lexical_name": "Theta_one_ge",
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
  "slug": "theta-one-ge--e026765119c4f057fac56a8b",
  "source": {
    "blob": "b42c6d3993eb756afcffbde22bacb5f0e057649a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 354,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e026765119c4f057fac56a8b4183231cd02728960d25b43384347640c3dacaa3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76cd5159-47be-df72-b7f6-71267cc24c22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Theta_one_ge : Real.exp (-8) / 2 ≤ Theta 1 := by
  have hc := theta_continuous
  have hlow : ∀ x ∈ Icc (1/4 : ℝ) (3/4), Real.exp (-8) ≤ theta x := by
    intro x hx
    have h1 : Real.exp (-4) ≤ expNegInvGlue x := by
      have hx0 : 0 < x := by linarith [hx.1]
      simp only [expNegInvGlue, not_le.mpr hx0, if_false]
      apply Real.exp_le_exp.mpr
      rw [neg_le_neg_iff, inv_le_comm₀ hx0 (by norm_num)]; linarith [hx.1]
    have h2 : Real.exp (-4) ≤ expNegInvGlue (1 - x) := by
      have hx0 : 0 < 1 - x := by linarith [hx.2]
      simp only [expNegInvGlue, not_le.mpr hx0, if_false]
      apply Real.exp_le_exp.mpr
      rw [neg_le_neg_iff, inv_le_comm₀ hx0 (by norm_num)]; linarith [hx.2]
    calc Real.exp (-8) = Real.exp (-4) * Real.exp (-4) := by rw [← Real.exp_add]; norm_num
      _ ≤ theta x := mul_le_mul h1 h2 (Real.exp_pos _).le (expNegInvGlue.nonneg _)
  unfold Theta
  rw [← integral_add_adjacent_intervals (b := 1/4) (hc.intervalIntegrable _ _) (hc.intervalIntegrable _ _),
    ← integral_add_adjacent_intervals (a := 1/4) (b := 3/4) (hc.intervalIntegrable _ _) (hc.intervalIntegrable _ _)]
  have i1 : 0 ≤ ∫ t in (0:ℝ)..(1/4), theta t := integral_nonneg (by norm_num) fun t _ => theta_nonneg t
  have i3 : 0 ≤ ∫ t in (3/4:ℝ)..1, theta t := integral_nonneg (by norm_num) fun t _ => theta_nonneg t
  have i2 : Real.exp (-8) / 2 ≤ ∫ t in (1/4:ℝ)..(3/4), theta t := by
    have := integral_mono_on (a := (1/4:ℝ)) (b := 3/4) (μ := volume) (by norm_num)
      _root_.intervalIntegrable_const (hc.intervalIntegrable _ _) hlow
    rw [intervalIntegral.integral_const, smul_eq_mul] at this
    linarith
  linarith

/-! ### ϱ₂ -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b42c6d3993eb756afcffbde22bacb5f0e057649a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
