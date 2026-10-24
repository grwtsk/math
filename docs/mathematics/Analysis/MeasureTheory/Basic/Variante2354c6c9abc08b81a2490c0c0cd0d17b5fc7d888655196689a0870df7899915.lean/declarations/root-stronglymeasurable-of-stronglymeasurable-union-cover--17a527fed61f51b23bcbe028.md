# _root_.stronglyMeasurable_of_stronglyMeasurable_union_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75a9d1ea858d5904310c900dace99cf94dacc14d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 753,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2354c6c9abc08b81a2490c0c0cd0d17b5fc7d888655196689a0870df7899915.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d0d162d7-fc81-331d-2b25-af2504205d5c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59d150b8-d520-48ee-3704-c226c179761f",
  "kind": "theorem",
  "lexical_name": "_root_.stronglyMeasurable_of_stronglyMeasurable_union_cover",
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
  "slug": "root-stronglymeasurable-of-stronglymeasurable-union-cover--17a527fed61f51b23bcbe028",
  "source": {
    "blob": "75a9d1ea858d5904310c900dace99cf94dacc14d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 797,
    "line": 753,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variante2354c6c9abc08b81a2490c0c0cd0d17b5fc7d888655196689a0870df7899915.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17a527fed61f51b23bcbe02827da87ba1cf983c0dcd7517fad72029473409a7d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variante2354c6c9abc08b81a2490c0c0cd0d17b5fc7d888655196689a0870df7899915.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59d150b8-d520-48ee-3704-c226c179761f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 753–797.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.stronglyMeasurable_of_stronglyMeasurable_union_cover {m : MeasurableSpace α}
    [TopologicalSpace β] {f : α → β} (s t : Set α) (hs : MeasurableSet s) (ht : MeasurableSet t)
    (h : univ ⊆ s ∪ t) (hc : StronglyMeasurable fun a : s => f a)
    (hd : StronglyMeasurable fun a : t => f a) : StronglyMeasurable f := by
  classical
    let f : ℕ → α →ₛ β := fun n =>
      { toFun := fun x =>
          if hx : x ∈ s then hc.approx n ⟨x, hx⟩
          else hd.approx n ⟨x, by simpa [hx] using h (mem_univ x)⟩
        measurableSet_fiber' := by
          intro x
          convert(hs.subtype_image ((hc.approx n).measurableSet_fiber x)).union
              ((ht.subtype_image ((hd.approx n).measurableSet_fiber x)).diff hs)
          ext1 y
          simp only [mem_union, mem_preimage, mem_singleton_iff, mem_image, SetCoe.exists,
            Subtype.coe_mk, exists_and_right, exists_eq_right, mem_diff]
          by_cases hy : y ∈ s
          · rw [dif_pos hy]
            simp only [hy, exists_true_left, not_true, and_false_iff, or_false_iff]
          · rw [dif_neg hy]
            have A : y ∈ t := by simpa [hy] using h (mem_univ y)
            simp only [A, hy, false_or_iff, IsEmpty.exists_iff, not_false_iff, and_true_iff,
              exists_true_left]
        finite_range' := by
          apply ((hc.approx n).finite_range.union (hd.approx n).finite_range).subset
          rintro - ⟨y, rfl⟩
          dsimp
          by_cases hy : y ∈ s
          · left
            rw [dif_pos hy]
            exact mem_range_self _
          · right
            rw [dif_neg hy]
            exact mem_range_self _ }
    refine' ⟨f, fun y => _⟩
    by_cases hy : y ∈ s
    · convert hc.tendsto_approx ⟨y, hy⟩ using 1
      ext1 n
      simp only [dif_pos hy, SimpleFunc.apply_mk]
    · have A : y ∈ t := by simpa [hy] using h (mem_univ y)
      convert hd.tendsto_approx ⟨y, A⟩ using 1
      ext1 n
      simp only [dif_neg hy, SimpleFunc.apply_mk]
#align strongly_measurable_of_strongly_measurable_union_cover stronglyMeasurable_of_stronglyMeasurable_union_cover

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variante2354c6c9abc08b81a2490c0c0cd0d17b5fc7d888655196689a0870df7899915.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variante2354c6c9abc08b81a2490c0c0cd0d17b5fc7d888655196689a0870df7899915.lean#L753).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75a9d1ea858d5904310c900dace99cf94dacc14d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
