# FactorPreservingRealization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca63ba36c9a3ee79467fdd8d8ee6e637e6b4599357dec78d20777e1fc2ecf5ff",
  "kind": "structure",
  "lexical_name": "FactorPreservingRealization",
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
  "slug": "factorpreservingrealization--e646a2785ac17e68e071e734",
  "source": {
    "blob": "db3acc3690ef38ef64775f6aad86bffbf505816e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 98,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Variant5693f62987a79cc5dc53038b8a84e38485106cf13e2dbb38079df746ee7b12d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e646a2785ac17e68e071e7344d6cc8e48c4d55f021ba96af0664784a42ee9060",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Variant5693f62987a79cc5dc53038b8a84e38485106cf13e2dbb38079df746ee7b12d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca63ba36c9a3ee79467fdd8d8ee6e637e6b4599357dec78d20777e1fc2ecf5ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FactorPreservingRealization extends RealizationTheory where
  GlobalSystem : Target → DAF.System
  mapSystem :
    ∀ {X Y : Target},
      (X ⟶ Y) → DAF.System.Hom (GlobalSystem X) (GlobalSystem Y)
  mapSystem_id :
    ∀ X,
      mapSystem (𝟙 X) = DAF.System.Hom.id (GlobalSystem X)
  mapSystem_comp :
    ∀ {X Y Z} (f : X ⟶ Y) (g : Y ⟶ Z),
      mapSystem (f ≫ g) = (mapSystem g).comp (mapSystem f)
  levelwiseFactorToGlobal :
    ∀ {F G : Fabric} (reaction : Reaction F G),
      LevelwiseSystemFactor reaction →
        DAF.System.Factor
          (GlobalSystem (realize.obj F))
          (GlobalSystem (realize.obj G))
  factor_coherent :
    ∀ {F G : Fabric}
      (reaction : Reaction F G)
      (h : LevelwiseSystemFactor reaction),
      (levelwiseFactorToGlobal reaction h).toHom =
        mapSystem (realize.map reaction)

end DAF.Fabric
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Variant5693f62987a79cc5dc53038b8a84e38485106cf13e2dbb38079df746ee7b12d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Variant5693f62987a79cc5dc53038b8a84e38485106cf13e2dbb38079df746ee7b12d4.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db3acc3690ef38ef64775f6aad86bffbf505816e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
