# tt07_realizationEndpoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b38db71-0c6a-e87a-1384-ca810eb04b03",
  "kind": "theorem",
  "lexical_name": "tt07_realizationEndpoints",
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
  "slug": "tt07-realizationendpoints--386c9b75270d0fc3783e5f3e",
  "source": {
    "blob": "058a92bbec2c998d609e9da2bae7cefbcabf5af6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 16,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TT07RealizationEndpoints/Variant3d15c1704d81695486cb15fc0b02e89fd089d1d9a0c7862fb650cb7a799792df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:386c9b75270d0fc3783e5f3ebc75c69d54fa57580987fbf12b1ef906e07e1e60",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TT07RealizationEndpoints/Variant3d15c1704d81695486cb15fc0b02e89fd089d1d9a0c7862fb650cb7a799792df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b38db71-0c6a-e87a-1384-ca810eb04b03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tt07_realizationEndpoints
    {Coordinate : Type uCoordinate}
    {MaterializedEdge : Type uMaterializedEdge}
    {specification : SieveSpecification Coordinate}
    {procedure : SieveProcedure specification}
    {soundness : SieveSoundness procedure}
    {materializedGraph :
      CoordinateGraph .Materialized Coordinate MaterializedEdge}
    {contract : RealizationContract soundness materializedGraph}
    {source target : Coordinate}
    {evaluation : SieveEvaluation procedure source target}
    {witness : SieveWitness soundness evaluation}
    (record : RealizationRecord contract evaluation witness) :
    materializedGraph.source record.occurrence.edge = source ∧
      materializedGraph.target record.occurrence.edge = target :=
  ⟨record.occurrence.sourceEquation, record.occurrence.targetEquation⟩

end FCRS.Transport.Theorems
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TT07RealizationEndpoints/Variant3d15c1704d81695486cb15fc0b02e89fd089d1d9a0c7862fb650cb7a799792df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TT07RealizationEndpoints/Variant3d15c1704d81695486cb15fc0b02e89fd089d1d9a0c7862fb650cb7a799792df.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `058a92bbec2c998d609e9da2bae7cefbcabf5af6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
