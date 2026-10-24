# app_isIso_of_stalkFunctor_map_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "402610cb5d8820923fccc00f18e8043a9a2d9cab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 598,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d235554-ca7d-afd9-c53f-fd0f9a175c52",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91a55864-9a44-8ce8-be7e-baea52ba1372",
  "kind": "theorem",
  "lexical_name": "app_isIso_of_stalkFunctor_map_iso",
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
  "slug": "app-isiso-of-stalkfunctor-map-iso--a6e6d8ffc5f21385b2fb7e06",
  "source": {
    "blob": "402610cb5d8820923fccc00f18e8043a9a2d9cab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 616,
    "line": 598,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6e6d8ffc5f21385b2fb7e06ca4ae5a026367a563067aa43f415d00de8138d0a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91a55864-9a44-8ce8-be7e-baea52ba1372`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 598–616.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem app_isIso_of_stalkFunctor_map_iso {F G : Sheaf C X} (f : F ⟶ G) (U : Opens X)
    [∀ x : U, IsIso ((stalkFunctor C x.val).map f.1)] : IsIso (f.1.app (op U)) := by
  -- Since the forgetful functor of `C` reflects isomorphisms, it suffices to see that the
  -- underlying map between types is an isomorphism, i.e. bijective.
  suffices IsIso ((forget C).map (f.1.app (op U))) by
    exact isIso_of_reflects_iso (f.1.app (op U)) (forget C)
  rw [isIso_iff_bijective]
  apply app_bijective_of_stalkFunctor_map_bijective
  intro x
  apply (isIso_iff_bijective _).mp
  exact Functor.map_isIso (forget C) ((stalkFunctor C x.1).map f.1)
set_option linter.uppercaseLean3 false in
#align Top.presheaf.app_is_iso_of_stalk_functor_map_iso TopCat.Presheaf.app_isIso_of_stalkFunctor_map_iso

-- Making this an instance would cause a loop in typeclass resolution with `Functor.map_isIso`
/-- Let `F` and `G` be sheaves valued in a concrete category, whose forgetful functor reflects
isomorphisms, preserves limits and filtered colimits. Then if the stalk maps of a morphism
`f : F ⟶ G` are all isomorphisms, `f` must be an isomorphism.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean#L598).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `402610cb5d8820923fccc00f18e8043a9a2d9cab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
