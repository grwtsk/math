# Generates.isSheaf_of_forall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "039802f3a5ee2fb7124b312f1bacae671ed63930",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc3d4400e11855ca5d070cf6cad10cc715052f098c4a88ad184c0a4e0289b2f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae429172-fe7c-0d60-e927-7cfd80dc16e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:222ad36d-6786-bcc9-d663-9b4cf55ce03e",
  "kind": "lemma",
  "lexical_name": "Generates.isSheaf_of_forall",
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
  "slug": "generates-issheaf-of-forall--3362ac390e4235a4666522c3",
  "source": {
    "blob": "039802f3a5ee2fb7124b312f1bacae671ed63930",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 71,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generates/Variantbc3d4400e11855ca5d070cf6cad10cc715052f098c4a88ad184c0a4e0289b2f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3362ac390e4235a4666522c3a8e2671586314f6b05d0b7f2149106983cc5fb3e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Generates/Variantbc3d4400e11855ca5d070cf6cad10cc715052f098c4a88ad184c0a4e0289b2f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:222ad36d-6786-bcc9-d663-9b4cf55ce03e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Generates.isSheaf_of_forall (h : K.Generates J) (F : Cᵒᵖ ⥤ Type w)
    (H : ∀ ⦃X : C⦄, ∀ R ∈ K X, Presieve.IsSheafFor F R) :
    Presieve.IsSheaf J F := by
  /- By assumption, the statement holds for `w = max u v`. The idea of the proof is
  to construct a suitable `Type max u v` valued subsheaf of `F` for each covering sieve `S` in
  `J` and every family of sections over `S` to check the necessary conditions.
  We explain existence below, uniqueness works similarly. -/
  intro X S hS
  rw [← Presieve.isSeparatedFor_and_exists_isAmalgamation_iff_isSheafFor]
  refine ⟨?_, ?_⟩
  · intro x t₁ t₂ ht₁ ht₂
    let 𝒮 (Z : C) : Set (F.obj (.op Z)) :=
      .range (fun (g : { g : Z ⟶ X | S.arrows g }) ↦ x _ g.2) ∪
      .range (fun (g : Z ⟶ X) ↦ F.map g.op t₁) ∪ .range (fun (g : Z ⟶ X) ↦ F.map g.op t₂)
    let Q : Subfunctor F := K.subsheafify 𝒮
    have (Z : C) : _root_.Small.{max u v} (Q.toFunctor.obj (Opposite.op Z)) :=
      small_subsheafify_of_small H _ inferInstance _
    have hQ : Presieve.IsSheaf J Q.toFunctor :=
      h.isSheaf_of_forall_aux _ fun X R hR ↦ isSheafFor_subsheafify _ hR (H _ hR)
    let x' : S.arrows.FamilyOfElements Q.toFunctor :=
      fun Z g hg ↦ ⟨x g hg, .base <| .inl <| .inl ⟨⟨g, hg⟩, rfl⟩⟩
    have ht₁' : t₁ ∈ Q.obj (.op X) := .base (.inl <| .inr ⟨𝟙 _, by simp⟩)
    have ht₂' : t₂ ∈ Q.obj (.op X) := .base (.inr ⟨𝟙 _, by simp⟩)
    have : (⟨t₁, ht₁'⟩ : Q.obj _) = ⟨t₂, ht₂'⟩ :=
      (hQ _ hS).isSeparatedFor x' ⟨_, ht₁'⟩ ⟨_, ht₂'⟩ (.of_mono Q.ι ht₁) (.of_mono Q.ι ht₂)
    simp_all
  · -- Let `x` be a compatible family of elements over `S`. We need to show it glues.
    intro x hx
    -- Let `𝒮` be the family of subsets consisting of the family of elements `x`.
    let 𝒮 (Z : C) := Set.range (fun (g : { g : Z ⟶ X | S.arrows g }) ↦ x _ g.2)
    /- Let `Q` be the smallest `K`-subsheaf of `K` containing `𝒮`. This is `max u v`-small, because
    `𝒮` is `max u v`-small. -/
    let Q : Subfunctor F := K.subsheafify 𝒮
    have (Z : C) : _root_.Small.{max u v} (Q.toFunctor.obj (Opposite.op Z)) :=
      small_subsheafify_of_small H _ inferInstance _
    have hQ : Presieve.IsSheaf J Q.toFunctor :=
      h.isSheaf_of_forall_aux _ fun X R hR ↦ isSheafFor_subsheafify _ hR (H _ hR)
    /- By assumption, `Q` is a `J`-sheaf, so the family of sections `x` glues and gives rise
    to an amalgamation of `x` in `F`. -/
    obtain ⟨t, ht, _⟩ := hQ _ hS (fun Z g hg ↦ ⟨x g hg, .base ⟨⟨g, hg⟩, rfl⟩⟩) (.of_mono Q.ι hx)
    exact ⟨t.val, ht.map Q.ι⟩

/-- If `K` generates `J`, then any presheaf is a sheaf if and only if it is a sheaf
for all `K`-covers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Generates/Variantbc3d4400e11855ca5d070cf6cad10cc715052f098c4a88ad184c0a4e0289b2f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generates/Variantbc3d4400e11855ca5d070cf6cad10cc715052f098c4a88ad184c0a4e0289b2f0.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `039802f3a5ee2fb7124b312f1bacae671ed63930` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
