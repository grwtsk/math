# ImportGraphAnnealCertificate.Valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f9a2dbee64ef9e781a907030d6d83d5e19268a6349eb0741863043fab4fdb1e",
  "kind": "def",
  "lexical_name": "ImportGraphAnnealCertificate.Valid",
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
  "slug": "importgraphannealcertificate-valid--76d4e84255aa9b6c33474733",
  "source": {
    "blob": "87caf3d6d91b2d03853b8c08ff5e7f020b57fa05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 96,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant10bce86f2bad6c99f2e0be0d9434c925f199966264b414430111092a1abcf091.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76d4e84255aa9b6c334747335f8a010e5f8cf4ac4a2deab0d62cc4908bc1a3df",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant10bce86f2bad6c99f2e0be0d9434c925f199966264b414430111092a1abcf091.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f9a2dbee64ef9e781a907030d6d83d5e19268a6349eb0741863043fab4fdb1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ImportGraphAnnealCertificate.Valid
    (certificate : ImportGraphAnnealCertificate) : Prop :=
  certificate.beforeGraph.Valid ∧ certificate.afterGraph.Valid ∧
    (∀ hash ∈ certificate.dependencyHashes, hash.Valid) ∧
    certificate.trace.Valid ∧
    certificate.trace.initial.sourceSnapshot.snapshotHash =
      certificate.beforeGraph.sourceSnapshotHash ∧
    certificate.trace.final.sourceSnapshot.snapshotHash =
      certificate.afterGraph.sourceSnapshotHash ∧
    certificate.sourceMutationEnabled = false

/-- A bounded-search witness.  It says only that the selected value is among
the explicitly measured candidates; it does not claim global optimality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant10bce86f2bad6c99f2e0be0d9434c925f199966264b414430111092a1abcf091.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant10bce86f2bad6c99f2e0be0d9434c925f199966264b414430111092a1abcf091.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87caf3d6d91b2d03853b8c08ff5e7f020b57fa05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
