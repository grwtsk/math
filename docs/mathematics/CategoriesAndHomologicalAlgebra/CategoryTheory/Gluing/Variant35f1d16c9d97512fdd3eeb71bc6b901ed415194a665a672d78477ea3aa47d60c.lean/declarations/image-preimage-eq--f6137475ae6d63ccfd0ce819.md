# ι_image_preimage_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06766587-952c-5d00-0ff2-c9cd8b1c3b81",
  "kind": "theorem",
  "lexical_name": "ι_image_preimage_eq",
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
  "slug": "image-preimage-eq--f6137475ae6d63ccfd0ce819",
  "source": {
    "blob": "4e6d1d416ea9780fe285b3c8057f66c02528deb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 237,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6137475ae6d63ccfd0ce81974929321c64bdb93f0746a853190b3a334ffc261",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06766587-952c-5d00-0ff2-c9cd8b1c3b81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ι_image_preimage_eq (i j : D.J) (U : Opens (D.U i).carrier) :
    (Opens.map (𝖣.ι j).base).obj ((D.ι_isOpenEmbedding i).isOpenMap.functor.obj U) =
      (opensFunctor (D.f j i)).obj
        ((Opens.map (𝖣.t j i).base).obj ((Opens.map (𝖣.f i j).base).obj U)) := by
  ext1
  dsimp only [Opens.map_coe, IsOpenMap.coe_functor_obj]
  rw [← show _ = (𝖣.ι i).base from 𝖣.ι_gluedIso_inv (PresheafedSpace.forget _) i, ←
    show _ = (𝖣.ι j).base from 𝖣.ι_gluedIso_inv (PresheafedSpace.forget _) j]
  -- Porting note (https://github.com/leanprover-community/mathlib4/issues/11224): change `rw` to `erw` on `coe_comp`
  erw [TopCat.coe_comp, TopCat.coe_comp, TopCat.coe_comp]
  rw [Set.image_comp, Set.preimage_comp]
  erw [Set.preimage_image_eq]
  · refine Eq.trans (D.toTopGlueData.preimage_image_eq_image' _ _ _) ?_
    dsimp
    rw [Set.image_comp]
    refine congr_arg (_ '' ·) ?_
    rw [Set.eq_preimage_iff_image_eq, ← Set.image_comp]
    swap
    · exact CategoryTheory.ConcreteCategory.bijective_of_isIso (C := TopCat) _
    change (D.t i j ≫ D.t j i).base '' _ = _
    rw [𝖣.t_inv]
    simp
  · rw [← TopCat.coe_comp, ← TopCat.mono_iff_injective]
    infer_instance

/-- (Implementation). The map `Γ(𝒪_{U_i}, U) ⟶ Γ(𝒪_{U_j}, 𝖣.ι j ⁻¹' (𝖣.ι i '' U))` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e6d1d416ea9780fe285b3c8057f66c02528deb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
