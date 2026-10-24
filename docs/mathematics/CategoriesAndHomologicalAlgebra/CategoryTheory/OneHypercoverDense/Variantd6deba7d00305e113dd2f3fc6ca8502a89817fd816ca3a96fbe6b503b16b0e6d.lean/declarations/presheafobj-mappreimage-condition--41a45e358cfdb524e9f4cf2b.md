# presheafObj_mapPreimage_condition

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
      "line": 475,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d6deba7d00305e113dd2f3fc6ca8502a89817fd816ca3a96fbe6b503b16b0e6d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:709dcbe5-3d22-0d39-1ae4-303d41e9cf56",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44bc077b-5cee-f0cf-7bfb-2ce246791dfb",
  "kind": "lemma",
  "lexical_name": "presheafObj_mapPreimage_condition",
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
  "slug": "presheafobj-mappreimage-condition--41a45e358cfdb524e9f4cf2b",
  "source": {
    "blob": "382ea4478ab53131c06e22ee23b4703e6f50cdec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 494,
    "line": 475,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantd6deba7d00305e113dd2f3fc6ca8502a89817fd816ca3a96fbe6b503b16b0e6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41a45e358cfdb524e9f4cf2bd3b3b58b2afee08efb95c9ab44d45d20c0a0de49",
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

Occurrence: `result:44bc077b-5cee-f0cf-7bfb-2ce246791dfb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 475–494.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma presheafObj_mapPreimage_condition
    (X : C) (i₁ i₂ : (data X).I₀) {Y₀ : C₀}
    (p₁ : F.obj Y₀ ⟶ F.obj ((data X).X i₁)) (p₂ : F.obj Y₀ ⟶ F.obj ((data X).X i₂))
    (fac : p₁ ≫ (data X).f i₁ = p₂ ≫ (data X).f i₂) :
    presheafObjπ data G₀ X i₁ ≫ IsDenseSubsite.mapPreimage J F G₀ p₁ =
      presheafObjπ data G₀ X i₂ ≫ IsDenseSubsite.mapPreimage J F G₀ p₂ := by
  refine Presheaf.IsSheaf.hom_ext G₀.property ⟨_,
    J₀.intersection_covering (IsDenseSubsite.imageSieve_mem J₀ J F p₁)
      (IsDenseSubsite.imageSieve_mem J₀ J F p₂)⟩ _ _ ?_
  intro ⟨W₀, a, ⟨b₁, h₁⟩, ⟨b₂, h₂⟩⟩
  refine Presheaf.IsSheaf.hom_ext G₀.property
    ⟨_, (data X).mem₁₀ i₁ i₂ b₁ b₂ (by simp only [h₁, h₂, assoc, fac])⟩ _ _ ?_
  intro ⟨U₀, c, ⟨j, t, fac₁, fac₂⟩⟩
  simp only [assoc, ← Functor.map_comp, ← op_comp,
    IsDenseSubsite.mapPreimage_map_of_fac J F G₀ p₁ (c ≫ a) (c ≫ b₁) (by simp [← h₁]),
    IsDenseSubsite.mapPreimage_map_of_fac J F G₀ p₂ (c ≫ a) (c ≫ b₂) (by simp [← h₂])]
  simpa [fac₁, fac₂] using presheafObj_condition_assoc _ _ _ _ _ _ _

/-- The (limit) multifork with point `presheafObjπ data G₀ X` for
the diagram given by `G₀` and `data X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantd6deba7d00305e113dd2f3fc6ca8502a89817fd816ca3a96fbe6b503b16b0e6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantd6deba7d00305e113dd2f3fc6ca8502a89817fd816ca3a96fbe6b503b16b0e6d.lean#L475).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `382ea4478ab53131c06e22ee23b4703e6f50cdec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
