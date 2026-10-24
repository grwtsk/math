# iIndepFun.cond_iInter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8780ab9b4f32c50c2eb25780f1395e87224e69d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 707,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b070426f05b1c1ead5505448040efdfee5fb61078a527e9c858ec2e7d141b77c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c1ce9ff6-a06c-b582-579c-5d0f9bd739a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76119139-ea73-e915-9829-90ced1ee51ef",
  "kind": "lemma",
  "lexical_name": "iIndepFun.cond_iInter",
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
  "slug": "iindepfun-cond-iinter--cc96eb538a4cb9b47d96804d",
  "source": {
    "blob": "e8780ab9b4f32c50c2eb25780f1395e87224e69d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 753,
    "line": 707,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/IndepFun/Variantb070426f05b1c1ead5505448040efdfee5fb61078a527e9c858ec2e7d141b77c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc96eb538a4cb9b47d96804d24885c3d024662c4e47798c771da4b8b2ac6720b",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/IndepFun/Variantb070426f05b1c1ead5505448040efdfee5fb61078a527e9c858ec2e7d141b77c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76119139-ea73-e915-9829-90ced1ee51ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 707–753.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iIndepFun.cond_iInter [Finite ι] (hY : ∀ i, Measurable (Y i))
    (hindep : iIndepFun (fun i ω ↦ (X i ω, Y i ω)) κ μ)
    (hf : ∀ i ∈ s, MeasurableSet[mα.comap (X i)] (f i))
    (hy : ∀ᵐ a ∂μ, ∀ i ∉ s, κ a (Y i ⁻¹' t i) ≠ 0) (ht : ∀ i, MeasurableSet (t i)) :
    ∀ᵐ a ∂μ, (κ a)[⋂ i ∈ s, f i | ⋂ i, Y i ⁻¹' t i] = ∏ i ∈ s, (κ a)[f i | Y i in t i] := by
  classical
  cases nonempty_fintype ι
  let g (i' : ι) := if i' ∈ s then Y i' ⁻¹' t i' ∩ f i' else Y i' ⁻¹' t i'
  have hYt i : MeasurableSet[(mα.prod mβ).comap fun ω ↦ (X i ω, Y i ω)] (Y i ⁻¹' t i) :=
    ⟨.univ ×ˢ t i, .prod .univ (ht _), by ext; simp⟩
  have hg i : MeasurableSet[(mα.prod mβ).comap fun ω ↦ (X i ω, Y i ω)] (g i) := by
    by_cases hi : i ∈ s <;> simp only [hi, ↓reduceIte, g]
    · obtain ⟨A, hA, hA'⟩ := hf i hi
      exact (hYt _).inter ⟨A ×ˢ .univ, hA.prod .univ, by ext; simp [← hA']⟩
    · exact hYt _
  filter_upwards [hy, hindep.ae_isProbabilityMeasure, hindep.meas_iInter hYt, hindep.meas_iInter hg]
    with a hy _ hYt hg
  calc
    _ = (κ a (⋂ i, Y i ⁻¹' t i))⁻¹ * κ a ((⋂ i, Y i ⁻¹' t i) ∩ ⋂ i ∈ s, f i) := by
      rw [cond_apply]; exact .iInter fun i ↦ hY i (ht i)
    _ = (κ a (⋂ i, Y i ⁻¹' t i))⁻¹ * κ a (⋂ i, g i) := by
      congr 2
      calc
        _ = (⋂ i, Y i ⁻¹' t i) ∩ ⋂ i, if i ∈ s then f i else .univ := by
          congr 1
          simp only [Set.iInter_ite, Set.iInter_univ, Set.inter_univ]
        _ = ⋂ i, Y i ⁻¹' t i ∩ (if i ∈ s then f i else .univ) := by rw [Set.iInter_inter_distrib]
        _ = _ := Set.iInter_congr fun i ↦ by by_cases hi : i ∈ s <;> simp [hi, g]
    _ = (∏ i, κ a (Y i ⁻¹' t i))⁻¹ * κ a (⋂ i, g i) := by
      rw [hYt]
    _ = (∏ i, κ a (Y i ⁻¹' t i))⁻¹ * ∏ i, κ a (g i) := by
      rw [hg]
    _ = ∏ i, (κ a (Y i ⁻¹' t i))⁻¹ * κ a (g i) := by
      rw [Finset.prod_mul_distrib, ENNReal.prod_inv_distrib]
      exact fun _ _ i _ _ ↦ .inr <| measure_ne_top _ _
    _ = ∏ i, if i ∈ s then (κ a)[f i | Y i ⁻¹' t i] else 1 := by
      refine Finset.prod_congr rfl fun i _ ↦ ?_
      by_cases hi : i ∈ s
      · simp only [hi, ↓reduceIte, g, cond_apply (hY i (ht i))]
      · simp only [hi, ↓reduceIte, g, ENNReal.inv_mul_cancel (hy i hi) (measure_ne_top _ _)]
    _ = _ := by simp

-- TODO: We can't state `Kernel.iIndepFun.cond` (the `Kernel` analogue of
-- `ProbabilityTheory.iIndepFun.cond`) because we don't have a version of `ProbabilityTheory.cond`
-- for kernels

end ProbabilityTheory.Kernel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/IndepFun/Variantb070426f05b1c1ead5505448040efdfee5fb61078a527e9c858ec2e7d141b77c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/IndepFun/Variantb070426f05b1c1ead5505448040efdfee5fb61078a527e9c858ec2e7d141b77c.lean#L707).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8780ab9b4f32c50c2eb25780f1395e87224e69d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
