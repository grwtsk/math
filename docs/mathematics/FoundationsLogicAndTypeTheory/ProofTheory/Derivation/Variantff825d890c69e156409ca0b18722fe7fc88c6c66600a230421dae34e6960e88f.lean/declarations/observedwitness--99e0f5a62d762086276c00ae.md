# observedWitness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8943785da40410f9686945172a20c23dd8dda00f271583615096870983674294",
  "kind": "def",
  "lexical_name": "observedWitness",
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
  "slug": "observedwitness--99e0f5a62d762086276c00ae",
  "source": {
    "blob": "c4c0d31ec5603f78bf8568262ea2dfe990964e4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 259,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantff825d890c69e156409ca0b18722fe7fc88c6c66600a230421dae34e6960e88f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99e0f5a62d762086276c00aec65a938c129bd0f2cbd42ab23be361f0a7eb5ed9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantff825d890c69e156409ca0b18722fe7fc88c6c66600a230421dae34e6960e88f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8943785da40410f9686945172a20c23dd8dda00f271583615096870983674294`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def observedWitness
    {Input : Type uInput} {Witness : Type uWitness}
    {Coordinate : Type uCoordinate} {MaterializedEdge : Type uMaterializedEdge}
    {profile : IntervalProfile Input Witness}
    {input : Input}
    {interpretation : BinaryInterpretation Input Witness Coordinate}
    {materializedGraph : CoordinateGraph .Materialized Coordinate MaterializedEdge}
    (observation : ReflectiveRecoveryObservation profile input interpretation
      materializedGraph) : Witness :=
  observation.witness

end ReflectiveRecoveryObservation

namespace ReflectiveRecoveryProvenance

/-- Project the exact edge/declaration pair already retained by a derivation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantff825d890c69e156409ca0b18722fe7fc88c6c66600a230421dae34e6960e88f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantff825d890c69e156409ca0b18722fe7fc88c6c66600a230421dae34e6960e88f.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4c0d31ec5603f78bf8568262ea2dfe990964e4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
