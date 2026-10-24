# IsUniversalColimit.isPullback_of_isColimit_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb0c80c6-20c4-c721-5328-9544b6c08e19",
  "kind": "lemma",
  "lexical_name": "IsUniversalColimit.isPullback_of_isColimit_left",
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
  "slug": "isuniversalcolimit-ispullback-of-iscolimit-left--ae40bde8903fd55b555c11f2",
  "source": {
    "blob": "234334143a3f956799e30609ae546e4762ce41b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 819,
    "line": 796,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae40bde8903fd55b555c11f2ae44bdfaf06d4cd8ec5d4ac8e9c890b9f496b384",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb0c80c6-20c4-c721-5328-9544b6c08e19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 796–819.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsUniversalColimit.isPullback_of_isColimit_left {d : Cofan P} (hd : IsColimit d)
    (hu : ∀ i, a.inj i ≫ u = f i := by cat_disch)
    [HasPullback v u] :
    IsPullback (Cofan.IsColimit.desc hd q₁) (Cofan.IsColimit.desc hd (q₂ · ≫ a.inj _))
      v u := by
  let c : Cofan P := Cofan.mk (pullback v u)
    fun i ↦ pullback.lift (q₁ i) (q₂ i ≫ a.inj i) (by simp [(hP i).w, hu])
  obtain ⟨hc⟩ := hau.nonempty_isColimit_of_isPullback_left f u
    v q₁ q₂ hP (IsPullback.of_hasPullback _ _) c (Iso.refl _)
  refine (IsPullback.of_hasPullback v u).of_iso
      ?_ (Iso.refl _) (Iso.refl _) (Iso.refl _) ?_ ?_ (by simp) (by simp)
  · exact hc.coconePointUniqueUpToIso hd
  · refine Cofan.IsColimit.hom_ext hc _ _ fun i ↦ ?_
    simpa [Cofan.inj, Cofan.IsColimit.desc] using! pullback.lift_fst _ _ _
  · refine Cofan.IsColimit.hom_ext hc _ _ fun i ↦ ?_
    simpa [Cofan.inj, Cofan.IsColimit.desc] using! pullback.lift_snd _ _ _

end

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
include hau in
/-- Pullbacks distribute over universal coproducts on the right: This is the isomorphism
`∐ (Xᵢ ×[S] B) ≅ (∐ Xᵢ) ×[S] B`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean#L796).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `234334143a3f956799e30609ae546e4762ce41b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
