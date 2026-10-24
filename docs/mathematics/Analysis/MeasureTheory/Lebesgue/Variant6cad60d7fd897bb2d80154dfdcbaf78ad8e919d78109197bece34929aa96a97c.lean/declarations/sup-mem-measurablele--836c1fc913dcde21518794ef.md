# sup_mem_measurableLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc274a51e60f728ba7894b9ee7a3f16a07b8ec1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 770,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6cad60d7fd897bb2d80154dfdcbaf78ad8e919d78109197bece34929aa96a97c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d69478ca-c37c-a75f-7dec-191836e19bdb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aac476da-8fc0-c5c0-41b7-0ca4ece7715c",
  "kind": "theorem",
  "lexical_name": "sup_mem_measurableLE",
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
  "slug": "sup-mem-measurablele--836c1fc913dcde21518794ef",
  "source": {
    "blob": "dc274a51e60f728ba7894b9ee7a3f16a07b8ec1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 779,
    "line": 770,
    "path": "GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant6cad60d7fd897bb2d80154dfdcbaf78ad8e919d78109197bece34929aa96a97c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:836c1fc913dcde21518794efdb8c2ad8d55d14745d0106f2375fccea827a861a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Lebesgue/Variant6cad60d7fd897bb2d80154dfdcbaf78ad8e919d78109197bece34929aa96a97c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aac476da-8fc0-c5c0-41b7-0ca4ece7715c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 770–779.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sup_mem_measurableLE {f g : α → ℝ≥0∞} (hf : f ∈ measurableLE μ ν)
    (hg : g ∈ measurableLE μ ν) : (fun a ↦ f a ⊔ g a) ∈ measurableLE μ ν := by
  refine ⟨Measurable.max hf.1 hg.1, fun A hA ↦ ?_⟩
  have h₁ := hA.inter (measurableSet_le hf.1 hg.1)
  have h₂ := hA.inter (measurableSet_lt hg.1 hf.1)
  rw [setLIntegral_max hf.1 hg.1]
  refine (add_le_add (hg.2 _ h₁) (hf.2 _ h₂)).trans_eq ?_
  simp only [← not_le, ← compl_setOf, ← diff_eq]
  exact measure_inter_add_diff _ (measurableSet_le hf.1 hg.1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Lebesgue/Variant6cad60d7fd897bb2d80154dfdcbaf78ad8e919d78109197bece34929aa96a97c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant6cad60d7fd897bb2d80154dfdcbaf78ad8e919d78109197bece34929aa96a97c.lean#L770).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc274a51e60f728ba7894b9ee7a3f16a07b8ec1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
