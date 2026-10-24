# _root_.stronglyMeasurable_iff_measurable_separable

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
      "line": 637,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2354c6c9abc08b81a2490c0c0cd0d17b5fc7d888655196689a0870df7899915.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af261b22-4240-2c03-34a1-e68d82e33a17",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f4539f21-f2ff-72e6-6759-231d37d7b111",
  "kind": "theorem",
  "lexical_name": "_root_.stronglyMeasurable_iff_measurable_separable",
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
  "slug": "root-stronglymeasurable-iff-measurable-separable--a305b12a58cbf99c16ae513a",
  "source": {
    "blob": "75a9d1ea858d5904310c900dace99cf94dacc14d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 663,
    "line": 637,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variante2354c6c9abc08b81a2490c0c0cd0d17b5fc7d888655196689a0870df7899915.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a305b12a58cbf99c16ae513adecc74ae6e0c78bc6ae0e2fd22f7c0b797b4a8c4",
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

Occurrence: `result:f4539f21-f2ff-72e6-6759-231d37d7b111`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 637–663.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.stronglyMeasurable_iff_measurable_separable {m : MeasurableSpace α}
    [TopologicalSpace β] [PseudoMetrizableSpace β] [MeasurableSpace β] [BorelSpace β] :
    StronglyMeasurable f ↔ Measurable f ∧ IsSeparable (range f) := by
  refine' ⟨fun H => ⟨H.measurable, H.isSeparable_range⟩, _⟩
  rintro ⟨H, H'⟩
  letI := pseudoMetrizableSpacePseudoMetric β
  let g := codRestrict f (closure (range f)) fun x => subset_closure (mem_range_self x)
  have fg : f = ((↑) : closure (range f) → β) ∘ g := by
    ext x
    rfl
  have T : MeasurableEmbedding ((↑) : closure (range f) → β) := by
    apply ClosedEmbedding.measurableEmbedding
    exact closedEmbedding_subtype_val isClosed_closure
  have g_meas : Measurable g := by
    rw [fg] at H
    exact T.measurable_comp_iff.1 H
  have : SecondCountableTopology (closure (range f)) := by
    suffices SeparableSpace (closure (range f)) by
      exact UniformSpace.secondCountable_of_separable _
    exact (IsSeparable.closure H').separableSpace
  have g_smeas : StronglyMeasurable g := Measurable.stronglyMeasurable g_meas
  rw [fg]
  exact continuous_subtype_val.comp_stronglyMeasurable g_smeas
#align strongly_measurable_iff_measurable_separable stronglyMeasurable_iff_measurable_separable

/-- A continuous function is strongly measurable when either the source space or the target space
is second-countable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variante2354c6c9abc08b81a2490c0c0cd0d17b5fc7d888655196689a0870df7899915.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variante2354c6c9abc08b81a2490c0c0cd0d17b5fc7d888655196689a0870df7899915.lean#L637).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75a9d1ea858d5904310c900dace99cf94dacc14d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
