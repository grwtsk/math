# TypedIngressGate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:409e0495a51dbadcf62c4f608d97bc831aed31821b554e52bda0076d878d73bc",
  "kind": "structure",
  "lexical_name": "TypedIngressGate",
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
  "slug": "typedingressgate--d809a9c39a8497ac263d38d4",
  "source": {
    "blob": "5303c97404f43da064229efae8a1e01ffb15e309",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 54,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedIngress/Variant3621c285fc0c3c700ac4f2cdb27a71c10a8cf723dcac92b7ec02773f01ee4f5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d809a9c39a8497ac263d38d43dbb27db808c7a79781791a39493c71bc41c439b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedIngress/Variant3621c285fc0c3c700ac4f2cdb27a71c10a8cf723dcac92b7ec02773f01ee4f5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:409e0495a51dbadcf62c4f608d97bc831aed31821b554e52bda0076d878d73bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TypedIngressGate where
  manifest : Ecosystem.ProjectManifest
  entries : List TypedIngressEntry
  artifact_ids_unique :
    (entries.map (·.payload.artifactId)).Nodup
  artifactCoverage :
    ∀ artifactId,
      artifactId ∈ manifest.sourceInventory ↔
        ∃ entry ∈ entries,
          entry.payload.artifactId = artifactId
  layerReceipts : List LayerIngressReceipt
  layerCoverage :
    ∀ layer,
      ∃ receipt ∈ layerReceipts,
        receipt.layer = layer
  gateDigest : Digest

namespace TypedIngressGate

/-- No inventoried artifact can bypass the typed-or-opaque sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedIngress/Variant3621c285fc0c3c700ac4f2cdb27a71c10a8cf723dcac92b7ec02773f01ee4f5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedIngress/Variant3621c285fc0c3c700ac4f2cdb27a71c10a8cf723dcac92b7ec02773f01ee4f5b.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5303c97404f43da064229efae8a1e01ffb15e309` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
