# isLocallySurjective_of_isLocallySurjective

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
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ec0eb526be54f9e6160bd86689f1c7625b91c82eb2bb3deb6ece7f25af2d07f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:afa6dcce-732c-2337-e2c8-34fdd788ccc0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b290fc7-bab0-9769-6461-ae0a16522643",
  "kind": "lemma",
  "lexical_name": "isLocallySurjective_of_isLocallySurjective",
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
  "slug": "islocallysurjective-of-islocallysurjective--d3a53b10217c4e34be4ff5f5",
  "source": {
    "blob": "fbab13085d7026c4e859782a99544f9e3ce76228",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 150,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7ec0eb526be54f9e6160bd86689f1c7625b91c82eb2bb3deb6ece7f25af2d07f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3a53b10217c4e34be4ff5f56c75c2f28334ffb108ad2d35bc03b47062625bbd",
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

Occurrence: `result:1b290fc7-bab0-9769-6461-ae0a16522643`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocallySurjective_of_isLocallySurjective
    {F₁ F₂ F₃ : Cᵒᵖ ⥤ A} (f₁ : F₁ ⟶ F₂) (f₂ : F₂ ⟶ F₃)
    [IsLocallySurjective J (f₁ ≫ f₂)] :
    IsLocallySurjective J f₂ where
  imageSieve_mem {X} x := by
    refine J.superset_covering ?_ (imageSieve_mem J (f₁ ≫ f₂) x)
    intro Y g hg
    exact ⟨f₁.app _ (localPreimage (f₁ ≫ f₂) x g hg),
      by simpa using app_localPreimage (f₁ ≫ f₂) x g hg⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7ec0eb526be54f9e6160bd86689f1c7625b91c82eb2bb3deb6ece7f25af2d07f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant7ec0eb526be54f9e6160bd86689f1c7625b91c82eb2bb3deb6ece7f25af2d07f.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbab13085d7026c4e859782a99544f9e3ce76228` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
