# actual_layer_cake

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c7c3d9e-8626-4503-196f-2b38ce3cb797",
  "kind": "theorem",
  "lexical_name": "actual_layer_cake",
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
  "slug": "actual-layer-cake--a46276aa143a704fffea873f",
  "source": {
    "blob": "84c1772ee49667a306095c2edbaed5789f876c7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 167,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualLayerCake/Variantb3b472d8a45d806577222058dbcb2d357197cbc665b8e8bdf177d4a645bedc2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a46276aa143a704fffea873fb77a8d16be6e06e0bec925046b74469393767773",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualLayerCake/Variantb3b472d8a45d806577222058dbcb2d357197cbc665b8e8bdf177d4a645bedc2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c7c3d9e-8626-4503-196f-2b38ce3cb797`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_layer_cake (A T : ℝ) :
    (∑ o : DyadicOccurrence T,
      if 1/2 < beta o then Real.exp (2*A*(beta o-1/2)) else 0) =
      nT T (1/2) + 2*A*∫ σ in (1/2 : ℝ)..1,
        Real.exp (2*A*(σ-1/2)) * nT T σ := by
  have heq : (fun σ => densityWeight A σ * nT T σ) =
      (fun σ => ∑ o : DyadicOccurrence T,
        if σ < beta o then densityWeight A σ else 0) := by
    funext σ
    simp only [nT, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro o _
    split_ifs <;> simp
  have hi := intervalIntegral.integral_finsetSum (s := Finset.univ)
    (f := fun o : DyadicOccurrence T =>
      fun σ => if σ < beta o then densityWeight A σ else 0)
    (fun o _ => strict_indicator_integrable A (beta o) (1/2) 1)
  have hl : (∫ σ in (1/2 : ℝ)..1, densityWeight A σ * nT T σ) =
      ∑ o : DyadicOccurrence T,
        if 1/2 < beta o then Real.exp (2*A*(beta o-1/2))-1 else 0 := by
    rw [heq,hi]
    apply Finset.sum_congr rfl
    intro o _
    exact per_occurrence_integral A (beta o) (beta_lt_one o).le
  have hm : 2*A*(∫ σ in (1/2 : ℝ)..1,
      Real.exp (2*A*(σ-1/2))*nT T σ) =
      ∫ σ in (1/2 : ℝ)..1, densityWeight A σ*nT T σ := by
    rw [← intervalIntegral.integral_const_mul]
    congr 1
    funext σ
    simp only [densityWeight]
    ring
  rw [hm,hl,nT,← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro o _
  split_ifs <;> ring

#print axioms DyadicOccurrence
#print axioms dyadicOccurrence_finite
#print axioms dyadicOccurrence_fintype
#print axioms beta
#print axioms beta_lt_one
#print axioms nT
#print axioms nT_eq_card
#print axioms countWindowEquiv
#print axioms nT_eq_actual_count
#print axioms nT_nonneg
#print axioms nT_antitone
#print axioms densityWeight
#print axioms densityWeight_nonneg
#print axioms densityWeight_continuous
#print axioms densityWeight_integrable
#print axioms strict_indicator_integrable
#print axioms strict_indicator_integral
#print axioms exp_weight_primitive
#print axioms per_occurrence_integral
#print axioms nT_measurable
#print axioms weighted_count_integrable
#print axioms actual_layer_cake
end ContinuousResearch.ActualLayerCake
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualLayerCake/Variantb3b472d8a45d806577222058dbcb2d357197cbc665b8e8bdf177d4a645bedc2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualLayerCake/Variantb3b472d8a45d806577222058dbcb2d357197cbc665b8e8bdf177d4a645bedc2c.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84c1772ee49667a306095c2edbaed5789f876c7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
