# sheafifyHomEquivOfIsEquivalence_naturality_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e05382ba39251d3d33e6d8948c89b0effccc7414",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 735,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/ded31dda558b0841a1106da634d9be5f2924873551354cf30c3407e6a9bc1133.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99d7d3e2-21c5-c10d-d667-c91ecb423fa3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e515ca20-b9c4-9677-7766-ff3e7f815d2d",
  "kind": "lemma",
  "lexical_name": "sheafifyHomEquivOfIsEquivalence_naturality_right",
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
  "slug": "sheafifyhomequivofisequivalence-naturality-right--5ad6f5d617f63878fedf1d4c",
  "source": {
    "blob": "e05382ba39251d3d33e6d8948c89b0effccc7414",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 754,
    "line": 735,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantded31dda558b0841a1106da634d9be5f2924873551354cf30c3407e6a9bc1133.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ad6f5d617f63878fedf1d4cbfdcf6bde0cbaf9020d0c87f03cf2286de271dd4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantded31dda558b0841a1106da634d9be5f2924873551354cf30c3407e6a9bc1133.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e515ca20-b9c4-9677-7766-ff3e7f815d2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 735–754.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sheafifyHomEquivOfIsEquivalence_naturality_right
    {P : Dᵒᵖ ⥤ A} {Q₁ Q₂ : Sheaf K A}
    (f : (sheafifyOfIsEquivalence J K G A).obj P ⟶ Q₁) (g : Q₁ ⟶ Q₂) :
      sheafifyHomEquivOfIsEquivalence J K G (f ≫ g) =
        sheafifyHomEquivOfIsEquivalence J K G f ≫ g.hom := by
  have := IsDenseSubsite.isLocallyFull J K G
  have := IsDenseSubsite.isCoverDense J K G
  let adj₁ := (G.sheafPushforwardContinuous A J K).asEquivalence.symm.toAdjunction
  let adj₂ := sheafificationAdjunction J A
  change IsCoverDense.restrictHomEquivHom (adj₂.homEquiv _ _ (adj₁.homEquiv _ _ (f ≫ g))) =
    IsCoverDense.restrictHomEquivHom (adj₂.homEquiv _ _ (adj₁.homEquiv _ _ f)) ≫ g.hom
  rw [adj₁.homEquiv_naturality_right, adj₂.homEquiv_naturality_right]
  apply IsCoverDense.restrictHomEquivHom_naturality_right

variable (A)

/-- Assuming that `(C, J)` is a dense subsite of `(D, K)` (via a functor `G : C ⥤ D`)
and `sheafPushforwardContinuous G A J K` is an equivalence of categories, and
that `HasWeakSheafify J A` holds, then this adjunction shows the existence
of a left adjoint to `sheafToPresheaf K A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantded31dda558b0841a1106da634d9be5f2924873551354cf30c3407e6a9bc1133.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantded31dda558b0841a1106da634d9be5f2924873551354cf30c3407e6a9bc1133.lean#L735).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e05382ba39251d3d33e6d8948c89b0effccc7414` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
