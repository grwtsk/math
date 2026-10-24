# instCoeFunInteriorSimplexPoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f372688fc9b4f87f9e44af9ef1be52518a2f9d6190d1fdb93d3fc3a651302557",
  "kind": "instance",
  "lexical_name": "instCoeFunInteriorSimplexPoint",
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
  "slug": "instcoefuninteriorsimplexpoint--ac47a2f049415fbae9091fe2",
  "source": {
    "blob": "bd9305bbaa7bf19cee29b4c91e336a9b5b8b9f8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 47,
    "path": "GRWTSK/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/StrictInteriorWeightsAndRelabeling.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac47a2f049415fbae9091fe2e6f4c6291ca0fa660606bf7f346c4b3e7a9be722",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/StrictInteriorWeightsAndRelabeling.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f372688fc9b4f87f9e44af9ef1be52518a2f9d6190d1fdb93d3fc3a651302557`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instCoeFunInteriorSimplexPoint :
    CoeFun (InteriorSimplexPoint I) (fun _ => I → ℝ) :=
  ⟨fun point => point.weight⟩

@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../../verification/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/StrictInteriorWeightsAndRelabeling.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/StrictInteriorWeightsAndRelabeling.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd9305bbaa7bf19cee29b4c91e336a9b5b8b9f8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
