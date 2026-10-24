# ofArrows_mem_iff_isLocallySurjective_cofanIsColimitDesc_uliftYoneda_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fbab13085d7026c4e859782a99544f9e3ce76228",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 463,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ec0eb526be54f9e6160bd86689f1c7625b91c82eb2bb3deb6ece7f25af2d07f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b67ba410-b89e-a446-853e-d1af5c457b61",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9cabc3e3-0b0f-5a32-de40-47e808c62eea",
  "kind": "lemma",
  "lexical_name": "ofArrows_mem_iff_isLocallySurjective_cofanIsColimitDesc_uliftYoneda_map",
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
  "slug": "ofarrows-mem-iff-islocallysurjective-cofaniscolimitdesc-uliftyoneda-map--f4525b7425a8af9eec8d57d2",
  "source": {
    "blob": "fbab13085d7026c4e859782a99544f9e3ce76228",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 484,
    "line": 463,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7ec0eb526be54f9e6160bd86689f1c7625b91c82eb2bb3deb6ece7f25af2d07f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4525b7425a8af9eec8d57d2c1135e883bc378b6ec0746d4db8271f29db49fce",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7ec0eb526be54f9e6160bd86689f1c7625b91c82eb2bb3deb6ece7f25af2d07f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cabc3e3-0b0f-5a32-de40-47e808c62eea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 463–484.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofArrows_mem_iff_isLocallySurjective_cofanIsColimitDesc_uliftYoneda_map
    {S : C} {ι : Type*} [Small.{max w v} ι] {X : ι → C}
    (f : ∀ i, X i ⟶ S)
    {c : Cofan (fun i ↦ uliftYoneda.{w}.obj (X i))} (hc : IsColimit c) :
    Sieve.ofArrows _ f ∈ J S ↔
      Presheaf.IsLocallySurjective J
        (Cofan.IsColimit.desc hc (fun i ↦ uliftYoneda.{w}.map (f i))) := by
  let e : Discrete.functor (fun i ↦ uliftYoneda.{w}.obj (X i)) ≅
      Discrete.functor (fun i ↦ shrinkYoneda.{max w v}.obj (X i)) :=
    Discrete.natIso (fun i ↦ uliftYonedaIsoShrinkYoneda.{w}.app (X i.as))
  let hc' := (IsColimit.precomposeInvEquiv e _).2 hc
  rw [ofArrows_mem_iff_isLocallySurjective_cofanIsColimitDesc_shrinkYoneda_map.{max w v} J f hc']
  have :
      Cofan.IsColimit.desc hc (fun i ↦ uliftYoneda.map (f i)) ≫
        uliftYonedaIsoShrinkYoneda.hom.app _ =
      Cofan.IsColimit.desc hc' (fun i ↦ shrinkYoneda.map (f i)) :=
    Cofan.IsColimit.hom_ext hc _ _ (fun i ↦ by
      rw [Cofan.IsColimit.fac_assoc, NatTrans.naturality,
        ← Cofan.IsColimit.fac hc' (fun i ↦ shrinkYoneda.map (f i)) i]
      simp [Cofan.inj, e])
  rw [← this, Presheaf.isLocallySurjective_comp_iff J]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7ec0eb526be54f9e6160bd86689f1c7625b91c82eb2bb3deb6ece7f25af2d07f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7ec0eb526be54f9e6160bd86689f1c7625b91c82eb2bb3deb6ece7f25af2d07f.lean#L463).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbab13085d7026c4e859782a99544f9e3ce76228` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
