# smul_set_ae_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f6fd75a-6db0-f29a-d73c-7eccf66af8c0",
  "kind": "theorem",
  "lexical_name": "smul_set_ae_eq",
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
  "slug": "smul-set-ae-eq--658b48e72edcdc021d13d3eb",
  "source": {
    "blob": "63a05cdc8b6e89f9ee6afe4b1a41ae78fbf0b6d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 140,
    "path": "GRWTSK/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:658b48e72edcdc021d13d3eb2829a3bb4f0841f2139f49ee44653601e950634d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f6fd75a-6db0-f29a-d73c-7eccf66af8c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_set_ae_eq (c : G) {s t : Set α} : c • s =ᵐ[μ] c • t ↔ s =ᵐ[μ] t := by
  simp only [Filter.eventuallyLE_antisymm_iff, smul_set_ae_le]

end AE

section MeasurableSMul

variable {m : MeasurableSpace α} [MeasurableSpace M] [SMul M α] [MeasurableSMul M α] (c : M)
  (μ : Measure α) [SMulInvariantMeasure M α μ]

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63a05cdc8b6e89f9ee6afe4b1a41ae78fbf0b6d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
