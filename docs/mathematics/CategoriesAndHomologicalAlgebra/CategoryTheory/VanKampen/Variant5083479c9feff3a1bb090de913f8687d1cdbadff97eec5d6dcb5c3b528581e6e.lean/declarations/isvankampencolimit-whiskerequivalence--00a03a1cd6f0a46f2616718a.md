# IsVanKampenColimit.whiskerEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a6e0041-d94b-019a-1c06-9fc78f4dc7ac",
  "kind": "theorem",
  "lexical_name": "IsVanKampenColimit.whiskerEquivalence",
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
  "slug": "isvankampencolimit-whiskerequivalence--00a03a1cd6f0a46f2616718a",
  "source": {
    "blob": "84c446cc78642d32e394722750dfdfa6594c127b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 247,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00a03a1cd6f0a46f2616718ac80f34c5c1004b17ac9e07f3dc0a53b209743405",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a6e0041-d94b-019a-1c06-9fc78f4dc7ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsVanKampenColimit.whiskerEquivalence {K : Type*} [Category K] (e : J ≌ K)
    {F : K ⥤ C} {c : Cocone F} (hc : IsVanKampenColimit c) :
    IsVanKampenColimit (c.whisker e.functor) := by
  intro F' c' α f e' hα
  convert hc (c'.whisker e.inverse) (whiskerLeft e.inverse α ≫ (e.invFunIdAssoc F).hom) f ?_
    ((hα.whiskerLeft _).comp (NatTrans.equifibered_of_isIso _)) using 1
  · exact (IsColimit.whiskerEquivalenceEquiv e.symm).nonempty_congr
  · simp only [Functor.const_obj_obj, Functor.comp_obj, Cocone.whisker_pt, Cocone.whisker_ι,
      whiskerLeft_app, NatTrans.comp_app, Equivalence.invFunIdAssoc_hom_app, Functor.id_obj]
    constructor
    · intro H k
      rw [← Category.comp_id f]
      refine (H (e.inverse.obj k)).paste_vert ?_
      have : IsIso (𝟙 (Cocone.whisker e.functor c).pt) := inferInstance
      exact IsPullback.of_vert_isIso ⟨by simp⟩
    · intro H j
      have : α.app j
          = F'.map (e.unit.app _) ≫ α.app _ ≫ F.map (e.counit.app (e.functor.obj j)) := by
        simp [← Functor.map_comp]
      rw [← Category.id_comp f, this]
      refine IsPullback.paste_vert ?_ (H (e.functor.obj j))
      exact IsPullback.of_vert_isIso ⟨by simp⟩
  · ext k
    simpa using congr_app e' (e.inverse.obj k)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84c446cc78642d32e394722750dfdfa6594c127b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
