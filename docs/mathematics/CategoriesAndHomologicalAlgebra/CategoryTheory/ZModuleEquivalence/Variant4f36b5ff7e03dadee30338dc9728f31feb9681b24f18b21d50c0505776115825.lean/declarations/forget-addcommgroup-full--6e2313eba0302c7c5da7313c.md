# forget₂_addCommGroup_full

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa5f0c30d38b2d687a7b2d29a9f6cfe2ef0800d92930f1f8fa1f6abd0431bba1",
  "kind": "instance",
  "lexical_name": "forget₂_addCommGroup_full",
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
  "slug": "forget-addcommgroup-full--6e2313eba0302c7c5da7313c",
  "source": {
    "blob": "55b50eca856e2da33f3d7bbf190d26c8ddce68af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 35,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZModuleEquivalence/Variant4f36b5ff7e03dadee30338dc9728f31feb9681b24f18b21d50c0505776115825.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e2313eba0302c7c5da7313cac76f726c96173947816dc9ed8a6681671e9a71e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZModuleEquivalence/Variant4f36b5ff7e03dadee30338dc9728f31feb9681b24f18b21d50c0505776115825.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa5f0c30d38b2d687a7b2d29a9f6cfe2ef0800d92930f1f8fa1f6abd0431bba1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance forget₂_addCommGroup_full : (forget₂ (ModuleCat ℤ) AddCommGrp.{u}).Full where
  map_surjective {A B}
    -- `AddMonoidHom.toIntLinearMap` doesn't work here because `A` and `B` are not
    -- definitionally equal to the canonical `AddCommGroup.toIntModule` module
    -- instances it expects.
    f := ⟨@ModuleCat.ofHom _ _ _ _ _ A.isModule _ B.isModule <|
            @LinearMap.mk _ _ _ _ _ _ _ _ _ A.isModule B.isModule
            { toFun := f,
              map_add' := AddMonoidHom.map_add f.hom }
            (fun n x => by
              convert AddMonoidHom.map_zsmul f.hom x n <;>
                ext <;> apply int_smul_eq_zsmul), rfl⟩

/-- The forgetful functor from `ℤ` modules to `AddCommGrp` is essentially surjective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZModuleEquivalence/Variant4f36b5ff7e03dadee30338dc9728f31feb9681b24f18b21d50c0505776115825.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZModuleEquivalence/Variant4f36b5ff7e03dadee30338dc9728f31feb9681b24f18b21d50c0505776115825.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55b50eca856e2da33f3d7bbf190d26c8ddce68af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
