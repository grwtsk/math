# coconeEquiv_functor_obj_ι_app_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3115c4b253bc2bcbb0a9dda166da83f9835425bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 241,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d87a4d02783f0a47a170888e8f53c1c9a7cf2f5097db31af2b0cdd71e759a9f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6859769f-5fd7-6725-dd78-670ad515362f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9abda9b7-0a69-ead0-2534-7e98bbada06a",
  "kind": "lemma",
  "lexical_name": "coconeEquiv_functor_obj_ι_app_of",
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
  "slug": "coconeequiv-functor-obj-app-of--89d064dc41a8f569e5e58280",
  "source": {
    "blob": "3115c4b253bc2bcbb0a9dda166da83f9835425bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 241,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant8d87a4d02783f0a47a170888e8f53c1c9a7cf2f5097db31af2b0cdd71e759a9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89d064dc41a8f569e5e5828029f570bec95e16d055c56ca2656e8b5d21cd9f37",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant8d87a4d02783f0a47a170888e8f53c1c9a7cf2f5097db31af2b0cdd71e759a9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9abda9b7-0a69-ead0-2534-7e98bbada06a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coconeEquiv_functor_obj_ι_app_of (Y : J) :
    (coconeEquiv.functor.obj t).ι.app (of Y) = (t.ι.app Y).right := rfl

#adaptation_note
/-- `respectTransparency.types true` changes the auto-generated lemmas' signature -/
set_option backward.isDefEq.respectTransparency.types false in
/-- A cocone `t` of `K : J ⥤ Under X` is a colimit if and only if the corresponding cocone
`coconeLift t` of `liftFromUnder.obj K : WithInitial K ⥤ C` is a colimit. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant8d87a4d02783f0a47a170888e8f53c1c9a7cf2f5097db31af2b0cdd71e759a9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant8d87a4d02783f0a47a170888e8f53c1c9a7cf2f5097db31af2b0cdd71e759a9f.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3115c4b253bc2bcbb0a9dda166da83f9835425bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
