# exists_measure_iInter_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5d9cdc3dbc272b0fa3551ee100f008232454744b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 627,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c955504c3afe89c1c0524f939b5ebec195726997d4cf4fa9975be3352146f51f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:32c0fbbb-c8be-5114-d50b-b61fb54aa98f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc95b71f-43e0-7a87-eccb-13c9c52c8ee6",
  "kind": "theorem",
  "lexical_name": "exists_measure_iInter_lt",
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
  "slug": "exists-measure-iinter-lt--717c52f0791ba569d8bf729d",
  "source": {
    "blob": "5d9cdc3dbc272b0fa3551ee100f008232454744b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 644,
    "line": 627,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasureSpace/Variantc955504c3afe89c1c0524f939b5ebec195726997d4cf4fa9975be3352146f51f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:717c52f0791ba569d8bf729d490a7d1b294444fc215e38af529cbf20c0cdb4dc",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasureSpace/Variantc955504c3afe89c1c0524f939b5ebec195726997d4cf4fa9975be3352146f51f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc95b71f-43e0-7a87-eccb-13c9c52c8ee6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 627–644.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_measure_iInter_lt {α ι : Type*} {_ : MeasurableSpace α} {μ : Measure α}
    [SemilatticeSup ι] [Countable ι] {f : ι → Set α}
    (hm : ∀ i, NullMeasurableSet (f i) μ) {ε : ℝ≥0∞} (hε : 0 < ε) (hfin : ∃ i, μ (f i) ≠ ∞)
    (hfem : ⋂ n, f n = ∅) : ∃ m, μ (⋂ n ≤ m, f n) < ε := by
  let F m := μ (⋂ n ≤ m, f n)
  have hFAnti : Antitone F :=
      fun i j hij => measure_mono (biInter_subset_biInter_left fun k hki => le_trans hki hij)
  suffices Filter.Tendsto F Filter.atTop (𝓝 0) by
    rw [@ENNReal.tendsto_atTop_zero_iff_lt_of_antitone
         _ (nonempty_of_exists hfin) _ _ hFAnti] at this
    exact this ε hε
  have hzero : μ (⋂ n, f n) = 0 := by
    simp only [hfem, measure_empty]
  rw [← hzero]
  exact tendsto_measure_iInter_le hm hfin

/-- The measure of the intersection of a decreasing sequence of measurable
sets indexed by a linear order with first countable topology is the limit of the measures. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasureSpace/Variantc955504c3afe89c1c0524f939b5ebec195726997d4cf4fa9975be3352146f51f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasureSpace/Variantc955504c3afe89c1c0524f939b5ebec195726997d4cf4fa9975be3352146f51f.lean#L627).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d9cdc3dbc272b0fa3551ee100f008232454744b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
