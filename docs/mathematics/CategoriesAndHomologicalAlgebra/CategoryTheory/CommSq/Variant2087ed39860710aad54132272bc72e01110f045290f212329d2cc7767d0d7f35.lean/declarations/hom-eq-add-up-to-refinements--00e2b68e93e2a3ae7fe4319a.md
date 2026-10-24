# hom_eq_add_up_to_refinements

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5047354b-76cc-1de9-2223-7f52ec71b323",
  "kind": "lemma",
  "lexical_name": "hom_eq_add_up_to_refinements",
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
  "slug": "hom-eq-add-up-to-refinements--00e2b68e93e2a3ae7fe4319a",
  "source": {
    "blob": "5049fc07a053e3f4b4fe587866c96dd7a273fc79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 60,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant2087ed39860710aad54132272bc72e01110f045290f212329d2cc7767d0d7f35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00e2b68e93e2a3ae7fe4319a299cbb937734f73218ae78c43b6a5f4af542d163",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant2087ed39860710aad54132272bc72e01110f045290f212329d2cc7767d0d7f35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5047354b-76cc-1de9-2223-7f52ec71b323`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma hom_eq_add_up_to_refinements (h : IsPushout t l r b) {T : C} (x₄ : T ⟶ X₄) :
    ∃ (T' : C) (π : T' ⟶ T) (_ : Epi π) (x₂ : T' ⟶ X₂) (x₃ : T' ⟶ X₃),
      π ≫ x₄ = x₂ ≫ r + x₃ ≫ b := by
  have := h.epi_shortComplex_g
  obtain ⟨T', π, _, u, hu⟩ := surjective_up_to_refinements_of_epi h.shortComplex.g x₄
  refine ⟨T', π, inferInstance, u ≫ biprod.fst, u ≫ biprod.snd, ?_⟩
  simp only [hu, assoc, ← Preadditive.comp_add]
  congr
  aesop_cat

/--
Given a commutative diagram in an abelian category
```
X₁ ⟶ X₂
|    |  \
v    v   \
X₃ ⟶ X₄   \
 \     \   v
  \     \> X₅
   \_____>
```
where the top/left square is a pushout square,
the outer square involving `X₁`, `X₂`, `X₃` and `X₅`
is a pullback square, and `X₂ ⟶ X₅` is mono,
then `X₄ ⟶ X₅` is a mono.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant2087ed39860710aad54132272bc72e01110f045290f212329d2cc7767d0d7f35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant2087ed39860710aad54132272bc72e01110f045290f212329d2cc7767d0d7f35.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5049fc07a053e3f4b4fe587866c96dd7a273fc79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
