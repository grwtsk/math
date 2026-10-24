# ofArrows_mem_iff_isLocallySurjective_sigmaDesc_shrinkYoneda_map

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
      "line": 485,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ec0eb526be54f9e6160bd86689f1c7625b91c82eb2bb3deb6ece7f25af2d07f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0035990f-f8ad-e150-ec33-6404c31f8837",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f51849cb-ffba-3d19-5581-5cfb6c77566e",
  "kind": "lemma",
  "lexical_name": "ofArrows_mem_iff_isLocallySurjective_sigmaDesc_shrinkYoneda_map",
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
  "slug": "ofarrows-mem-iff-islocallysurjective-sigmadesc-shrinkyoneda-map--cea8b0da0cf8a1cc56457949",
  "source": {
    "blob": "fbab13085d7026c4e859782a99544f9e3ce76228",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 491,
    "line": 485,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7ec0eb526be54f9e6160bd86689f1c7625b91c82eb2bb3deb6ece7f25af2d07f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cea8b0da0cf8a1cc564579492f31b7c6ef43ff674b68655676d834c4506a2c4a",
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

Occurrence: `result:f51849cb-ffba-3d19-5581-5cfb6c77566e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofArrows_mem_iff_isLocallySurjective_sigmaDesc_shrinkYoneda_map [LocallySmall.{w} C]
    {S : C} {ι : Type*} [Small.{w} ι] {X : ι → C} (f : ∀ i, X i ⟶ S) :
    Sieve.ofArrows _ f ∈ J S ↔
      Presheaf.IsLocallySurjective J (Sigma.desc (fun i ↦ shrinkYoneda.{w}.map (f i))) :=
  ofArrows_mem_iff_isLocallySurjective_cofanIsColimitDesc_shrinkYoneda_map J f
    (coproductIsCoproduct _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7ec0eb526be54f9e6160bd86689f1c7625b91c82eb2bb3deb6ece7f25af2d07f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7ec0eb526be54f9e6160bd86689f1c7625b91c82eb2bb3deb6ece7f25af2d07f.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbab13085d7026c4e859782a99544f9e3ce76228` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
