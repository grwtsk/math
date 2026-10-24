# limMap_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:225517d0101b995518f466fce21afc97d83d6d2630f180d87ba43cf772788ce7",
  "kind": "instance",
  "lexical_name": "limMap_mono",
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
  "slug": "limmap-mono--98c6417cb1352e08dbe6fa98",
  "source": {
    "blob": "dd538ff84800a39510ea53f93f64ffcefebd3f44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 538,
    "line": 521,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variant536afaf0d8419e75a112c8ef1d1d04f02a4d473b7e26089865b996261127a2c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98c6417cb1352e08dbe6fa98783ec95f0f39e013fa8d41e7a99699431c404c82",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variant536afaf0d8419e75a112c8ef1d1d04f02a4d473b7e26089865b996261127a2c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:225517d0101b995518f466fce21afc97d83d6d2630f180d87ba43cf772788ce7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 521–538.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance limMap_mono {F G : J ⥤ C} [HasLimit F] [HasLimit G] (α : F ⟶ G) [∀ j, Mono (α.app j)] :
    Mono (limMap α) :=
  ⟨fun {Z} u v h =>
    limit.hom_ext fun j => (cancel_mono (α.app j)).1 <| by simpa using h =≫ limit.π _ j⟩

section Adjunction

variable {L : (J ⥤ C) ⥤ C} (adj : Functor.const _ ⊣ L)

/- The fact that the existence of limits of shape `J` is equivalent to the existence
of a right adjoint to the constant functor `C ⥤ (J ⥤ C)` is obtained in
the file `Mathlib/CategoryTheory/Limits/ConeCategory.lean`: see the lemma
`hasLimitsOfShape_iff_isLeftAdjoint_const`. In the definitions below, given an
adjunction `adj : Functor.const _ ⊣ (L : (J ⥤ C) ⥤ C)`, we directly construct
a limit cone for any `F : J ⥤ C`. -/

/-- The limit cone obtained from a right adjoint of the constant functor. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variant536afaf0d8419e75a112c8ef1d1d04f02a4d473b7e26089865b996261127a2c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variant536afaf0d8419e75a112c8ef1d1d04f02a4d473b7e26089865b996261127a2c5.lean#L521).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd538ff84800a39510ea53f93f64ffcefebd3f44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
