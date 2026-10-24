# isEquivalence_toDescentData_of_sieve_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "965a05853a167d3807860b72b04951e2c2e6b5a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 328,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/23ed113db5dc0b5646cf9bfc87d4b60201493c00ac3a81811106f2783e099159.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2bae84b-b0c5-5003-ac9a-dac00e74a983",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21977213-17da-7422-3ac8-c38a9f203629",
  "kind": "lemma",
  "lexical_name": "isEquivalence_toDescentData_of_sieve_le",
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
  "slug": "isequivalence-todescentdata-of-sieve-le--1b0944619353c731fa97f8e5",
  "source": {
    "blob": "965a05853a167d3807860b72b04951e2c2e6b5a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 328,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant23ed113db5dc0b5646cf9bfc87d4b60201493c00ac3a81811106f2783e099159.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b0944619353c731fa97f8e5b5e45dee772d5f422fa17dd0b74d6beb4fd9567a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant23ed113db5dc0b5646cf9bfc87d4b60201493c00ac3a81811106f2783e099159.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21977213-17da-7422-3ac8-c38a9f203629`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isEquivalence_toDescentData_of_sieve_le
    {ι : Type t} {S : C} {X : ι → C} {f : ∀ i, X i ⟶ S}
    {ι' : Type t'} {X' : ι' → C} {f' : ∀ j, X' j ⟶ S}
    (h₁ : Sieve.ofArrows _ f' ∈ J _)
    (h₂ : Sieve.ofArrows _ f' ≤ Sieve.ofArrows _ f)
    [(F.toDescentData f').IsEquivalence] :
    (F.toDescentData f).IsEquivalence := by
  have H (i' : ι') : ∃ (i : ι) (p : X' i' ⟶ X i), p ≫ f i = f' i' := by
    obtain ⟨_, p, _, ⟨i⟩, fac⟩ := h₂ _ (Sieve.ofArrows_mk _ f' i')
    exact ⟨_, _, fac⟩
  choose α p hp using H
  obtain ⟨H, h, ⟨e⟩⟩ :
      ∃ (H : _ ⥤ _) (_ : H.FullyFaithful),
        Nonempty (F.toDescentData f ⋙ H ≅ F.toDescentData f') := by
    refine ⟨pullFunctor F (p := 𝟙 _) (p' := p) (by cat_disch), ?_, ?_⟩
    · exact fullyFaithfulPullFunctor F hp h₁
    · exact ⟨toDescentDataCompPullFunctorIso _ _ ≪≫
          (Functor.isoWhiskerRight (Cat.Hom.toNatIso (F.mapId _)) _) ≪≫
            Functor.leftUnitor _⟩
  have := (F.fullyFaithfulToDescentData _ (J.superset_covering h₂ h₁)).faithful
  have := (F.fullyFaithfulToDescentData _ (J.superset_covering h₂ h₁)).full
  have : (F.toDescentData f).EssSurj := ⟨fun D ↦
    ⟨_, ⟨h.preimageIso (e.app _ ≪≫ (F.toDescentData f').objObjPreimageIso (H.obj D))⟩⟩⟩
  exact { }

end

end DescentData

public section

/-- If `F` is a prestack for a Grothendieck topology `J` and `F` is a stack
for a covering presieve `R`, then it is also a stack for `R'` if `R ≤ R'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant23ed113db5dc0b5646cf9bfc87d4b60201493c00ac3a81811106f2783e099159.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant23ed113db5dc0b5646cf9bfc87d4b60201493c00ac3a81811106f2783e099159.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `965a05853a167d3807860b72b04951e2c2e6b5a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
