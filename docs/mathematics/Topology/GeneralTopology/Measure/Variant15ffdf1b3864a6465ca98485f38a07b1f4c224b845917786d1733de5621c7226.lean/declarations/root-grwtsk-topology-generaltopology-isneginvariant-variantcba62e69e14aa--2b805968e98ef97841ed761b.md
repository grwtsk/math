# _root_.GRWTSK.Topology.GeneralTopology.IsNegInvariant.Variantcba62e69e14aafd9e79c41c3209cc75828e5bd7e3bcf46e5af7d8281e43696bd.ContinuousMulEquiv.isHaarMeasure_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77c594c32945e46bd8fa614d917a4879d4ec882059a18d6a63c2362466819587",
  "kind": "instance",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.IsNegInvariant.Variantcba62e69e14aafd9e79c41c3209cc75828e5bd7e3bcf46e5af7d8281e43696bd.ContinuousMulEquiv.isHaarMeasure_map",
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
  "slug": "root-grwtsk-topology-generaltopology-isneginvariant-variantcba62e69e14aa--2b805968e98ef97841ed761b",
  "source": {
    "blob": "c08d50da36d7f6b84232d58537b55d6e13b88e26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 909,
    "line": 904,
    "path": "GRWTSK/Topology/GeneralTopology/Measure/Variant15ffdf1b3864a6465ca98485f38a07b1f4c224b845917786d1733de5621c7226.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b805968e98ef97841ed761badbd0908a0c71e02cdc75e3b71663f1eb5498cd6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Measure/Variant15ffdf1b3864a6465ca98485f38a07b1f4c224b845917786d1733de5621c7226.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77c594c32945e46bd8fa614d917a4879d4ec882059a18d6a63c2362466819587`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 904–909.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance _root_.GRWTSK.Topology.GeneralTopology.IsNegInvariant.Variantcba62e69e14aafd9e79c41c3209cc75828e5bd7e3bcf46e5af7d8281e43696bd.ContinuousMulEquiv.isHaarMeasure_map [BorelSpace G] [IsTopologicalGroup G]
    {H : Type*} [Group H] [TopologicalSpace H] [MeasurableSpace H] [BorelSpace H]
    [IsTopologicalGroup H] (e : G ≃ₜ* H) : (μ.map e).IsHaarMeasure :=
  e.toMulEquiv.isHaarMeasure_map μ e.continuous e.symm.continuous

/-- A convenience wrapper for `MeasureTheory.Measure.isAddHaarMeasure_map`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Measure/Variant15ffdf1b3864a6465ca98485f38a07b1f4c224b845917786d1733de5621c7226.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Measure/Variant15ffdf1b3864a6465ca98485f38a07b1f4c224b845917786d1733de5621c7226.lean#L904).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c08d50da36d7f6b84232d58537b55d6e13b88e26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
