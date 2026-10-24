# exists_measurable_map_eq_unitInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff87857837695f11b64c0c802c21140dd55845f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76d5c2f0b3b7b08e44e6582ded0cc5f4b1da892c6b16267d3e9ccb0295cc34ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a62a55d0-0621-dfe7-2461-c42486211d89",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:813685fa-4b60-2117-8633-bd671cee12c1",
  "kind": "theorem",
  "lexical_name": "exists_measurable_map_eq_unitInterval",
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
  "slug": "exists-measurable-map-eq-unitinterval--5dccc1e7f30d8feebfdb442f",
  "source": {
    "blob": "ff87857837695f11b64c0c802c21140dd55845f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 111,
    "path": "GRWTSK/Analysis/MeasureTheory/Representation/Variant76d5c2f0b3b7b08e44e6582ded0cc5f4b1da892c6b16267d3e9ccb0295cc34ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5dccc1e7f30d8feebfdb442f0eabbfa941b3a826a84771972523b8ac2b621722",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Representation/Variant76d5c2f0b3b7b08e44e6582ded0cc5f4b1da892c6b16267d3e9ccb0295cc34ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:813685fa-4b60-2117-8633-bd671cee12c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_measurable_map_eq_unitInterval (κ : Kernel X Y) [IsMarkovKernel κ] :
    ∃ (f : X → I → Y), Measurable (uncurry f) ∧ ∀ a, volume.map (f a) = κ a := by
  let g := sigmoid ∘ embeddingReal Y
  have hg := measurableEmbedding_sigmoid_comp_embeddingReal Y
  have hκg : IsMarkovKernel (κ.map g) := IsMarkovKernel.map κ hg.measurable
  have hg'κ : κ = (κ.map g).map hg.invFun := by
    rw [← map_comp_right _ hg.measurable (by fun_prop), LeftInverse.id hg.leftInverse_invFun,
      map_id]
  obtain ⟨f', hf', hf'κ⟩ := (κ.map g).exists_measurable_map_eq_unitInterval_aux
  refine ⟨fun a u ↦ hg.invFun (f' a u), by fun_prop, fun a ↦ ?_⟩
  rw [hg'κ, map_apply _ (by fun_prop), ← hf'κ, Measure.map_map (by fun_prop) (by fun_prop)]
  rfl

end ProbabilityTheory.Kernel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Representation/Variant76d5c2f0b3b7b08e44e6582ded0cc5f4b1da892c6b16267d3e9ccb0295cc34ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Representation/Variant76d5c2f0b3b7b08e44e6582ded0cc5f4b1da892c6b16267d3e9ccb0295cc34ac.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff87857837695f11b64c0c802c21140dd55845f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
