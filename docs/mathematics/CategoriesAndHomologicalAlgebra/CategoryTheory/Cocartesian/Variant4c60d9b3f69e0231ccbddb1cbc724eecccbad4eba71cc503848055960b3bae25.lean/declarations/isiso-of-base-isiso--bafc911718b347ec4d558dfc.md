# isIso_of_base_isIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2fee884398a53ac223e64702c19f6ce77225d041",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 335,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c60d9b3f69e0231ccbddb1cbc724eecccbad4eba71cc503848055960b3bae25.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:784ebfcf-b7f6-1550-8f8f-b42c532a079d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:479b9e7d-04dd-d063-769a-f9c3ad6b0818",
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
  "slug": "isiso-of-base-isiso--bafc911718b347ec4d558dfc",
  "source": {
    "blob": "2fee884398a53ac223e64702c19f6ce77225d041",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 335,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant4c60d9b3f69e0231ccbddb1cbc724eecccbad4eba71cc503848055960b3bae25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bafc911718b347ec4d558dfccc47d5a82700073fc4bce32e371cd391b476e528",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant4c60d9b3f69e0231ccbddb1cbc724eecccbad4eba71cc503848055960b3bae25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:479b9e7d-04dd-d063-769a-f9c3ad6b0818`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIso_of_base_isIso (φ : a ⟶ b) [IsStronglyCocartesian p f φ] [IsIso f] : IsIso φ := by
  subst_hom_lift p f φ; clear a b R S
  -- Let `φ'` be the morphism induced by applying universal property to `𝟙 a` lying over `f ≫ f⁻¹`.
  let φ' := map p (p.map φ) φ (IsIso.hom_inv_id (p.map φ)).symm (𝟙 a)
  use φ'
  -- `φ ≫ φ' = 𝟙 a` follows immediately from the universal property.
  have inv_hom : φ ≫ φ' = 𝟙 a := fac p (p.map φ) φ _ (𝟙 a)
  refine ⟨inv_hom, ?_⟩
  -- We will now show that `φ' ≫ φ = 𝟙 b` by showing that `φ ≫ (φ' ≫ φ) = φ ≫ 𝟙 b`.
  have h₁ : IsHomLift p (𝟙 (p.obj b)) (φ' ≫ φ) := by
    rw [← IsIso.inv_hom_id (p.map φ)]
    apply IsHomLift.comp
  apply IsStronglyCocartesian.ext p (p.map φ) φ (𝟙 (p.obj b))
  simp only [← assoc, inv_hom, comp_id, id_comp]

end

/-- The canonical isomorphism between the codomains of two strongly cocartesian arrows lying over
isomorphic objects. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant4c60d9b3f69e0231ccbddb1cbc724eecccbad4eba71cc503848055960b3bae25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant4c60d9b3f69e0231ccbddb1cbc724eecccbad4eba71cc503848055960b3bae25.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fee884398a53ac223e64702c19f6ce77225d041` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
