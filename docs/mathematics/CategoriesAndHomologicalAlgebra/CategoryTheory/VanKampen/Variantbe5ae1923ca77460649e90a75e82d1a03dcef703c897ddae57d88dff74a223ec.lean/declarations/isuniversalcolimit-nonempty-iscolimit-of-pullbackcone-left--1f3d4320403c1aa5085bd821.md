# IsUniversalColimit.nonempty_isColimit_of_pullbackCone_left

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
      "line": 747,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be5ae1923ca77460649e90a75e82d1a03dcef703c897ddae57d88dff74a223ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd5223b9-aa3f-a9fc-7ee8-f80de6cccf60",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e4991f9-49f6-e3c6-0b4d-40dbd2f62b54",
  "kind": "lemma",
  "lexical_name": "IsUniversalColimit.nonempty_isColimit_of_pullbackCone_left",
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
  "slug": "isuniversalcolimit-nonempty-iscolimit-of-pullbackcone-left--1f3d4320403c1aa5085bd821",
  "source": {
    "blob": "784ed4f5b6df0c6c186ae2aba4040fcf246f144b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 773,
    "line": 747,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variantbe5ae1923ca77460649e90a75e82d1a03dcef703c897ddae57d88dff74a223ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f3d4320403c1aa5085bd82178638c66a968574b4b260538373b4c5ffc9f387f",
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

Occurrence: `result:8e4991f9-49f6-e3c6-0b4d-40dbd2f62b54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 747–773.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsUniversalColimit.nonempty_isColimit_of_pullbackCone_left
    (s : ∀ i, PullbackCone v (f i)) (hs : ∀ i, IsLimit (s i))
    (t : PullbackCone v u) (ht : IsLimit t) (d : Cofan (fun i : ι ↦ (s i).pt)) (e : d.pt ≅ t.pt)
    (hu : ∀ i, a.inj i ≫ u = f i := by cat_disch)
    (he₁ : ∀ i, d.inj i ≫ e.hom ≫ t.fst = (s i).fst := by cat_disch)
    (he₂ : ∀ i, d.inj i ≫ e.hom ≫ t.snd = (s i).snd ≫ a.inj i := by cat_disch) :
    Nonempty (IsColimit d) := by
  let iso : d ≅ (Cofan.mk _ fun i : ι ↦ PullbackCone.IsLimit.lift ht
      (s i).fst ((s i).snd ≫ a.inj i) (by simp [hu, (s i).condition])) :=
    Cofan.ext e <| fun p ↦ PullbackCone.IsLimit.hom_ext ht (by simp [he₁]) (by simp [he₂])
  rw [(IsColimit.equivIsoColimit iso).nonempty_congr]
  refine hau _ (Discrete.natTrans fun i ↦ (s i.as).snd) t.snd ?_ (.of_discrete _) fun j ↦ ?_
  · ext; simp [Cofan.inj]
  · simp only [Discrete.functor_obj_eq_as, Cofan.mk_pt, Functor.const_obj_obj, Cofan.mk_ι_app,
      Discrete.natTrans_app]
    rw [← Cofan.inj]
    refine IsPullback.of_right ?_ (by simp) (IsPullback.of_isLimit ht)
    simpa [hu] using (IsPullback.of_isLimit (hs j.1))

section

variable {P : ι → C} (q₁ : ∀ i, P i ⟶ B) (q₂ : ∀ i, P i ⟶ X i)
  (hP : ∀ i, IsPullback (q₁ i) (q₂ i) v (f i))

include hau hP in
/-- Pullbacks distribute over universal coproducts on the left: This is the isomorphism
`∐ (B ×[S] Xᵢ) ≅ B ×[S] (∐ Xᵢ)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variantbe5ae1923ca77460649e90a75e82d1a03dcef703c897ddae57d88dff74a223ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variantbe5ae1923ca77460649e90a75e82d1a03dcef703c897ddae57d88dff74a223ec.lean#L747).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `784ed4f5b6df0c6c186ae2aba4040fcf246f144b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
