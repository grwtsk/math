# isEquivalence_toDescentData_of_sieve_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09208c5c-a974-8d61-9f16-4c126d75ae7d",
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
  "slug": "isequivalence-todescentdata-of-sieve-le--c591da2395947c48c18f0a4b",
  "source": {
    "blob": "e889494c1f5733cd24819014b2f35ee2244479e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 336,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c591da2395947c48c18f0a4b23f480d7da79504d5a0dab4daea01f0d3a1eee6b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09208c5c-a974-8d61-9f16-4c126d75ae7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–368.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e889494c1f5733cd24819014b2f35ee2244479e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
