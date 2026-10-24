# HasFPowerSeriesWithinOnBall.uniform_geometric_approx'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6510a0fdecc0cd5100fa6ffaf5f7cb6efade2f1d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 685,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5bd829b44524785c84db262cade6c3cc4ab28f6966329429bcbf4dc35ba1e62c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5fcf694-5872-c373-4a71-a8a81abc219f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6deb2b0b-6418-6099-6c17-64b05b5eb23f",
  "kind": "theorem",
  "lexical_name": "HasFPowerSeriesWithinOnBall.uniform_geometric_approx'",
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
  "slug": "hasfpowerserieswithinonball-uniform-geometric-approx--871098a4b9727685742dc269",
  "source": {
    "blob": "6510a0fdecc0cd5100fa6ffaf5f7cb6efade2f1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 720,
    "line": 685,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant5bd829b44524785c84db262cade6c3cc4ab28f6966329429bcbf4dc35ba1e62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:871098a4b9727685742dc2692c244f7e10691b568944aec72eaaea0aad83a2f3",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variant5bd829b44524785c84db262cade6c3cc4ab28f6966329429bcbf4dc35ba1e62c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6deb2b0b-6418-6099-6c17-64b05b5eb23f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 685–720.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFPowerSeriesWithinOnBall.uniform_geometric_approx' {r' : ℝ≥0}
    (hf : HasFPowerSeriesWithinOnBall f p s x r) (h : (r' : ℝ≥0∞) < r) :
    ∃ a ∈ Ioo (0 : ℝ) 1, ∃ C > 0, ∀ y ∈ Metric.ball (0 : E) r', ∀ n, x + y ∈ insert x s →
      ‖f (x + y) - p.partialSum n y‖ ≤ C * (a * (‖y‖ / r')) ^ n := by
  obtain ⟨a, ha, C, hC, hp⟩ : ∃ a ∈ Ioo (0 : ℝ) 1, ∃ C > 0, ∀ n, ‖p n‖ * (r' : ℝ) ^ n ≤ C * a ^ n :=
    p.norm_mul_pow_le_mul_pow_of_lt_radius (h.trans_le hf.r_le)
  refine ⟨a, ha, C / (1 - a), div_pos hC (sub_pos.2 ha.2), fun y hy n ys => ?_⟩
  have yr' : ‖y‖ < r' := by
    rw [ball_zero_eq] at hy
    exact hy
  have hr'0 : 0 < (r' : ℝ) := (norm_nonneg _).trans_lt yr'
  have : y ∈ Metric.eball (0 : E) r := by
    refine mem_eball_zero_iff.2 (lt_trans ?_ h)
    simpa [enorm] using! yr'
  rw [norm_sub_rev, ← mul_div_right_comm]
  have ya : a * (‖y‖ / ↑r') ≤ a :=
    mul_le_of_le_one_right ha.1.le (div_le_one_of_le₀ yr'.le r'.coe_nonneg)
  suffices ‖p.partialSum n y - f (x + y)‖ ≤ C * (a * (‖y‖ / r')) ^ n / (1 - a * (‖y‖ / r')) by
    refine this.trans ?_
    have : 0 < a := ha.1
    gcongr
    apply_rules [sub_pos.2, ha.2]
  apply norm_sub_le_of_geometric_bound_of_hasSum (ya.trans_lt ha.2) _ (hf.hasSum ys this)
  intro n
  calc
    ‖(p n) fun _ : Fin n => y‖
    _ ≤ ‖p n‖ * ∏ _i : Fin n, ‖y‖ := ContinuousMultilinearMap.le_opNorm _ _
    _ = ‖p n‖ * (r' : ℝ) ^ n * (‖y‖ / r') ^ n := by simp [field, div_pow]
    _ ≤ C * a ^ n * (‖y‖ / r') ^ n := by gcongr ?_ * _; apply hp
    _ ≤ C * (a * (‖y‖ / r')) ^ n := by rw [mul_pow, mul_assoc]

/-- If a function admits a power series expansion, then it is exponentially close to the partial
sums of this power series on strict subdisks of the disk of convergence.

This version provides an upper estimate that decreases both in `‖y‖` and `n`. See also
`HasFPowerSeriesOnBall.uniform_geometric_approx` for a weaker version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variant5bd829b44524785c84db262cade6c3cc4ab28f6966329429bcbf4dc35ba1e62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant5bd829b44524785c84db262cade6c3cc4ab28f6966329429bcbf4dc35ba1e62c.lean#L685).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6510a0fdecc0cd5100fa6ffaf5f7cb6efade2f1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
