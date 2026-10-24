# forgetToPresheafModuleCatMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00585e8286de1f5e69e5905f3b3a3c88fe03505da577af0c7d629fa3c74b27a2",
  "kind": "def",
  "lexical_name": "forgetToPresheafModuleCatMap",
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
  "slug": "forgettopresheafmodulecatmap--4f97a5599b826006a83cd82c",
  "source": {
    "blob": "5f3e34bdcd4fb1435d3f3debddf30f3695f8da4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 449,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant38fc91d7b50a318552ac1cb211981c27e6bd194ea11dce9b7746e8e6bd875f91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f97a5599b826006a83cd82cf51a92f71483bef326daba52fea8210f3bc0170a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant38fc91d7b50a318552ac1cb211981c27e6bd194ea11dce9b7746e8e6bd875f91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00585e8286de1f5e69e5905f3b3a3c88fe03505da577af0c7d629fa3c74b27a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def forgetToPresheafModuleCatMap
    (X : Cᵒᵖ) (hX : Limits.IsInitial X) {M N : PresheafOfModules.{v} R} (f : M ⟶ N) :
    forgetToPresheafModuleCatObj X hX M ⟶ forgetToPresheafModuleCatObj X hX N where
  app Y := ModuleCat.ofHom
      (X := (forgetToPresheafModuleCatObj X hX M).obj Y)
      (Y := (forgetToPresheafModuleCatObj X hX N).obj Y)
    { toFun := f.app Y
      map_add' := by simp
      map_smul' := fun r ↦ (f.app Y).hom.map_smul (R.map (hX.to Y) _) }
  naturality Y Z g := by
    ext x
    exact naturality_apply f g x

/--
The forgetful functor from presheaves of modules over a presheaf of rings `R` to presheaves of
`R(X)`-modules where `X` is an initial object.

The functor is implemented as, on object level `M ↦ (c ↦ M(c))` where the `R(X)`-module structure
on `M(c)` is given by restriction of scalars along the unique morphism `R(c) ⟶ R(X)`; and on
morphism level `(f : M ⟶ N) ↦ (c ↦ f(c))`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant38fc91d7b50a318552ac1cb211981c27e6bd194ea11dce9b7746e8e6bd875f91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant38fc91d7b50a318552ac1cb211981c27e6bd194ea11dce9b7746e8e6bd875f91.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f3e34bdcd4fb1435d3f3debddf30f3695f8da4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
