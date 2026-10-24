# IsMulRightInvariant.toSMulInvariantMeasure_op

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:389c2662044447014f6c811780989f72b07e0b6b03d3bb48077c747da1a6af0b",
  "kind": "instance",
  "lexical_name": "IsMulRightInvariant.toSMulInvariantMeasure_op",
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
  "slug": "ismulrightinvariant-tosmulinvariantmeasure-op--bf3c341b35f310b32f2b0db7",
  "source": {
    "blob": "9d689a484b29010dfa633223fb957877a09bfea0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 107,
    "path": "GRWTSK/Analysis/MeasureTheory/Defs/Variant00e8a26cd427aeb2560a09dab2aae8389982e343c3947d1d3d65497d4858a529.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf3c341b35f310b32f2b0db729ea7c44f5f91d7d66b0c19acc5d4425999257ff",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Defs/Variant00e8a26cd427aeb2560a09dab2aae8389982e343c3947d1d3d65497d4858a529.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:389c2662044447014f6c811780989f72b07e0b6b03d3bb48077c747da1a6af0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsMulRightInvariant.toSMulInvariantMeasure_op [Mul G] [MeasurableConstSMul Gᵐᵒᵖ G]
    [μ.IsMulRightInvariant] :
    SMulInvariantMeasure Gᵐᵒᵖ G μ :=
  ⟨fun _x _s hs => measure_preimage_of_map_eq_self (map_mul_right_eq_self _)
    (measurable_const_smul _x).aemeasurable hs.nullMeasurableSet⟩

end Measure

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Defs/Variant00e8a26cd427aeb2560a09dab2aae8389982e343c3947d1d3d65497d4858a529.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Defs/Variant00e8a26cd427aeb2560a09dab2aae8389982e343c3947d1d3d65497d4858a529.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d689a484b29010dfa633223fb957877a09bfea0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
