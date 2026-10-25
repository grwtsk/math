# SnapshotFrame

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f48ce72ea621bfc08e949d727ddebd924f2eae2420bc5131eb69b593dcf805da",
  "kind": "structure",
  "lexical_name": "SnapshotFrame",
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
  "slug": "snapshotframe--2840af8f27f3d74eaf30889e",
  "source": {
    "blob": "047870587eb4fdebdd4550ba5896a36a60fdb6bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 67,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Entry/Variant40566ab894b7b768f4d678cbaa3068484ec2c1f1486c661bb512517c7900c106.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2840af8f27f3d74eaf30889ef9e8b340943e6e811b53d80ec4da97c6992e2f3b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Entry/Variant40566ab894b7b768f4d678cbaa3068484ec2c1f1486c661bb512517c7900c106.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f48ce72ea621bfc08e949d727ddebd924f2eae2420bc5131eb69b593dcf805da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SnapshotFrame where
  repositorySnapshot : ContentHash
  databaseSnapshot : SnapshotId
  dataSnapshot : SnapshotId
  ontologySnapshot : OntologySnapshotId
  schemaSnapshot : ContentHash
  evidenceSnapshot : ContentHash
  rulesetSnapshot : ContentHash
  validTime : TimeInterval
  transactionTime : TimeInterval
  streamWindow : Option RecordId
  deriving Repr

namespace SnapshotFrame

/-- Every material snapshot is pinned and both temporal intervals are valid. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Entry/Variant40566ab894b7b768f4d678cbaa3068484ec2c1f1486c661bb512517c7900c106.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Entry/Variant40566ab894b7b768f4d678cbaa3068484ec2c1f1486c661bb512517c7900c106.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `047870587eb4fdebdd4550ba5896a36a60fdb6bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
