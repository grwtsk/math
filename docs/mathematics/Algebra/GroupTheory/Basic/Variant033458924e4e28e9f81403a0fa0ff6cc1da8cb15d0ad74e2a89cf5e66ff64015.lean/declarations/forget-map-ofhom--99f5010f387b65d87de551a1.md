# forget₂_map_ofHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15f6bc5c-1ecd-e43d-a87b-b2a16c3e54e9",
  "kind": "lemma",
  "lexical_name": "forget₂_map_ofHom",
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
  "slug": "forget-map-ofhom--99f5010f387b65d87de551a1",
  "source": {
    "blob": "9eb83c3206ded33763cced66ccc0b969fe22b787",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 415,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant033458924e4e28e9f81403a0fa0ff6cc1da8cb15d0ad74e2a89cf5e66ff64015.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99f5010f387b65d87de551a17a301f266f0fc6423b928b7176facf7fe890154f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant033458924e4e28e9f81403a0fa0ff6cc1da8cb15d0ad74e2a89cf5e66ff64015.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15f6bc5c-1ecd-e43d-a87b-b2a16c3e54e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 415–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive (attr := simp)] lemma forget₂_map_ofHom {X Y : Type u} [CommMonoid X] [CommMonoid Y]
    (f : X →* Y) :
    (forget₂ CommMonCat MonCat).map (ofHom f) = MonCat.ofHom f := rfl

/-- The forgetful functor from `CommMonCat` to `MonCat` is fully faithful. -/
@[to_additive fullyFaithfulForgetToAddMonCat
  /-- The forgetful functor from `AddCommMonCat` to `AddMonCat` is fully faithful. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant033458924e4e28e9f81403a0fa0ff6cc1da8cb15d0ad74e2a89cf5e66ff64015.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant033458924e4e28e9f81403a0fa0ff6cc1da8cb15d0ad74e2a89cf5e66ff64015.lean#L415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9eb83c3206ded33763cced66ccc0b969fe22b787` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
