# morphismProperty_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fd04894-5eef-545c-9727-e5b549b7af5c",
  "kind": "lemma",
  "lexical_name": "morphismProperty_eq_top",
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
  "slug": "morphismproperty-eq-top--584a70e95e3bb6c80a46a029",
  "source": {
    "blob": "5b46a589361cdc862b29e1c07c0b105530b96001",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 497,
    "line": 479,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant55ec08d63945593b21a9e43fa73d82a8783c3ef0845efc8d9e408b4c50a015f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:584a70e95e3bb6c80a46a029243f56a59e98bda178ed6d52d33e3c3d692e3a57",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant55ec08d63945593b21a9e43fa73d82a8783c3ef0845efc8d9e408b4c50a015f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fd04894-5eef-545c-9727-e5b549b7af5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–497.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma morphismProperty_eq_top [L.IsLocalization W] (P : MorphismProperty D) [P.RespectsIso]
    [P.IsMultiplicative] (h₁ : ∀ ⦃X Y : C⦄ (f : X ⟶ Y), P (L.map f))
    (h₂ : ∀ ⦃X Y : C⦄ (f : X ⟶ Y) (hf : W f), P (isoOfHom L W f hf).inv) :
    P = ⊤ := by
  let e := compUniqFunctor W.Q L W
  have hP : P.inverseImage (uniq W.Q L W).functor = ⊤ :=
    Construction.morphismProperty_eq_top _
      (fun _ _ f ↦ (P.arrow_mk_iso_iff
        (((Functor.mapArrowFunctor _ _).mapIso e).app (Arrow.mk f))).2 (h₁ f))
      (fun X Y f hf ↦ by
        refine (P.arrow_mk_iso_iff (Arrow.isoMk (e.app _) (e.app _) ?_)).2 (h₂ f hf)
        dsimp
        rw [Construction.wInv_eq_isoOfHom_inv, ← cancel_mono (isoOfHom L W f hf).hom,
          assoc, assoc, Iso.inv_hom_id, comp_id, isoOfHom_hom, ← NatTrans.naturality,
          Functor.comp_map, ← Functor.map_comp_assoc,
          isoOfHom_inv_hom_id, map_id, id_comp])
  rw [← P.map_inverseImage_eq_of_isEquivalence (uniq W.Q L W).functor, hP,
    MorphismProperty.map_top_eq_top_of_essSurj_of_full]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant55ec08d63945593b21a9e43fa73d82a8783c3ef0845efc8d9e408b4c50a015f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant55ec08d63945593b21a9e43fa73d82a8783c3ef0845efc8d9e408b4c50a015f1.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b46a589361cdc862b29e1c07c0b105530b96001` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
