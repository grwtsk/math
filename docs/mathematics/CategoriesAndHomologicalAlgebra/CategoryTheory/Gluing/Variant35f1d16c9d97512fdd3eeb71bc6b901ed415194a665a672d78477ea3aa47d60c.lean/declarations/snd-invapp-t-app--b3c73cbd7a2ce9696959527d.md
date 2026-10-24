# snd_invApp_t_app'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbd30dd0-1b94-9ef9-72ba-69224af27da6",
  "kind": "theorem",
  "lexical_name": "snd_invApp_t_app'",
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
  "slug": "snd-invapp-t-app--b3c73cbd7a2ce9696959527d",
  "source": {
    "blob": "4e6d1d416ea9780fe285b3c8057f66c02528deb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 175,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3c73cbd7a2ce9696959527d30a09474c9dbad286bee0ec01181f5c47b1bba48",
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

Occurrence: `result:dbd30dd0-1b94-9ef9-72ba-69224af27da6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem snd_invApp_t_app' (i j k : D.J) (U : Opens (pullback (D.f i j) (D.f i k)).carrier) :
    ∃ eq,
      (π₂⁻¹ i, j, k) U ≫ (D.t k i).c.app _ ≫ (D.V (k, i)).presheaf.map (eqToHom eq) =
        (D.t' k i j).c.app _ ≫ (π₁⁻¹ k, j, i) (unop _) := by
  fconstructor
  -- Porting note: I don't know what the magic was in Lean3 proof, it just skipped the proof of `eq`
  · delta IsOpenImmersion.opensFunctor
    dsimp only [Functor.op, Opens.map, IsOpenMap.functor, unop_op, Opens.coe_mk]
    congr
    have := (𝖣.t_fac k i j).symm
    rw [← IsIso.inv_comp_eq] at this
    replace this := (congr_arg ((PresheafedSpace.Hom.base ·)) this).symm
    replace this := congr_arg (TopCat.Hom.hom ·) this
    replace this := congr_arg (ContinuousMap.toFun ·) this
    dsimp at this
    rw [this, Set.image_comp, Set.image_comp, Set.preimage_image_eq]
    swap
    · refine Function.HasLeftInverse.injective ⟨(D.t i k).base, fun x => ?_⟩
      rw [← ConcreteCategory.comp_apply, ← comp_base, D.t_inv, id_base, ConcreteCategory.id_apply]
    refine congr_arg (_ '' ·) ?_
    refine congr_fun ?_ _
    refine Set.image_eq_preimage_of_inverse ?_ ?_
    · intro x
      rw [← ConcreteCategory.comp_apply, ← comp_base, IsIso.inv_hom_id, id_base,
        ConcreteCategory.id_apply]
    · intro x
      rw [← ConcreteCategory.comp_apply, ← comp_base, IsIso.hom_inv_id, id_base,
        ConcreteCategory.id_apply]
  · rw [← IsIso.eq_inv_comp, IsOpenImmersion.inv_invApp, Category.assoc,
      (D.t' k i j).c.naturality_assoc]
    simp_rw [← Category.assoc]
    dsimp
    rw [← comp_c_app, congr_app (D.t_fac k i j), comp_c_app]
    dsimp
    simp_rw [Category.assoc]
    rw [IsOpenImmersion.inv_naturality, IsOpenImmersion.inv_naturality_assoc,
      IsOpenImmersion.app_inv_app'_assoc]
    · simp_rw [← (𝖣.V (k, i)).presheaf.map_comp]; rfl
    rintro x ⟨y, -, eq⟩
    replace eq := ConcreteCategory.congr_arg (𝖣.t i k).base eq
    change ((π₂ i, j, k) ≫ D.t i k).base y = (D.t k i ≫ D.t i k).base x at eq
    rw [𝖣.t_inv, id_base, TopCat.id_app] at eq
    subst eq
    use (inv (D.t' k i j)).base y
    change (inv (D.t' k i j) ≫ π₁ k, i, j).base y = _
    congr 3
    rw [IsIso.inv_comp_eq, 𝖣.t_fac_assoc, 𝖣.t_inv, Category.comp_id]

/-- The red and the blue arrows in ![this diagram](https://i.imgur.com/q6X1GJ9.png) commute. -/
@[simp, reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e6d1d416ea9780fe285b3c8057f66c02528deb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
