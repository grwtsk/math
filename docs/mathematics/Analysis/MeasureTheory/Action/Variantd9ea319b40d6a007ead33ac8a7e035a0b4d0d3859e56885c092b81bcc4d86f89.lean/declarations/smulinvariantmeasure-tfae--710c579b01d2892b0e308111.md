# smulInvariantMeasure_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "71e7bac2ee329ec531f8dc4879010041826cb1b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 220,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:297474b4-27a6-24ce-5c04-6853478417c1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88e686a1-93a4-b21b-89c2-ed4c2f46da9b",
  "kind": "theorem",
  "lexical_name": "smulInvariantMeasure_tfae",
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
  "slug": "smulinvariantmeasure-tfae--710c579b01d2892b0e308111",
  "source": {
    "blob": "71e7bac2ee329ec531f8dc4879010041826cb1b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 220,
    "path": "GRWTSK/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:710c579b01d2892b0e308111ab1b28c77ffd4b9dca14efbd1c6b8e1faecd8529",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88e686a1-93a4-b21b-89c2-ed4c2f46da9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smulInvariantMeasure_tfae :
    List.TFAE
      [SMulInvariantMeasure G α μ,
        ∀ (c : G) (s), MeasurableSet s → μ ((c • ·) ⁻¹' s) = μ s,
        ∀ (c : G) (s), MeasurableSet s → μ (c • s) = μ s,
        ∀ (c : G) (s), μ ((c • ·) ⁻¹' s) = μ s,
        ∀ (c : G) (s), μ (c • s) = μ s,
        ∀ c : G, Measure.map (c • ·) μ = μ,
        ∀ c : G, MeasurePreserving (c • ·) μ μ] := by
  tfae_have 1 ↔ 2 := ⟨fun h => h.1, fun h => ⟨h⟩⟩
  tfae_have 1 → 6 := fun h c => (measurePreserving_smul c μ).map_eq
  tfae_have 6 → 7 := fun H c => ⟨measurable_const_smul c, H c⟩
  tfae_have 7 → 4 := fun H c => (H c).measure_preimage_emb (measurableEmbedding_const_smul c)
  tfae_have 4 → 5
  | H, c, s => by
    rw [← preimage_smul_inv]
    apply H
  tfae_have 5 → 3 := fun H c s _ => H c s
  tfae_have 3 → 2
  | H, c, s, hs => by
    rw [preimage_smul]
    exact H c⁻¹ s hs
  tfae_finish

/-- Equivalent definitions of a measure invariant under an additive action of a group.

- 0: `VAddInvariantMeasure G α μ`;

- 1: for every `c : G` and a measurable set `s`, the measure of the preimage of `s` under
     vector addition `(c +ᵥ ·)` is equal to the measure of `s`;

- 2: for every `c : G` and a measurable set `s`, the measure of the image `c +ᵥ s` of `s` under
     vector addition `(c +ᵥ ·)` is equal to the measure of `s`;

- 3, 4: properties 2, 3 for any set, including non-measurable ones;

- 5: for any `c : G`, vector addition of `c` maps `μ` to `μ`;

- 6: for any `c : G`, vector addition of `c` is a measure preserving map. -/
add_decl_doc vaddInvariantMeasure_tfae

variable {G}
variable [SMulInvariantMeasure G α μ]

variable {μ}
variable [MeasurableSpace G] [MeasurableSMul G α] in
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71e7bac2ee329ec531f8dc4879010041826cb1b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
