# mem₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "382ea4478ab53131c06e22ee23b4703e6f50cdec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d6deba7d00305e113dd2f3fc6ca8502a89817fd816ca3a96fbe6b503b16b0e6d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d5f83c1-5e34-43c5-2966-0a230b7ab12b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ef09e67-d964-2963-afc8-b3a09071af2c",
  "kind": "lemma",
  "lexical_name": "mem₁",
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
  "slug": "mem--c8f9814e5db5a4b3e0cc3ffa",
  "source": {
    "blob": "382ea4478ab53131c06e22ee23b4703e6f50cdec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 219,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantd6deba7d00305e113dd2f3fc6ca8502a89817fd816ca3a96fbe6b503b16b0e6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8f9814e5db5a4b3e0cc3ffa1c47a9373fe290b39196a8c190536c23473c8407",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantd6deba7d00305e113dd2f3fc6ca8502a89817fd816ca3a96fbe6b503b16b0e6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ef09e67-d964-2963-afc8-b3a09071af2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem₁ (i₁ i₂ : data.I₀) {W : C} (p₁ : W ⟶ F.obj (data.X i₁)) (p₂ : W ⟶ F.obj (data.X i₂))
    (w : p₁ ≫ data.f i₁ = p₂ ≫ data.f i₂) : data.toPreOneHypercover.sieve₁ p₁ p₂ ∈ J W := by
  have := IsDenseSubsite.isCoverDense J₀ J F
  let S := Sieve.bind (Sieve.coverByImage F W).arrows
    (fun Y f hf ↦ ((F.imageSieve (hf.some.map ≫ p₁) ⊓
        F.imageSieve (hf.some.map ≫ p₂)).functorPushforward F).pullback hf.some.lift)
  let T := Sieve.bind S.arrows (fun Z g hg ↦ by
    letI str := Presieve.getFunctorPushforwardStructure hg.bindStruct.hg
    exact Sieve.pullback str.lift
      (Sieve.functorPushforward F (data.sieve₁₀ str.cover.1.choose str.cover.2.choose)))
  have hS : S ∈ J W := by
    apply J.bind_covering
    · apply is_cover_of_isCoverDense
    · intro Y f hf
      apply J.pullback_stable
      rw [Functor.functorPushforward_mem_iff J₀]
      apply J₀.intersection_covering
      all_goals apply IsDenseSubsite.imageSieve_mem J₀ J
  have hT : T ∈ J W := J.bind_covering hS (fun Z g hg ↦ by
    apply J.pullback_stable
    rw [Functor.functorPushforward_mem_iff J₀]
    let str := Presieve.getFunctorPushforwardStructure hg.bindStruct.hg
    apply data.mem₁₀
    simp only [str.cover.1.choose_spec, str.cover.2.choose_spec, assoc, w])
  refine J.superset_covering ?_ hT
  rintro U f ⟨V, a, b, hb, h, _, rfl⟩
  let str := Presieve.getFunctorPushforwardStructure hb.bindStruct.hg
  obtain ⟨W₀, c : _ ⟶ _, d, ⟨j, e, h₁, h₂⟩, fac⟩ := h
  dsimp
  refine ⟨j, d ≫ F.map e, ?_, ?_⟩
  · rw [assoc, assoc, ← F.map_comp, ← h₁, F.map_comp, ← reassoc_of% fac,
      str.cover.1.choose_spec, ← reassoc_of% str.fac,
      Presieve.CoverByImageStructure.fac_assoc,
      Presieve.BindStruct.fac_assoc]
  · rw [assoc, assoc, ← F.map_comp, ← h₂, F.map_comp, ← reassoc_of% fac,
      str.cover.2.choose_spec, ← reassoc_of% str.fac,
      Presieve.CoverByImageStructure.fac_assoc,
      Presieve.BindStruct.fac_assoc]

/-- The `1`-hypercover associated to a `OneHypercoverDenseData` structure. -/
@[simps toPreOneHypercover]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantd6deba7d00305e113dd2f3fc6ca8502a89817fd816ca3a96fbe6b503b16b0e6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantd6deba7d00305e113dd2f3fc6ca8502a89817fd816ca3a96fbe6b503b16b0e6d.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `382ea4478ab53131c06e22ee23b4703e6f50cdec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
