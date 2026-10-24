# preservesFiniteColimits_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21550ebe-32b0-2805-0bd2-99ef5e4fd7ee",
  "kind": "lemma",
  "lexical_name": "preservesFiniteColimits_tfae",
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
  "slug": "preservesfinitecolimits-tfae--02f1cab6689d047f120c67a7",
  "source": {
    "blob": "075258b4ada6cbd98639cbcd8f7b31482ac5296e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 182,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant37d43b82189a38c70930c5e5b1c9c5223cbdc3a3f9ddd16300ec54d2e28b08b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02f1cab6689d047f120c67a7fff13b00d88acd842a5d5a6b807d30abdc7a9cf8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant37d43b82189a38c70930c5e5b1c9c5223cbdc3a3f9ddd16300ec54d2e28b08b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21550ebe-32b0-2805-0bd2-99ef5e4fd7ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesFiniteColimits_tfae : List.TFAE
    [
      ∀ (S : ShortComplex C), S.ShortExact → (S.map F).Exact ∧ Epi (F.map S.g),
      ∀ (S : ShortComplex C), S.Exact ∧ Epi S.g → (S.map F).Exact ∧ Epi (F.map S.g),
      ∀ ⦃X Y : C⦄ (f : X ⟶ Y), PreservesColimit (parallelPair f 0) F,
      PreservesFiniteColimits F
    ] := by
  tfae_have 1 → 2
  | hF, S, ⟨hS, hf⟩ => by
    have := preservesEpimorphisms_of_preserves_shortExact_right F hF
    refine ⟨?_, inferInstance⟩
    let T := ShortComplex.mk (Abelian.image.ι S.f) S.g (Abelian.image_ι_comp_eq_zero S.zero)
    let φ : S.map F ⟶ T.map F :=
      { τ₁ := F.map <| Abelian.factorThruImage S.f
        τ₂ := 𝟙 _
        τ₃ := 𝟙 _
        comm₁₂ := show _ ≫ F.map (kernel.ι _) = F.map _ ≫ 𝟙 _ by
          rw [← F.map_comp, Abelian.image.fac, Category.comp_id] }
    exact (exact_iff_of_epi_of_isIso_of_mono φ).2 (hF T ⟨(S.exact_iff_exact_image_ι).1 hS⟩).1
  tfae_have 2 → 3
  | hF, X, Y, f => by
    refine preservesColimit_of_preserves_colimit_cocone (cokernelIsCokernel f) ?_
    apply (CokernelCofork.isColimitMapCoconeEquiv _ F).2
    let S := ShortComplex.mk _ _ (cokernel.condition f)
    let hS := hF S ⟨exact_cokernel f, inferInstance⟩
    have : Epi (S.map F).g := hS.2
    exact hS.1.gIsCokernel
  tfae_have 3 → 4
  | hF => by
    exact preservesFiniteColimits_of_preservesCokernels F
  tfae_have 4 → 1
  | ⟨_⟩, S, hS => (S.map F).exact_and_epi_g_iff_g_is_cokernel |>.2
    ⟨CokernelCofork.mapIsColimit _ hS.gIsCokernel F⟩
  tfae_finish

/--
For an additive functor `F : C ⥤ D` between abelian categories, the following are equivalent:
- `F` preserves short exact sequences, i.e. if `0 ⟶ A ⟶ B ⟶ C ⟶ 0` is exact then
  `0 ⟶ F(A) ⟶ F(B) ⟶ F(C) ⟶ 0` is exact.
- `F` preserves exact sequences, i.e. if `A ⟶ B ⟶ C` is exact then `F(A) ⟶ F(B) ⟶ F(C)` is exact.
- `F` preserves homology.
- `F` preserves both finite limits and finite colimits.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant37d43b82189a38c70930c5e5b1c9c5223cbdc3a3f9ddd16300ec54d2e28b08b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant37d43b82189a38c70930c5e5b1c9c5223cbdc3a3f9ddd16300ec54d2e28b08b9.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `075258b4ada6cbd98639cbcd8f7b31482ac5296e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
