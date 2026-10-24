# EpistemicReceipt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99c8966c39ae531206006118ce5e9a8c535f2e9413e3b7db18ef8a8521e116ac",
  "kind": "structure",
  "lexical_name": "EpistemicReceipt",
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
  "slug": "epistemicreceipt--0dbefddabc14339c1ee83ba5",
  "source": {
    "blob": "6347d8099d3b2c97f52cbbd4452137b176294a19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 9,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Architecture/Variant8b99319fd0a8e142e95d094af568c5ee770ea0c5af28f0ececf397f9acf9ad0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0dbefddabc14339c1ee83ba502e1bdfad6ab1552e2f74e798f824f1b59164428",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Architecture/Variant8b99319fd0a8e142e95d094af568c5ee770ea0c5af28f0ececf397f9acf9ad0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99c8966c39ae531206006118ce5e9a8c535f2e9413e3b7db18ef8a8521e116ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure EpistemicReceipt
    (Log Inf : Type u) [Category.{v} Log] [Category.{v} Inf] where
  L : Log ⥤ Inf
  E : Inf ⥤ Log
  adjunction : L ⊣ E
  unitReceiptHash : String
  counitReceiptHash : String
  triangleReceiptHash : String
  evaluationHash : String
  receiptHash : String
  claimBearing : Bool

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Architecture/Variant8b99319fd0a8e142e95d094af568c5ee770ea0c5af28f0ececf397f9acf9ad0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Architecture/Variant8b99319fd0a8e142e95d094af568c5ee770ea0c5af28f0ececf397f9acf9ad0c.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6347d8099d3b2c97f52cbbd4452137b176294a19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
