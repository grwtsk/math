# damping_preserves_fixed_points

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c650e1c6-550a-58f7-1f2e-903694486281",
  "kind": "theorem",
  "lexical_name": "damping_preserves_fixed_points",
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
  "slug": "damping-preserves-fixed-points--b76dae1c1bda62109cb3a964",
  "source": {
    "blob": "0cddd967b56c80d1448d72394775ca72c5230c63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantbdbf0ee1573cc6ded6ba31b5062ce0f9b889106d2fcdca3e54e7f1f36a84cf0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b76dae1c1bda62109cb3a964e1bed3c8d9a048e2d74c677369fe9cc3c27a1390",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantbdbf0ee1573cc6ded6ba31b5062ce0f9b889106d2fcdca3e54e7f1f36a84cf0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c650e1c6-550a-58f7-1f2e-903694486281`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem damping_preserves_fixed_points
    {X : Type}
    (law : DampingLaw X)
    (construction : X → X)
    (point : X) :
    IsFixedPoint (dampedMap law construction) point ↔
      IsFixedPoint construction point := by
  constructor
  · intro dampedFixed
    change law.blend point (construction point) = point at dampedFixed
    exact (law.blendEqLeftIff point (construction point)).mp
      dampedFixed
  · intro fixed
    change law.blend point (construction point) = point
    exact (law.blendEqLeftIff point (construction point)).mpr fixed

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantbdbf0ee1573cc6ded6ba31b5062ce0f9b889106d2fcdca3e54e7f1f36a84cf0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantbdbf0ee1573cc6ded6ba31b5062ce0f9b889106d2fcdca3e54e7f1f36a84cf0c.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cddd967b56c80d1448d72394775ca72c5230c63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
