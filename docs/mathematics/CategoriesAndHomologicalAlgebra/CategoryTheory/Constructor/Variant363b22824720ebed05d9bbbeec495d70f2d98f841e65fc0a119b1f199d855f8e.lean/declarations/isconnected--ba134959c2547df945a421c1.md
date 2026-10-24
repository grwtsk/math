# isConnected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9485047-dd5d-648a-3db9-833c3de3e515",
  "kind": "lemma",
  "lexical_name": "isConnected",
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
  "slug": "isconnected--ba134959c2547df945a421c1",
  "source": {
    "blob": "196ed83816e0cd3e44f4d19f3b4300925edbcc37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 78,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Constructor/Variant363b22824720ebed05d9bbbeec495d70f2d98f841e65fc0a119b1f199d855f8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba134959c2547df945a421c14511277c6d8b45c2db36833ea6fbbd813373ffd8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Constructor/Variant363b22824720ebed05d9bbbeec495d70f2d98f841e65fc0a119b1f199d855f8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9485047-dd5d-648a-3db9-833c3de3e515`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isConnected :
    IsConnected ((TwoSquare.mk Φ.functor (Φ.functor ⋙ L) L (𝟭 _)
      (Functor.rightUnitor _).inv).CostructuredArrowDownwards y) := by
  let w := (TwoSquare.mk Φ.functor (Φ.functor ⋙ L) L (𝟭 _) (Functor.rightUnitor _).inv)
  have : Nonempty (w.CostructuredArrowDownwards y) :=
    ⟨(fromRightResolution Φ L y).obj (Classical.arbitrary _)⟩
  suffices ∀ (X : w.CostructuredArrowDownwards y),
      ∃ Y, Zigzag X ((fromRightResolution Φ L y).obj Y) by
    refine zigzag_isConnected (fun X X' => ?_)
    obtain ⟨Y, hX⟩ := this X
    obtain ⟨Y', hX'⟩ := this X'
    exact hX.trans ((zigzag_obj_of_zigzag _ (isPreconnected_zigzag Y Y')).trans hX'.symm)
  intro X
  obtain ⟨c, g, x, fac, rfl⟩ := TwoSquare.CostructuredArrowDownwards.mk_surjective X
  dsimp [w] at x fac
  rw [id_comp] at fac
  let ρ : Φ.arrow.RightResolution (Arrow.mk g) := Classical.arbitrary _
  refine ⟨RightResolution.mk ρ.w.left ρ.hw.1, ?_⟩
  have := zigzag_obj_of_zigzag
    (fromRightResolution Φ L x ⋙ w.costructuredArrowDownwardsPrecomp x y g fac)
      (isPreconnected_zigzag (RightResolution.mk (𝟙 _) (W₂.id_mem _))
        (RightResolution.mk ρ.w.right ρ.hw.2))
  refine Zigzag.trans ?_ (Zigzag.trans this ?_)
  · exact Zigzag.of_hom (eqToHom (by simp))
  · apply Zigzag.of_inv
    refine CostructuredArrow.homMk (StructuredArrow.homMk ρ.X₁.hom (by simp)) ?_
    ext
    dsimp
    rw [← cancel_epi (isoOfHom L W₂ ρ.w.left ρ.hw.1).hom, isoOfHom_hom,
      isoOfHom_hom_inv_id_assoc, ← L.map_comp_assoc, Arrow.w_mk_right, Arrow.mk_hom,
      L.map_comp, assoc, isoOfHom_hom_inv_id_assoc, fac]

end Constructor

/-- If a localizer morphism `Φ` is a localized equivalence, then it is a right
derivability structure if the categories of right resolutions are connected and the
categories of right resolutions of arrows are nonempty. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Constructor/Variant363b22824720ebed05d9bbbeec495d70f2d98f841e65fc0a119b1f199d855f8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Constructor/Variant363b22824720ebed05d9bbbeec495d70f2d98f841e65fc0a119b1f199d855f8e.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `196ed83816e0cd3e44f4d19f3b4300925edbcc37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
