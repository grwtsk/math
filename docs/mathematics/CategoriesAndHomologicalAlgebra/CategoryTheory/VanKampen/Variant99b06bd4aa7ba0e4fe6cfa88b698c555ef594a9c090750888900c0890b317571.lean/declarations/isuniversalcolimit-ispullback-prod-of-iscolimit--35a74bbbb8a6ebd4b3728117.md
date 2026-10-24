# IsUniversalColimit.isPullback_prod_of_isColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9dd3392-e3bc-4b8f-20c3-39a0ff11629e",
  "kind": "lemma",
  "lexical_name": "IsUniversalColimit.isPullback_prod_of_isColimit",
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
  "slug": "isuniversalcolimit-ispullback-prod-of-iscolimit--35a74bbbb8a6ebd4b3728117",
  "source": {
    "blob": "234334143a3f956799e30609ae546e4762ce41b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 956,
    "line": 933,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35a74bbbb8a6ebd4b3728117c2c1b507cee2693579592d27bce9f0e883420e11",
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

Occurrence: `result:b9dd3392-e3bc-4b8f-20c3-39a0ff11629e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 933–956.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsUniversalColimit.isPullback_prod_of_isColimit [HasPullback u v]
    {P : ι × ι' → C} {q₁ : ∀ i j, P (i, j) ⟶ X i} {q₂ : ∀ i j, P (i, j) ⟶ Y j}
    (hP : ∀ i j, IsPullback (q₁ i j) (q₂ i j) (f i) (g j)) (d : Cofan P) (hd : IsColimit d)
    (hu : ∀ i, a.inj i ≫ u = f i := by cat_disch)
    (hv : ∀ i, b.inj i ≫ v = g i := by cat_disch) :
    IsPullback
      (Cofan.IsColimit.desc hd (fun p ↦ q₁ p.1 p.2 ≫ a.inj _))
      (Cofan.IsColimit.desc hd (fun p ↦ q₂ p.1 p.2 ≫ b.inj _)) u v := by
  let c : Cofan P := Cofan.mk (pullback u v)
    fun p ↦ pullback.lift (q₁ p.1 p.2 ≫ a.inj p.1) (q₂ p.1 p.2 ≫ b.inj _)
      (by simp [(hP p.1 p.2).w, hu, hv])
  obtain ⟨hc⟩ := hau.nonempty_isColimit_prod_of_isPullback hbu f g u
    v hP (IsPullback.of_hasPullback _ _) (d := c) (Iso.refl _)
  refine (IsPullback.of_hasPullback u v).of_iso
      ?_ (Iso.refl _) (Iso.refl _) (Iso.refl _) ?_ ?_ (by simp) (by simp)
  · exact hc.coconePointUniqueUpToIso hd
  · refine Cofan.IsColimit.hom_ext hc _ _ fun i ↦ ?_
    simpa [Cofan.inj, Cofan.IsColimit.desc] using! pullback.lift_fst _ _ _
  · refine Cofan.IsColimit.hom_ext hc _ _ fun i ↦ ?_
    simpa [Cofan.inj, Cofan.IsColimit.desc] using! pullback.lift_snd _ _ _

end CoproductsPullback

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean#L933).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `234334143a3f956799e30609ae546e4762ce41b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
