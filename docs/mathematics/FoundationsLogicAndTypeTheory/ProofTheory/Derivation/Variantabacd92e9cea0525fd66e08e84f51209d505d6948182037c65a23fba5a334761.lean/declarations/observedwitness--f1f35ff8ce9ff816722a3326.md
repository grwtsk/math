# observedWitness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:139a933f9db1f677c67b9ecee3b8554c56906f12cd513f2aaf7ed2974d670f73",
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
  "slug": "observedwitness--f1f35ff8ce9ff816722a3326",
  "source": {
    "blob": "345ef2310a5e3af88eaf464e72d224ea2c8a5dcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 267,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantabacd92e9cea0525fd66e08e84f51209d505d6948182037c65a23fba5a334761.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1f35ff8ce9ff816722a3326f628209ce6c4211be9212d9a52d7a3d2623a6aee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantabacd92e9cea0525fd66e08e84f51209d505d6948182037c65a23fba5a334761.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:139a933f9db1f677c67b9ecee3b8554c56906f12cd513f2aaf7ed2974d670f73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–282.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantabacd92e9cea0525fd66e08e84f51209d505d6948182037c65a23fba5a334761.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantabacd92e9cea0525fd66e08e84f51209d505d6948182037c65a23fba5a334761.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `345ef2310a5e3af88eaf464e72d224ea2c8a5dcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
