# _root_.GRWTSK.Analysis.MeasureTheory.SumFinpartition.Variant4fc300cd5d1da688d32f3889e15f7227612635bf6d431dfe93631367a8f74e1e.MeasureTheory.SignedMeasure.exists_subset_lt_enorm_apply_of_lt_variation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54b4e8b0-e449-58e4-34eb-a66e3a0dc943",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.SumFinpartition.Variant4fc300cd5d1da688d32f3889e15f7227612635bf6d431dfe93631367a8f74e1e.MeasureTheory.SignedMeasure.exists_subset_lt_enorm_apply_of_lt_variation",
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
  "slug": "root-grwtsk-analysis-measuretheory-sumfinpartition-variant4fc300cd5d1da6--b083569d059fb5e48533a410",
  "source": {
    "blob": "14262fda5fbf8a722c5f20e8f08d712957657be3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 369,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant22800b2d9952fd074976413556aeadceaeca89fe47f34bd60081648aa74a50c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b083569d059fb5e48533a4101a91dcdcfc30df372a58fac99b535a24399ebc53",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant22800b2d9952fd074976413556aeadceaeca89fe47f34bd60081648aa74a50c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54b4e8b0-e449-58e4-34eb-a66e3a0dc943`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Analysis.MeasureTheory.SumFinpartition.Variant4fc300cd5d1da688d32f3889e15f7227612635bf6d431dfe93631367a8f74e1e.MeasureTheory.SignedMeasure.exists_subset_lt_enorm_apply_of_lt_variation
    (μ : SignedMeasure X) {s : Set X} (hs : MeasurableSet s)
    {a : ℝ≥0∞} (ha : a < μ.variation s) :
    ∃ t ⊆ s, MeasurableSet t ∧ a < 2 * ‖μ t‖ₑ := by
  /- One may almost realize the variation through a partition into finitely many sets.
  As their measures are real numbers, we can group together those of positive measure, and
  also those of negative measure. This gives two measurable sets. Among these two, the one with the
  largest measure in absolute value satisfies the result. -/
  obtain ⟨P, Ps, P_disj, P_meas, hP⟩ : ∃ (P : Finset (Set X)), (∀ t ∈ P, t ⊆ s) ∧
    ((P : Set (Set X)).PairwiseDisjoint id) ∧
    (∀ t ∈ P, MeasurableSet t) ∧ a < ∑ p ∈ P, ‖μ p‖ₑ := exists_lt_sum_of_lt_variation _ hs ha
  have I : (∑ p ∈ P.filter (fun p ↦ 0 ≤ μ p), ‖μ p‖ₑ) =
      ‖μ (⋃ p ∈ P.filter (fun p ↦ 0 ≤ μ p), p)‖ₑ := by
    simp only [Real.norm_eq_abs, enorm_eq_nnnorm,
      ← ENNReal.ofNNReal_finsetSum, ENNReal.coe_inj, ← NNReal.coe_inj,
      NNReal.coe_sum, coe_nnnorm, Real.norm_eq_abs]
    have A : ∑ x ∈ P with 0 ≤ μ x, |μ x| = μ (⋃ x ∈ P.filter (fun x ↦ 0 ≤ μ x), x) := calc
      _ = ∑ x ∈ P with 0 ≤ μ x, μ x := by
        apply Finset.sum_congr rfl (fun p hp ↦ ?_)
        simp only [Finset.mem_filter] at hp
        simp [hp]
      _ = μ (⋃ x ∈ P.filter (fun x ↦ 0 ≤ μ x), x) := by
        rw [of_biUnion_finset]
        · apply P_disj.subset (by grind)
        · grind
    rw [A, abs_of_nonneg]
    rw [← A]
    exact Finset.sum_nonneg (fun p hp ↦ by positivity)
  have J : (∑ p ∈ P.filter (fun p ↦ ¬ 0 ≤ μ p), ‖μ p‖ₑ) =
      ‖μ (⋃ p ∈ P.filter (fun p ↦ ¬ 0 ≤ μ p), p)‖ₑ := by
    simp only [not_le, enorm_eq_nnnorm, ← ENNReal.ofNNReal_finsetSum,
      ENNReal.coe_inj, ← NNReal.coe_inj, NNReal.coe_sum, coe_nnnorm, Real.norm_eq_abs]
    have A : ∑ x ∈ P with μ x < 0, |μ x| = - μ (⋃ x ∈ P.filter (fun x ↦ μ x < 0), x) := calc
      ∑ x ∈ P with μ x < 0, |μ x|
      _ = ∑ x ∈ P with μ x < 0, -μ x := by
        refine Finset.sum_congr rfl (fun p hp ↦ ?_)
        simp only [Finset.mem_filter] at hp
        simp [hp.2.le]
      _ = -μ (⋃ x ∈ P.filter (fun x ↦ μ x < 0), x) := by
        rw [of_biUnion_finset]
        · simp
        · apply P_disj.subset (by grind)
        · grind
    rw [A, abs_of_nonpos]
    rw [← neg_nonneg, ← A]
    exact Finset.sum_nonneg (fun p hp ↦ by positivity)
  simp_rw [two_mul]
  rw [← Finset.sum_filter_add_sum_filter_not _ (fun p ↦ 0 ≤ μ p), I, J] at hP
  rcases le_total (‖μ (⋃ p ∈ P.filter (fun p ↦ ¬ 0 ≤ μ p), p)‖ₑ)
    (‖μ (⋃ p ∈ P.filter (fun p ↦ 0 ≤ μ p), p)‖ₑ) with h | h
  · refine ⟨⋃ p ∈ P.filter (fun p ↦ 0 ≤ μ p), p, ?_, ?_, ?_⟩
    · simp; grind
    · exact Finset.measurableSet_biUnion _ (by grind)
    · exact hP.trans_le (by gcongr)
  · refine ⟨⋃ p ∈ P.filter (fun p ↦ ¬ 0 ≤ μ p), p, ?_, ?_, ?_⟩
    · simp; grind
    · exact Finset.measurableSet_biUnion _ (by grind)
    · exact hP.trans_le (by gcongr)

end NormedAddCommGroup

section ENNReal

variable (μ : VectorMeasure X ℝ≥0∞)

/-- For `μ : VectorMeasure X ℝ≥0∞` and measurable `s`, the supremum over Finpartitions of
`⟨s, hs⟩ : Subtype MeasurableSet` of the sum of `μ` over parts equals `μ s`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant22800b2d9952fd074976413556aeadceaeca89fe47f34bd60081648aa74a50c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant22800b2d9952fd074976413556aeadceaeca89fe47f34bd60081648aa74a50c8.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14262fda5fbf8a722c5f20e8f08d712957657be3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
