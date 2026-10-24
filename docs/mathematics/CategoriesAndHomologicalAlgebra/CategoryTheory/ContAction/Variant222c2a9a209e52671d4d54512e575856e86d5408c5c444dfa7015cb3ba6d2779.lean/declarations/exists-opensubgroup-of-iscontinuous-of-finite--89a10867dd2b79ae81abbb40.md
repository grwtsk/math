# exists_openSubgroup_of_isContinuous_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d63a26111503e39fd358f5ce307e543f8cc22561",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/222c2a9a209e52671d4d54512e575856e86d5408c5c444dfa7015cb3ba6d2779.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:202db1f8-dac6-8ec4-ce7a-bfc46584a39b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:51cd17f5-88eb-5daa-a32f-d3970a25b88d",
  "kind": "lemma",
  "lexical_name": "exists_openSubgroup_of_isContinuous_of_finite",
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
  "slug": "exists-opensubgroup-of-iscontinuous-of-finite--89a10867dd2b79ae81abbb40",
  "source": {
    "blob": "d63a26111503e39fd358f5ce307e543f8cc22561",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 123,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ContAction/Variant222c2a9a209e52671d4d54512e575856e86d5408c5c444dfa7015cb3ba6d2779.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89a10867dd2b79ae81abbb406a538d3e0a7113ad7133c4a8414d5918ccd30be8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ContAction/Variant222c2a9a209e52671d4d54512e575856e86d5408c5c444dfa7015cb3ba6d2779.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51cd17f5-88eb-5daa-a32f-d3970a25b88d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_openSubgroup_of_isContinuous_of_finite
    {J : Type*} [Finite J] (obj : J → Action FintypeCat.{w} G)
    (property : ∀ j, isContinuous _ _ (obj j)) :
    ∃ (H : OpenSubgroup G), ∀ j, trivialOnSet _ H (obj j) := by
  rw [isContinuous_eq_iSup] at property
  simp only [ObjectProperty.prop_iSup_iff] at property
  choose H h using property
  exact ⟨OpenSubgroup.iInfOfFinite H,
    fun j ↦ trivialOnSet_antitone _ (OpenSubgroup.iInfOfFinite_le _ _) _ (h j)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ContAction/Variant222c2a9a209e52671d4d54512e575856e86d5408c5c444dfa7015cb3ba6d2779.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ContAction/Variant222c2a9a209e52671d4d54512e575856e86d5408c5c444dfa7015cb3ba6d2779.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d63a26111503e39fd358f5ce307e543f8cc22561` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
