# MapFactorizationData.ofIsEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ef782a924fe3900631d7ebe1569003377239901359f4e801f643f90c366df4e",
  "kind": "def",
  "lexical_name": "MapFactorizationData.ofIsEquivalence",
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
  "slug": "mapfactorizationdata-ofisequivalence--b74a556118b2a79a94cb20b2",
  "source": {
    "blob": "4f1ed95daaf34c93688da13ec7e85141923049b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 281,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variantfe4354fb2f71ab3d94fee6718cdd767c8be651e9b88606ed62f00c9e1dd45f0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b74a556118b2a79a94cb20b221b87b112a5c131ebca9cb0151dad585bcb44f5c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variantfe4354fb2f71ab3d94fee6718cdd767c8be651e9b88606ed62f00c9e1dd45f0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ef782a924fe3900631d7ebe1569003377239901359f4e801f643f90c366df4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def MapFactorizationData.ofIsEquivalence {F : D ⥤ C}
    [F.IsEquivalence] [W₁.RespectsIso] [W₂.RespectsIso]
    {X Y : D} {f : X ⟶ Y} (h : MapFactorizationData W₁ W₂ (F.map f)) :
    MapFactorizationData (W₁.inverseImage F) (W₂.inverseImage F) f where
  Z := F.objPreimage h.Z
  i := F.preimage (h.i ≫ (F.objObjPreimageIso h.Z).inv)
  p := F.preimage ((F.objObjPreimageIso h.Z).hom ≫ h.p)
  hi := by
    refine (W₁.arrow_mk_iso_iff ?_).1 h.hi
    refine Arrow.isoMk (Iso.refl _) (F.objObjPreimageIso h.Z).symm ?_
    simp [F.map_preimage]
  hp := by
    refine (W₂.arrow_mk_iso_iff ?_).1 h.hp
    refine Arrow.isoMk (F.objObjPreimageIso h.Z).symm (Iso.refl _) ?_
    simp [F.map_preimage]
  fac := F.map_injective (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variantfe4354fb2f71ab3d94fee6718cdd767c8be651e9b88606ed62f00c9e1dd45f0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variantfe4354fb2f71ab3d94fee6718cdd767c8be651e9b88606ed62f00c9e1dd45f0d.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f1ed95daaf34c93688da13ec7e85141923049b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
