# TypeIIBlockPacketModel.exactFactorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b20fb062bb7fdee26b3b2b3633fb30fe238edfc0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b7a4e7ea2a0e9658e368b9c1a77749805fba507353024c3633b26cd57d714188.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9ac625d-79a5-e566-8df1-78bc3c197566",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:24145398-4e4e-bc16-1111-58a8f913f3e5",
  "kind": "theorem",
  "lexical_name": "TypeIIBlockPacketModel.exactFactorization",
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
  "slug": "typeiiblockpacketmodel-exactfactorization--9f3aced2e1eab722b3c5f8b8",
  "source": {
    "blob": "b20fb062bb7fdee26b3b2b3633fb30fe238edfc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 119,
    "path": "GRWTSK/Topology/MetricTopology/BlockPacketModel/Variantb7a4e7ea2a0e9658e368b9c1a77749805fba507353024c3633b26cd57d714188.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f3aced2e1eab722b3c5f8b89134bdc5564f0399b1e1ff2370e292bf54c5d92a",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/BlockPacketModel/Variantb7a4e7ea2a0e9658e368b9c1a77749805fba507353024c3633b26cd57d714188.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24145398-4e4e-bc16-1111-58a8f913f3e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TypeIIBlockPacketModel.exactFactorization
    {N : ℕ} {B : TypeIIDyadicBlock N}
    (model : TypeIIBlockPacketModel N B) (x : ℕ) :
    productCutoffMatrix (fun left : B.Left ↦ left.1.1)
        (fun right : B.Right ↦ right.1.1) x =
      model.packetMatrix x + model.geometricResidual.residual x := by
  ext left right
  rw [Matrix.add_apply, TypeIIBlockPacketModel.packetMatrix,
    model.packetMatrix_eq_geometricKernel]
  simp [GeometricResidualSpecification.residual]

/-- The packet factorization targets the literal dyadic block cutoff matrix
used by the Vaughan decomposition. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/BlockPacketModel/Variantb7a4e7ea2a0e9658e368b9c1a77749805fba507353024c3633b26cd57d714188.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/BlockPacketModel/Variantb7a4e7ea2a0e9658e368b9c1a77749805fba507353024c3633b26cd57d714188.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b20fb062bb7fdee26b3b2b3633fb30fe238edfc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
