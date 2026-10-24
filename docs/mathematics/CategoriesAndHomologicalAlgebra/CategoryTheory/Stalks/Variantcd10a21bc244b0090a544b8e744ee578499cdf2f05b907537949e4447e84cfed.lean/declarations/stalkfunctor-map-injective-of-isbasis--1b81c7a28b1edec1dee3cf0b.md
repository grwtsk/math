# stalkFunctor_map_injective_of_isBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6fc734f866e0e2415cda5e63762f4af745cb8ac0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 462,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cd10a21bc244b0090a544b8e744ee578499cdf2f05b907537949e4447e84cfed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57075623-b47d-7781-acdf-d8e96b23ee2b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5326e88d-db81-2f14-559a-b3b81069757f",
  "kind": "lemma",
  "lexical_name": "stalkFunctor_map_injective_of_isBasis",
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
  "slug": "stalkfunctor-map-injective-of-isbasis--1b81c7a28b1edec1dee3cf0b",
  "source": {
    "blob": "6fc734f866e0e2415cda5e63762f4af745cb8ac0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 479,
    "line": 462,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variantcd10a21bc244b0090a544b8e744ee578499cdf2f05b907537949e4447e84cfed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b81c7a28b1edec1dee3cf0b9cf4c7c5f197c9de983064eea0b1044f212b3362",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variantcd10a21bc244b0090a544b8e744ee578499cdf2f05b907537949e4447e84cfed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5326e88d-db81-2f14-559a-b3b81069757f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–479.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma stalkFunctor_map_injective_of_isBasis
    {F G : X.Presheaf C} {α : F ⟶ G} (hα : ∀ U ∈ B, Function.Injective (α.app (op U))) (x : X) :
    Function.Injective ((stalkFunctor _ x).map α) := by
  intro s t hst
  obtain ⟨U₁, hxU₁, hU₁, s, rfl⟩ := germ_exist_of_isBasis hB _ x s
  obtain ⟨U₂, hxU₂, hU₂, t, rfl⟩ := germ_exist_of_isBasis hB _ x t
  rw [stalkFunctor_map_germ_apply, stalkFunctor_map_germ_apply] at hst
  obtain ⟨W, hxW, hW, iWU₁, iWU₂, heq⟩ := germ_eq_of_isBasis hB _ _ hxU₁ hxU₂ hst
  simp only [← α.naturality_apply, (hα W hW).eq_iff] at heq
  simpa [germ_res_apply'] using congr(F.germ W x hxW $heq)

end IsBasis

variable [HasLimits C] [PreservesLimits (forget C)] [(forget C).ReflectsIsomorphisms]

/-- Let `F` be a sheaf valued in a concrete category, whose forgetful functor reflects isomorphisms,
preserves limits and filtered colimits. Then two sections who agree on every stalk must be equal.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variantcd10a21bc244b0090a544b8e744ee578499cdf2f05b907537949e4447e84cfed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variantcd10a21bc244b0090a544b8e744ee578499cdf2f05b907537949e4447e84cfed.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fc734f866e0e2415cda5e63762f4af745cb8ac0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
