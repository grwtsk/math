# LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div_and_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66293f1a-0860-f59e-f08f-26b92bccf822",
  "kind": "theorem",
  "lexical_name": "LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div_and_nonneg",
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
  "slug": "lseries-tendsto-sub-mul-nhds-one-of-tendsto-sum-div-and-nonneg--12abf231fe68dc9f739526ea",
  "source": {
    "blob": "82528f0cd256b1099d59b3b009eb099f66f9f87d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 366,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variant89264c45a30b0668dc8aff10b2f425a9ff73072a98c749a09ff8aeadb8b6136e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12abf231fe68dc9f739526eaacaeb344aba18922c62105a729dfd7fc28ab8f6e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variant89264c45a30b0668dc8aff10b2f425a9ff73072a98c749a09ff8aeadb8b6136e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66293f1a-0860-f59e-f08f-26b92bccf822`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div_and_nonneg (f : ℕ → ℝ) {l : ℝ}
    (hf : Tendsto (fun n ↦ (∑ k ∈ Icc 1 n, f k) / (n : ℝ)) atTop (𝓝 l))
    (hf' : ∀ n, 0 ≤ f n) :
    Tendsto (fun s : ℝ ↦ (s - 1) * LSeries (fun n ↦ f n) s) (𝓝[>] 1) (𝓝 l) := by
  refine  LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div (f := fun n ↦ f n)
    (hf.ofReal.congr fun _ ↦ ?_) fun s hs ↦ ?_
  · simp
  · refine LSeriesSummable_of_sum_norm_bigO_and_nonneg ?_ hf' zero_le_one hs
    exact isBigO_atTop_natCast_rpow_of_tendsto_div_rpow (by simpa)

end proof

end residue
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variant89264c45a30b0668dc8aff10b2f425a9ff73072a98c749a09ff8aeadb8b6136e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variant89264c45a30b0668dc8aff10b2f425a9ff73072a98c749a09ff8aeadb8b6136e.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82528f0cd256b1099d59b3b009eb099f66f9f87d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
