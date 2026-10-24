# Theta_one_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df944f8bb21f78243c91cc7bbfdd5d03ccac1987",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 346,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51ab1b79-3a50-44ce-8071-034543b27c16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f98d1910-3b2b-9dc9-89f9-b95114696aac",
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
  "slug": "theta-one-ge--eda121aa909a120ab29bed2e",
  "source": {
    "blob": "df944f8bb21f78243c91cc7bbfdd5d03ccac1987",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 346,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eda121aa909a120ab29bed2ebc4c7f2b67c55692b4f839f921a679d8a5267012",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f98d1910-3b2b-9dc9-89f9-b95114696aac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–375.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df944f8bb21f78243c91cc7bbfdd5d03ccac1987` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
