# mem_coverings_of_isPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7db125d0-c046-e711-3ba4-00f08698eef9",
  "kind": "lemma",
  "lexical_name": "mem_coverings_of_isPullback",
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
  "slug": "mem-coverings-of-ispullback--ceea94ca36a41851f14eed8c",
  "source": {
    "blob": "3679f4b06394eb980af94ff06b8bc1425d062b39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 140,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variantb376251cb267586144b023fcca35f31d33eba177e876deb57ca0ce00e1c2a224.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ceea94ca36a41851f14eed8cc56be372589baa1d1992375648c63eac9fe8ed98",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variantb376251cb267586144b023fcca35f31d33eba177e876deb57ca0ce00e1c2a224.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7db125d0-c046-e711-3ba4-00f08698eef9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_coverings_of_isPullback {J : Precoverage C} [IsStableUnderBaseChange J]
    {ι : Type w} {S : C} {X : ι → C}
    (f : ∀ i, X i ⟶ S) (hR : Presieve.ofArrows X f ∈ J S) {Y : C} (g : Y ⟶ S)
    {P : ι → C} (p₁ : ∀ i, P i ⟶ Y) (p₂ : ∀ i, P i ⟶ X i)
    (h : ∀ i, IsPullback (p₁ i) (p₂ i) g (f i)) :
    .ofArrows P p₁ ∈ J Y := by
  -- We need to construct `max u v`-indexed families with the same presieves.
  -- Because `f` needs not be injective, the indexing type is a sum.
  let a (i : (Presieve.ofArrows X f).uncurry ⊕ (Presieve.ofArrows P p₁).uncurry) : ι :=
    i.elim (fun i ↦ i.2.idx) (fun i ↦ i.2.idx)
  convert_to Presieve.ofArrows (P ∘ a) (fun i ↦ p₁ (a i)) ∈ _
  · refine le_antisymm (fun Z g hg ↦ ?_) fun Z g ⟨i⟩ ↦ ⟨a i⟩
    exact .mk' (Sum.inr ⟨⟨_, _⟩, hg⟩) (by cat_disch) (by cat_disch)
  · refine IsStableUnderBaseChange.mem_coverings_of_isPullback (fun i ↦ f (a i)) ?_ g _
      (fun i ↦ p₂ (a i)) fun i ↦ h _
    convert! hR
    refine le_antisymm (fun Z g ⟨i⟩ ↦ .mk _) fun Z g hg ↦ ?_
    exact .mk' (Sum.inl ⟨⟨_, _⟩, hg⟩) (by cat_disch) (by cat_disch)

set_option backward.isDefEq.respectTransparency.types false in
set_option warning.simp.varHead false in
attribute [local simp] Presieve.ofArrows.obj_idx Presieve.ofArrows.hom_idx in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variantb376251cb267586144b023fcca35f31d33eba177e876deb57ca0ce00e1c2a224.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variantb376251cb267586144b023fcca35f31d33eba177e876deb57ca0ce00e1c2a224.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3679f4b06394eb980af94ff06b8bc1425d062b39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
