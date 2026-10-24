# IsCardinalPure.mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10a20114-beef-c3b2-6e67-402f5cc3c8b4",
  "kind": "lemma",
  "lexical_name": "IsCardinalPure.mono",
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
  "slug": "iscardinalpure-mono--2ea275ca91e306b9f00bdaf5",
  "source": {
    "blob": "6eb762d06d24afd498c855b42362b4918883d57a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 109,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalPure/Variant530c8067271192241507e6e0a25e27d60ddc5c8f5ca2b2cc964e5cfbf0807b5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ea275ca91e306b9f00bdaf52c0eae20d4834992c0cdfa35951a9ab88c16fa2f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalPure/Variant530c8067271192241507e6e0a25e27d60ddc5c8f5ca2b2cc964e5cfbf0807b5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10a20114-beef-c3b2-6e67-402f5cc3c8b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCardinalPure.mono [IsCardinalAccessibleCategory C κ]
    {X Y : C} (f : X ⟶ Y) [IsCardinalPure κ f] :
    Mono f := by
  rw [IsCardinalAccessibleCategory.mono_iff κ]
  intro K _ p q hpq
  obtain ⟨j, p', q', h₁, h₂⟩ := IsCardinalPresentable.exists_hom₂_of_isColimit κ
    ((isCardinalPresentable C κ).ι.denseAt X) p q
  obtain ⟨⟨X', (hX' : IsCardinalPresentable X' κ)⟩, u, rfl⟩ := j.mk_surjective
  dsimp at u h₁ h₂ p' q'
  obtain ⟨j', f', hf'⟩ := IsCardinalPresentable.exists_hom_of_isColimit κ
    ((isCardinalPresentable C κ).ι.denseAt Y) (u ≫ f)
  obtain ⟨j'', c, hc⟩ := IsCardinalPresentable.exists_eq_of_isColimit' κ
    ((isCardinalPresentable C κ).ι.denseAt Y) (p' ≫ f') (q' ≫ f') (by cat_disch)
  obtain ⟨⟨Y', _⟩, v', rfl⟩ := j'.mk_surjective
  obtain ⟨⟨Y'', _ : IsCardinalPresentable Y'' κ⟩, v, rfl⟩ := j''.mk_surjective
  obtain ⟨⟨h⟩, H, rfl⟩ := CostructuredArrow.homMk_surjective c
  dsimp at v' f' hf' v h H hc
  simp only [Category.assoc, Category.id_comp] at hf' h₁ h₂ hc
  obtain ⟨u', hu'⟩ :=
    IsCardinalPure.exists_of_commSq κ (show CommSq (f' ≫ h) u v f from { })
  simp only [Category.assoc] at hu'
  rw [← h₁, ← hu', reassoc_of% hc, hu', h₂]

variable (C) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalPure/Variant530c8067271192241507e6e0a25e27d60ddc5c8f5ca2b2cc964e5cfbf0807b5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalPure/Variant530c8067271192241507e6e0a25e27d60ddc5c8f5ca2b2cc964e5cfbf0807b5e.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eb762d06d24afd498c855b42362b4918883d57a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
