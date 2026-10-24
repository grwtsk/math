# actual_negative_half_price_le_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75ee0a5c-5cb4-9e81-638f-6e44d5e83e6a",
  "kind": "theorem",
  "lexical_name": "actual_negative_half_price_le_radius",
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
  "slug": "actual-negative-half-price-le-radius--ded8714377cf81c227541816",
  "source": {
    "blob": "b7778df09ee0c6d1af6f734ea8e80361f4c3bc89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusMoment/Varianta462d8fd6552a5575a481e43b9bb9a0526ca4a98c1288638322ad05740d2f868.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ded8714377cf81c227541816188f11370fecc2eea66784f706271bc3b433f45c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusMoment/Varianta462d8fd6552a5575a481e43b9bb9a0526ca4a98c1288638322ad05740d2f868.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75ee0a5c-5cb4-9e81-638f-6e44d5e83e6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_negative_half_price_le_radius {A r : ℝ} (hA : 1 ≤ A) (hr : 0 < r) :
    |∫ t in (0 : ℝ)..2 * A, Real.exp (-t / r) * C A t| ≤ r := by
  have hc : Continuous (fun t ↦ Real.exp (-t / r)) :=
    Real.continuous_exp.comp (continuous_id.neg.div_const r)
  have hb : ‖∫ t in (0 : ℝ)..2 * A, Real.exp (-t / r) * C A t‖ ≤
      ∫ t in (0 : ℝ)..2 * A, Real.exp (-t / r) :=
    intervalIntegral.norm_integral_le_of_norm_le (by linarith)
      (Filter.Eventually.of_forall (fun t _ ↦ by
        rw [Real.norm_eq_abs, abs_mul, abs_of_pos (Real.exp_pos _)]
        exact mul_le_of_le_one_right (Real.exp_pos _).le (actual_correlation_abs_le_one A t hA)))
      (hc.intervalIntegrable _ _)
  rw [Real.norm_eq_abs, exact_decaying_exponential_interval hr] at hb
  exact hb.trans (by nlinarith [Real.exp_pos (-(2 * A) / r)])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusMoment/Varianta462d8fd6552a5575a481e43b9bb9a0526ca4a98c1288638322ad05740d2f868.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusMoment/Varianta462d8fd6552a5575a481e43b9bb9a0526ca4a98c1288638322ad05740d2f868.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7778df09ee0c6d1af6f734ea8e80361f4c3bc89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
