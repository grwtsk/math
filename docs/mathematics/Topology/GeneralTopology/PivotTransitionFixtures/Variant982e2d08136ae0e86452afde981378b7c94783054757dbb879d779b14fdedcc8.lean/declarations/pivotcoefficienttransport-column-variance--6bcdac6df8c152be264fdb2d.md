# pivotCoefficientTransport_column_variance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ccdb3e6-25f6-cfb5-82aa-2374ba0327e6",
  "kind": "theorem",
  "lexical_name": "pivotCoefficientTransport_column_variance",
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
  "slug": "pivotcoefficienttransport-column-variance--6bcdac6df8c152be264fdb2d",
  "source": {
    "blob": "ddf71eebb095fe85fd6eba6a0e266ad0b8332a52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 133,
    "path": "GRWTSK/Topology/GeneralTopology/PivotTransitionFixtures/Variant982e2d08136ae0e86452afde981378b7c94783054757dbb879d779b14fdedcc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bcdac6df8c152be264fdb2d40b9d919ea0f9f987c708a2478cd942a75c67765",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PivotTransitionFixtures/Variant982e2d08136ae0e86452afde981378b7c94783054757dbb879d779b14fdedcc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ccdb3e6-25f6-cfb5-82aa-2374ba0327e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pivotCoefficientTransport_column_variance {k n : ℕ}
    (A : Matrix (Fin k) (Fin n) ℝ) (c d : Fin k → Fin n)
    (hc : columnMinor A c ≠ 0) (hd : columnMinor A d ≠ 0) (u : Fin k → ℝ) :
    pivotCoefficientTransport A c d u = ((pivotTransition A c d)⁻¹).transpose *ᵥ u := by
  rw [← pivotTransition_reverse A c d hc hd]
  exact (Matrix.mulVec_transpose (pivotTransition A d c) u).symm

/-- The repository's rank-two boundary family consumes the actual overlap transition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PivotTransitionFixtures/Variant982e2d08136ae0e86452afde981378b7c94783054757dbb879d779b14fdedcc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PivotTransitionFixtures/Variant982e2d08136ae0e86452afde981378b7c94783054757dbb879d779b14fdedcc8.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddf71eebb095fe85fd6eba6a0e266ad0b8332a52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
