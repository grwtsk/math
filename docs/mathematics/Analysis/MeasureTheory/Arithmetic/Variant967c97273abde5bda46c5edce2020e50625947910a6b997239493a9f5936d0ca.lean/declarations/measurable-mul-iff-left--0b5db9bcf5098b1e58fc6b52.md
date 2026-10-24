# Measurable.mul_iff_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ff628c1-25a3-b5e2-d16f-49c36210ba84",
  "kind": "theorem",
  "lexical_name": "Measurable.mul_iff_left",
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
  "slug": "measurable-mul-iff-left--0b5db9bcf5098b1e58fc6b52",
  "source": {
    "blob": "5d6578ea38ce5370416650f411568720d058e5d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 447,
    "path": "GRWTSK/Analysis/MeasureTheory/Arithmetic/Variant967c97273abde5bda46c5edce2020e50625947910a6b997239493a9f5936d0ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b5db9bcf5098b1e58fc6b521fd681ce16ffae99059da5acd61e69c21a3bb7fd",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Arithmetic/Variant967c97273abde5bda46c5edce2020e50625947910a6b997239493a9f5936d0ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ff628c1-25a3-b5e2-d16f-49c36210ba84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Measurable.mul_iff_left {G : Type*} [MeasurableSpace G] [MeasurableSpace α] [CommGroup G]
    [MeasurableMul₂ G] [MeasurableInv G] {f g : α → G} (hf : Measurable f) :
    Measurable (g * f) ↔ Measurable g :=
  mul_comm g f ▸ Measurable.mul_iff_right hf

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Arithmetic/Variant967c97273abde5bda46c5edce2020e50625947910a6b997239493a9f5936d0ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Arithmetic/Variant967c97273abde5bda46c5edce2020e50625947910a6b997239493a9f5936d0ca.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d6578ea38ce5370416650f411568720d058e5d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
