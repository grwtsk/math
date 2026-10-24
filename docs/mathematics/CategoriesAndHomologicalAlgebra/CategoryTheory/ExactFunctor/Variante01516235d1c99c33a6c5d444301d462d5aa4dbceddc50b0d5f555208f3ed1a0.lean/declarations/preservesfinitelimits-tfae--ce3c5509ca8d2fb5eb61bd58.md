# preservesFiniteLimits_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "06141d6538e482aabeace146afd4788d24d482d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e01516235d1c99c33a6c5d444301d462d5aa4dbceddc50b0d5f555208f3ed1a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7d149c3a-6a51-b783-df17-b6173ae3c018",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:252625bc-673e-70d0-b620-982d2d60a36d",
  "kind": "lemma",
  "lexical_name": "preservesFiniteLimits_tfae",
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
  "slug": "preservesfinitelimits-tfae--ce3c5509ca8d2fb5eb61bd58",
  "source": {
    "blob": "06141d6538e482aabeace146afd4788d24d482d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 111,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variante01516235d1c99c33a6c5d444301d462d5aa4dbceddc50b0d5f555208f3ed1a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce3c5509ca8d2fb5eb61bd58f748c6882ae5a97dfff4c82e0090735fe0e0c808",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variante01516235d1c99c33a6c5d444301d462d5aa4dbceddc50b0d5f555208f3ed1a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:252625bc-673e-70d0-b620-982d2d60a36d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesFiniteLimits_tfae : List.TFAE
    [
      ∀ (S : ShortComplex C), S.ShortExact → (S.map F).Exact ∧ Mono (F.map S.f),
      ∀ (S : ShortComplex C), S.Exact ∧ Mono S.f → (S.map F).Exact ∧ Mono (F.map S.f),
      ∀ ⦃X Y : C⦄ (f : X ⟶ Y), PreservesLimit (parallelPair f 0) F,
      PreservesFiniteLimits F
    ] := by
  tfae_have 1 → 2
  | hF, S, ⟨hS, hf⟩ => by
    have := preservesMonomorphisms_of_preserves_shortExact_left F hF
    refine ⟨?_, inferInstance⟩
    let T := ShortComplex.mk S.f (Abelian.coimage.π S.g) (Abelian.comp_coimage_π_eq_zero S.zero)
    let φ : T.map F ⟶ S.map F :=
      { τ₁ := 𝟙 _
        τ₂ := 𝟙 _
        τ₃ := F.map <| Abelian.factorThruCoimage S.g
        comm₂₃ := show 𝟙 _ ≫ F.map _ = F.map (cokernel.π _) ≫ _ by
          rw [Category.id_comp, ← F.map_comp, cokernel.π_desc] }
    exact (exact_iff_of_epi_of_isIso_of_mono φ).1 (hF T ⟨(S.exact_iff_exact_coimage_π).1 hS⟩).1

  tfae_have 2 → 3
  | hF, X, Y, f => by
    refine preservesLimit_of_preserves_limit_cone (kernelIsKernel f) ?_
    apply (KernelFork.isLimitMapConeEquiv _ F).2
    let S := ShortComplex.mk _ _ (kernel.condition f)
    let hS := hF S ⟨exact_kernel f, inferInstance⟩
    have : Mono (S.map F).f := hS.2
    exact hS.1.fIsKernel

  tfae_have 3 → 4
  | hF => by
    exact preservesFiniteLimits_of_preservesKernels F

  tfae_have 4 → 1
  | ⟨_⟩, S, hS =>
    (S.map F).exact_and_mono_f_iff_f_is_kernel |>.2 ⟨KernelFork.mapIsLimit _ hS.fIsKernel F⟩

  tfae_finish

/--
If a functor `F : C ⥤ D` preserves exact sequences on the right hand side (i.e.
if `0 ⟶ A ⟶ B ⟶ C ⟶ 0` is exact then `F(A) ⟶ F(B) ⟶ F(C) ⟶ 0` is exact),
then it preserves epimorphisms.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variante01516235d1c99c33a6c5d444301d462d5aa4dbceddc50b0d5f555208f3ed1a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variante01516235d1c99c33a6c5d444301d462d5aa4dbceddc50b0d5f555208f3ed1a0.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06141d6538e482aabeace146afd4788d24d482d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
