# jointly_reflect_isLocallySurjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "424861e07317d3ab09e22f7c96fd9a08b2141ded",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0da8bc0b249b880ac920c599e8669b3ba5fbe129272f2eb22c766a37a52adbfd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4697ae8c-e5b7-ae4f-5bfc-cc83ef5c20be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1859b54d-362f-850b-a303-f73eaea8a6bd",
  "kind": "lemma",
  "lexical_name": "jointly_reflect_isLocallySurjective",
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
  "slug": "jointly-reflect-islocallysurjective--f9354657c6e36811e22cb621",
  "source": {
    "blob": "424861e07317d3ab09e22f7c96fd9a08b2141ded",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 121,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Conservative/Variant0da8bc0b249b880ac920c599e8669b3ba5fbe129272f2eb22c766a37a52adbfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9354657c6e36811e22cb6212cf5042147186dd5704ceed074c7471313249815",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Conservative/Variant0da8bc0b249b880ac920c599e8669b3ba5fbe129272f2eb22c766a37a52adbfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1859b54d-362f-850b-a303-f73eaea8a6bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma jointly_reflect_isLocallySurjective
    [J.WEqualsLocallyBijective (Type w)] [HasSheafify J (Type w)]
    {X Y : Cᵒᵖ ⥤ A} (f : X ⟶ Y)
    (hf : ∀ (Φ : P.FullSubcategory),
      Function.Surjective (Φ.obj.presheafFiber.map f)) :
    Presheaf.IsLocallySurjective J f := by
  simp only [← ofHom_epi_iff_surjective] at hf
  rw [Presheaf.isLocallySurjective_iff_whisker_forget,
    ← Presheaf.isLocallySurjective_presheafToSheaf_map_iff,
    Sheaf.isLocallySurjective_iff_epi,
    (hP.jointlyReflectEpimorphisms (Type w)).epi_iff]
  exact fun Φ ↦ ((MorphismProperty.epimorphisms (Type w)).arrow_mk_iso_iff
    (((Functor.mapArrowFunctor _ _).mapIso
      ((Φ.obj.presheafFiberCompIso (forget A)).symm ≪≫
        Functor.isoWhiskerLeft _ (Φ.obj.presheafToSheafCompSheafFiberIso (Type w)).symm)).app
          (Arrow.mk f))).1 (hf Φ)

end

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Conservative/Variant0da8bc0b249b880ac920c599e8669b3ba5fbe129272f2eb22c766a37a52adbfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Conservative/Variant0da8bc0b249b880ac920c599e8669b3ba5fbe129272f2eb22c766a37a52adbfd.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `424861e07317d3ab09e22f7c96fd9a08b2141ded` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
