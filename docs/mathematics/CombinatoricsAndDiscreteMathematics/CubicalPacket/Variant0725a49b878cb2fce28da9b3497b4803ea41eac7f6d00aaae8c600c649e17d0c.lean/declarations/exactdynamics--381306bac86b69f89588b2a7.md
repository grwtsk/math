# ExactDynamics

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be891842b9f4b29f590e48cf53a7a2b1589ea1f50f6fa1200e5ff4c8e6961973",
  "kind": "structure",
  "lexical_name": "ExactDynamics",
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
  "slug": "exactdynamics--381306bac86b69f89588b2a7",
  "source": {
    "blob": "ca8262a02ad239dbabf83c4de73062f556f2b2f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 37,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalPacket/Variant0725a49b878cb2fce28da9b3497b4803ea41eac7f6d00aaae8c600c649e17d0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:381306bac86b69f89588b2a7b191e940d3959637af40cede66040c8ecc6deba5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CubicalPacket/Variant0725a49b878cb2fce28da9b3497b4803ea41eac7f6d00aaae8c600c649e17d0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be891842b9f4b29f590e48cf53a7a2b1589ea1f50f6fa1200e5ff4c8e6961973`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ExactDynamics (n pointCount beaconCount : Nat)
    (skeleton : ExactSkeleton n beaconCount) where
  coordinate : Fin pointCount → Fin n → ℚ
  velocity : Fin pointCount → Fin n → ℚ
  nearest : Fin pointCount → Fin beaconCount → Prop
  nearest_complete :
    ∀ point beacon,
      nearest point beacon ↔
        ∀ other,
          rationalSquaredCost (coordinate point) (skeleton.bitfield beacon) ≤
            rationalSquaredCost (coordinate point) (skeleton.bitfield other)

/-- A packet keeps exact authority, a derived numeric view, and certificates in
separate fields. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CubicalPacket/Variant0725a49b878cb2fce28da9b3497b4803ea41eac7f6d00aaae8c600c649e17d0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalPacket/Variant0725a49b878cb2fce28da9b3497b4803ea41eac7f6d00aaae8c600c649e17d0c.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca8262a02ad239dbabf83c4de73062f556f2b2f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
