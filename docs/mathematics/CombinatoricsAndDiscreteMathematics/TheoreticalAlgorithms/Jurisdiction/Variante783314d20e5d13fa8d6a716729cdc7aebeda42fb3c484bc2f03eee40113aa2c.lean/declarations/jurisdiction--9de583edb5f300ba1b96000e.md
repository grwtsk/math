# Jurisdiction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f56ecc83b48412d8730b6822d8f8390fae832e4f1f641da1c9d8b1393cc1b2e",
  "kind": "structure",
  "lexical_name": "Jurisdiction",
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
  "slug": "jurisdiction--9de583edb5f300ba1b96000e",
  "source": {
    "blob": "e1353b158dd2324d121f720c8a7c91bc9377854a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 83,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Jurisdiction/Variante783314d20e5d13fa8d6a716729cdc7aebeda42fb3c484bc2f03eee40113aa2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9de583edb5f300ba1b96000e1af27f3c3ecf32d8ac83c8c7abb57b477820499e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Jurisdiction/Variante783314d20e5d13fa8d6a716729cdc7aebeda42fb3c484bc2f03eee40113aa2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f56ecc83b48412d8730b6822d8f8390fae832e4f1f641da1c9d8b1393cc1b2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Jurisdiction where
  jurisdictionId : StableId
  oracleId : OracleId
  principal : Capability.Principal
  pointUniverseId : StableId
  admittedPointKinds : List Concept.PointKind
  admittedRelationFamilies : List Concept.RelationFamily
  admittedSourceLayers : List SourceAnalysis.AbstractSourceLayer
  admittedProjectIds : List ProjectId
  admittedOperations : List OracleOperation
  interface : OracleInterface
  boundaryDigest : Digest
  deriving DecidableEq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Jurisdiction/Variante783314d20e5d13fa8d6a716729cdc7aebeda42fb3c484bc2f03eee40113aa2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Jurisdiction/Variante783314d20e5d13fa8d6a716729cdc7aebeda42fb3c484bc2f03eee40113aa2c.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1353b158dd2324d121f720c8a7c91bc9377854a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
