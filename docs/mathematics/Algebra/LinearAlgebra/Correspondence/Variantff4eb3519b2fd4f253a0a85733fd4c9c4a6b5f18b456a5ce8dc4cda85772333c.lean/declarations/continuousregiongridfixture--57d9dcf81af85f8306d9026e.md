# continuousRegionGridFixture

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f66900d0017115e917a6639a409d0cba4141e487acc7fb97f2399b3ee658d2f5",
  "kind": "def",
  "lexical_name": "continuousRegionGridFixture",
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
  "slug": "continuousregiongridfixture--57d9dcf81af85f8306d9026e",
  "source": {
    "blob": "d166e769594453cba6158b99ee78dd2cf5c4fe25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 680,
    "line": 663,
    "path": "GRWTSK/Algebra/LinearAlgebra/Correspondence/Variantff4eb3519b2fd4f253a0a85733fd4c9c4a6b5f18b456a5ce8dc4cda85772333c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57d9dcf81af85f8306d9026ecfb9b1f369f92f45e02981d38554da68a67fd014",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Correspondence/Variantff4eb3519b2fd4f253a0a85733fd4c9c4a6b5f18b456a5ce8dc4cda85772333c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f66900d0017115e917a6639a409d0cba4141e487acc7fb97f2399b3ee658d2f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 663–680.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def continuousRegionGridFixture :
    BitMatrix.Runtime.Semantics.ContinuousRegionGridInput 1 where
  region := fun _ => true
  gridCells := fun _ => unitCellSupport
  samples := 1
  samplesPositive := by decide
  threshold := 1 / 2
  thresholdNonnegative := by norm_num
  thresholdAtMostOne := by norm_num
  scalar := 1
  policy := .ownership
  ownershipPolicies := ⟨true, false, false⟩
  ownership := some oneCarrierOwnership
  ownershipCoherent := by
    intro ownershipValue provided
    cases provided
    native_decide

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Correspondence/Variantff4eb3519b2fd4f253a0a85733fd4c9c4a6b5f18b456a5ce8dc4cda85772333c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Correspondence/Variantff4eb3519b2fd4f253a0a85733fd4c9c4a6b5f18b456a5ce8dc4cda85772333c.lean#L663).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d166e769594453cba6158b99ee78dd2cf5c4fe25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
