# FixedFamilySeparationCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af69e73de7a6a8a6e34eae4f004752ec61cc07529527a9857ba6c3c2d2757f85",
  "kind": "structure",
  "lexical_name": "FixedFamilySeparationCertificate",
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
  "slug": "fixedfamilyseparationcertificate--2b350be6087fae761d872393",
  "source": {
    "blob": "834e2704fd24e905adbd67bde5b0b75009891faa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 36,
    "path": "GRWTSK/Topology/MetricTopology/FixedPointSeparation/Varianta78a55863dc2379a676b11967d796dbde0f36573c27467c3b8d98ef7c9659b5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b350be6087fae761d872393b59cd56ab9912ec10dc9aebdd44f9825c154a40a",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/FixedPointSeparation/Varianta78a55863dc2379a676b11967d796dbde0f36573c27467c3b8d98ef7c9659b5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af69e73de7a6a8a6e34eae4f004752ec61cc07529527a9857ba6c3c2d2757f85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FixedFamilySeparationCertificate
    {State : Type u}
    [PseudoMetricSpace State]
    {operator : VersionedOperator State}
    (family : CertifiedFixedFamily operator) where
  lowerBound : family.Point → family.Point → ℝ
  lowerBound_positive :
    ∀ {left right}, left ≠ right →
      0 < lowerBound left right
  lowerBound_le_distance :
    ∀ left right,
      lowerBound left right ≤
        dist (family.point left).point
          (family.point right).point

/-- One positive lower bound for the entire finite family. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/FixedPointSeparation/Varianta78a55863dc2379a676b11967d796dbde0f36573c27467c3b8d98ef7c9659b5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/FixedPointSeparation/Varianta78a55863dc2379a676b11967d796dbde0f36573c27467c3b8d98ef7c9659b5f.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `834e2704fd24e905adbd67bde5b0b75009891faa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
