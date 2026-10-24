# IsUniversalColimit.isPullback_of_isColimit_right

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
      "line": 853,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be5ae1923ca77460649e90a75e82d1a03dcef703c897ddae57d88dff74a223ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:805e6875-5759-c5f4-d486-228261b6457f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f91ba35-9186-a75c-fc4c-be1a1ef30dee",
  "kind": "lemma",
  "lexical_name": "IsUniversalColimit.isPullback_of_isColimit_right",
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
  "slug": "isuniversalcolimit-ispullback-of-iscolimit-right--6c0ef07c732d691513693e83",
  "source": {
    "blob": "784ed4f5b6df0c6c186ae2aba4040fcf246f144b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 879,
    "line": 853,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variantbe5ae1923ca77460649e90a75e82d1a03dcef703c897ddae57d88dff74a223ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c0ef07c732d691513693e8358379fd14cbf7e4461e187d79f431ff561677d75",
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

Occurrence: `result:4f91ba35-9186-a75c-fc4c-be1a1ef30dee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 853–879.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsUniversalColimit.isPullback_of_isColimit_right {d : Cofan P} (hd : IsColimit d)
    (hu : ∀ i, a.inj i ≫ u = f i := by cat_disch)
    [HasPullback u v] :
    IsPullback (Cofan.IsColimit.desc hd (q₁ · ≫ a.inj _)) (Cofan.IsColimit.desc hd q₂)
      u v := by
  let c : Cofan P := Cofan.mk (pullback u v)
    fun i ↦ pullback.lift (q₁ i ≫ a.inj i) (q₂ i) (by simp [(hP i).w, hu])
  obtain ⟨hc⟩ := hau.nonempty_isColimit_of_isPullback_right f u
    v q₁ q₂ hP (IsPullback.of_hasPullback _ _) c (Iso.refl _)
  refine (IsPullback.of_hasPullback u v).of_iso
      ?_ (Iso.refl _) (Iso.refl _) (Iso.refl _) ?_ ?_ (by simp) (by simp)
  · exact hc.coconePointUniqueUpToIso hd
  · refine Cofan.IsColimit.hom_ext hc _ _ fun i ↦ ?_
    simpa [Cofan.inj, Cofan.IsColimit.desc] using! pullback.lift_fst _ _ _
  · refine Cofan.IsColimit.hom_ext hc _ _ fun i ↦ ?_
    simpa [Cofan.inj, Cofan.IsColimit.desc] using! pullback.lift_snd _ _ _

end

variable {Y : ι' → C} {b : Cofan Y} (hbu : IsUniversalColimit b)
  (f : ∀ i, X i ⟶ S) (g : ∀ i, Y i ⟶ S) (u : a.pt ⟶ S) (v : b.pt ⟶ S)
  [∀ i, HasPullback (f i) v]

set_option backward.isDefEq.respectTransparency false in
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variantbe5ae1923ca77460649e90a75e82d1a03dcef703c897ddae57d88dff74a223ec.lean#L853).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `784ed4f5b6df0c6c186ae2aba4040fcf246f144b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
