# functorPushforward_sieve₁_of_preservesPullbacks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8bae41fd1efbcdc53c3b7685e2d696efa5589dee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1fa75140a6bb951f46527886597a36f99871d11c03828ce54218e1131228223.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d159803-c3a9-837b-2af7-4d1e4301300c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:201ac08c-d8a8-326d-883d-53e3138f4883",
  "kind": "lemma",
  "lexical_name": "functorPushforward_sieve₁_of_preservesPullbacks",
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
  "slug": "functorpushforward-sieve-of-preservespullbacks--71ae93ee4623578be746cb48",
  "source": {
    "blob": "8bae41fd1efbcdc53c3b7685e2d696efa5589dee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 128,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc1fa75140a6bb951f46527886597a36f99871d11c03828ce54218e1131228223.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71ae93ee4623578be746cb486a6a4eb3340e89fb4944862a32d48e55c28752c4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc1fa75140a6bb951f46527886597a36f99871d11c03828ce54218e1131228223.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:201ac08c-d8a8-326d-883d-53e3138f4883`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma functorPushforward_sieve₁_of_preservesPullbacks (h : p₁ ≫ E.f _ = p₂ ≫ E.f _)
    [HasPullbacks C] [PreservesLimitsOfShape WalkingCospan F] :
    Sieve.functorPushforward F (E.sieve₁ p₁ p₂) = (E.map F).sieve₁ (F.map p₁) (F.map p₂) := by
  refine le_antisymm (PreOneHypercover.functorPushforward_sieve₁_map_le _ _ _) ?_
  have : HasPullback ((E.map F).f i₁) ((E.map F).f i₂) :=
    hasPullback_of_preservesPullback F (E.f i₁) (E.f i₂)
  rintro T f ⟨k, u, hf₁, hf₂⟩
  let l : W ⟶ pullback (E.f i₁) (E.f i₂) := pullback.lift p₁ p₂ h
  have hl₁ : l ≫ pullback.fst _ _ = p₁ := by simp [l]
  have hl₂ : l ≫ pullback.snd _ _ = p₂ := by simp [l]
  let r : E.Y k ⟶ pullback (E.f i₁) (E.f i₂) := pullback.lift (E.p₁ _) (E.p₂ _) (E.w _)
  refine ⟨pullback l r, pullback.fst _ _, IsPullback.lift
    (IsPullback.map _ (.of_hasPullback _ _)) f u ?_, ?_, ?_⟩
  · apply (IsPullback.map _ (.of_hasPullback _ _)).hom_ext <;>
      simp [l, r, ← Functor.map_comp, hf₁, hf₂]
  · refine ⟨k, pullback.snd _ _, ?_, ?_⟩ <;> simp [← hl₁, ← hl₂, pullback.condition_assoc, r]
  · simp

end

end PreOneHypercover

namespace GrothendieckTopology

namespace OneHypercover

variable {J : GrothendieckTopology C} {X : C} (E : J.OneHypercover X)

/-- A 1-hypercover in `C` is preserved by a functor `F : C ⥤ D` if the mapped 1-pre-hypercover
in `D` is a 1-hypercover for the given topology on `D`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc1fa75140a6bb951f46527886597a36f99871d11c03828ce54218e1131228223.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc1fa75140a6bb951f46527886597a36f99871d11c03828ce54218e1131228223.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bae41fd1efbcdc53c3b7685e2d696efa5589dee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
