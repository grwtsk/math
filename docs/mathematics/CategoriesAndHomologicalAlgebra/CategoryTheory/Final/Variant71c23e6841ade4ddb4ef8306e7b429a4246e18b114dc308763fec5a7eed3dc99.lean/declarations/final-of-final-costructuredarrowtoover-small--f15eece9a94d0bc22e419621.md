# final_of_final_costructuredArrowToOver_small

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7da2be0a-085f-1a7a-d28c-3ea738df17f8",
  "kind": "lemma",
  "lexical_name": "final_of_final_costructuredArrowToOver_small",
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
  "slug": "final-of-final-costructuredarrowtoover-small--f15eece9a94d0bc22e419621",
  "source": {
    "blob": "19be2c8989d5837a202b0d9e33f87424ca70bb76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 42,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant71c23e6841ade4ddb4ef8306e7b429a4246e18b114dc308763fec5a7eed3dc99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f15eece9a94d0bc22e419621fd6bfbf9139fcc6aababf38e25aa4f87f42f503c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant71c23e6841ade4ddb4ef8306e7b429a4246e18b114dc308763fec5a7eed3dc99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7da2be0a-085f-1a7a-d28c-3ea738df17f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma final_of_final_costructuredArrowToOver_small (L : A ⥤ T) (R : B ⥤ T) [Final R]
    [∀ b : B, Final (CostructuredArrow.toOver L (R.obj b))] : Final L := by
  rw [final_iff_isIso_colimit_pre]
  intro G
  have : ∀ (b : B), Final ((whiskerLeft R (preFunctor L (𝟭 T))).app b) := fun b =>
    inferInstanceAs (Final (CostructuredArrow.toOver L (R.obj b)))
  let i : colimit (L ⋙ G) ≅ colimit G :=
    calc colimit (L ⋙ G) ≅ colimit <| grothendieckProj L ⋙ L ⋙ G :=
            colimitIsoColimitGrothendieck L (L ⋙ G)
      _ ≅ colimit <| Grothendieck.pre (functor L) R ⋙ grothendieckProj L ⋙ L ⋙ G :=
            (Final.colimitIso (Grothendieck.pre (functor L) R) (grothendieckProj L ⋙ L ⋙ G)).symm
      _ ≅ colimit <| Grothendieck.map (whiskerLeft _ (preFunctor L (𝟭 T))) ⋙
            grothendieckPrecompFunctorToComma (𝟭 T) R ⋙ Comma.fst (𝟭 T) R ⋙ G :=
              HasColimit.isoOfNatIso (NatIso.ofComponents (fun _ => Iso.refl _))
      _ ≅ colimit <| grothendieckPrecompFunctorToComma (𝟭 T) R ⋙ Comma.fst (𝟭 T) R ⋙ G :=
            Final.colimitIso _ _
      _ ≅ colimit <| Grothendieck.pre (functor (𝟭 T)) R ⋙ grothendieckProj (𝟭 T) ⋙ G :=
            HasColimit.isoOfNatIso (Iso.refl _)
      _ ≅ colimit <| grothendieckProj (𝟭 T) ⋙ G :=
            Final.colimitIso _ _
      _ ≅ colimit G := (colimitIsoColimitGrothendieck (𝟭 T) G).symm
  convert Iso.isIso_hom i
  simp only [Iso.instTransIso_trans, comp_obj, grothendieckProj_obj, Grothendieck.pre_obj_base,
    Grothendieck.pre_obj_fiber, Iso.trans_assoc, Iso.trans_hom, Iso.symm_hom, i]
  rw [← Iso.inv_comp_eq, Iso.eq_inv_comp]
  apply colimit.hom_ext (fun _ => by simp)

end Small

variable {A : Type u₁} [Category.{v₁} A] {B : Type u₂} [Category.{v₂} B]
variable {T : Type u₃} [Category.{v₃} T]

/-- A functor `L : A ⥤ T` is final if there is a final functor `R : B ⥤ T` such that for all
`b : B`, the canonical functor `CostructuredArrow L (R.obj b) ⥤ Over (R.obj b)` is final. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant71c23e6841ade4ddb4ef8306e7b429a4246e18b114dc308763fec5a7eed3dc99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant71c23e6841ade4ddb4ef8306e7b429a4246e18b114dc308763fec5a7eed3dc99.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19be2c8989d5837a202b0d9e33f87424ca70bb76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
