# isIso_of_base_isIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e9b362f5947479e760ca8a8f51c1e7657f0b26c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 345,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6179b7f3-59cd-e8ab-93d3-61db4fed6aab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2101b253-4c16-d7ac-0286-d76f9383cd57",
  "kind": "lemma",
  "lexical_name": "isIso_of_base_isIso",
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
  "slug": "isiso-of-base-isiso--c7477d619e1f25c462f3ca9f",
  "source": {
    "blob": "e9b362f5947479e760ca8a8f51c1e7657f0b26c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 345,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7477d619e1f25c462f3ca9f892a2208ab634e88075aa95da4b4e3ae8e84dc48",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2101b253-4c16-d7ac-0286-d76f9383cd57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIso_of_base_isIso (φ : a ⟶ b) [IsStronglyCartesian p f φ] [IsIso f] : IsIso φ := by
  subst_hom_lift p f φ; clear a b R S
  -- Let `φ` be the morphism induced by applying universal property to `𝟙 b` lying over `f⁻¹ ≫ f`.
  let φ' := map p (p.map φ) φ (IsIso.inv_hom_id (p.map φ)).symm (𝟙 b)
  use φ'
  -- `φ' ≫ φ = 𝟙 b` follows immediately from the universal property.
  have inv_hom : φ' ≫ φ = 𝟙 b := fac p (p.map φ) φ _ (𝟙 b)
  refine ⟨?_, inv_hom⟩
  -- We will now show that `φ ≫ φ' = 𝟙 a` by showing that `(φ ≫ φ') ≫ φ = 𝟙 a ≫ φ`.
  have h₁ : IsHomLift p (𝟙 (p.obj a)) (φ  ≫ φ') := by
    rw [← IsIso.hom_inv_id (p.map φ)]
    apply IsHomLift.comp
  apply IsStronglyCartesian.ext p (p.map φ) φ (𝟙 (p.obj a))
  simp only [assoc, inv_hom, comp_id, id_comp]

end

section

variable {R R' S : 𝒮} {a a' b : 𝒳} {f : R ⟶ S} {f' : R' ⟶ S} {g : R' ≅ R}

/-- The canonical isomorphism between the domains of two strongly cartesian morphisms lying over
isomorphic objects. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9b362f5947479e760ca8a8f51c1e7657f0b26c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
