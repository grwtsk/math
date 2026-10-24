# actualCriticalPntAbsoluteBudget_tendsto_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "543d9cbfbbf71dde0dcaffe893f0a636601abb02",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e61aaef4c49456ffbfc23eb62acc7c0d04b1e446766be1fed252d0caeaeb69c6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1368d01-c1b5-59f5-240f-4ee37713c4ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4353254a-16e6-b10b-3711-f61b574668b0",
  "kind": "theorem",
  "lexical_name": "actualCriticalPntAbsoluteBudget_tendsto_atTop",
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
  "slug": "actualcriticalpntabsolutebudget-tendsto-attop--5b7cd9ef8442e7d07fac991d",
  "source": {
    "blob": "543d9cbfbbf71dde0dcaffe893f0a636601abb02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 91,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCriticalPntBudget/Variante61aaef4c49456ffbfc23eb62acc7c0d04b1e446766be1fed252d0caeaeb69c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b7cd9ef8442e7d07fac991de09c62f627b044ee599bf26acc5e654fa63616da",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualCriticalPntBudget/Variante61aaef4c49456ffbfc23eb62acc7c0d04b1e446766be1fed252d0caeaeb69c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4353254a-16e6-b10b-3711-f61b574668b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalPntAbsoluteBudget_tendsto_atTop (c : ℝ) (hc : 0 ≤ c) :
    Tendsto (fun A : ℝ => actualCriticalPntAbsoluteBudget A c) atTop atTop := by
  have he : (fun A : ℝ => Real.exp (A / 2 - 1 / 2) / (30 * A ^ 9)) =
      fun A => (Real.exp (-1 / 2) / (30 * 2 ^ 9)) *
        (Real.exp (A / 2) / (A / 2) ^ 9) := by
    funext A
    rw [show A / 2 - 1 / 2 = A / 2 + (-1 / 2) by ring, Real.exp_add]
    ring
  have ht : Tendsto (fun A : ℝ => Real.exp (A / 2 - 1 / 2) / (30 * A ^ 9))
      atTop atTop := by
    rw [he]
    apply Tendsto.const_mul_atTop (by positivity)
    exact (Real.tendsto_exp_div_pow_atTop 9).comp
      (by simpa only [div_eq_mul_inv, mul_comm, one_mul, id_eq] using
        (tendsto_id.const_mul_atTop (by norm_num : (0 : ℝ) < 1 / 2)))
  apply tendsto_atTop_mono' atTop _ ht
  filter_upwards [eventually_ge_atTop (max (4 : ℝ) (8 * c ^ 2))] with A hA
  have hA4 : 4 ≤ A := (le_max_left _ _).trans hA
  have hAc : 8 * c ^ 2 ≤ A := (le_max_right _ _).trans hA
  have hp : 0 < A := by linarith
  have hs : c * Real.sqrt (2 * A) ≤ A / 2 := by
    have he : (c * Real.sqrt (2 * A)) ^ 2 = 2 * c ^ 2 * A := by
      rw [mul_pow, Real.sq_sqrt (by positivity : 0 ≤ 2 * A)]
      ring
    nlinarith [mul_nonneg hc (Real.sqrt_nonneg (2 * A))]
  have hle : Real.exp (A / 2 - 1 / 2) / (30 * A ^ 9) ≤
      Real.exp (A - 1 / 2 - c * Real.sqrt (2 * A)) / (30 * A ^ 9) :=
    div_le_div_of_nonneg_right (Real.exp_le_exp.mpr (by linarith)) (by positivity)
  exact hle.trans (actualCriticalPntAbsoluteBudget_lower A c hA4 hc)

end
end RH16IndependentChallengeNext
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCriticalPntBudget/Variante61aaef4c49456ffbfc23eb62acc7c0d04b1e446766be1fed252d0caeaeb69c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCriticalPntBudget/Variante61aaef4c49456ffbfc23eb62acc7c0d04b1e446766be1fed252d0caeaeb69c6.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `543d9cbfbbf71dde0dcaffe893f0a636601abb02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
