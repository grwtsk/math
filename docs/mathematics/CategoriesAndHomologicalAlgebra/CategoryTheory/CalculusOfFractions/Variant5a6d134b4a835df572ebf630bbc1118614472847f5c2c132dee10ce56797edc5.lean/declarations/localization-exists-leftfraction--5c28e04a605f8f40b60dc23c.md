# Localization.exists_leftFraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ae785de-f3d9-2071-f234-0d736725f757",
  "kind": "lemma",
  "lexical_name": "Localization.exists_leftFraction",
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
  "slug": "localization-exists-leftfraction--5c28e04a605f8f40b60dc23c",
  "source": {
    "blob": "c01295b1dc3a498f42a51e28c160231afd3a4311",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 745,
    "line": 732,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant5a6d134b4a835df572ebf630bbc1118614472847f5c2c132dee10ce56797edc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c28e04a605f8f40b60dc23ce3b4c2a5317602c47713bdc515b4fe573ffb06f3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant5a6d134b4a835df572ebf630bbc1118614472847f5c2c132dee10ce56797edc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ae785de-f3d9-2071-f234-0d736725f757`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 732–745.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Localization.exists_leftFraction {X Y : C} (f : L.obj X ⟶ L.obj Y) :
    ∃ (φ : W.LeftFraction X Y), f = φ.map L (Localization.inverts L W) := by
  let E := Localization.uniq (MorphismProperty.LeftFraction.Localization.Q W) L W
  let e : _ ⋙ E.functor ≅ L := Localization.compUniqFunctor _ _ _
  obtain ⟨f', rfl⟩ : ∃ (f' : E.functor.obj X ⟶ E.functor.obj Y),
      f = e.inv.app _ ≫ f' ≫ e.hom.app _ := ⟨e.hom.app _ ≫ f ≫ e.inv.app _, by simp⟩
  obtain ⟨g, rfl⟩ := E.functor.map_surjective f'
  obtain ⟨g, rfl⟩ := MorphismProperty.LeftFraction.Localization.Hom.mk_surjective g
  refine ⟨g, ?_⟩
  rw [← MorphismProperty.LeftFraction.Localization.homMk_eq_hom_mk,
    MorphismProperty.LeftFraction.Localization.homMk_eq g,
    g.map_compatibility (MorphismProperty.LeftFraction.Localization.Q W) L,
    assoc, assoc, Iso.inv_hom_id_app, comp_id, Iso.inv_hom_id_app_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant5a6d134b4a835df572ebf630bbc1118614472847f5c2c132dee10ce56797edc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant5a6d134b4a835df572ebf630bbc1118614472847f5c2c132dee10ce56797edc5.lean#L732).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c01295b1dc3a498f42a51e28c160231afd3a4311` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
