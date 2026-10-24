# isSplitMono_from_singleFunctor_obj_of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b57cdc3-8982-a389-b2ce-52b72641efea",
  "kind": "lemma",
  "lexical_name": "isSplitMono_from_singleFunctor_obj_of_injective",
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
  "slug": "issplitmono-from-singlefunctor-obj-of-injective--5a9e11a5ee74ef58287384c4",
  "source": {
    "blob": "672f478cf57345f134ee42f425dee9cfa7a1f7db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 49,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughInjectives/Variantfd4b39966679a9360c77eb2201e5b3ed37b3f5589b4e48834f04856287a18705.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a9e11a5ee74ef58287384c46fe7e25f9c7060eead4cb8d82119b1e090a5d532",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughInjectives/Variantfd4b39966679a9360c77eb2201e5b3ed37b3f5589b4e48834f04856287a18705.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b57cdc3-8982-a389-b2ce-52b72641efea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSplitMono_from_singleFunctor_obj_of_injective
    {I : C} [Injective I] {L : CochainComplex C ℤ} {i : ℤ}
    (ι : (CochainComplex.singleFunctor C i).obj I ⟶ L) [L.IsStrictlyGE i] [QuasiIsoAt ι i] :
    IsSplitMono ι := by
  let e := L.pOpcyclesIso (i - 1) i (by simp)
    ((L.isZero_of_isStrictlyGE i (i - 1) (by simp)).eq_of_src _ _)
  let α := (singleObjHomologySelfIso _ _ _).inv ≫ homologyMap ι i ≫ L.homologyι i ≫ e.inv
  have : ι.f i = (singleObjXSelf (ComplexShape.up ℤ) i I).hom ≫ α := by
    rw [← cancel_mono e.hom]
    dsimp [α, e]
    rw [assoc, assoc, assoc, assoc, pOpcyclesIso_inv_hom_id, comp_id, homologyι_naturality]
    dsimp [singleFunctor, singleFunctors]
    rw [singleObjHomologySelfIso_inv_homologyι_assoc,
      ← pOpcycles_singleObjOpcyclesSelfIso_inv_assoc, Iso.inv_hom_id_assoc, p_opcyclesMap]
  exact ⟨⟨{
    retraction := mkHomToSingle (Injective.factorThru (𝟙 I) α) (by
      rintro j rfl
      apply (L.isZero_of_isStrictlyGE (j + 1) j (by simp)).eq_of_src)
    id := by
      apply HomologicalComplex.to_single_hom_ext
      rw [comp_f, mkHomToSingle_f, id_f, this, assoc, Injective.comp_factorThru_assoc,
        id_comp, Iso.hom_inv_id] }⟩⟩

end CochainComplex

namespace DerivedCategory

variable [HasDerivedCategory.{w} C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughInjectives/Variantfd4b39966679a9360c77eb2201e5b3ed37b3f5589b4e48834f04856287a18705.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughInjectives/Variantfd4b39966679a9360c77eb2201e5b3ed37b3f5589b4e48834f04856287a18705.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `672f478cf57345f134ee42f425dee9cfa7a1f7db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
