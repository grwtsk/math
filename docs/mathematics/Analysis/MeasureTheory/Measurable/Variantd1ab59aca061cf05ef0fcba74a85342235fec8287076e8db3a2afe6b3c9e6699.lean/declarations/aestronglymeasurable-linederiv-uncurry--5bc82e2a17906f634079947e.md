# aestronglyMeasurable_lineDeriv_uncurry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48e3988e-fdbd-2c03-3f64-5003e8c06be7",
  "kind": "theorem",
  "lexical_name": "aestronglyMeasurable_lineDeriv_uncurry",
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
  "slug": "aestronglymeasurable-linederiv-uncurry--5bc82e2a17906f634079947e",
  "source": {
    "blob": "e23f8ca377a779bf71f2a14c0a887e46417c21ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 114,
    "path": "GRWTSK/Analysis/MeasureTheory/Measurable/Variantd1ab59aca061cf05ef0fcba74a85342235fec8287076e8db3a2afe6b3c9e6699.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bc82e2a17906f634079947ed2536fba250190c19591acd1a0ca608622db6025",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Measurable/Variantd1ab59aca061cf05ef0fcba74a85342235fec8287076e8db3a2afe6b3c9e6699.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48e3988e-fdbd-2c03-3f64-5003e8c06be7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aestronglyMeasurable_lineDeriv_uncurry (hf : Continuous f) (μ : Measure (E × E)) :
    AEStronglyMeasurable (fun (p : E × E) ↦ lineDeriv 𝕜 f p.1 p.2) μ :=
  (stronglyMeasurable_lineDeriv_uncurry hf).aestronglyMeasurable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Measurable/Variantd1ab59aca061cf05ef0fcba74a85342235fec8287076e8db3a2afe6b3c9e6699.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Measurable/Variantd1ab59aca061cf05ef0fcba74a85342235fec8287076e8db3a2afe6b3c9e6699.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e23f8ca377a779bf71f2a14c0a887e46417c21ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
