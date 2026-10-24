# morphismProperty_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6bf68d771a6508b818de1438dcaa71e3d282d617",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 471,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7b/7bd0243b6f6a3177f7eeda373f3cc7a6266ca15c260c801facc18606474b1357.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:966b3b7a-a8f8-cad2-b5d8-f6c10c10427b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d93db44e-71a8-9591-6247-4215f3d6df48",
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
  "slug": "morphismproperty-eq-top--db08ef69ae9b6039fd8481c9",
  "source": {
    "blob": "6bf68d771a6508b818de1438dcaa71e3d282d617",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 471,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant7bd0243b6f6a3177f7eeda373f3cc7a6266ca15c260c801facc18606474b1357.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db08ef69ae9b6039fd8481c9d57fe3a548ac024c221c3adfc34d3e4868098568",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant7bd0243b6f6a3177f7eeda373f3cc7a6266ca15c260c801facc18606474b1357.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d93db44e-71a8-9591-6247-4215f3d6df48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 471–489.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant7bd0243b6f6a3177f7eeda373f3cc7a6266ca15c260c801facc18606474b1357.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant7bd0243b6f6a3177f7eeda373f3cc7a6266ca15c260c801facc18606474b1357.lean#L471).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bf68d771a6508b818de1438dcaa71e3d282d617` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
