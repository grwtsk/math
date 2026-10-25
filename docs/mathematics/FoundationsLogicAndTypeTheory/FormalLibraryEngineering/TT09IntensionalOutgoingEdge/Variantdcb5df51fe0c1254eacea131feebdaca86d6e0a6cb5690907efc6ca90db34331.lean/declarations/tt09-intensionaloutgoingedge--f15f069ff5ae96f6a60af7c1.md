# tt09_intensionalOutgoingEdge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:765bdc9b-17a8-5163-bdd7-701ccb3af1a5",
  "kind": "theorem",
  "lexical_name": "tt09_intensionalOutgoingEdge",
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
  "slug": "tt09-intensionaloutgoingedge--f15f069ff5ae96f6a60af7c1",
  "source": {
    "blob": "1e9a94d93b7d1b4b0c427c916f7b443662fef040",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TT09IntensionalOutgoingEdge/Variantdcb5df51fe0c1254eacea131feebdaca86d6e0a6cb5690907efc6ca90db34331.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f15f069ff5ae96f6a60af7c14cfe286bd446a6da4d3ec036dc44c2c82b266f06",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TT09IntensionalOutgoingEdge/Variantdcb5df51fe0c1254eacea131feebdaca86d6e0a6cb5690907efc6ca90db34331.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:765bdc9b-17a8-5163-bdd7-701ccb3af1a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tt09_intensionalOutgoingEdge
    {Coordinate : Type uCoordinate}
    {IntensionalEdge : Type uIntensionalEdge}
    {specification : SieveSpecification Coordinate}
    {procedure : SieveProcedure specification}
    {soundness : SieveSoundness procedure}
    {intensionalGraph :
      CoordinateGraph .Intensional Coordinate IntensionalEdge}
    (semantics : IntensionalGraphSemantics specification intensionalGraph)
    {source target : Coordinate}
    (evaluation : SieveEvaluation procedure source target)
    (witness : SieveWitness soundness evaluation) :
    Nonempty (EdgeOccurrence intensionalGraph source target) :=
  ⟨semantics.realize (tt06_sieveCertificationSound witness)⟩

end FCRS.Transport.Theorems
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TT09IntensionalOutgoingEdge/Variantdcb5df51fe0c1254eacea131feebdaca86d6e0a6cb5690907efc6ca90db34331.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TT09IntensionalOutgoingEdge/Variantdcb5df51fe0c1254eacea131feebdaca86d6e0a6cb5690907efc6ca90db34331.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e9a94d93b7d1b4b0c427c916f7b443662fef040` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
