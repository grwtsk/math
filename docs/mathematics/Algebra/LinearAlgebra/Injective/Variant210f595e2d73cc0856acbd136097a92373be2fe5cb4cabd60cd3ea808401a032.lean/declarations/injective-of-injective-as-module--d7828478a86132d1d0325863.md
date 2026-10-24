# injective_of_injective_as_module

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:784504d8-20ca-deb3-5cc0-f658b153a887",
  "kind": "theorem",
  "lexical_name": "injective_of_injective_as_module",
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
  "slug": "injective-of-injective-as-module--d7828478a86132d1d0325863",
  "source": {
    "blob": "9b03d0af318d72d98454395797a5fe86d178ca63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 44,
    "path": "GRWTSK/Algebra/LinearAlgebra/Injective/Variant210f595e2d73cc0856acbd136097a92373be2fe5cb4cabd60cd3ea808401a032.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7828478a86132d1d032586397e8bba45284dd0555df104facb5029b26f99236",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Injective/Variant210f595e2d73cc0856acbd136097a92373be2fe5cb4cabd60cd3ea808401a032.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:784504d8-20ca-deb3-5cc0-f658b153a887`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem injective_of_injective_as_module [Injective (⟨A⟩ : ModuleCat ℤ)] :
    CategoryTheory.Injective (⟨A,inferInstance⟩ : AddCommGroupCat) :=
  { factors := fun {X} {Y} g f m => by
      let G : (⟨X⟩ : ModuleCat ℤ) ⟶ ⟨A⟩ :=
        { g with
          map_smul' := by
            intros
            dsimp
            rw [map_zsmul] }
      let F : (⟨X⟩ : ModuleCat ℤ) ⟶ ⟨Y⟩ :=
        { f with
          map_smul' := by
            intros
            dsimp
            rw [map_zsmul] }
      have : Mono F := by
        refine' ⟨fun {Z} α β eq1 => _⟩
        -- Porting note: trouble getting to ℤ-module from ModuleCat ℤ
        -- AddCommGroup.intModule not defeq to .isModule
        let α' : AddCommGroupCat.of Z ⟶ X := @LinearMap.toAddMonoidHom _ _ _ _ _ _ _ _ (_) _ _ α
        let β' : AddCommGroupCat.of Z ⟶ X := @LinearMap.toAddMonoidHom _ _ _ _ _ _ _ _ (_) _ _ β
        have eq2 : α' ≫ f = β' ≫ f := by
          ext x
          simp only [CategoryTheory.comp_apply, LinearMap.toAddMonoidHom_coe]
          simpa only [ModuleCat.coe_comp, LinearMap.coe_mk, Function.comp_apply] using
            FunLike.congr_fun eq1 x
        rw [cancel_mono] at eq2
        have : ⇑α' = ⇑β' := congrArg _ eq2
        ext x
        apply congrFun this _
      refine' ⟨(Injective.factorThru G F).toAddMonoidHom, _⟩
      ext x
      convert FunLike.congr_fun (Injective.comp_factorThru G F) x}
#align AddCommGroup.injective_of_injective_as_module AddCommGroupCat.injective_of_injective_as_module

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Injective/Variant210f595e2d73cc0856acbd136097a92373be2fe5cb4cabd60cd3ea808401a032.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Injective/Variant210f595e2d73cc0856acbd136097a92373be2fe5cb4cabd60cd3ea808401a032.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b03d0af318d72d98454395797a5fe86d178ca63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
