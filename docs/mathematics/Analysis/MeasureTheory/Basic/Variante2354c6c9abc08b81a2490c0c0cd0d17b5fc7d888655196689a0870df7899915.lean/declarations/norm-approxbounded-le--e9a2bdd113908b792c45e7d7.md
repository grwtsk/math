# norm_approxBounded_le

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
      "line": 235,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2354c6c9abc08b81a2490c0c0cd0d17b5fc7d888655196689a0870df7899915.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c63535b4-7dc1-9244-2884-ffe98c6d15c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1aba5add-05f5-adaa-1e79-1dd95c2d3502",
  "kind": "theorem",
  "lexical_name": "norm_approxBounded_le",
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
  "slug": "norm-approxbounded-le--e9a2bdd113908b792c45e7d7",
  "source": {
    "blob": "75a9d1ea858d5904310c900dace99cf94dacc14d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 235,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variante2354c6c9abc08b81a2490c0c0cd0d17b5fc7d888655196689a0870df7899915.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9a2bdd113908b792c45e7d70852d9f1ea020180b24a216cd4ee9e3ec7f5d631",
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

Occurrence: `result:1aba5add-05f5-adaa-1e79-1dd95c2d3502`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_approxBounded_le {β} {f : α → β} [SeminormedAddCommGroup β] [NormedSpace ℝ β]
    {m : MeasurableSpace α} {c : ℝ} (hf : StronglyMeasurable[m] f) (hc : 0 ≤ c) (n : ℕ) (x : α) :
    ‖hf.approxBounded c n x‖ ≤ c := by
  simp only [StronglyMeasurable.approxBounded, SimpleFunc.coe_map, Function.comp_apply]
  refine' (norm_smul_le _ _).trans _
  by_cases h0 : ‖hf.approx n x‖ = 0
  · simp only [h0, _root_.div_zero, min_eq_right, zero_le_one, norm_zero, mul_zero]
    exact hc
  cases' le_total ‖hf.approx n x‖ c with h h
  · rw [min_eq_left _]
    · simpa only [norm_one, one_mul] using h
    · rwa [one_le_div (lt_of_le_of_ne (norm_nonneg _) (Ne.symm h0))]
  · rw [min_eq_right _]
    · rw [norm_div, norm_norm, mul_comm, mul_div, div_eq_mul_inv, mul_comm, ← mul_assoc,
        inv_mul_cancel h0, one_mul, Real.norm_of_nonneg hc]
    · rwa [div_le_one (lt_of_le_of_ne (norm_nonneg _) (Ne.symm h0))]
#align measure_theory.strongly_measurable.norm_approx_bounded_le MeasureTheory.StronglyMeasurable.norm_approxBounded_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variante2354c6c9abc08b81a2490c0c0cd0d17b5fc7d888655196689a0870df7899915.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variante2354c6c9abc08b81a2490c0c0cd0d17b5fc7d888655196689a0870df7899915.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75a9d1ea858d5904310c900dace99cf94dacc14d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
