# IsUniversalColimit.nonempty_isColimit_prod_of_pullbackCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "784ed4f5b6df0c6c186ae2aba4040fcf246f144b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 880,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be5ae1923ca77460649e90a75e82d1a03dcef703c897ddae57d88dff74a223ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3421e3aa-a6b6-f87c-076e-2e70ef57c333",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2dfc6435-d26a-b642-8dcb-aedb51ab0025",
  "kind": "lemma",
  "lexical_name": "IsUniversalColimit.nonempty_isColimit_prod_of_pullbackCone",
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
  "slug": "isuniversalcolimit-nonempty-iscolimit-prod-of-pullbackcone--2a12d0f6881cbf790bf29859",
  "source": {
    "blob": "784ed4f5b6df0c6c186ae2aba4040fcf246f144b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 909,
    "line": 880,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variantbe5ae1923ca77460649e90a75e82d1a03dcef703c897ddae57d88dff74a223ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a12d0f6881cbf790bf29859ea15b229e580bbe5db48d2bad4cdf23ac03d1d04",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variantbe5ae1923ca77460649e90a75e82d1a03dcef703c897ddae57d88dff74a223ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2dfc6435-d26a-b642-8dcb-aedb51ab0025`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 880–909.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsUniversalColimit.nonempty_isColimit_prod_of_pullbackCone
    (s : ∀ (i : ι) (j : ι'), PullbackCone (f i) (g j))
    (hs : ∀ i j, IsLimit (s i j)) (t : PullbackCone u v) (ht : IsLimit t)
    {d : Cofan (fun p : ι × ι' ↦ (s p.1 p.2).pt)} (e : d.pt ≅ t.pt)
    (hu : ∀ i, a.inj i ≫ u = f i := by cat_disch)
    (hv : ∀ i, b.inj i ≫ v = g i := by cat_disch)
    (he₁ : ∀ i j, d.inj (i, j) ≫ e.hom ≫ t.fst = (s _ _).fst ≫ a.inj _ := by cat_disch)
    (he₂ : ∀ i j, d.inj (i, j) ≫ e.hom ≫ t.snd = (s _ _).snd ≫ b.inj _ := by cat_disch) :
    Nonempty (IsColimit d) := by
  let c (i : ι) : Cofan (fun j : ι' ↦ (s i j).pt) :=
    Cofan.mk (pullback (f i) v) fun j ↦ pullback.lift (s i j).fst ((s i j).snd ≫ b.inj j)
      (by simp [hv, (s i j).condition])
  let c' : Cofan (fun i : ι ↦ (c i).pt) :=
    Cofan.mk t.pt fun i ↦
      PullbackCone.IsLimit.lift ht (pullback.fst _ _ ≫ a.inj i) (pullback.snd _ _)
      (by simp [hu, pullback.condition])
  let iso : d ≅ Cofan.mk c'.pt fun p : ι × ι' ↦ (c p.1).inj p.2 ≫ c'.inj _ := by
    refine Cofan.ext e <| fun p ↦ PullbackCone.IsLimit.hom_ext ht ?_ ?_
    · simp [c', c, he₁]
    · simp [c', c, he₂]
  rw [(IsColimit.equivIsoColimit iso).nonempty_congr]
  refine ⟨Cofan.IsColimit.prod c (fun i ↦ Nonempty.some ?_) c' (Nonempty.some ?_)⟩
  · exact hbu.nonempty_isColimit_of_pullbackCone_left _ v _ _ (hs i) (pullback.cone _ _)
      (pullback.isLimit _ _) _ (Iso.refl _)
  · exact hau.nonempty_isColimit_of_pullbackCone_right _ u _ _ (fun _ ↦ pullback.isLimit _ _)
      t ht _ (Iso.refl _)

include hau hbu in
/-- Pullbacks distribute over universal coproducts in both arguments: This is the isomorphism
`∐ (Xᵢ ×[S] Xⱼ) ≅ (∐ Xᵢ) ×[S] (∐ Xⱼ)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variantbe5ae1923ca77460649e90a75e82d1a03dcef703c897ddae57d88dff74a223ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variantbe5ae1923ca77460649e90a75e82d1a03dcef703c897ddae57d88dff74a223ec.lean#L880).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `784ed4f5b6df0c6c186ae2aba4040fcf246f144b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
