# IsVerdierLeftLocalizing.fac'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2166a186-ad78-3310-f5dc-128ff3212f01",
  "kind": "lemma",
  "lexical_name": "IsVerdierLeftLocalizing.fac'",
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
  "slug": "isverdierleftlocalizing-fac--369880bdcd07b4509e716dee",
  "source": {
    "blob": "626359baa1e11324946a20302994317d2befe4e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 156,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizingSubcategory/Variantb2a9123e47c706b462f885a99071ce234085513742c0d26a550896bebd82828d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:369880bdcd07b4509e716deef16209661941a81ac60efc466b6f0c243852be8e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizingSubcategory/Variantb2a9123e47c706b462f885a99071ce234085513742c0d26a550896bebd82828d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2166a186-ad78-3310-f5dc-128ff3212f01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsVerdierLeftLocalizing.fac'
    [A.IsTriangulated] [B.IsTriangulated] [B.IsClosedUnderIsomorphisms]
    [A.IsVerdierLeftLocalizing B]
    {X Y : C} (s : X ⟶ Y) (hY : A Y) (hs : B.trW s) :
    ∃ (Z : C) (s' : Z ⟶ Y) (a : Z ⟶ X), A Z ∧ (A ⊓ B).trW s' ∧ a ≫ s = s' :=
  (isVerdierLeftLocalizing_iff A B).1 inferInstance s hY hs

/-- If `A` is a triangulated subcategory of a pretriangulated category `C`,
and `B : ObjectProperty C`, this is the inclusion functor
`A.ι : A.FullSubcategory ⥤ C`, considered as a localizer morphism,
where `C` is equipped with the property of morphisms `B.trW`
and `A.FullSubcategory` with the property of morphisms `(B.inverseImage A.ι).trW`. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizingSubcategory/Variantb2a9123e47c706b462f885a99071ce234085513742c0d26a550896bebd82828d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizingSubcategory/Variantb2a9123e47c706b462f885a99071ce234085513742c0d26a550896bebd82828d.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `626359baa1e11324946a20302994317d2befe4e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
