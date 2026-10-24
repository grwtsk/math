# compPartialSumTargetSet_image_compPartialSumSource

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36ee2c43-5a54-8d5f-08e3-f09644cc7257",
  "kind": "theorem",
  "lexical_name": "compPartialSumTargetSet_image_compPartialSumSource",
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
  "slug": "comppartialsumtargetset-image-comppartialsumsource--19a3d6212bb53603b0ec921c",
  "source": {
    "blob": "c6c9794abc494d790c095633044ce10546f8cbad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 640,
    "line": 624,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19a3d6212bb53603b0ec921c42a420466950f0400e87060a07d80e4b91e5d58a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36ee2c43-5a54-8d5f-08e3-f09644cc7257`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 624–640.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compPartialSumTargetSet_image_compPartialSumSource (m M N : ℕ)
    (i : Σ n, Composition n) (hi : i ∈ compPartialSumTargetSet m M N) :
    ∃ (j : _) (hj : j ∈ compPartialSumSource m M N), i = compChangeOfVariables m M N j hj := by
  rcases i with ⟨n, c⟩
  refine' ⟨⟨c.length, c.blocksFun⟩, _, _⟩
  · simp only [compPartialSumTargetSet, Set.mem_setOf_eq] at hi
    simp only [mem_compPartialSumSource_iff, hi.left, hi.right, true_and_iff, and_true_iff]
    exact fun a => c.one_le_blocks' _
  · dsimp [compChangeOfVariables]
    rw [Composition.sigma_eq_iff_blocks_eq]
    simp only [Composition.blocksFun, Composition.blocks, Subtype.coe_eta, List.get_map]
    conv_lhs => rw [← List.ofFn_get c.blocks]
#align formal_multilinear_series.comp_partial_sum_target_subset_image_comp_partial_sum_source FormalMultilinearSeries.compPartialSumTargetSet_image_compPartialSumSource

/-- Target set in the change of variables to compute the composition of partial sums of formal
power series, here given a a finset.
See also `comp_partial_sum`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean#L624).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6c9794abc494d790c095633044ce10546f8cbad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
