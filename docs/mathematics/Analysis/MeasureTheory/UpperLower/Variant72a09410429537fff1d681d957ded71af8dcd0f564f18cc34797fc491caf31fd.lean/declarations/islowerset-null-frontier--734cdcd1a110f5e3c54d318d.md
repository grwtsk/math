# IsLowerSet.null_frontier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b7f4da183cf52809a5f1e57b3003b14eb354fffd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72a09410429537fff1d681d957ded71af8dcd0f564f18cc34797fc491caf31fd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d99919ce-2c49-5aa5-7380-69b34ce78643",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef61dbf1-e57e-0f28-aab9-77500e3b5f2e",
  "kind": "theorem",
  "lexical_name": "IsLowerSet.null_frontier",
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
  "slug": "islowerset-null-frontier--734cdcd1a110f5e3c54d318d",
  "source": {
    "blob": "b7f4da183cf52809a5f1e57b3003b14eb354fffd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 132,
    "path": "GRWTSK/Analysis/MeasureTheory/UpperLower/Variant72a09410429537fff1d681d957ded71af8dcd0f564f18cc34797fc491caf31fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:734cdcd1a110f5e3c54d318dde88c3bbdf410fb1a5ef349168e3ef9c2861c128",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/UpperLower/Variant72a09410429537fff1d681d957ded71af8dcd0f564f18cc34797fc491caf31fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef61dbf1-e57e-0f28-aab9-77500e3b5f2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLowerSet.null_frontier (hs : IsLowerSet s) : volume (frontier s) = 0 := by
  refine measure_mono_null (fun x hx ↦ ?_)
    (Besicovitch.ae_tendsto_measure_inter_div_of_measurableSet _
      (isClosed_closure (s := s)).measurableSet)
  by_cases h : x ∈ closure s <;>
    simp only [mem_compl_iff, mem_setOf, h, not_false_eq_true, indicator_of_notMem,
      indicator_of_mem, Pi.one_apply]
  · refine aux₁ fun _ ↦ hs.compl.exists_subset_ball <| frontier_subset_closure ?_
    rwa [frontier_compl]
  · exact aux₀ fun _ ↦ hs.exists_subset_ball <| frontier_subset_closure hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/UpperLower/Variant72a09410429537fff1d681d957ded71af8dcd0f564f18cc34797fc491caf31fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/UpperLower/Variant72a09410429537fff1d681d957ded71af8dcd0f564f18cc34797fc491caf31fd.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7f4da183cf52809a5f1e57b3003b14eb354fffd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
