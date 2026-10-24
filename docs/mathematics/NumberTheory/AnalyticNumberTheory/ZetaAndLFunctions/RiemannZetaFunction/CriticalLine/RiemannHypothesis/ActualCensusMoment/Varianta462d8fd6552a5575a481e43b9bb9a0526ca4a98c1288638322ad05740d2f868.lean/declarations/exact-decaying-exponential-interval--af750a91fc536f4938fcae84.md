# exact_decaying_exponential_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac28c0ff-5a5e-b880-5c3c-798a3ea186d8",
  "kind": "theorem",
  "lexical_name": "exact_decaying_exponential_interval",
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
  "slug": "exact-decaying-exponential-interval--af750a91fc536f4938fcae84",
  "source": {
    "blob": "b7778df09ee0c6d1af6f734ea8e80361f4c3bc89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 25,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusMoment/Varianta462d8fd6552a5575a481e43b9bb9a0526ca4a98c1288638322ad05740d2f868.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af750a91fc536f4938fcae8478430e93d26671bcb4c01bc4955dd26c980ba1d3",
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

Occurrence: `result:ac28c0ff-5a5e-b880-5c3c-798a3ea186d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_decaying_exponential_interval {A r : ℝ} (hr : 0 < r) :
    (∫ t in (0 : ℝ)..2 * A, Real.exp (-t / r)) =
      r * (1 - Real.exp (-(2 * A) / r)) := by
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ ↦ -r * Real.exp (-t / r))
      (Real.exp (-t / r)) t := by
    have h := ((((hasDerivAt_id t).neg).div_const r).exp).const_mul (-r)
    apply h.congr_deriv
    change -r * (Real.exp (-t / r) * (-1 / r)) = Real.exp (-t / r)
    field_simp [hr.ne']
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ ↦ hd t)
    ((Real.continuous_exp.comp (continuous_id.neg.div_const r)).intervalIntegrable _ _)]
  simp only [neg_zero, zero_div, Real.exp_zero, mul_one]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusMoment/Varianta462d8fd6552a5575a481e43b9bb9a0526ca4a98c1288638322ad05740d2f868.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusMoment/Varianta462d8fd6552a5575a481e43b9bb9a0526ca4a98c1288638322ad05740d2f868.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7778df09ee0c6d1af6f734ea8e80361f4c3bc89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
