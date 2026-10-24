# parallelComp_id_right_comp_parallelComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "70af40b732335ab1ace6eb8b6d01fbe50521c6f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c772f3d3f1014750e6f9d649500334b9861a013911f11738100a676f9586dcda.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e82d1d8-7553-fa9f-f3ab-fa30ba09cc5e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3e9d0d7f-fae7-2d2f-6328-05b0bc5d04f4",
  "kind": "lemma",
  "lexical_name": "parallelComp_id_right_comp_parallelComp",
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
  "slug": "parallelcomp-id-right-comp-parallelcomp--22d4c196ba3b7a7593d0b9fb",
  "source": {
    "blob": "70af40b732335ab1ace6eb8b6d01fbe50521c6f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 124,
    "path": "GRWTSK/Analysis/MeasureTheory/Lemmas/Variantc772f3d3f1014750e6f9d649500334b9861a013911f11738100a676f9586dcda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22d4c196ba3b7a7593d0b9fb879b14ee1f5e9d6782f86dc96cdeaf4e378a08fc",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Lemmas/Variantc772f3d3f1014750e6f9d649500334b9861a013911f11738100a676f9586dcda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e9d0d7f-fae7-2d2f-6328-05b0bc5d04f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma parallelComp_id_right_comp_parallelComp {η : Kernel α' γ} [IsSFiniteKernel η]
    {ξ : Kernel γ δ} [IsSFiniteKernel ξ] :
    (ξ ∥ₖ Kernel.id) ∘ₖ (η ∥ₖ κ) = (ξ ∘ₖ η) ∥ₖ κ := by
  by_cases hκ : IsSFiniteKernel κ
  swap; · simp [hκ]
  ext a
  rw [parallelComp_apply, comp_apply, comp_apply, parallelComp_apply, Measure.prod_comp_left]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Lemmas/Variantc772f3d3f1014750e6f9d649500334b9861a013911f11738100a676f9586dcda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Lemmas/Variantc772f3d3f1014750e6f9d649500334b9861a013911f11738100a676f9586dcda.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70af40b732335ab1ace6eb8b6d01fbe50521c6f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
