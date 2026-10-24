# lemma₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d38edb06043c2b96455d2f8a41ceec6a8d5ff431",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d045efa-876d-d50c-1535-f132701bd223",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd98abdd-9706-0a31-934a-0ea9a18ba841",
  "kind": "theorem",
  "lexical_name": "lemma₁",
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
  "slug": "lemma--d3746db7c2c2cdea9c5586a1",
  "source": {
    "blob": "d38edb06043c2b96455d2f8a41ceec6a8d5ff431",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 168,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3746db7c2c2cdea9c5586a191b312959064db634351b3ddfdba43b6f9fac59c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd98abdd-9706-0a31-934a-0ea9a18ba841`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem lemma₁ (hlim : Tendsto (fun n : ℕ ↦ (∑ k ∈ Icc 1 n, f k) / n) atTop (𝓝 l))
    {s : ℝ} (hs : 1 < s) :
    IntegrableOn (fun t : ℝ ↦ (∑ k ∈ Icc 1 ⌊t⌋₊, f k) * (t : ℂ) ^ (-(s : ℂ) - 1)) (Set.Ici 1) := by
  have h₁ : LocallyIntegrableOn (fun t : ℝ ↦ (∑ k ∈ Icc 1 ⌊t⌋₊, f k) * (t : ℂ) ^ (-(s : ℂ) - 1))
        (Set.Ici 1) := by
    simp_rw [mul_comm]
    refine locallyIntegrableOn_mul_sum_Icc f zero_le_one ?_
    refine ContinuousOn.locallyIntegrableOn (fun t ht ↦ ?_) measurableSet_Ici
    exact (continuousAt_ofReal_cpow_const _ _ <|
      Or.inr (zero_lt_one.trans_le ht).ne').continuousWithinAt
  have h₂ : (fun t : ℝ ↦ ∑ k ∈ Icc 1 ⌊t⌋₊, f k) =O[atTop] fun t ↦ t ^ (1 : ℝ) := by
    simp_rw [Real.rpow_one]
    refine IsBigO.trans_isEquivalent ?_ isEquivalent_nat_floor
    have : Tendsto (fun n ↦ (∑ k ∈ Icc 1 n, f k) / ((n : ℝ) ^ (1 : ℝ) : ℝ)) atTop (𝓝 l) := by
      simpa using hlim
    simpa using (isBigO_atTop_natCast_rpow_of_tendsto_div_rpow this).comp_tendsto
        tendsto_nat_floor_atTop
  refine h₁.integrableOn_of_isBigO_atTop (g := fun t ↦ t ^(-s)) ?_ ?_
  · refine IsBigO.mul_atTop_rpow_of_isBigO_rpow 1 (-s - 1) _ h₂ ?_ (by linarith)
    exact (norm_ofReal_cpow_eventually_eq_atTop _).isBigO.of_norm_left
  · rwa [integrableAtFilter_rpow_atTop_iff, neg_lt_neg_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d38edb06043c2b96455d2f8a41ceec6a8d5ff431` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
