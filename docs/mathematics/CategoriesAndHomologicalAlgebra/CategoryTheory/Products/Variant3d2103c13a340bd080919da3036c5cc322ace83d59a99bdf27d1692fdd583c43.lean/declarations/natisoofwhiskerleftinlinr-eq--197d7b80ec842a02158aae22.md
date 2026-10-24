# natIsoOfWhiskerLeftInlInr_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a109beb4396736de52b79d7230fad7f19d576ae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2fe945d-b6bf-e637-c8a2-cc58e569237c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db28fe53-27ec-e4b0-ad02-a7134eac9f2b",
  "kind": "lemma",
  "lexical_name": "natIsoOfWhiskerLeftInlInr_eq",
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
  "slug": "natisoofwhiskerleftinlinr-eq--197d7b80ec842a02158aae22",
  "source": {
    "blob": "6a109beb4396736de52b79d7230fad7f19d576ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 127,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:197d7b80ec842a02158aae22d60620dc5b76e19ef16413c511b13334e147d555",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db28fe53-27ec-e4b0-ad02-a7134eac9f2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma natIsoOfWhiskerLeftInlInr_eq {F G : A ⊕ A' ⥤ B}
    (η₁ : Sum.inl_ A A' ⋙ F ≅ Sum.inl_ A A' ⋙ G) (η₂ : Sum.inr_ A A' ⋙ F ≅ Sum.inr_ A A' ⋙ G) :
    natIsoOfWhiskerLeftInlInr η₁ η₂ =
    (Sum.functorEquiv A A' B).unitIso.app _ ≪≫
      (Sum.functorEquiv A A' B).inverse.mapIso (Iso.prod η₁ η₂) ≪≫
      (Sum.functorEquiv A A' B).unitIso.symm.app _ := by
  aesop_cat

namespace Swap

/-- `functorEquiv A A' B` transforms `Swap.equivalence` into `Prod.braiding`. -/
@[simps! hom_app_fst hom_app_snd inv_app_fst inv_app_snd]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a109beb4396736de52b79d7230fad7f19d576ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
