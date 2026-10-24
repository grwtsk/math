# pointsPi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:410f459f2cdad1a28a21c81238cb499c5a4e97de4a5bb873e563d4b0d1d88257",
  "kind": "def",
  "lexical_name": "pointsPi",
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
  "slug": "pointspi--76f4cb5b4eed5f6a1a7775f6",
  "source": {
    "blob": "0e98f659ada5279f806be90aec7eb0df79d9c22d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 95,
    "path": "GRWTSK/Algebra/PointsPi/Varianta5b520c06ee7d956524edd2a5e06d1d60ac3ec95c420b0500333f5047a3d1915.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76f4cb5b4eed5f6a1a7775f6706ff29ab008f891a82b21562f2d0c0885c63c9d",
  "verification": {
    "reference": "docs/verification/Algebra/PointsPi/Varianta5b520c06ee7d956524edd2a5e06d1d60ac3ec95c420b0500333f5047a3d1915.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:410f459f2cdad1a28a21c81238cb499c5a4e97de4a5bb873e563d4b0d1d88257`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pointsPi : (Spec (.of (Π i, R i)) ⟶ X) → Π i, Spec (R i) ⟶ X :=
  fun f i ↦ Spec.map (CommRingCat.ofHom (Pi.evalRingHom (R ·) i)) ≫ f

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PointsPi/Varianta5b520c06ee7d956524edd2a5e06d1d60ac3ec95c420b0500333f5047a3d1915.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PointsPi/Varianta5b520c06ee7d956524edd2a5e06d1d60ac3ec95c420b0500333f5047a3d1915.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e98f659ada5279f806be90aec7eb0df79d9c22d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
