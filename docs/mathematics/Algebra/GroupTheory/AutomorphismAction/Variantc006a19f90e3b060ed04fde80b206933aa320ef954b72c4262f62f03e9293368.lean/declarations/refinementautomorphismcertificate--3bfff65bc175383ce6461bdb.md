# RefinementAutomorphismCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f37af06b5f0675f52c4e706b3b7497b4053dafba634296b90cf152d6830550fa",
  "kind": "structure",
  "lexical_name": "RefinementAutomorphismCertificate",
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
  "slug": "refinementautomorphismcertificate--3bfff65bc175383ce6461bdb",
  "source": {
    "blob": "ee48aea4da397b1e5906f462b2f3dc546fdf6b7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 38,
    "path": "GRWTSK/Algebra/GroupTheory/AutomorphismAction/Variantc006a19f90e3b060ed04fde80b206933aa320ef954b72c4262f62f03e9293368.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bfff65bc175383ce6461bdb9a6ff9a5b925e26beb29bb8330d0cee663697a13",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/AutomorphismAction/Variantc006a19f90e3b060ed04fde80b206933aa320ef954b72c4262f62f03e9293368.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f37af06b5f0675f52c4e706b3b7497b4053dafba634296b90cf152d6830550fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RefinementAutomorphismCertificate
    {Symmetry : Type u} {X : Type v} {Y : Type w}
    {Observation : Type x}
    [Group Symmetry]
    [PseudoMetricSpace X] [PseudoMetricSpace Y]
    (controlled : ControlledMap X Y)
    (source : AutomorphismAction Symmetry X)
    (target : AutomorphismAction Symmetry Y)
    (observationAction : AutomorphismAction Symmetry Observation)
    (observe : Y → Observation) : Prop where
  reference :
    EquivariantMap source target controlled.reference
  implementation :
    EquivariantMap source target controlled.implementation
  observation :
    EquivariantMap target observationAction observe

end Mathematics.MobiusOntology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/AutomorphismAction/Variantc006a19f90e3b060ed04fde80b206933aa320ef954b72c4262f62f03e9293368.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/AutomorphismAction/Variantc006a19f90e3b060ed04fde80b206933aa320ef954b72c4262f62f03e9293368.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee48aea4da397b1e5906f462b2f3dc546fdf6b7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
