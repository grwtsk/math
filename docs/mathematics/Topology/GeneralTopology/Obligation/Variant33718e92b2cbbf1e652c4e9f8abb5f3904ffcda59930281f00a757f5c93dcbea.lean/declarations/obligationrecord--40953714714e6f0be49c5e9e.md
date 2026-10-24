# ObligationRecord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2958a98e6441db1bed35efb4aa914797d35557b5b6b1fe3124124e942b025ee4",
  "kind": "structure",
  "lexical_name": "ObligationRecord",
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
  "slug": "obligationrecord--40953714714e6f0be49c5e9e",
  "source": {
    "blob": "af86d3436a47b3bc7c9f123a96565fe46c0f79cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 22,
    "path": "GRWTSK/Topology/GeneralTopology/Obligation/Variant33718e92b2cbbf1e652c4e9f8abb5f3904ffcda59930281f00a757f5c93dcbea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40953714714e6f0be49c5e9ef84d72a52acebcd6799e6024810ccb136cad8309",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Obligation/Variant33718e92b2cbbf1e652c4e9f8abb5f3904ffcda59930281f00a757f5c93dcbea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2958a98e6441db1bed35efb4aa914797d35557b5b6b1fe3124124e942b025ee4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ObligationRecord where
  identity : ObligationId
  statement : String
  owner : Project
  assumptions : List AssumptionId
  affectedObjects : List MathematicalObjectId
  status : ObligationStatus
  dischargeArtifact : Option ArtifactIdentity
  discharged_names_artifact :
    status = .discharged → ∃ artifact, dischargeArtifact = some artifact
  supersedes : Option ObligationId

/-- Every discharged obligation names an explicit artifact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Obligation/Variant33718e92b2cbbf1e652c4e9f8abb5f3904ffcda59930281f00a757f5c93dcbea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Obligation/Variant33718e92b2cbbf1e652c4e9f8abb5f3904ffcda59930281f00a757f5c93dcbea.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af86d3436a47b3bc7c9f123a96565fe46c0f79cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
