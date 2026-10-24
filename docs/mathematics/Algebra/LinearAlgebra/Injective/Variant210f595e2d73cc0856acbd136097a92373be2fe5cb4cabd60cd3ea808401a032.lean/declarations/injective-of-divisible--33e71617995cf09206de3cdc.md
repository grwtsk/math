# injective_of_divisible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2fc1cee0a94cf37aa8c980efe631910249808f45db0d3cb9c526d74626c0015a",
  "kind": "instance",
  "lexical_name": "injective_of_divisible",
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
  "slug": "injective-of-divisible--33e71617995cf09206de3cdc",
  "source": {
    "blob": "9b03d0af318d72d98454395797a5fe86d178ca63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 117,
    "path": "GRWTSK/Algebra/LinearAlgebra/Injective/Variant210f595e2d73cc0856acbd136097a92373be2fe5cb4cabd60cd3ea808401a032.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33e71617995cf09206de3cdcb61dd0682cb461ff0cd690bc535797b3a24a3313",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Injective/Variant210f595e2d73cc0856acbd136097a92373be2fe5cb4cabd60cd3ea808401a032.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2fc1cee0a94cf37aa8c980efe631910249808f45db0d3cb9c526d74626c0015a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance injective_of_divisible [DivisibleBy A ℤ] :
    CategoryTheory.Injective (⟨A,inferInstance⟩ : AddCommGroupCat) :=
  @injective_of_injective_as_module A _ <|
    @Module.injective_object_of_injective_module ℤ _ A _ _ <|
      Module.Baer.injective fun I g => by
        rcases IsPrincipalIdealRing.principal I with ⟨m, rfl⟩
        by_cases m_eq_zero : m = 0
        · subst m_eq_zero
          refine'
            ⟨{  toFun := _
                map_add' := _
                map_smul' := _ }, fun n hn => _⟩
          · intro _
            exact g 0
          · intro _ _
            simp only [map_zero, add_zero]
          · intro n1 _
            simp only [map_zero, smul_zero]
          · rw [Submodule.span_singleton_eq_bot.mpr rfl, Submodule.mem_bot] at hn
            simp only [hn, map_zero]
            symm
            convert map_zero g
        · set gₘ := g ⟨m, Submodule.subset_span (Set.mem_singleton _)⟩ with gm_eq
          refine'
            ⟨{  toFun := _
                map_add' := _
                map_smul' := _ }, fun n hn => _⟩
          · intro n
            exact n • DivisibleBy.div gₘ m
          · intro n1 n2
            simp only [add_smul]
          · intro n1 n2
            dsimp
            rw [mul_smul]
          · rw [Submodule.mem_span_singleton] at hn
            rcases hn with ⟨n, rfl⟩
            simp only [gm_eq, Algebra.id.smul_eq_mul, LinearMap.coe_mk]
            dsimp
            rw [mul_smul]
            -- Porting note: used to be able to just rw [Div...]
            have s := congrArg (fun l => n • l) <| DivisibleBy.div_cancel gₘ m_eq_zero
            dsimp at s
            rw [s, ← LinearMap.map_smul]
            congr
#align AddCommGroup.injective_of_divisible AddCommGroupCat.injective_of_divisible

end AddCommGroupCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Injective/Variant210f595e2d73cc0856acbd136097a92373be2fe5cb4cabd60cd3ea808401a032.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Injective/Variant210f595e2d73cc0856acbd136097a92373be2fe5cb4cabd60cd3ea808401a032.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b03d0af318d72d98454395797a5fe86d178ca63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
