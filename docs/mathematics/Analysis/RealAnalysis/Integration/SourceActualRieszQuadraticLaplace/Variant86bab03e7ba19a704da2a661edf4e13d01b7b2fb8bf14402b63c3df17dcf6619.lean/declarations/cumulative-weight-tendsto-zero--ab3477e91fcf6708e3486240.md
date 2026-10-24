# cumulative_weight_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b2130f2-4b17-134b-a291-2cb69da910d8",
  "kind": "theorem",
  "lexical_name": "cumulative_weight_tendsto_zero",
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
  "slug": "cumulative-weight-tendsto-zero--ab3477e91fcf6708e3486240",
  "source": {
    "blob": "b2577d56d032c131a9b09ff4aaed21372f068765",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 173,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab3477e91fcf6708e3486240d3b13e2b1e9bdef68fcb30d584e103f7f0d3b9ec",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b2130f2-4b17-134b-a291-2cb69da910d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem cumulative_weight_tendsto_zero {M R σ : ℝ}
    (_hM : 0 ≤ M) (hR : 1 ≤ R) (hσ : 0 < σ)
    (harea : ∀ A : ℝ, R ≤ A → actualRieszAbsoluteCumulative (2 * A) ≤ M * A ^ 2) :
    Tendsto (fun t => actualRieszAbsoluteCumulative t * Real.exp (-σ * t))
      atTop (𝓝 (0 : ℝ)) := by
  have he : Tendsto (fun t : ℝ => (M / 4) * t ^ 2 * Real.exp (-σ * t))
      atTop (𝓝 (0 : ℝ)) := by
    simpa only [Real.rpow_two, mul_assoc, mul_zero] using
      (tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero 2 σ hσ).const_mul (M / 4)
  apply squeeze_zero' _ _ he
  · filter_upwards [eventually_ge_atTop (0 : ℝ)] with t ht
    exact mul_nonneg (area_nonneg ht) (Real.exp_pos _).le
  · filter_upwards [eventually_ge_atTop (2 * R)] with t ht
    have hh := harea (t / 2) (by linarith)
    rw [show 2 * (t / 2) = t by ring] at hh
    have heq : M * (t / 2) ^ 2 = (M / 4) * t ^ 2 := by ring
    rw [heq] at hh
    exact mul_le_mul_of_nonneg_right hh (Real.exp_pos _).le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2577d56d032c131a9b09ff4aaed21372f068765` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
